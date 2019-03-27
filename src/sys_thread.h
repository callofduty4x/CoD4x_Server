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
#include "cm_local.h"
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
  CRITSECT_LOGFILETHREAD = 18,
  CRITSECT_PLUGIN = 19,
  CRITSECT_HTTPS = 20,
  CRITSECT_RESOLVE = 21,
  CRITSECT_FILESYSTEM = 22,
  CRITSECT_DL_MAP = 23,
  CRITSECT_PHYSICAL_MEMORY = 24,
  CRITSECT_WATCHDOG = 25,
  CRITSECT_MISSING_ASSET = 26,
  CRITSECT_COUNT = 27
};

enum ThreadOwner
{
  THREAD_OWNER_NONE = 0x0,
  THREAD_OWNER_DATABASE = 0x1,
  THREAD_OWNER_CINEMATICS = 0x2,
  THREAD_OWNER_SHUTDOWN = 0x3
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
qboolean __cdecl Sys_IsDatabaseThread( void );
qboolean __cdecl Sys_IsServerThread( void );
qboolean __cdecl Sys_IsRenderThread( void );
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
void __cdecl Sys_WaitStartDatabase();
qboolean __cdecl Sys_SpawnDatabaseThread(void (*db_proc)(unsigned int p));
void __cdecl Sys_DatabaseCompleted();
void Sys_WakeDatabase();
void Sys_WakeDatabase2();
void Sys_NotifyDatabase();
qboolean Sys_IsDatabaseReady();
qboolean __cdecl Sys_IsDatabaseReady2();
void __cdecl Sys_SuspendDatabaseThread(enum ThreadOwner owner);
qboolean __cdecl Sys_HaveSuspendedDatabaseThread(enum ThreadOwner to);
void __cdecl Sys_ResumeDatabaseThread(enum ThreadOwner to);
void __cdecl Sys_DatabaseCompleted2();


signed int __cdecl Sys_WaitForObject(HANDLE handle);
signed int __cdecl Sys_IsObjectSignaled(HANDLE handle);
void Sys_WaitDatabaseThread();
#define MAX_VASTRINGS 2

struct va_info_t
{
  char va_string[MAX_VASTRINGS][1024];
  int index;
};

#define NUMTHREADS 2

struct TraceCheckCount
{
  int global;
  int *partitions;
};


typedef struct TraceThreadInfo
{
  struct TraceCheckCount checkcount;
  struct cbrush_t *box_brush;
  struct cmodel_t *box_model;
}TraceThreadInfo;

extern TraceThreadInfo g_traceThreadInfo[NUMTHREADS];

unsigned int Sys_GetProcessAffinityMask();
void** Sys_GetThreadLocalStorage();
void Sys_SetThreadLocalStorage(void**);


struct CriticalSection_t
{
  volatile DWORD readcount;
  volatile DWORD writecount;
};


#ifdef __cplusplus
}
#endif

#define THREAD_CONTEXT_MAIN 0
#define THREAD_CONTEXT_DATABASE 1

void Sys_SetThreadName(threadid_t tid, const char* name);

#endif


