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



#ifndef __QCOMMON_MEM_H__
#define __QCOMMON_MEM_H__

//#define ZONE_DEBUG

#include <stdlib.h>
#include "q_shared.h"


typedef enum {
	TAG_FREE,
	TAG_GENERAL,
	TAG_BOTLIB,
	TAG_RENDERER,
	TAG_SMALL,
	TAG_STATIC,
	TAG_XZONE,
	TAG_UNZIP,
	TAG_STRINGED
} memtag_t;


#ifdef __cplusplus
extern "C"{
#endif

void __cdecl Com_InitHunkMemory(void);
void __cdecl Hunk_InitDebugMemory(void);
void __cdecl Hunk_ClearTempMemory(void);
void __cdecl Hunk_ClearTempMemoryHigh(void);
void* __cdecl Hunk_AllocateTempMemory(int size);
void __cdecl Hunk_FreeTempMemory(void *buffer);
void __cdecl PMem_Init(void);
void __cdecl PMem_BeginAlloc(const char*, qboolean);
void __cdecl PMem_EndAlloc(const char*, int);
void* __cdecl TempMalloc( int );
char *CopyString( const char *in );
void FreeString( char *free );
void __cdecl PMem_Free(const char*, unsigned int);
void PMem_Init();
void __cdecl Sys_OutOfMemError(const char* filename, int line);
void Z_Free( void *ptr );
void Z_FreeTags( int tag );
void Com_InitSmallZoneMemory( void );
void Com_InitZoneMemory( void );
char* Z_MallocGarbage(int, const char*, int);
void* Hunk_Alloc(int size, const char* name, int type);
void *__cdecl Hunk_AllocInternal(int size);
#define L_Malloc malloc
#define L_Free free



#ifdef ZONE_DEBUG
#define Z_TagMalloc(size, tag)			Z_TagMallocDebug(size, tag, #size, __FILE__, __LINE__)
#define Z_Malloc(size)					Z_MallocDebug(size, #size, __FILE__, __LINE__)
#define S_Malloc(size)					S_MallocDebug(size, #size, __FILE__, __LINE__)
void *Z_TagMallocDebug( int size, int tag, char *label, char *file, int line );	// NOT 0 filled memory
void *Z_MallocDebug( int size, char *label, char *file, int line );			// returns 0 filled memory
void *S_MallocDebug( int size, char *label, char *file, int line );			// returns 0 filled memory
#else
void *Z_TagMalloc( int size, int tag );	// NOT 0 filled memory
void *Z_Malloc( int size );			// returns 0 filled memory
void *S_Malloc( int size );			// NOT 0 filled memory only for small allocations
#endif

int __cdecl PMem_GetOverAllocatedSize();
byte *__cdecl PMem_Alloc(unsigned int size, unsigned int alignment, unsigned int type, unsigned int allocType);

#ifdef __cplusplus
}
#endif



#endif


