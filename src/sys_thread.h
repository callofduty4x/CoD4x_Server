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

//#define THREAD_DEBUG
#include "sys_main.h"
#include <stdarg.h>


#ifndef _WIN32
	#include <pthread.h>
#endif

enum CriticalSection
{
  CRITSECT_CONSOLE = 0,
  CRITSECT_DEBUG_SOCKET = 1,
  CRITSECT_COM_ERROR = 2,
  CRITSECT_STATMON = 3,
  CRITSECT_SCRIPT_STRING = 4,
  CRITSECT_MEMORY_TREE = 5,
  CRITSECT_RD_BUFFER = 6,
  CRITSECT_SYS_EVENT_QUEUE = 7,
  CRITSECT_GPU_FENCE = 8,
  CRITSECT_FATAL_ERROR = 9,
  CRITSECT_DBHASH = 10,
  CRITSECT_PHYSICS = 11,
  CRITSECT_CVAR = 12,
  CRITSECT_AUDIO_PHYSICS = 13,
  CRITSECT_CINEMATIC = 14,
  CRITSECT_CINEMATIC_TARGET_CHANGE = 15,
  CRITSECT_CBUF = 16,
  CRITSECT_LOGFILE = 17,
  CRITSECT_PLUGIN = 18,
  CRITSECT_HTTPS = 19,
  CRITSECT_RESOLVE = 20,
  CRITSECT_FILESYSTEM = 21,
  CRITSECT_DL_MAP = 22,
  CRITSECT_COUNT = 23
};

#ifdef __cplusplus
extern "C"{
#endif

threadid_t Sys_GetCurrentThreadId( );
void __cdecl Sys_EnterCriticalSection(int section);
void __cdecl Sys_LeaveCriticalSection(int section);
void __cdecl Sys_EnterCriticalSectionInternal(int section);
void __cdecl Sys_LeaveCriticalSectionInternal(int section);
void __cdecl Sys_InitializeCriticalSections( void );
void __cdecl Sys_InitMainThread( void );
qboolean __cdecl Sys_IsMainThread( void );
bool __cdecl Sys_IsDatabaseThread( void );
bool __cdecl Sys_IsServerThread( void );
bool __cdecl Sys_IsRenderThread( void );
void Sys_SyncDatabase();
void Com_InitThreadData(int threadcontext);
void* __cdecl Sys_GetValue(int key);
void __cdecl Sys_SetValue(int key, void* value);
qboolean Sys_CreateNewThread(void* (*ThreadMain)(void*), threadid_t*, void*);
qboolean Sys_ThreadisSame(threadid_t threadid);
qboolean Sys_SetupThreadCallback(void* callbackMain,...);
qboolean Sys_CreateCallbackThread(void* threadMain,...);
void Sys_RunThreadCallbacks();
void Sys_ExitThread(int code);
void Sys_RunDelegatedEvents();
void Sys_SleepUSec(int usec);

signed int __cdecl Sys_WaitForObject(HANDLE handle);
signed int __cdecl Sys_IsObjectSignaled(HANDLE handle);
void Sys_WaitDatabaseThread();
#define MAX_VASTRINGS 2

struct va_info_t
{
  char va_string[MAX_VASTRINGS][1024];
  int index;
};

struct TraceCheckCount
{
  int global;
  int *partitions;
};


typedef struct 
{
  struct TraceCheckCount checkcount;
  struct cbrush_s *box_brush;
  struct cmodel_s *box_model;
}TraceThreadInfo;


unsigned int Sys_GetProcessAffinityMask();
void** Sys_GetThreadLocalStorage();
void Sys_SetThreadLocalStorage(void**);


#ifdef __cplusplus
}
#endif


#endif


