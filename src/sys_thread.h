/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

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



#ifndef __SYS_THREAD_H__
#define __SYS_THREAD_H__

#include <stdarg.h>


#ifdef _WIN32
	typedef DWORD threadid_t;
#else
	#include <pthread.h>
	typedef pthread_t threadid_t;
#endif

typedef enum
{
	CRIT_CONSOLE = 0,
	CRIT_ERRORCHECK = 1,
	CRIT_ERROR = 2,
	CRIT_STATMON = 3,
	CRIT_SCRSTRINGGLOB = 4,
	CRTI_MEMTREE = 5,
	CRIT_REDIRECTPRINT = 6,
	CRIT_EVENTQUEUE = 7,
	CRIT_GPUFENCE = 8,
	CRIT_RENDER = 9,
	CRIT_FILESYSTEM = 10,
	CRIT_PHYSIC = 11,
	CRIT_MISC = 12,
	CRIT_SOUND = 13,
	CRIT_CINAMATIC1 = 14,
	CRIT_CINEMATIC2 = 15,
	CRIT_CBUF = 16,
	CRIT_LOGFILE = 17,
	CRIT_PLUGIN = 18,
	CRIT_HTTPS = 19,
	CRIT_CVAR = 20,
	CRIT_SIZE
}crit_section_t;

threadid_t Sys_GetCurrentThreadId( );
void __cdecl Sys_EnterCriticalSection(int section);
void __cdecl Sys_LeaveCriticalSection(int section);
void __cdecl Sys_EnterCriticalSectionInternal(int section);
void __cdecl Sys_LeaveCriticalSectionInternal(int section);
void __cdecl Sys_InitializeCriticalSections( void );
void __cdecl Sys_ThreadMain( void );
qboolean __cdecl Sys_IsMainThread( void );
qboolean __cdecl Sys_IsDatabaseThread( void );
void Com_InitThreadData(void);
const void* __cdecl Sys_GetValue(int key);
void __cdecl Sys_SetValue(int key, const void* value);
qboolean Sys_CreateNewThread(void* (*ThreadMain)(void*), threadid_t*, void*);
qboolean Sys_ThreadisSame(threadid_t threadid);
qboolean Sys_SetupThreadCallback(void* callbackMain,...);
qboolean Sys_CreateCallbackThread(void* threadMain,...);
void Sys_RunThreadCallbacks();
void Sys_ExitThread(int code);


void Sys_RunDelegatedEvents();

void Sys_Sleep(int usec);
#endif
