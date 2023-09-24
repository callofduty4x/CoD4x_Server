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
#include "sys_thread.h"
#include "qcommon_io.h"
#include "qcommon_logprint.h"
#include "qcommon.h"
#include "sys_main.h"
#include <string.h>
#include <time.h>
#include <stdarg.h>


#ifndef __SYS_THREAD_H__
void Sys_EnterCriticalSection(int section){}
void Sys_LeaveCriticalSection(int section){}
#endif

#ifndef __SYS_MAIN_H__
#define Sys_Print(x) fputs(x, stdout);
#pragma message "Undefined function: Sys_Print"
#endif

#ifndef __QCOMMON_LOGPRINT_H__
void Com_PrintLogfile( const char* msg ){}
#pragma message "Undefined function: Com_PrintLogfile"
#endif

#ifndef __QCOMMON_H__
qboolean Com_IsDeveloper( void ){ return qtrue; }
#pragma message "Undefined function: Com_IsDeveloper"
#endif

cvar_t* com_logrcon;

//============================================================================
static char	*rd_buffer;
static int	rd_buffersize;
static void	(*rd_flush)( char *buffer, qboolean );


void Com_BeginRedirect (char *buffer, int buffersize, void (*flush)( char *, qboolean) )
{
	if (!buffer || !buffersize || !flush)
		return;
	rd_buffer = buffer;
	rd_buffersize = buffersize;
	rd_flush = flush;

	*rd_buffer = 0;
}

void Com_EndRedirect (void)
{
	if ( rd_flush ) {
		rd_flush(rd_buffer, qtrue);
	}

	rd_buffer = NULL;
	rd_buffersize = 0;
	rd_flush = NULL;
}

void Com_StopRedirect (void)
{
	rd_flush = NULL;
}

__cdecl void Com_PrintMessage( conChannel_t channel, char *msg, msgtype_t type) {

	//secures calls to Com_PrintMessage from recursion while redirect printing
	static qboolean lock = qfalse;

	if(channel == CON_CHANNEL_LOGFILEONLY)
	{
		Com_PrintLogfile( msg );
		return;
	}
	int msglen = strlen(msg);

	if(type != MSG_NORDPRINT && !lock)
	{
	
		Sys_EnterCriticalSection(CRITSECT_RD_BUFFER);

		if ( !lock) {

			lock = qtrue;
			Com_PrintRedirect(msg, msglen);
			lock = qfalse;

			if ( rd_buffer && rd_flush) {
				if ((msglen + strlen(rd_buffer)) > (rd_buffersize - 1)) {

					lock = qtrue;
					rd_flush(rd_buffer, qfalse);
					lock = qfalse;

					*rd_buffer = 0;
				}
				Q_strncat(rd_buffer, rd_buffersize, msg);
				// TTimo nooo .. that would defeat the purpose
				//rd_flush(rd_buffer);
				//*rd_buffer = 0;
				if(!com_logrcon->boolean)
				{
					Sys_LeaveCriticalSection(CRITSECT_RD_BUFFER);
					return;
				}
			}
		}
		
		Sys_LeaveCriticalSection(CRITSECT_RD_BUFFER);
	
	}

	
	// echo to dedicated console and early console
	Sys_Print( msg );

	// logfile
	Com_PrintLogfile( msg );

}

/*
=============
Com_Printf

Both client and server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL Com_Printf( conChannel_t channel, const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	va_start (argptr,fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( channel, msg, MSG_DEFAULT);
}


/*
=============
Com_PrintfNoRedirect

This will not print to rcon

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL Com_PrintNoRedirect( conChannel_t channel, const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	va_start (argptr,fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( channel, msg, MSG_NORDPRINT);
}


/*
=============
Com_PrintWarning

Server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL Com_PrintWarning( conChannel_t channel, const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	memcpy(msg,"^3Warning: ", 12);

	va_start (argptr,fmt);
	Q_vsnprintf (&msg[11], (sizeof(msg)-12), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( channel, msg, MSG_WARNING);
}

void QDECL Com_DPrintWarning( conChannel_t channel, const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	if (!Com_IsDeveloper()) {
		return;
	}

	memcpy(msg, "^3Warning: ", 12);

	va_start(argptr, fmt);
	Q_vsnprintf (&msg[11], (sizeof(msg)-12), fmt, argptr);
	va_end(argptr);

    Com_PrintMessage(channel, msg, MSG_WARNING);
}

/*
=============
Com_PrintWarningNoRedirect

Server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL Com_PrintWarningNoRedirect( conChannel_t channel, const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	memcpy(msg,"^3Warning: ", 12);

	va_start (argptr,fmt);
	Q_vsnprintf (&msg[11], (sizeof(msg)-12), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( channel, msg, MSG_NORDPRINT);
}


/*
=============
Com_PrintError

Server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL Com_PrintError( conChannel_t channel, const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	memcpy(msg,"^1Error: ", 10);

	va_start (argptr,fmt);
	Q_vsnprintf (&msg[9], (sizeof(msg)-10), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( channel, msg, MSG_ERROR);
}

/*
================
Com_DPrintf

A Com_Printf that only shows up if the "developer" cvar is set
================
*/
void QDECL Com_DPrintf( conChannel_t channel, const char *fmt, ...) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];
		
	if ( !Com_IsDeveloper() ) {
		return;			// don't confuse non-developers with techie stuff...
	}
	
	msg[0] = '^';
	msg[1] = '2';

	va_start (argptr,fmt);	
	Q_vsnprintf (&msg[2], (sizeof(msg)-3), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( channel, msg, MSG_DEFAULT);
}



/*
================
Com_DPrintNoRedirect

A Com_Printf that only shows up if the "developer" cvar is set
This will not print to rcon
================
*/
void QDECL Com_DPrintNoRedirect( conChannel_t channel, const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	if ( !Com_IsDeveloper() ) {
		return;			// don't confuse non-developers with techie stuff...
	}
	
	msg[0] = '^';
	msg[1] = '2';

	va_start (argptr,fmt);	
	Q_vsnprintf (&msg[2], (sizeof(msg)-3), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( channel, msg, MSG_NORDPRINT);
}

void QDECL Com_PrintScriptRuntimeWarning(const char *fmt, ...)
{

	va_list		argptr;
	char		msg[MAXPRINTMSG];
	char		finalmsg[MAXPRINTMSG];

	va_start (argptr,fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

	Com_sprintf(finalmsg, sizeof(finalmsg), "^6Script Runtime Warning: %s\n", msg);

        Com_PrintMessage( CON_CHANNEL_SCRIPT, finalmsg, MSG_WARNING);
}



#define MAX_REDIRECTDESTINATIONS 4

static void (*rd_destinations[MAX_REDIRECTDESTINATIONS])( const char *buffer, int len );


void Com_PrintRedirect(char* msg, int msglen)
{

    int i;

    for(i = 0; i < MAX_REDIRECTDESTINATIONS; i++)
    {
        if(rd_destinations[i] == NULL)
            return;

        rd_destinations[i](msg, msglen);

    }

}


void Com_AddRedirect(void (*rd_dest)(const char *, int))
{
    int i;

    for(i = 0; i < MAX_REDIRECTDESTINATIONS; i++)
    {
        if(rd_destinations[i] == rd_dest)
        {
            Com_Error(ERR_FATAL, "Com_AddRedirect: Attempt to add an already defined redirect function twice.");
            return;
        }

        if(rd_destinations[i] == NULL)
        {
            rd_destinations[i] = rd_dest;
            return;
        }
    }
    Com_Error(ERR_FATAL, "Com_AddRedirect: Out of redirect handles. Increase MAX_REDIRECTDESTINATIONS to add more redirect destinations");
}

