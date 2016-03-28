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



//This are dummy functions for the single thread server :D

#include "q_shared.h"
#include "sys_thread.h"
#include "qcommon.h"
#include "qcommon_io.h"
#ifdef THREAD_DEBUG
#include "sys_main.h"
#endif
#include <string.h>
#include <stdarg.h>



qboolean __cdecl Sys_IsDatabaseThread( void )
{
	return qfalse;
}


#define MAX_KEYS 3

const void* sys_valuestoreage[MAX_KEYS];

const void* __cdecl Sys_GetValue(int key)
{
	if(key < 1 || key > MAX_KEYS)
		Com_Error(ERR_FATAL, "Sys_GetValue: Invalid value");

    return sys_valuestoreage[key -1];
}

void __cdecl Sys_SetValue(int key, const void* value)
{
	if(key < 1 || key > MAX_KEYS)
		Com_Error(ERR_FATAL, "Sys_GetValue: Invalid value");

    sys_valuestoreage[key -1] = value;
}

#ifdef THREAD_DEBUG
static int mutex_depth[CRIT_SIZE] = { 0 };

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

	if( section != CRIT_ERRORCHECK)
		threadDebugPrint("Sys_EnterCriticalSection for Thread: %d Section: %d Depth: %d\n", Sys_GetCurrentThreadId(), section, mutex_depth[section]);
	mutex_depth[section] ++;
#endif
/*	if(Com_InError() && section != CRIT_ERROR && Sys_IsMainThread() == qtrue)
	{
		Com_Error(0, "Error Cleanup");
	}
*/
	Sys_EnterCriticalSectionInternal(section);

#ifdef THREAD_DEBUG
	if( section != CRIT_ERRORCHECK)
		threadDebugPrint("Section %d Locked for: %d\n", section, Sys_GetCurrentThreadId());
#endif

}

void Sys_LeaveCriticalSection(int section)
{
#ifdef THREAD_DEBUG
	mutex_depth[section] --;
	if( section != CRIT_ERRORCHECK)
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
		Com_PrintError("Couldn't find this thread\n");
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
		Com_PrintError("Couldn't create a callback-thread. Max handles exceeded\n");
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
