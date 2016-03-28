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

cvar_t* com_hunkMegs;


void* Mem_AlignedAlloc(unsigned int align, unsigned int size)
{
    void* newmem;

    newmem = calloc(1, size + align);
    if(newmem == NULL)
        return NULL;

    return (void*)((unsigned int)newmem + ((unsigned int)newmem % align));

}

void Mem_Init()
{

    void *memory;
    int sizeofmemory;
    com_hunkMegs = Cvar_RegisterInt("com_hunkMegs", 250, 150, 600, CVAR_LATCH, "Number of megabytes allocated for the hunk memory");
    sizeofmemory = 1024*1024 * (com_hunkMegs->integer);
    memory = Mem_AlignedAlloc(0x1000, sizeofmemory);
    memset(memory, 0, sizeofmemory);
    memset((void*)0x1407e7a0, 0, 0x21C);
    *(int**)(0x1407e7a0) = memory;
    *(int*)(0x1407e8b8) = sizeofmemory;

}


/*
========================
CopyString

 NOTE:	never write over the memory CopyString returns because
		memory from a memstatic_t might be returned
========================
*/
char *CopyString( const char *in ) {
	char    *out;

/*	if ( !in[0] )
		return "";
*/
	out = Z_Malloc( strlen( in ) + 1 );
	strcpy( out, in );
	return out;
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

void* Z_Malloc(int size)
{
	void *allocmem;
	allocmem = malloc(size);
	if(!allocmem)
	{
		Com_Error(ERR_FATAL, "System is out of memory!\n");
		return NULL;
	}
	memset(allocmem, 0, size);
	return allocmem;
}

