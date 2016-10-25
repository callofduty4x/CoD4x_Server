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



#ifndef __QCOMMON_STDIO_H__
#define __QCOMMON_STDIO_H__

#include "q_shared.h"

typedef enum{
    MSG_DEFAULT,
    MSG_NA,	//Not defined
    MSG_WARNING,
    MSG_ERROR,
    MSG_NORDPRINT
}msgtype_t;

void Com_BeginRedirect (char *buffer, int buffersize, void (*flush)( char *, qboolean) );
void Com_EndRedirect (void);
void Com_StopRedirect (void);

void QDECL Com_Printf( const char *fmt, ... );
void QDECL Com_PrintNoRedirect( const char *fmt, ... );
void QDECL Com_PrintError( const char *fmt, ... );
void QDECL Com_PrintWarning( const char *fmt, ... );
void QDECL Com_PrintWarningNoRedirect( const char *fmt, ... );
void QDECL Com_DPrintf( const char *fmt, ... );
void QDECL Com_DPrintfWrapper( int drop, const char *fmt, ...);
void QDECL Com_DPrintNoRedirect( const char *fmt, ... );
void QDECL Com_PrintRedirect(char *msg, int msglen);
void Com_AddRedirect(void (*rd_dest)( const char *, int));
void __cdecl Com_ErrorCleanup(void);
void QDECL Com_PrintScriptRuntimeWarning( const char *fmt, ... );
__cdecl void Com_PrintMessage( int dumbIWvar, char *msg, msgtype_t type);
void QDECL Com_DPrintfLogfile( const char *fmt, ... );

#endif
