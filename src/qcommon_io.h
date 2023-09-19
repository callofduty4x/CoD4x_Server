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


typedef enum
{
  CON_CHANNEL_DONT_FILTER = 0x0,
  CON_CHANNEL_ERROR = 0x1,
  CON_CHANNEL_GAMENOTIFY = 0x2,
  CON_CHANNEL_BOLDGAME = 0x3,
  CON_CHANNEL_SUBTITLE = 0x4,
  CON_CHANNEL_OBITUARY = 0x5,
  CON_CHANNEL_LOGFILEONLY = 0x6,
  CON_CHANNEL_CONSOLEONLY = 0x7,
  CON_CHANNEL_GFX = 0x8,
  CON_CHANNEL_SOUND = 0x9,
  CON_CHANNEL_FILES = 0xA,
  CON_CHANNEL_DEVGUI = 0xB,
  CON_CHANNEL_PROFILE = 0xC,
  CON_CHANNEL_UI = 0xD,
  CON_CHANNEL_CLIENT = 0xE,
  CON_CHANNEL_SERVER = 0xF,
  CON_CHANNEL_SYSTEM = 0x10,
  CON_CHANNEL_PLAYERWEAP = 0x11,
  CON_CHANNEL_AI = 0x12,
  CON_CHANNEL_ANIM = 0x13,
  CON_CHANNEL_PHYS = 0x14,
  CON_CHANNEL_FX = 0x15,
  CON_CHANNEL_LEADERBOARDS = 0x16,
  CON_CHANNEL_LIVE = 0x17,
  CON_CHANNEL_PARSERSCRIPT = 0x18,
  CON_CHANNEL_SCRIPT = 0x19,
  CON_CHANNEL_SPAWNSYSTEM = 0x1A,
  CON_CHANNEL_COOPINFO = 0x1B,
  CON_CHANNEL_SERVERDEMO = 0x1C,
  CON_CHANNEL_DDL = 0x1D,
  CON_CHANNEL_NETWORK = 0x1E,
  CON_CHANNEL_SCHEDULER = 0x1F,
  CON_FIRST_DEBUG_CHANNEL = 0x1F,
  CON_CHANNEL_TASK = 0x20,
  CON_CHANNEL_SPU = 0x21,
  CON_CHANNEL_FILEDL = 0x22,
  CON_CHANNEL_CVAR = 0x23,
  CON_CHANNEL_PLUGINS = 0x24,
  CON_CHANNEL_STEAM = 0x25,
  CON_BUILTIN_CHANNEL_COUNT = 0x26
}conChannel_t;



#ifdef __cplusplus
extern "C"
{
#endif
void Com_BeginRedirect (char *buffer, int buffersize, void (*flush)( char *, qboolean) );
void Com_EndRedirect (void);
void Com_StopRedirect (void);

void QDECL Com_Printf(conChannel_t channel, const char *fmt, ... );
void QDECL Com_PrintNoRedirect(conChannel_t channel, const char *fmt, ... );
void QDECL Com_PrintError(conChannel_t channel, const char *fmt, ... );
void QDECL Com_PrintWarning(conChannel_t channel, const char *fmt, ... );
void QDECL Com_DPrintWarning(conChannel_t channel, const char *fmt, ... );
void QDECL Com_PrintWarningNoRedirect(conChannel_t channel, const char *fmt, ... );
void QDECL Com_DPrintf( conChannel_t channel, const char *fmt, ... );
void QDECL Com_DPrintfWrapper( int drop, const char *fmt, ...);
void QDECL Com_DPrintNoRedirect( conChannel_t channel, const char *fmt, ... );
void QDECL Com_PrintRedirect(char *msg, int msglen);
void Com_AddRedirect(void (*rd_dest)( const char *, int));
void __cdecl Com_ErrorCleanup(void);
void QDECL Com_PrintScriptRuntimeWarning( const char *fmt, ... );
__cdecl void Com_PrintMessage( conChannel_t channel, char *msg, msgtype_t type);
void QDECL Com_DPrintfLogfile( const char *fmt, ... );

#ifdef __cplusplus
}
#endif

#endif
