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

static fileHandle_t logfile;
static fileHandle_t adminlogfile;
static fileHandle_t debuglogfile;
static fileHandle_t enterleavelogfile;


void QDECL SV_EnterLeaveLog( const char *fmt, ... ) {

	va_list		argptr;
	char		msg[MAXPRINTMSG];
	char		inputmsg[MAXPRINTMSG];
	struct tm 	*newtime;
	char*		ltime;
	time_t		realtime;

	Sys_EnterCriticalSection(CRIT_LOGFILE);

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

				enterleavelogfile = FS_FOpenFileAppend( "enterleave.log" );
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
				FS_Write( outstring, stringlen, enterleavelogfile );
#else
				FS_Write( msg, strlen(msg), enterleavelogfile);
#endif
	    }

	}
	Sys_LeaveCriticalSection(CRIT_LOGFILE);
}


void QDECL Com_PrintAdministrativeLog( const char *msg ) {

	Sys_EnterCriticalSection(CRIT_LOGFILE);

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


				adminlogfile = FS_FOpenFileAppend( "adminactions.log" );
				// force it to not buffer so we get valid
				if ( adminlogfile ){
					FS_ForceFlush(adminlogfile);
#ifdef _WIN32
					Com_sprintf(logwritestart, sizeof(logwritestart), "\r\nLogfile opened on %s\r\n\r\n", ltime);
#else
					Com_sprintf(logwritestart, sizeof(logwritestart), "\nLogfile opened on %s\n\n", ltime);
#endif
					FS_Write(logwritestart, strlen(logwritestart), adminlogfile);
				}
	    }

	    if ( adminlogfile && FS_Initialized())
	    {
#ifdef _WIN32
				char outstring[2* MAXPRINTMSG];
				int stringlen = Q_strLF2CRLF(msg, outstring, sizeof(outstring) );
				FS_Write( outstring, stringlen, adminlogfile );
#else
				FS_Write( msg, strlen(msg), adminlogfile);
#endif
	    }

	}
	Sys_LeaveCriticalSection(CRIT_LOGFILE);
}

void Com_PrintLogfile( const char *msg )
{

	char	logwritestart[256];
	Sys_EnterCriticalSection(CRIT_LOGFILE);


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

				logfile = FS_FOpenFileWrite( "qconsole.log" );

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
					FS_Write(logwritestart, strlen(logwritestart), logfile);
				}
	    }
	    if ( logfile && FS_Initialized())
	    {
#ifdef _WIN32
				char outstring[2* MAXPRINTMSG];
				int stringlen = Q_strLF2CRLF(msg, outstring, sizeof(outstring) );
				FS_Write( outstring, stringlen, logfile );
#else
				FS_Write( msg, strlen(msg), logfile);
#endif
			}
	}
	Sys_LeaveCriticalSection(CRIT_LOGFILE);
}


void Com_DPrintLogfile( const char *msg )
{

	char	logwritestart[256];
	Sys_EnterCriticalSection(CRIT_LOGFILE);


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

				debuglogfile = FS_FOpenFileWrite( "debug_qconsole.log" );

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
					FS_Write(logwritestart, strlen(logwritestart), debuglogfile);
				}
	    }
	    if ( debuglogfile && FS_Initialized())
	    {
#ifdef _WIN32
				char outstring[2* MAXPRINTMSG];
				Com_sprintf(outstring, sizeof(outstring), "Time=%ud ", Sys_Milliseconds());
				FS_Write( outstring, strlen(outstring), debuglogfile );
				int stringlen = Q_strLF2CRLF(msg, outstring, sizeof(outstring) );
				FS_Write( outstring, stringlen, debuglogfile );
#else
				FS_Write( msg, strlen(msg), debuglogfile);
#endif
		}
	}
	Sys_LeaveCriticalSection(CRIT_LOGFILE);
}


void QDECL Com_DPrintfLogfile( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[0x10000];

	va_start (argptr,fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

    Com_DPrintLogfile( msg );
}




/*
This function should close all opened non Zip files
*/
void Com_CloseLogFiles()
{
	Sys_EnterCriticalSection(CRIT_LOGFILE);

	if(adminlogfile){
		FS_FCloseFile( adminlogfile );
		adminlogfile = 0;
	}
	if(logfile){
		FS_FCloseFile( logfile );
		logfile = 0;
	}
	if(debuglogfile){
		FS_FCloseFile( debuglogfile );
		debuglogfile = 0;
	}
	if(enterleavelogfile){
		FS_FCloseFile( enterleavelogfile );
		enterleavelogfile = 0;
	}

	Sys_LeaveCriticalSection(CRIT_LOGFILE);

}

