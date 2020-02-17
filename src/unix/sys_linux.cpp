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

#include "sys_linux.hpp"

#include "../qshared.hpp"
#include "../q_platform.hpp"

#ifndef __BSD__

#include "../qcommon_mem.hpp"
#include "../qcommon_io.hpp"
#include "../qcommon.hpp"
#include "../sys_main.hpp"
#include "../cmd.hpp"
#include "../sys_cod4defs.hpp"
#include "../sec_crypto.hpp"
#include "../sec_update.hpp"
#include "../objfile_parser.hpp"

#include <sys/resource.h>
#include <libgen.h>
#include <signal.h>
#include <sys/mman.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <dlfcn.h>
#include <dirent.h>
#include <sys/stat.h>
#include <pwd.h>
#include <execinfo.h>
#include <wait.h>
#include <sched.h>
#include <pthread.h>

char** ELF32_GetStrTable(void* buff, int len, sharedlib_data_t *text);

static char homePath[MAX_OSPATH];

/*
==================
Sys_DefaultHomePath
==================
*/


const char *Sys_DefaultHomePath(void)
{
	char *p;

	if( !*homePath )
	{
		if( ( p = getenv( "HOME" ) ) != NULL )
		{
			Com_sprintf(homePath, sizeof(homePath), "%s%c", p, PATH_SEP);
			Q_strncat(homePath, sizeof(homePath), HOMEPATH_NAME_UNIX);
		}
	}

	return homePath;
}


/*
================
Sys_TempPath
================
*/

const char *Sys_TempPath( void )
{
	const char *TMPDIR = getenv( "TMPDIR" );

	if( TMPDIR == NULL || TMPDIR[ 0 ] == '\0' )
		return "/tmp";
	else
		return TMPDIR;
}


void Sys_PrintBacktraceGDB()
{
    printf("---------- Crash Backtrace ----------\n");
    void** traces = reinterpret_cast<void**>(malloc(65536*sizeof(void*)));
    int numFrames = backtrace(traces, 65536);
    char** symbols = backtrace_symbols(traces, numFrames);
    for(int i = 0; i < numFrames; i++)
        printf("%5d: %s\n", numFrames - i -1, symbols[i]);

    free(traces);
}

void Sys_PrintBacktrace()
{
    Com_Printf(CON_CHANNEL_SYSTEM,"---------- Backtrace ----------\n");
    void** traces = reinterpret_cast<void**>(malloc(65536*sizeof(void*)));
    int numFrames = backtrace(traces, 65536);
    char** symbols = backtrace_symbols(traces, numFrames);
    for(int i = 0; i < numFrames; ++i)
        Com_Printf(CON_CHANNEL_SYSTEM,"%5d: %s\n", numFrames - i -1, symbols[i]);

    free(traces);
}

void Sys_DumpCrash(int signal, sigcontext *ctx)
{
	char hash[65];
	long unsigned size = sizeof(hash);
	
	Com_Printf(CON_CHANNEL_SYSTEM,"This program has crashed with signal: %s\n", strsignal(signal));
	Com_Printf(CON_CHANNEL_SYSTEM,"The current Gameversion is: %s %s %s type '%c' build %i %s\n", GAME_STRING,Q3_VERSION,PLATFORM_STRING, SEC_TYPE,Sys_GetBuild(), __DATE__); 
	Sec_HashFile(SEC_HASH_SHA256, Sys_ExeFile(), hash, &size, qfalse);
	//Q_strncpyz(hash, "File Hashing has not been implemented yet", sizeof(hash));
	hash[64] = '\0';
	Com_Printf(CON_CHANNEL_SYSTEM,"File is %s Hash is: %s\n", Sys_ExeFile(), hash);
	Sys_PrintBacktrace();
	Com_Printf(CON_CHANNEL_SYSTEM,"\n-- Registers ---\n");
	Com_Printf(CON_CHANNEL_SYSTEM,"edi 0x%lx\nesi 0x%lx\nebp 0x%lx\nesp 0x%lx\neax 0x%lx\nebx 0x%lx\necx 0x%lx\nedx 0x%lx\neip 0x%lx\n",ctx->edi,ctx->esi,ctx->ebp,ctx->esp,ctx->eax,ctx->ebx,ctx->ecx,ctx->edx,ctx->eip);
	Com_Printf(CON_CHANNEL_SYSTEM,"-------- Backtrace Completed --------\n");
}

/*
=================
Sys_SigHandler
=================
*/
void Sys_SigHandler( int signal, struct sigcontext ctx )
{
	if( signal == SIGSEGV || signal == SIGTRAP || signal == SIGBUS || signal == SIGIOT || signal == SIGILL || signal == SIGFPE )
	{
		Sys_DumpCrash( signal, &ctx );
	}
	Sys_DoSignalAction(signal, strsignal(signal));
}


/*
==============
Sys_PlatformInit

Unix specific initialisation
==============
*/
void Sys_PlatformInit( void )
{
    struct sigaction sa;
    sa.sa_handler = reinterpret_cast<__sighandler_t>(Sys_SigHandler);
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = SA_RESTART;

    sigaction( SIGHUP, &sa, NULL );
    sigaction( SIGQUIT, &sa, NULL );
    sigaction( SIGTRAP, &sa, NULL );
    sigaction( SIGIOT, &sa, NULL );
    sigaction( SIGBUS, &sa, NULL );

    sigaction( SIGILL, &sa, NULL );
    sigaction( SIGFPE, &sa, NULL );
    sigaction( SIGSEGV, &sa, NULL ); // No corefiles get generated with it
    sigaction( SIGTERM, &sa, NULL );
    sigaction( SIGINT, &sa, NULL );
//  sigaction( SIGCHLD, &sa, NULL );

}

void Sys_TermProcess( )
{
    while(waitpid(-1, 0, WNOHANG) > 0);
}

char** GetStrTable(void* buff, int len, sharedlib_data_t *text)
{
		return ELF32_GetStrTable(buff, len, text);
}

void Sys_SetThreadName(threadid_t tid, const char* name)
{
    pthread_t ti;
    if(tid == -1)
    {
        ti = pthread_self();
    }else{
        ti = tid;
    }
    pthread_setname_np(ti, name);
}

unsigned int Sys_GetProcessAffinityMask()
{
    unsigned int AffinityMask = 0;
    cpu_set_t set;
    int i;

    sched_getaffinity(0, sizeof(set), &set);

    for(i = 0; i < 32; ++i)
    {
        if(CPU_ISSET(i, &set))
        {
            AffinityMask |= (1 << i);
        }
    }

    return AffinityMask;
}

#endif
