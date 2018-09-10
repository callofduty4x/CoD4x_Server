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
#include "qcommon.h"
#include "filesystem.h"
#include "sys_thread.h"
#include "sys_main.h"

#include <stdarg.h>
#include <time.h>
#include <string.h>

#ifdef MAXPRINTMSG
#undef MAXPRINTMSG
#endif

#define MAXPRINTMSG 8*1024

struct logfileInfo_t
{
    fileHandle_t fh;
    qboolean wantclose;
};

static volatile fileHandle_t logfile;
static volatile fileHandle_t adminlogfile;
static volatile fileHandle_t debuglogfile;
static volatile fileHandle_t enterleavelogfile;
static volatile fileHandle_t gamelogfile; //copy of level.logfile


fileHandle_t Com_OpenLogfile(const char* name, char mode);
int Com_WriteLog(const char* data, int len, fileHandle_t f);


void QDECL SV_EnterLeaveLog( const char *fmt, ... ) {

	va_list		argptr;
	char		msg[MAXPRINTMSG];
	char		inputmsg[MAXPRINTMSG];
	struct tm 	*newtime;
	char*		ltime;
	time_t		realtime;

	Sys_EnterCriticalSection(CRITSECT_LOGFILE);

        // logfile
	if ( com_logfile && com_logfile->integer ) {
        // TTimo: only open the qconsole.log if the filesystem is in an initialized state
        // also, avoid recursing in the qconsole.log opening (i.e. if fs_debug is on)

	    va_start (argptr,fmt);
	    Q_vsnprintf (inputmsg, sizeof(inputmsg), fmt, argptr);
	    va_end (argptr);

	    Com_UpdateRealtime();
	    realtime = Com_GetRealtime();
	    newtime = localtime( &realtime );
	    ltime = asctime( newtime );
	    ltime[strlen(ltime)-1] = 0;

	    if ( !enterleavelogfile && FS_Initialized()) {

				enterleavelogfile = Com_OpenLogfile( "enterleave.log", 'a' );
				// force it to not buffer so we get valid
				if ( enterleavelogfile )
				{
					FS_ForceFlush(enterleavelogfile);
#ifdef _WIN32
					Com_sprintf(msg, sizeof(msg), "\r\nLogfile opened on %s\r\n\r\n", ltime);
#else
					Com_sprintf(msg, sizeof(msg), "\nLogfile opened on %s\n\n", ltime);
#endif
				}
	    }

	    if ( enterleavelogfile && FS_Initialized()) {
				Com_sprintf(msg, sizeof(msg), "%s: %s\n", ltime, inputmsg);
#ifdef _WIN32
				char outstring[2* MAXPRINTMSG];
				int stringlen = Q_strLF2CRLF(msg, outstring, sizeof(outstring) );
				Com_WriteLog( outstring, stringlen, enterleavelogfile );
#else
				Com_WriteLog( msg, strlen(msg), enterleavelogfile);
#endif
	    }

	}
	Sys_LeaveCriticalSection(CRITSECT_LOGFILE);
}


void QDECL Com_PrintAdministrativeLog( const char *msg ) {

	Sys_EnterCriticalSection(CRITSECT_LOGFILE);

	struct tm 	*newtime;
	char*		ltime;
	time_t		realtime;
	char		logwritestart[256];

        // logfile
	if ( com_logfile && com_logfile->integer ) {
        // TTimo: only open the qconsole.log if the filesystem is in an initialized state
        //   also, avoid recursing in the qconsole.log opening (i.e. if fs_debug is on)


	    if ( !adminlogfile && FS_Initialized()) {

				Com_UpdateRealtime();
				realtime = Com_GetRealtime();
				newtime = localtime( &realtime );
				ltime = asctime( newtime );
				ltime[strlen(ltime)-1] = 0;


				adminlogfile = Com_OpenLogfile( "adminactions.log", 'a' );
				// force it to not buffer so we get valid
				if ( adminlogfile ){
					FS_ForceFlush(adminlogfile);
#ifdef _WIN32
					Com_sprintf(logwritestart, sizeof(logwritestart), "\r\nLogfile opened on %s\r\n\r\n", ltime);
#else
					Com_sprintf(logwritestart, sizeof(logwritestart), "\nLogfile opened on %s\n\n", ltime);
#endif
					Com_WriteLog(logwritestart, strlen(logwritestart), adminlogfile);
				}
	    }

	    if ( adminlogfile && FS_Initialized())
	    {
#ifdef _WIN32
				char outstring[2* MAXPRINTMSG];
				int stringlen = Q_strLF2CRLF(msg, outstring, sizeof(outstring) );
				Com_WriteLog( outstring, stringlen, adminlogfile );
#else
				Com_WriteLog( msg, strlen(msg), adminlogfile);
#endif
	    }

	}
	Sys_LeaveCriticalSection(CRITSECT_LOGFILE);
}

void Com_PrintLogfile( const char *msg )
{

	char	logwritestart[256];
	Sys_EnterCriticalSection(CRITSECT_LOGFILE);


	if ( com_logfile && com_logfile->integer ) {
        // TTimo: only open the qconsole.log if the filesystem is in an initialized state
        // also, avoid recursing in the qconsole.log opening (i.e. if fs_debug is on)
	    if ( !logfile && FS_Initialized()) {
				struct tm *newtime;
				time_t aclock;

				time( &aclock );
				newtime = localtime( &aclock );

				/* 1st try to delete any existing old backup logfile */
				FS_HomeRemove( "qconsole.log.old" );
				/* Now try to rename it */
				FS_Rename( "qconsole.log", "qconsole.log.old" );

				logfile = Com_OpenLogfile( "qconsole.log", 'w' );

				if ( com_logfile->integer > 1 && logfile ) {
					// force it to not buffer so we get valid
					// data even if we are crashing
					FS_ForceFlush(logfile);
				}
				if ( logfile )
				{
#ifdef _WIN32
					Com_sprintf(logwritestart, sizeof(logwritestart), "\r\nLogfile opened on %s\r\n\r\n", asctime( newtime ));
#else
					Com_sprintf(logwritestart, sizeof(logwritestart), "\nLogfile opened on %s\n\n", asctime( newtime ));
#endif
					Com_WriteLog(logwritestart, strlen(logwritestart), logfile);
				}
	    }
	    if ( logfile && FS_Initialized())
	    {
#ifdef _WIN32
				char outstring[2* MAXPRINTMSG];
				int stringlen = Q_strLF2CRLF(msg, outstring, sizeof(outstring) );
				Com_WriteLog( outstring, stringlen, logfile );
#else
				Com_WriteLog( msg, strlen(msg), logfile);
#endif
			}
	}
	Sys_LeaveCriticalSection(CRITSECT_LOGFILE);
}


void Com_DPrintLogfile( const char *msg )
{

	char	logwritestart[256];
	Sys_EnterCriticalSection(CRITSECT_LOGFILE);


	if ( com_logfile && com_logfile->integer ) {
        // TTimo: only open the qconsole.log if the filesystem is in an initialized state
        // also, avoid recursing in the qconsole.log opening (i.e. if fs_debug is on)
	    if ( !debuglogfile && FS_Initialized()) {
				struct tm *newtime;
				time_t aclock;

				time( &aclock );
				newtime = localtime( &aclock );

				/* 1st try to delete any existing old backup logfile */
				FS_HomeRemove( "qconsole.log.old" );
				/* Now try to rename it */
				FS_Rename( "qconsole.log", "qconsole.log.old" );

				debuglogfile = Com_OpenLogfile( "debug_qconsole.log", 'w' );

				if ( com_logfile->integer > 1 && debuglogfile ) {
					// force it to not buffer so we get valid
					// data even if we are crashing
					FS_ForceFlush(debuglogfile);
				}
				if ( debuglogfile )
				{
#ifdef _WIN32
					Com_sprintf(logwritestart, sizeof(logwritestart), "\r\nLogfile opened on %s\r\n\r\n", asctime( newtime ));
#else
					Com_sprintf(logwritestart, sizeof(logwritestart), "\nLogfile opened on %s\n\n", asctime( newtime ));
#endif
					Com_WriteLog(logwritestart, strlen(logwritestart), debuglogfile);
				}
	    }
	    if ( debuglogfile && FS_Initialized())
	    {
				char outstring[2* MAXPRINTMSG];
				Com_sprintf(outstring, sizeof(outstring), "Time=%ud ", Sys_Milliseconds());
				Com_WriteLog( outstring, strlen(outstring), debuglogfile );
#ifdef _WIN32
				int stringlen = Q_strLF2CRLF(msg, outstring, sizeof(outstring) );
				Com_WriteLog( outstring, stringlen, debuglogfile );
#else
				Com_WriteLog( msg, strlen(msg), debuglogfile);
#endif
		}
	}
	Sys_LeaveCriticalSection(CRITSECT_LOGFILE);
}


void QDECL Com_DPrintfLogfile( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[0x10000];

	va_start (argptr,fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

    Com_DPrintLogfile( msg );
}


static volatile HANDLE wakelogfilewriter;
static volatile DWORD logfilewriterworking;
static volatile qboolean logwriterenabled;
static volatile threadid_t logthreadid = -1;


void* Com_WriteLogThread(void* null)
{
	logwriterenabled = qtrue;

	while(logwriterenabled)
	{
		Sys_WaitForObject(wakelogfilewriter);
		Sys_ResetEvent(wakelogfilewriter);

		if(Sys_InterlockedIncrement(&logfilewriterworking) == 1)
		{

			FS_WriteLogFlush(adminlogfile);
			FS_WriteLogFlush(logfile);
			FS_WriteLogFlush(debuglogfile);
			FS_WriteLogFlush(enterleavelogfile);
			FS_WriteLogFlush(gamelogfile);
		}
		Sys_InterlockedDecrement(&logfilewriterworking);
	}
	logthreadid = -1;
	_CloseHandle(wakelogfilewriter);
	wakelogfilewriter = 0;
	return NULL;
}


void Com_CloseLogFile(volatile fileHandle_t* f)
{
	if(*f == 0)
	{
		return;
	}

	while(Sys_InterlockedIncrement(&logfilewriterworking) != 1) //Spin here until worker thread is ready
	{
		Sys_InterlockedDecrement(&logfilewriterworking);
		Sys_SleepUSec(0);
	}
	
	FS_CloseLogFile(*f);
	*f = 0;
	Sys_InterlockedDecrement(&logfilewriterworking);
	Sys_SetEvent(wakelogfilewriter);
}

fileHandle_t Com_OpenLogfile(const char* name, char mode)
{
	static threadid_t logthreadid = -1;
	if(logthreadid == -1)
	{
		wakelogfilewriter = Sys_CreateEvent(1, 1, "wakelogfilewriter");
		Sys_CreateNewThread(Com_WriteLogThread, &logthreadid, NULL);
		Sys_SetThreadName(logthreadid, "LogfileWriter");
	}
	return FS_OpenLogfile(name, mode);
}


int Com_WriteLog(const char* data, int ilen, fileHandle_t f)
{
	int len = ilen;

	while(1){ //Spin here as long as we don't have enough space to put the message into the buffer

		int l = FS_WriteLog(data, len, f);
		data += l;
		len -= l;

		Sys_SetEvent(wakelogfilewriter);

		if(len == 0)
		{
			break;
		}else{
			Sys_SleepUSec(0);
		}
	}
	return ilen;
}

void Com_CloseLogFiles()
{
	Sys_EnterCriticalSection(CRITSECT_LOGFILE);

	Cvar_SetInt(com_logfile, 0);

	Com_CloseLogFile( &adminlogfile );

	Com_CloseLogFile( &logfile );

	Com_CloseLogFile( &debuglogfile );

	Com_CloseLogFile( &enterleavelogfile );

	Com_CloseLogFile( &gamelogfile ); //possible duplicate because this happens in G_ShutdownGame

	logwriterenabled = qfalse;

	Sys_LeaveCriticalSection(CRITSECT_LOGFILE);

}

fileHandle_t Com_OpenGameLogfile(const char* name, char mode, qboolean sync)
{
	if ( !FS_Initialized()) {
		return 0;
	}

	fileHandle_t f = Com_OpenLogfile(name, mode);
	if(f > 0)
	{
		if(sync)
		{
			FS_ForceFlush(f);
		}
		gamelogfile = f;
	}
	return f;
}

void Com_CloseGameLogfile()
{
	Com_CloseLogFile( &gamelogfile ); //possible duplicate because this happens in G_ShutdownGame
}

int Com_WriteGameLogfile(const char* data, int ilen)
{
    if(!gamelogfile)
    {
        return 0;
    }
    return Com_WriteLog(data, ilen, gamelogfile);

}
