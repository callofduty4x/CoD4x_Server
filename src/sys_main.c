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



#include "q_shared.h"
#include "sys_main.h"
#include "q_platform.h"
#include "qcommon_io.h"
#include "qcommon_logprint.h"
#include "qcommon.h"
#include "qcommon_mem.h"
#include "sys_cod4defs.h"
#include "filesystem.h"
#include "sys_thread.h"
#include "punkbuster.h"
#include "server.h"
#include "sec_crypto.h"
#include "cmd.h"
#include "sapi.h"
#include "xassets/extractor.h"
#include <libgen.h>
#include <signal.h>
#include <stdarg.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/time.h>

#define MAX_QUED_EVENTS 256

#define MAX_CMD 1024
static char exit_cmdline[MAX_CMD + MAX_OSPATH] = "";

static char binaryPath[ MAX_OSPATH ] = { 0 };
static char installPath[ MAX_OSPATH ] = { 0 };
static char exeFilename[ MAX_OSPATH ] = { 0 };
static char exeFilenameShort[ MAX_OSPATH ] = { 0 };
static char cmdline[MAX_CMD + MAX_OSPATH] = "";

#ifndef MAXPRINTMSG
#define MAXPRINTMSG 1024
#endif

cvar_t* sys_shutdowntimeout;

/*
================
Sys_Milliseconds
================
*/
/* base time in seconds, that's our origin
   timeval:tv_sec is an int:
   assuming this wraps every 0x7fffffff - ~68 years since the Epoch (1970) - we're safe till 2038
   using unsigned long data type to work right with Sys_XTimeToSysTime */
/* current time in ms, using sys_timeBase as origin
   NOTE: sys_timeBase*1000 + curtime -> ms since the Epoch
	 0x7fffffff ms - ~24 days
   although timeval:tv_usec is an int, I'm not sure wether it is actually used as an unsigned int
	 (which would affect the wrap period) */

unsigned int sys_timeBase;

unsigned int Sys_Milliseconds( void )
{
	struct timeval tp;

	gettimeofday( &tp, NULL );

	return ( tp.tv_sec - sys_timeBase ) * 1000 + tp.tv_usec / 1000;
}

unsigned long long Sys_MillisecondsLong( void )
{
	unsigned long long time;

	struct timeval tp;

	gettimeofday( &tp, NULL );

	time = (unsigned long long)tp.tv_sec - (unsigned long long)sys_timeBase;
	time = time * 1000 + tp.tv_usec / 1000;
	return time;
}


void Sys_TimerInit( void ) {
	struct timeval tp;

	gettimeofday( &tp, NULL );

	if ( !sys_timeBase )
	{
		sys_timeBase = tp.tv_sec;
	}
}


/*
================
Sys_Microseconds
================
*/
/* base time in seconds, that's our origin
   timeval:tv_sec is an int:
   assuming this wraps every 0x7fffffff - ~68 years since the Epoch (1970) - we're safe till 2038
   using unsigned long data type to work right with Sys_XTimeToSysTime */
/* current time in ms, using sys_timeBase as origin
   NOTE: sys_timeBase*1000 + curtime -> ms since the Epoch
	 0x7fffffff ms - ~24 days
   although timeval:tv_usec is an int, I'm not sure wether it is actually used as an unsigned int
	 (which would affect the wrap period) */
unsigned long long Sys_MicrosecondsLong( void ) {
	struct timeval tp;
	unsigned long long orgtime;
	unsigned long long time;

	gettimeofday( &tp, NULL );

	orgtime = tp.tv_sec - sys_timeBase;

	time = (orgtime << 19);
	time = time + (orgtime << 18);
	time = time + (orgtime << 17);
	time = time + (orgtime << 16);
	time = time + (orgtime << 14);
	time = time + (orgtime << 9);
	time = time + (orgtime << 6);
	time = time + (unsigned long long)tp.tv_usec;

	return time;
}


int Sys_Seconds( void ) {
	struct timeval tp;

	gettimeofday( &tp, NULL );

	return tp.tv_sec - sys_timeBase;
}

/*
=================
Sys_Exit

Single exit point (regular exit or in case of error)
=================
*/
static __attribute__ ((noreturn)) void Sys_Exit( int exitCode ) {

	CON_Shutdown();
	// we may be exiting to spawn another process
	if ( exit_cmdline[0] != '\0' ) {
		// possible race conditions?
		// buggy kernels / buggy GL driver, I don't know for sure
		// but it's safer to wait an eternity before and after the fork
		Sys_SleepSec( 1 );
		Sys_ReplaceProcess( exit_cmdline );
		Sys_SleepSec( 1 );
	}

	// We can't do this
	// as long as GL DLL's keep installing with atexit...
	Sys_ExitForOS( exitCode );
}

/*
=================
Sys_Quit
=================
*/
void Sys_Quit( void )
{
	Sys_Exit( 0 );
}

/*
=================
Sys_SetExitCmdline
=================
*/

void Sys_SetExitCmdline(const char* cmdline)
{
	if(strlen(cmdline) >= sizeof(exit_cmdline))
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"Sys_SetExitCmdline: Exceeded length of %d characters.\n", sizeof(exit_cmdline) -1);
	}
	Q_strncpyz(exit_cmdline, cmdline, sizeof(exit_cmdline));
}

/*
=================
Sys_GetCommandline
=================
*/

const char* Sys_GetCommandline( void )
{
    return cmdline;
}


/*
=================
Sys_DoSignalAction
=================
*/
void Sys_DoSignalAction( int signal, const char* sigstring )
{
	static qboolean signalcaught = qfalse;
	char termmsg[MAX_STRING_CHARS];
#ifndef _WIN32
	if(signal == SIGCHLD)
	{
		Sys_TermProcess();
		return;
	}
#endif
	Com_Printf(CON_CHANNEL_SYSTEM, "Received signal: %s, exiting...\n", sigstring );

	if( signalcaught )
	{
		Com_Printf(CON_CHANNEL_SYSTEM, "DOUBLE SIGNAL FAULT: Received signal: %s, exiting...\n", sigstring);
	}

	else
	{
		signalcaught = qtrue;
		Sys_BeginShutdownWatchdog();
		Com_Printf(CON_CHANNEL_SYSTEM,"Server received signal: %s\nShutting down server...\n", sigstring);
		Com_sprintf(termmsg, sizeof(termmsg), "\nServer received signal: %s\nTerminating server...", sigstring);
		SV_Shutdown( termmsg );
		SV_SApiShutdown();
		Sys_EnterCriticalSection( 2 );

		Com_CloseLogFiles(); //close all open logfiles
		FS_Shutdown(qtrue);
	}

	if( signal == SIGTERM || signal == SIGINT )
		Sys_Exit( 1 );
	else
		Sys_Exit( 2 );
}


void Sys_PrintBinVersion( const char* name ) {

	char* sep = "==============================================================";
	fprintf( stdout, "\n\n%s\n", sep );

	fprintf( stdout, "%s %s %s build %i %s\n", GAME_STRING,Q3_VERSION,PLATFORM_STRING, Sys_GetBuild(), __DATE__);

	fprintf( stdout, " local install: %s\n", name );
	fprintf( stdout, "%s\n\n", sep );
}


/*
=============
Sys_Error

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
__cdecl void QDECL Sys_Error( const char *fmt, ... ) {

	FILE * fdout;
	char* fileout = "sys_error.txt";
	va_list		argptr;
	char		msg[MAXPRINTMSG];
	char		buffer[MAXPRINTMSG];

	Sys_BeginShutdownWatchdog();

	va_start (argptr,fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

	Com_sprintf(buffer, sizeof(buffer), "\nSys_Error: %s\n", msg);

	//Print the error to our console
	Sys_Print( buffer );

	//Try to write the error into a file
	fdout=fopen(fileout, "w");
	if(fdout){
		fwrite(buffer, strlen(buffer), 1 ,fdout);
		fclose(fdout);
	}

	Sys_WaitForErrorConfirmation( msg );

	Sys_Exit( 1 ); // bk010104 - use single exit point.
}


/*
================
Sys_Init
================
*/
void Sys_Init()
{
	Cvar_RegisterString("arch", OS_STRING "-" ARCH_STRING, CVAR_ROM, "System platform");
	Cvar_RegisterString("username", Sys_GetUsername(), CVAR_ROM, "Current username");

}

/*
=================
Sys_Print
=================
*/
void Sys_Print( const char *msg )
{
	Sys_EnterCriticalSection(CRITSECT_CONSOLE);

//	CON_LogWrite( msg );
	CON_Print( msg );

	Sys_LeaveCriticalSection(CRITSECT_CONSOLE);

}

/*
=================
Sys_ConsoleInput

Handle new console input
=================
*/
char *Sys_ConsoleInput(void)
{
	return CON_Input( );
}


/*
=================
Sys_SetBinaryPath
=================
*/
void Sys_SetBinaryPath(const char *path)
{
	Q_strncpyz(binaryPath, path, sizeof(binaryPath));
}

/*
=================
Sys_SetExeFile
=================
*/
void Sys_SetExeFile(const char *filepath)
{
	Q_strncpyz(exeFilename, filepath, sizeof(exeFilename));
}

void Sys_SetExeFileShort(const char *filepath)
{
	Q_strncpyz(exeFilenameShort, filepath, sizeof(exeFilenameShort));
}

/*
=================
Sys_ExeFile
=================
*/
const char* Sys_ExeFile( void )
{
	return exeFilename;
}

const char* Sys_ExeFileShort( void )
{
	return exeFilenameShort;
}

/*
=================
Sys_BinaryPath
=================
*/
const char *Sys_BinaryPath(void)
{
	return binaryPath;
}

/*
=================
Sys_SetDefaultInstallPath
=================
*/
void Sys_SetDefaultInstallPath(const char *path)
{
	Q_strncpyz(installPath, path, sizeof(installPath));
}

/*
=================
Sys_DefaultInstallPath
=================
*/
char *Sys_DefaultInstallPath(void)
{
	if (*installPath)
		return installPath;
	else
		return Sys_Cwd();
}

/*
=================
Sys_DefaultCDPath
=================
*/
char *Sys_DefaultCDPath(void)
{
	return "";
}

/*
=================
Sys_DefaultAppPath
=================
*/
const char *Sys_DefaultAppPath(void)
{
	return Sys_BinaryPath();
}


#ifndef DEFAULT_BASEDIR
#	ifdef MACOS_X
#		define DEFAULT_BASEDIR Sys_StripAppBundle(Sys_BinaryPath())
#	else
#		define DEFAULT_BASEDIR Sys_BinaryPath()
#	endif
#endif


int Sys_Main(char* commandLine){

    Q_strncpyz(cmdline, commandLine, sizeof(cmdline));

    Sys_SetDefaultInstallPath( DEFAULT_BASEDIR );

    Sys_TimerInit( );

    Sys_PlatformInit( );

    Sys_InitializeCriticalSections();

    Sys_InitMainThread();
//    Sys_ThreadMain();

    Com_InitSmallZoneMemory( );

    CON_Init();
    extractor_init();
/*    Sys_ImageFindConstant();   */

    Com_Init( commandLine );

	sys_shutdowntimeout = Cvar_RegisterInt("sys_shutdowntimeout", 60, 30, 1200, CVAR_ARCHIVE, "When server is going to shutdown there will be a timeout in seconds after server gets killed in case it is still running");

    while ( 1 )
    {
        Com_Frame();
    }

}

void Sys_Restart(const char* reason)
{
	char commandline[1024];

	Sys_BeginShutdownWatchdog();

	SV_Shutdown( reason );
	SV_SApiShutdown( );
	Com_sprintf(commandline, sizeof(commandline), "%s %s", Sys_ExeFile(), Sys_GetCommandline());
	Com_Printf(CON_CHANNEL_SYSTEM,"Restart commandline is: %s\n", commandline);
	Sys_SetExitCmdline(commandline);
	Com_Quit_f();
}


void Sys_BeginLoadThreadPriorities()
{

}

void Sys_EndLoadThreadPriorities()
{

}


void* Sys_ShutdownWatchdogThread(void* arg)
{
	int timeoutsec = (int)arg;
	int maxmsec = timeoutsec * 1000 + Sys_Milliseconds();

	do{
		Sys_SleepSec(1);
	}while(Sys_Milliseconds() < maxmsec);

	_exit(-64);
	return NULL;
}

void Sys_BeginShutdownWatchdog()
{
	static qboolean watchdogActive = false;
	if(watchdogActive)
	{
		return;
	}
	threadid_t tinfo;
	int timeout = 30;
	if(sys_shutdowntimeout)
	{
		timeout = sys_shutdowntimeout->integer;
	}
	watchdogActive = true;
	Sys_CreateNewThread(Sys_ShutdownWatchdogThread, &tinfo, (void*)timeout);

}

void Sys_Sleep(int msec)
{
    Sys_SleepMSec(msec);
}