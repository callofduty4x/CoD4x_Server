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

#include "q_shared.h"
#include "sys_thread.h"
#include "qcommon.h"
#include "qcommon_io.h"
#include "sys_main.h"
#include "sys_thread.h"

#include <string.h>
#include <stdarg.h>
#include <stdbool.h>



HANDLE databaseCompletedEvent;
HANDLE databaseCompletedEvent2;
HANDLE wakeDatabaseEvent;
HANDLE resumedDatabaseEvent;
enum ThreadOwner g_databaseThreadOwner;
threadid_t threadId[NUMTHREADS];
#ifdef __WIN32
HANDLE threadHandle[NUMTHREADS];
#else
threadid_t threadHandle[NUMTHREADS];
#endif
const char* s_threadNames[] = { "Mainthread", "Database" };
void (*threadFunc[NUMTHREADS])(unsigned int p);

//Thread local buffers
struct va_info_t va_info[NUMTHREADS];
jmp_buf g_com_error[NUMTHREADS];
TraceThreadInfo g_traceThreadInfo[NUMTHREADS];





#define MAX_KEYS 3

void* sys_valuestoreage[NUMTHREADS][MAX_KEYS];

void* __cdecl Sys_GetValue(int key)
{
    void **s;

    if(key < 1 || key > MAX_KEYS)
	Com_Error(ERR_FATAL, "Sys_GetValue: Invalid value");



    s = Sys_GetThreadLocalStorage();
    if(!s)
    {
        return NULL;
    }
    return s[key -1];
}

void __cdecl Sys_SetValue(int key, void* value)
{
    void **s;

    if(key < 1 || key > MAX_KEYS)
	Com_Error(ERR_FATAL, "Sys_GetValue: Invalid value");




    s = Sys_GetThreadLocalStorage();
    if(!s)
    {
        return;
    }
    s[key -1] = value;
}

#ifdef THREAD_DEBUG
static int mutex_depth[CRITSECT_COUNT] = { 0 };

#ifdef _WIN32

#include <windows.h>

static void threadDebugPrint(const char *fmt, ...)
{
	DWORD cCharsWritten;
	va_list		argptr;
	char		msg[8192];
	static HANDLE conhandle = 0;

	va_start (argptr, fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

	if(conhandle == 0)
	{
		AllocConsole();
		conhandle = GetStdHandle(STD_OUTPUT_HANDLE);
	}
	if(conhandle == 0)
	{
		return;
	}
	WriteConsoleA(conhandle, msg, strlen(msg), &cCharsWritten, NULL);
}

#else
//Linux
static threadDebugPrint(const char *fmt, ...)
{
	va_list		argptr;
	char		msg[8192];

	va_start (argptr, fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);
	printf("%s", msg);
}

#endif
#endif //threaddebug

void Sys_EnterCriticalSection(int section)
{
#ifdef THREAD_DEBUG

	if( section != CRITSECT_COM_ERROR)
		threadDebugPrint("Sys_EnterCriticalSection for Thread: %d Section: %d Depth: %d\n", Sys_GetCurrentThreadId(), section, mutex_depth[section]);
	mutex_depth[section] ++;
#endif
/*	if(Com_InError() && section != CRITSECT_COM_ERROR && Sys_IsMainThread() == qtrue)
	{
		Com_Error(0, "Error Cleanup");
	}
*/
	Sys_EnterCriticalSectionInternal(section);

#ifdef THREAD_DEBUG
	if( section != CRITSECT_COM_ERROR)
		threadDebugPrint("Section %d Locked for: %d\n", section, Sys_GetCurrentThreadId());
#endif

}

void Sys_LeaveCriticalSection(int section)
{
#ifdef THREAD_DEBUG
	mutex_depth[section] --;
	if( section != CRITSECT_COM_ERROR)
		threadDebugPrint("Sys_LeaveCriticalSection for Thread: %d Section: %d\n", Sys_GetCurrentThreadId(), section);
#endif
	Sys_LeaveCriticalSectionInternal(section);
}

#define MAX_CALLBACKS 20
#define MAX_CALLBACKARGS 8
typedef struct{
	void (*callbackMain)();
	void (*threadMain)(void* a, ...);
	qboolean isActive;
	qboolean lock;
	void* callback_args[MAX_CALLBACKARGS];
	void* thread_args[MAX_CALLBACKARGS];
	threadid_t tid;
}thread_callback_t;

thread_callback_t thread_callbacks[MAX_CALLBACKS];


void Sys_RunThreadCallbacks()
{
	int i;
	thread_callback_t* tcb;

	for ( tcb = thread_callbacks, i = 0; i < MAX_CALLBACKS ; i++) {

		if(tcb->lock == qfalse || tcb->isActive == qfalse){
			continue;
		}

		if(thread_callbacks[i].callbackMain != NULL)
			thread_callbacks[i].callbackMain(tcb->callback_args[0], tcb->callback_args[1], tcb->callback_args[2], tcb->callback_args[3],
											 tcb->callback_args[4], tcb->callback_args[5], tcb->callback_args[6], tcb->callback_args[7]);

		Com_Memset(&thread_callbacks[i], 0, sizeof(thread_callback_t));

	}
}



void* Sys_CbThreadStub(void* arg)
{
#ifdef THREAD_DEBUG
	threadDebugPrint( "Created new Thread: %d\n", Sys_GetCurrentThreadId());
#endif

	thread_callback_t *tcb = arg;

	tcb->threadMain(tcb->thread_args[0], tcb->thread_args[1], tcb->thread_args[2], tcb->thread_args[3],
					tcb->thread_args[4], tcb->thread_args[5], tcb->thread_args[6], tcb->thread_args[7]); //real main-thread
	tcb->isActive = qtrue;
	return NULL;
}

qboolean Sys_SetupThreadCallback(void* callbackMain,...)
{
	thread_callback_t* tcb;
	int i;
	va_list		argptr;

	if(Sys_IsMainThread() == qtrue)
	{
		Com_Error(ERR_FATAL, "Sys_SetupThreadCallback: Can not call this function from the main-thread!\n");
		return qfalse;
	}

	for ( tcb = thread_callbacks, i = 0; i < MAX_CALLBACKS ; i++, tcb++) {
		if(Sys_ThreadisSame(tcb->tid))
		{
			break;
		}
	}
	if(i == MAX_CALLBACKS)
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"Couldn't find this thread\n");
		return qfalse;
	}

	va_start(argptr, callbackMain);

	for(i = 0; i < MAX_CALLBACKARGS; i++)
		tcb->callback_args[i] = va_arg(argptr, void*);

	va_end(argptr);

	tcb->callbackMain = callbackMain;
	return qtrue;

}

qboolean Sys_CreateCallbackThread(void* threadMain,...)
{
	thread_callback_t* tcb;

	int i;
	va_list		argptr;
	qboolean	success;

	if(Sys_IsMainThread() == qfalse)
	{
		Com_Error(ERR_FATAL, "Sys_CreateCallbackThread: Can only call this function from the main-thread!\n");
		return qfalse;
	}

	for ( tcb = thread_callbacks, i = 0; i < MAX_CALLBACKS ; i++, tcb++) {
		if(tcb->threadMain == NULL)
		{
			break;
		}
	}
	if(i == MAX_CALLBACKS)
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"Couldn't create a callback-thread. Max handles exceeded\n");
		return qfalse;
	}

	va_start(argptr, threadMain);

	for(i = 0; i < MAX_CALLBACKARGS; i++)
		tcb->thread_args[i] = va_arg(argptr, void*);

	va_end(argptr);

	tcb->lock = qtrue;
	tcb->isActive = qfalse;
	tcb->threadMain = threadMain;
	tcb->callbackMain = NULL;
	success = Sys_CreateNewThread(Sys_CbThreadStub, &tcb->tid, tcb);
	if(success == qfalse)
		tcb->isActive = qtrue;
	return success;
}


qboolean Sys_IsDatabaseReady()
{
  return Sys_IsObjectSignaled(databaseCompletedEvent) == 1;
}

void Sys_WaitStartDatabase()
{
  Sys_WaitForObject(wakeDatabaseEvent);
}

qboolean Sys_IsDatabaseThread()
{
  threadid_t curtid;

  curtid = Sys_GetCurrentThreadId();
  return curtid == threadId[1];
}

qboolean Sys_IsServerThread()
{
/*
  threadid_t curtid;

  curtid = Sys_GetCurrentThreadId();
  return curtid == threadId[2];
*/
    return false;
}


qboolean Sys_IsRenderThread()
{
/*
  threadid_t curtid;

  curtid = Sys_GetCurrentThreadId();
  return curtid == threadId[3];
*/
    return false;
}


void Sys_WakeDatabase()
{
  Sys_ResetEvent(databaseCompletedEvent);
}

void __cdecl Sys_SuspendDatabaseThread(enum ThreadOwner owner)
{
  g_databaseThreadOwner = owner;
  Sys_ResetEvent(resumedDatabaseEvent);
}

void __cdecl Sys_DatabaseCompleted()
{
  Sys_SetEvent(databaseCompletedEvent);
}


void __cdecl Sys_ResumeDatabaseThread(enum ThreadOwner to)
{
  g_databaseThreadOwner = 0;
  Sys_SetEvent(resumedDatabaseEvent);
}

void Sys_WakeDatabase2()
{
  Sys_ResetEvent(databaseCompletedEvent2);
}

qboolean __cdecl Sys_IsDatabaseReady2()
{
  bool signaled = Sys_IsObjectSignaled(databaseCompletedEvent2) == 1;
  return signaled;
}

void __cdecl Sys_DatabaseCompleted2()
{
  Sys_SetEvent(databaseCompletedEvent2);
}

void __cdecl Sys_SyncDatabase()
{
  Sys_WaitForObject(databaseCompletedEvent);
}

qboolean __cdecl Sys_HaveSuspendedDatabaseThread(enum ThreadOwner to)
{
  return g_databaseThreadOwner == to;
}

void __cdecl Sys_NotifyDatabase()
{
  Sys_SetEvent(wakeDatabaseEvent);
}

void __cdecl Sys_WaitDatabaseThread()
{
  Sys_WaitForObject(resumedDatabaseEvent);
}


void* __cdecl Sys_ThreadMain(void *parameter)
{
  unsigned int p = (unsigned int)parameter;
  assert(p < 2);
  assert(threadFunc[p] != NULL);

  Sys_SetThreadName(-1, s_threadNames[p]);
  Com_InitThreadData(p);
  threadFunc[p](p);
  return NULL;
}


unsigned int s_cpuCount, s_affinityMaskForProcess;
unsigned int s_affinityMaskForCpu[8];



qboolean __cdecl Sys_SpawnDatabaseThread(void (*db_proc)(unsigned int p))
{
  wakeDatabaseEvent = Sys_CreateEvent(0, 0, "wakeDatabaseEvent");
  databaseCompletedEvent = Sys_CreateEvent(1, 1, "databaseCompletedEvent");
  databaseCompletedEvent2 = Sys_CreateEvent(1, 1, "databaseCompletedEvent2");
  resumedDatabaseEvent = Sys_CreateEvent(1, 1, "resumedDatabaseEvent");
  threadFunc[THREAD_CONTEXT_DATABASE] = db_proc;

  threadId[THREAD_CONTEXT_DATABASE] = 0;
  threadHandle[THREAD_CONTEXT_DATABASE] = Sys_CreateThreadWithHandle(Sys_ThreadMain, &threadId[THREAD_CONTEXT_DATABASE], (void*)THREAD_CONTEXT_DATABASE);

  if ( threadHandle[THREAD_CONTEXT_DATABASE] )
  {
#ifdef __WIN32
    if ( s_cpuCount == 1 )
    {
      SetThreadIdealProcessor(threadHandle[THREAD_CONTEXT_DATABASE], 0);
    }
    else if ( s_cpuCount == 2 )
    {
      SetThreadIdealProcessor(threadHandle[THREAD_CONTEXT_DATABASE], 1u);
    }
    else
    {
      SetThreadIdealProcessor(threadHandle[THREAD_CONTEXT_DATABASE], 2u);
    }
#endif
    //ResumeThread(threadHandle[THREAD_CONTEXT_DATABASE]);
    return qtrue;
  }

  return qfalse;
}


void __cdecl Com_InitThreadData(int threadContext)
{
  Sys_SetThreadLocalStorage(sys_valuestoreage[threadContext]);

  Sys_SetValue(1, &va_info[threadContext]);
  Sys_SetValue(2, &g_com_error[threadContext]);
  Sys_SetValue(3, &g_traceThreadInfo[threadContext]);
/*
  if ( threadContext == 1 )
  {
    Sys_SetValue(4, &args);
  }
  else
  {
    Sys_SetValue(4, &g_cmd_args);
  }
*/
}

void __cdecl Sys_InitThreadAffinity()
{
  unsigned int cpuCount;
  unsigned int threadAffinityMask;
  unsigned int affinityMaskBits[32];
  unsigned int processAffinityMask;

  processAffinityMask = Sys_GetProcessAffinityMask();

  s_affinityMaskForProcess = processAffinityMask;
  cpuCount = 0;
  for ( threadAffinityMask = 1; processAffinityMask & -threadAffinityMask; threadAffinityMask *= 2 )
  {
    if ( processAffinityMask & threadAffinityMask )
    {
      affinityMaskBits[cpuCount++] = threadAffinityMask;
      if ( cpuCount == 32 )
      {
        break;
      }
    }
  }
  if ( cpuCount && cpuCount != 1 )
  {
    s_cpuCount = cpuCount;
    s_affinityMaskForCpu[0] = affinityMaskBits[0];
    s_affinityMaskForCpu[1] = affinityMaskBits[cpuCount -1];
    if ( cpuCount != 2 )
    {
      if ( cpuCount == 3 )
      {
        s_affinityMaskForCpu[2] = affinityMaskBits[1];
      }
      else if ( cpuCount == 4 )
      {
        s_affinityMaskForCpu[2] = affinityMaskBits[1];
        s_affinityMaskForCpu[3] = affinityMaskBits[2];
      }
      else
      {
        s_affinityMaskForCpu[0] = -1;
        s_affinityMaskForCpu[1] = -1;
        s_affinityMaskForCpu[2] = -1;
        s_affinityMaskForCpu[3] = -1;
        s_affinityMaskForCpu[4] = -1;
        s_affinityMaskForCpu[5] = -1;
        s_affinityMaskForCpu[6] = -1;
        s_affinityMaskForCpu[7] = -1;
        if ( s_cpuCount >= 8 )
        {
          s_cpuCount = 8;
        }
      }
    }
  }
  else
  {
    s_cpuCount = 1;
    s_affinityMaskForCpu[0] = -1;
  }
}


void Sys_InitMainThread()
{
    threadId[0] = Sys_GetCurrentThreadId();
#ifdef __WIN32
    HANDLE process = GetCurrentProcess();
    HANDLE pseudoHandle = GetCurrentThread();
    DuplicateHandle(process, pseudoHandle, process, threadHandle, 0, 0, 2u);
#else
    threadHandle[THREAD_CONTEXT_MAIN] = threadId[THREAD_CONTEXT_MAIN];
#endif

    Sys_InitThreadAffinity();

#ifdef __WIN32
    SetThreadIdealProcessor(threadHandle[THREAD_CONTEXT_MAIN], 0);
#endif

    Com_InitThreadData(THREAD_CONTEXT_MAIN);
}
