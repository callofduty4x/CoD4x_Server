/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
    Copyright (C) 1999-2005 Id Software, Inc.

    This file is part of CoD4X18-Server source code.

    CoD4X18-Server source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X18-Server source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/

#include <string.h>
#include "q_shared.h"
#include "qcommon_mem.h"
#include "qcommon.h"
#include "qcommon_logprint.h"
#include "filesystem.h"
#include "cvar.h"
#include "cmd.h"

cvar_t* com_hunkMegs;
cvar_t* com_hunkused;
#define DEF_COMZONEMEGS 16 // JPW NERVE cut this back too was 30

void Z_PrintHeap_f( void );
void Z_LogHeap( void );

void* Mem_AlignedAlloc(unsigned int align, unsigned int size)
{
    void* newmem;

    newmem = calloc(1, size + align);
    if(newmem == NULL)
        return NULL;

    return (void*)((unsigned int)newmem + ((unsigned int)newmem % align));

}


void FreeString(char* tofree)
{
    if(tofree)
    {
        Z_Free(tofree);
    }
}

void __cdecl Sys_OutOfMemError(const char* filename, int line)
{
	Com_Error(ERR_FATAL, "System is out of memory! Filename: %s, Line: %d\n", filename, line);
}

void __cdecl Sys_OutOfMemErrorInternal(const char* filename, int line)
{
	Sys_OutOfMemError(filename, line);
}



/*
==============================================================================

						ZONE MEMORY ALLOCATION

There is never any space between memblocks, and there will never be two
contiguous free memblocks.

The rover can be left pointing at a non-empty block

The zone calls are pretty much only used for small strings and structures,
all big things are allocated on the hunk.
==============================================================================
*/

#define ZONEID  0x1d4a11db
#define MINFRAGMENT 64

typedef struct zonedebug_s {
	char *label;
	char *file;
	int line;
	int allocSize;
} zonedebug_t;

typedef struct memblock_s {
	int size;               // including the header and possibly tiny fragments
	int tag;                // a tag of 0 is a free block
	struct memblock_s       *next, *prev;
	int id;                 // should be ZONEID
#ifdef ZONE_DEBUG
	zonedebug_t d;
#endif
} memblock_t;

typedef struct {
	int size;               // total bytes malloced, including header
	int used;               // total bytes used
	memblock_t blocklist;   // start / end cap for linked list
	memblock_t  *rover;
} memzone_t;

// main zone for all "dynamic" memory allocation
memzone_t   *mainzone;
// we also have a small zone for small allocations that would only
// fragment the main zone (think of cvar and cmd strings)
memzone_t   *smallzone;


void Z_CheckHeap( void );

/*
========================
Z_ClearZone
========================
*/
void Z_ClearZone( memzone_t *zone, int size ) {
	memblock_t  *block;

	// set the entire zone to one free block

	zone->blocklist.next = zone->blocklist.prev = block =
													  ( memblock_t * )( (byte *)zone + sizeof( memzone_t ) );
	zone->blocklist.tag = 1;    // in use block
	zone->blocklist.id = 0;
	zone->blocklist.size = 0;
	zone->rover = block;
	zone->size = size;
	zone->used = 0;

	block->prev = block->next = &zone->blocklist;
	block->tag = 0;         // free block
	block->id = ZONEID;
	block->size = size - sizeof( memzone_t );
}


/*
=================
Com_InitZoneMemory
=================
*/
void Com_InitSmallZoneMemory( void ) {
	int s_smallZoneTotal = 1024 * 1024;
	// bk001205 - was malloc
	smallzone = calloc( s_smallZoneTotal, 1 );
	if ( !smallzone ) {
		Com_Error( ERR_FATAL, "Small zone data failed to allocate %1.1f megs", (float)s_smallZoneTotal / ( 1024 * 1024 ) );
	}
	Z_ClearZone( smallzone, s_smallZoneTotal );

	return;
}

void Com_InitZoneMemory( void ) {
	cvar_t  *cv;
    int s_zoneTotal;
	// allocate the random block zone
	cv = Cvar_RegisterInt("com_zoneMegs", DEF_COMZONEMEGS, 8, 64*1024*1024, CVAR_LATCH | CVAR_ARCHIVE, "Amount of main zone memory allocated - needs to be increased when Z_Malloc fails");

	s_zoneTotal = cv->integer * 1024 * 1024;

	// bk001205 - was malloc
	mainzone = calloc( s_zoneTotal, 1 );
	if ( !mainzone ) {
		Com_Error( ERR_FATAL, "Zone data failed to allocate %i megs", s_zoneTotal / ( 1024 * 1024 ) );
	}
	Z_ClearZone( mainzone, s_zoneTotal );
	Cmd_AddCommand("zonememinfo", Z_PrintHeap_f);

}


/*
========================
Z_Free
========================
*/
void Z_Free( void *ptr ) {
	memblock_t  *block, *other;
	memzone_t *zone;

	if ( !ptr ) {
		Com_Error( ERR_DROP, "Z_Free: NULL pointer" );
	}

	block = ( memblock_t * )( (byte *)ptr - sizeof( memblock_t ) );
	if ( block->id != ZONEID ) {
		Com_Error( ERR_FATAL, "Z_Free: freed a pointer without ZONEID" );
	}
	if ( block->tag == 0 ) {
		Com_Error( ERR_FATAL, "Z_Free: freed a freed pointer" );
	}
	// if static memory
	if ( block->tag == TAG_STATIC ) {
		return;
	}

	// check the memory trash tester
	if ( *( int * )( (byte *)block + block->size - 4 ) != ZONEID ) {
		Com_Error( ERR_FATAL, "Z_Free: memory block wrote past end" );
	}

	if ( block->tag == TAG_SMALL ) {
		zone = smallzone;
	} else {
		zone = mainzone;
	}

	zone->used -= block->size;
	// set the block to something that should cause problems
	// if it is referenced...
	memset( ptr, 0xaa, block->size - sizeof( *block ) );

	block->tag = 0;     // mark as free

	other = block->prev;
	if ( !other->tag ) {
		// merge with previous free block
		other->size += block->size;
		other->next = block->next;
		other->next->prev = other;
		if ( block == zone->rover ) {
			zone->rover = other;
		}
		block = other;
	}

	zone->rover = block;

	other = block->next;
	if ( !other->tag ) {
		// merge the next free block onto the end
		block->size += other->size;
		block->next = other->next;
		block->next->prev = block;
		if ( other == zone->rover ) {
			zone->rover = block;
		}
	}
}


/*
================
Z_FreeTags
================
*/
void Z_FreeTags( int tag ) {
	int count;
	memzone_t   *zone;

	if ( tag == TAG_SMALL ) {
		zone = smallzone;
	} else {
		zone = mainzone;
	}
	count = 0;
	// use the rover as our pointer, because
	// Z_Free automatically adjusts it
	zone->rover = zone->blocklist.next;
	do {
		if ( zone->rover->tag == tag ) {
			count++;
			Z_Free( ( void * )( zone->rover + 1 ) );
			continue;
		}
		zone->rover = zone->rover->next;
	} while ( zone->rover != &zone->blocklist );
}



/*
================
Z_TagMalloc
================
*/

memblock_t *debugblock; // RF, jusy so we can track a block to find out when it's getting trashed

#ifdef ZONE_DEBUG
void *Z_TagMallocDebug( int size, int tag, char *label, char *file, int line ) {
#else
void *Z_TagMalloc( int size, int tag ) {
#endif
	int extra;
	int allocSize;

	memblock_t  *start, *rover, *new, *base;
	memzone_t *zone;

	if ( !tag ) {
		Com_Error( ERR_FATAL, "Z_TagMalloc: tried to use a 0 tag" );
	}

	if ( tag == TAG_SMALL ) {
		zone = smallzone;
	} else {
		zone = mainzone;
	}

	if ( zone == NULL ) {
		Com_Error( ERR_FATAL, "Z_TagMalloc: Zone memory system not initialized" );
	}
	allocSize = size;
	//
	// scan through the block list looking for the first free block
	// of sufficient size
	//
	size += sizeof( memblock_t ); // account for size of block header
	size += 4;                  // space for memory trash tester
	size = ( size + 3 ) & ~3;     // align to 32 bit boundary

	base = rover = zone->rover;
	start = base->prev;

	do {
		if ( rover == start ) {
#ifdef ZONE_DEBUG
			Z_LogHeap();
#endif
			// scaned all the way around the list
			Com_Error( ERR_FATAL, "Z_Malloc: failed on allocation of %i bytes from the %s zone",
					   size, zone == smallzone ? "small" : "main" );
			return NULL;
		}
		if ( rover->tag ) {
			base = rover = rover->next;
		} else {
			rover = rover->next;
		}
	} while ( base->tag || base->size < size );

	//
	// found a block big enough
	//
	extra = base->size - size;
	if ( extra > MINFRAGMENT ) {
		// there will be a free fragment after the allocated block
		new = ( memblock_t * )( (byte *)base + size );
		new->size = extra;
		new->tag = 0;           // free block
		new->prev = base;
		new->id = ZONEID;
		new->next = base->next;
		new->next->prev = new;
		base->next = new;
		base->size = size;
	}

	base->tag = tag;            // no longer a free block

	zone->rover = base->next;   // next allocation will start looking here
	zone->used += base->size;   //

	base->id = ZONEID;

#ifdef ZONE_DEBUG
	base->d.label = label;
	base->d.file = file;
	base->d.line = line;
	base->d.allocSize = allocSize;
#endif

	// marker for memory trash testing
	*( int * )( (byte *)base + base->size - 4 ) = ZONEID;

	Com_Memset( (byte *)base + sizeof( memblock_t ), 0, allocSize );

	return ( void * )( (byte *)base + sizeof( memblock_t ) );
}

/*
========================
Z_Malloc
========================
*/
#ifdef ZONE_DEBUG
void *Z_MallocDebug( int size, char *label, char *file, int line ) {
#else
void *Z_Malloc( int size ) {
#endif
	void    *buf;

	//Z_CheckHeap ();	// DEBUG

#ifdef ZONE_DEBUG
	buf = Z_TagMallocDebug( size, TAG_GENERAL, label, file, line );
#else
	buf = Z_TagMalloc( size, TAG_GENERAL );
#endif
	return buf;
}

#ifdef ZONE_DEBUG
void *S_MallocDebug( int size, char *label, char *file, int line ) {
	return Z_TagMallocDebug( size, TAG_SMALL, label, file, line );
}
#else
void *S_Malloc( int size ) {
	return Z_TagMalloc( size, TAG_SMALL );
}
#endif


/*
========================
Z_CheckHeap
========================
*/
void Z_CheckHeap( void ) {
	memblock_t  *block;

	for ( block = mainzone->blocklist.next ; ; block = block->next ) {
		if ( block->next == &mainzone->blocklist ) {
			break;          // all blocks have been hit
		}
		if ( (byte *)block + block->size != (byte *)block->next ) {
			Com_Error( ERR_FATAL, "Z_CheckHeap: block size does not touch the next block\n" );
		}
		if ( block->next->prev != block ) {
			Com_Error( ERR_FATAL, "Z_CheckHeap: next block doesn't have proper back link\n" );
		}
		if ( !block->tag && !block->next->tag ) {
			Com_Error( ERR_FATAL, "Z_CheckHeap: two consecutive free blocks\n" );
		}
	}
}


/*
========================
Z_LogZoneHeap
========================
*/
void Z_PrintZoneHeap( memzone_t *zone, char *name ) {
#ifdef ZONE_DEBUG
	char dump[32], *ptr;
	int i, j;
#endif
	memblock_t  *block;
	int size, allocSize, numBlocks;

	size = allocSize = numBlocks = 0;
	Com_Printf(CON_CHANNEL_SYSTEM,"\r\n================\r\n%s log\r\n================\r\n", name );
	for ( block = zone->blocklist.next ; block->next != &zone->blocklist; block = block->next ) {
		if ( block->tag ) {
#ifdef ZONE_DEBUG
			ptr = ( (char *) block ) + sizeof( memblock_t );
			j = 0;
			for ( i = 0; i < 20 && i < block->d.allocSize; i++ ) {
				if ( ptr[i] >= 32 && ptr[i] < 127 ) {
					dump[j++] = ptr[i];
				} else {
					dump[j++] = '_';
				}
			}
			dump[j] = '\0';
			Com_Printf(CON_CHANNEL_SYSTEM,"size = %8d: %s, line: %d (%s) [%s]\r\n", block->d.allocSize, block->d.file, block->d.line, block->d.label, dump );
			allocSize += block->d.allocSize;
#endif
			size += block->size;
			numBlocks++;
		}
	}
#ifdef ZONE_DEBUG
	// subtract debug memory
	size -= numBlocks * sizeof( zonedebug_t );
#else
	allocSize = numBlocks * sizeof( memblock_t ); // + 32 bit alignment
#endif
	Com_Printf(CON_CHANNEL_SYSTEM, "%d %s memory in %d blocks\r\n", size, name, numBlocks );
	Com_Printf(CON_CHANNEL_SYSTEM, "%d %s memory overhead\r\n", size - allocSize, name );
}

/*
========================
Z_LogHeap
========================
*/
void Z_PrintHeap_f( void ) {
	Z_PrintZoneHeap( mainzone, "MAIN" );
	Z_PrintZoneHeap( smallzone, "SMALL" );
}


/*
========================
Z_LogZoneHeap
========================
*/
void Z_LogZoneHeap( memzone_t *zone, char *name ) {
#ifdef ZONE_DEBUG
	char dump[32], *ptr;
	int i, j;
#endif
	memblock_t  *block;
	char buf[4096];
	int size, allocSize, numBlocks;
    fileHandle_t zonelogfile;


	if ( !FS_Initialized() ) {
		return;
	}

    zonelogfile = FS_FOpenFileAppend("zonedebug.log");

    if ( !zonelogfile ) {
		return;
	}
	size = allocSize = numBlocks = 0;
	Com_sprintf( buf, sizeof( buf ), "\r\n================\r\n%s log\r\n================\r\n", name );
	FS_Write( buf, strlen( buf ), zonelogfile );
	for ( block = zone->blocklist.next ; block->next != &zone->blocklist; block = block->next ) {
		if ( block->tag ) {
#ifdef ZONE_DEBUG
			ptr = ( (char *) block ) + sizeof( memblock_t );
			j = 0;
			for ( i = 0; i < 20 && i < block->d.allocSize; i++ ) {
				if ( ptr[i] >= 32 && ptr[i] < 127 ) {
					dump[j++] = ptr[i];
				} else {
					dump[j++] = '_';
				}
			}
			dump[j] = '\0';
			Com_sprintf( buf, sizeof( buf ), "size = %8d: %s, line: %d (%s) [%s]\r\n", block->d.allocSize, block->d.file, block->d.line, block->d.label, dump );
			FS_Write( buf, strlen( buf ), zonelogfile );
			allocSize += block->d.allocSize;
#endif
			size += block->size;
			numBlocks++;
		}
	}
#ifdef ZONE_DEBUG
	// subtract debug memory
	size -= numBlocks * sizeof( zonedebug_t );
#else
	allocSize = numBlocks * sizeof( memblock_t ); // + 32 bit alignment
#endif
	Com_sprintf( buf, sizeof( buf ), "%d %s memory in %d blocks\r\n", size, name, numBlocks );
	FS_Write( buf, strlen( buf ), zonelogfile );
	Com_sprintf( buf, sizeof( buf ), "%d %s memory overhead\r\n", size - allocSize, name );
	FS_Write( buf, strlen( buf ), zonelogfile );

	FS_FCloseFile( zonelogfile );
	zonelogfile = 0;
}


/*
========================
Z_LogHeap
========================
*/
void Z_LogHeap( void ) {
	Z_LogZoneHeap( mainzone, "MAIN" );
	Z_LogZoneHeap( smallzone, "SMALL" );
}

// static mem blocks to reduce a lot of small zone overhead
typedef struct memstatic_s {
	memblock_t b;
	byte mem[2];
} memstatic_t;

// bk001204 - initializer brackets
memstatic_t emptystring =
{ {( sizeof( memblock_t ) + 2 + 3 ) & ~3, TAG_STATIC, NULL, NULL, ZONEID}, {'\0', '\0'} };
memstatic_t numberstring[] = {
	{ {( sizeof( memstatic_t ) + 3 ) & ~3, TAG_STATIC, NULL, NULL, ZONEID}, {'0', '\0'} },
	{ {( sizeof( memstatic_t ) + 3 ) & ~3, TAG_STATIC, NULL, NULL, ZONEID}, {'1', '\0'} },
	{ {( sizeof( memstatic_t ) + 3 ) & ~3, TAG_STATIC, NULL, NULL, ZONEID}, {'2', '\0'} },
	{ {( sizeof( memstatic_t ) + 3 ) & ~3, TAG_STATIC, NULL, NULL, ZONEID}, {'3', '\0'} },
	{ {( sizeof( memstatic_t ) + 3 ) & ~3, TAG_STATIC, NULL, NULL, ZONEID}, {'4', '\0'} },
	{ {( sizeof( memstatic_t ) + 3 ) & ~3, TAG_STATIC, NULL, NULL, ZONEID}, {'5', '\0'} },
	{ {( sizeof( memstatic_t ) + 3 ) & ~3, TAG_STATIC, NULL, NULL, ZONEID}, {'6', '\0'} },
	{ {( sizeof( memstatic_t ) + 3 ) & ~3, TAG_STATIC, NULL, NULL, ZONEID}, {'7', '\0'} },
	{ {( sizeof( memstatic_t ) + 3 ) & ~3, TAG_STATIC, NULL, NULL, ZONEID}, {'8', '\0'} },
	{ {( sizeof( memstatic_t ) + 3 ) & ~3, TAG_STATIC, NULL, NULL, ZONEID}, {'9', '\0'} }
};

/*
========================
CopyString

 NOTE:	never write over the memory CopyString returns because
		memory from a memstatic_t might be returned
========================
*/
char *CopyString( const char *in ) {
	char    *out;

	if ( !in[0] ) {
		return ( (char *)&emptystring ) + sizeof( memblock_t );
	} else if ( !in[1] )     {
		if ( in[0] >= '0' && in[0] <= '9' ) {
			return ( (char *)&numberstring[in[0] - '0'] ) + sizeof( memblock_t );
		}
	}
	out = S_Malloc( strlen( in ) + 1 );
	strcpy( out, in );
	return out;
}


char *__cdecl Z_TryMallocGarbage(int size, const char *name, int type)
{
  char *buf;

  buf = Z_Malloc(size + 164);
  if ( buf )
  {
    buf += 164;
    //track_z_alloc(size + 72, name, type, buf, 0, 164);
  }
  return buf;
}

#define CON_CHANNEL_SYSTEM 0

void __cdecl Z_MallocFailed(int size)
{
  Com_PrintError(CON_CHANNEL_SYSTEM, "Failed to Z_Malloc %i bytes\n", size);
  Sys_OutOfMemErrorInternal("C:\\projects_pc\\cod\\codsrc\\src\\universal\\com_memory.cpp", 436);
}

char *__cdecl Z_MallocGarbage(int size, const char *name, int type)
{
  char *buf;

  buf = Z_TryMallocGarbage(size, name, type);
  if ( !buf )
  {
    Z_MallocFailed(size + 164);
  }
  return buf;
}

void *Hunk_Alloc( int size, const char* name, int type ) {
    return Hunk_AllocInternal(size);
}



#if 0

#define HUNK_MAGIC  0x89537892
#define HUNK_FREE_MAGIC 0x89537893
#define HUNK_HEAD_MAGIC 0x89537890

typedef struct {
	int permanent;
	int temp;
} hunkUsed_t;

typedef struct hunkblock_s {
    int magic;
	struct hunkblock_s *next;
	struct hunkblock_s *prev;
	int size;
#ifdef HUNK_DEBUG
    char *label;
	char *file;
	int line;
#endif
} hunkblock_t;

static hunkblock_t *hunk_permanent;
static hunkblock_t *hunk_temp;
static hunkUsed_t hunk_used;



/*
=================
Hunk_Alloc

Allocate permanent (until the hunk is cleared) memory
=================
*/
#ifdef HUNK_DEBUG
void *Hunk_AllocDebug( unsigned int size, char *label, char *file, int line ) {
#else
void *Hunk_Alloc( int size ) {
#endif
    void* buf;

	if(size < 1)
	{
		return NULL;
	}

	unsigned int sa = sizeof( hunkblock_t ) + size;

	// round to cacheline
	sa = ( sa + 31 ) & ~31;

    hunkblock_t* newmem = (hunkblock_t*)malloc(sa);

    if(newmem == NULL)
    {
   		Com_Error( ERR_DROP, "Hunk_Alloc failed on %i", size );
    }
    memset(newmem, 0, sa);

	hunk_permanent->next->prev = newmem;
	newmem->next = hunk_permanent->next;
	newmem->prev = hunk_permanent;
	hunk_permanent->next = newmem;

    newmem->size = size;
    newmem->magic = HUNK_MAGIC;

#ifdef HUNK_DEBUG
	{
		newmem->file = file;
		newmem->label = label;
		newmem->line = line;
	}
#endif

	buf = ( (byte *) newmem ) + sizeof( hunkblock_t );

    hunk_used.permanent += sa;

	Cvar_SetInt(com_hunkused, hunk_used.permanent + hunk_used.temp);

    return buf;
}



void Hunk_Free(void* m)
{
	if(m == NULL)
	{
		return;
	}

    hunkblock_t* hblock = (hunkblock_t*)((byte*)m - sizeof(hunkblock_t));   
    if(hblock->magic != HUNK_MAGIC)
    {
        if(hblock->magic == HUNK_FREE_MAGIC)
        {
       		Com_Error( ERR_FATAL, "Hunk_Free: already free" );
        }
   		Com_Error( ERR_FATAL, "Hunk_Free: bad magic" );
    }
    hblock->magic = HUNK_FREE_MAGIC;
	hblock->prev->next = hblock->next;
	hblock->next->prev = hblock->prev;
	free(hblock);

}

void Hunk_Init()
{
	static hunkblock_t temp;
	static hunkblock_t permanent;

	hunk_temp = &temp;
	hunk_permanent = &permanent;

	hunk_temp->next = hunk_temp;
	hunk_temp->prev = hunk_temp;

	hunk_permanent->next = hunk_permanent;
	hunk_permanent->prev = hunk_permanent;

	hunk_temp->magic = HUNK_HEAD_MAGIC;
	hunk_permanent->magic = HUNK_HEAD_MAGIC;

	hunk_temp->size = 0;
	hunk_permanent->size = 0;

#ifdef HUNK_DEBUG
    hunk_temp->label = "Hunk_temp_head";
	hunk_temp->file = "Hunk_temp_head";
	hunk_temp->line = 0;
    hunk_permanent->label = "Hunk_permanent_head";
	hunk_permanent->file = "Hunk_permanent_head";
	hunk_permanent->line = 0;
#endif

	com_hunkused = Cvar_RegisterInt("com_hunkused",0,0,0x7fffffff, CVAR_ROM, "Amount of used hunk memory");
}

/*
=================
Hunk_Log
=================
*/
void Hunk_Log( void ) {
	hunkblock_t *block;
	char buf[4096];
	int size, numBlocks;

    fileHandle_t hunklogfile;

	Com_Printf(CON_CHANNEL_SYSTEM,"Hunk_Log\n");

	if ( !FS_Initialized() ) {
		return;
	}

    hunklogfile = FS_FOpenFileAppend("hunkdebug.log");

    if ( !hunklogfile ) {
		Com_Printf(CON_CHANNEL_SYSTEM,"Error opening logfile\n");
		return;
	}

	size = 0;
	numBlocks = 0;
	Com_sprintf( buf, sizeof( buf ), "\r\n================\r\nHunk log\r\n================\r\n" );
	FS_Write( buf, strlen( buf ), hunklogfile );
	for ( block = hunk_permanent->next ; block != hunk_permanent; block = block->next ) {
#ifdef HUNK_DEBUG
		Com_sprintf( buf, sizeof( buf ), "size = %8d: %s, line: %d (%s)\r\n", block->size, block->file, block->line, block->label );
		FS_Write( buf, strlen( buf ), hunklogfile );
#else
		Com_sprintf( buf, sizeof( buf ), "size = %8d\r\n", block->size );
		FS_Write( buf, strlen( buf ), hunklogfile );		
#endif
		size += block->size;
		numBlocks++;
	}
	Com_sprintf( buf, sizeof( buf ), "%d Hunk memory\r\n", size );
	FS_Write( buf, strlen( buf ), hunklogfile );
	Com_sprintf( buf, sizeof( buf ), "%d hunk blocks\r\n", numBlocks );
	FS_Write( buf, strlen( buf ), hunklogfile );
	FS_FCloseFile(hunklogfile);
}


void Hunk_Test()
{
	void* a = Hunk_Alloc(5777);
	void* b = Hunk_Alloc(10000);
	void* c = Hunk_Alloc(0x80000);
	Hunk_Free(b);
	b = Hunk_Alloc(666666);
	Hunk_Free(c);
	Hunk_Free(a);
	a = Hunk_Alloc(54655);
	c = Hunk_Alloc(5878974);
	void* d = Hunk_Alloc(7587);
	void* e = Hunk_Alloc(33333);
	Hunk_Free(a);
	Hunk_Log();

	Hunk_Free(d);
	Hunk_Free(b);
	Hunk_Free(e);
	Hunk_Free(c);
	Hunk_Log();

}

#endif
