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

#include <stdlib.h>
#include "q_shared.h"

void __cdecl Com_InitHunkMemory(void);
void __cdecl Hunk_InitDebugMemory(void);
void __cdecl Hunk_ClearTempMemory(void);
void __cdecl Hunk_ClearTempMemoryHigh(void);
void* __cdecl Hunk_AllocateTempMemory(int size);
void __cdecl Hunk_FreeTempMemory(void *buffer);
void* __cdecl Z_Malloc( int size);
void __cdecl Mem_Init(void);
void __cdecl Mem_BeginAlloc(const char*, qboolean);
void __cdecl Mem_EndAlloc(const char*, int);
void* __cdecl TempMalloc( int );
char *CopyString( const char *in );
void FreeString( char *free );
void __cdecl PMem_Free(const char*, unsigned int);
void __cdecl Sys_OutOfMemError(const char* filename, int line);
#define Z_Free free
#define S_Malloc Z_Malloc

#endif


