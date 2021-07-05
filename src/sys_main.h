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



#ifndef __SYS_MAIN_H__
#define __SYS_MAIN_H__

#include "q_shared.h"


#include <setjmp.h>
#include <inttypes.h>
#include <stdbool.h>

#ifdef _WIN32
#include "win32/sys_win32.h"
#else
#include "unix/sys_unix.h"
#endif


#ifdef __cplusplus
extern "C"{
#endif

unsigned int Sys_Milliseconds( void );
unsigned long long Sys_MillisecondsLong( void );
unsigned long long Sys_MicrosecondsLong( void );

void Sys_TimerInit( void );
unsigned long long Sys_Microseconds( void );
int Sys_Seconds( void );
void Sys_Quit( void );
void Sys_Print( const char *msg );
void Sys_TermProcess(void);
char *Sys_ConsoleInput(void);
void Sys_AnsiColorPrint( const char *msg );
void Sys_PrintBinVersion( const char* name );
void Sys_ParseArgs( int argc, char* argv[] );
__cdecl void QDECL Sys_Error( const char *fmt, ... );
void Sys_SetBinaryPath(const char *path);
const char *Sys_BinaryPath(void);
const char *Sys_ExeFile(void);
const char *Sys_ExeFileShort(void);
void Sys_SetDefaultInstallPath(const char *path);
char *Sys_DefaultInstallPath(void);
const char *Sys_DefaultAppPath(void);
//sys_unix.c
qboolean Sys_RandomBytes( byte *string, int len );
void Sys_DoStartProcess( char *cmdline );
const char *Sys_Dirname(const char *path);
char *Sys_Cwd( void );
void Sys_InitCrashDumps();
const char *Sys_DefaultHomePath(void);
const char *Sys_TempPath( void );
void __cdecl Sys_Init(void);
char *Sys_DefaultCDPath( void );
qboolean Sys_DirectoryHasContent( const char* dir );
char **Sys_ListFiles( const char *directory, const char *extension, char *filter, int *numfiles, qboolean wantsubs );
void Sys_FreeFileList( char **list );
const char* Sys_GetUsername();
void Sys_SetExitCmdline(const char *);
void Sys_DoSignalAction(int signal, const char *);
void Sys_SetExeFile(const char *);
void Sys_SetExeFileShort(const char *);
int Sys_Main(char* commandLine);
const char* Sys_GetCommandline( void );
void Sys_ReplaceProcess( char *cmdline );
void Sys_PlatformInit();
const char *Sys_StripAppBundle( const char *dir );
const char *Sys_Basename( char *path );
qboolean Sys_Mkdir( const char *path );
qboolean Sys_SetPermissionsExec(const char* ospath);
void Sys_WaitForErrorConfirmation(const char* error);
void  __noreturn Sys_ExitForOS( int exitCode );


void Sys_SleepSec(int seconds);
void Sys_EventLoop(void);
uint32_t Sys_MillisecondsRaw();
void Sys_LoadLibraryError(char* errormessage, int maxlen);
void* Sys_LoadLibrary(const char* dlfile);
void Sys_CloseLibrary(void* dlhandle);
void* Sys_GetProcedure(const char* procname);

/* Includes for system console */
void CON_Shutdown( void );
void CON_Init(void);
char *CON_Input( void );
void CON_Print( const char *msg );
void CON_DisableDraw();
void CON_EnableDraw();
int Sys_Chmod(const char* filename, int mode);
void Sys_Restart(const char* reason);

void Sys_BeginLoadThreadPriorities();
void Sys_EndLoadThreadPriorities();
void Sys_BeginShutdownWatchdog();

signed int __cdecl Sys_ResetEvent(HANDLE handle);
signed int __cdecl Sys_SetEvent(HANDLE handle);
HANDLE Sys_CreateEvent(qboolean bManualReset, qboolean bInitialState, const char *name);
void Sys_PrintBacktrace();
void Sys_SleepMSec(int msec);
int Sys_ReadCertificate(void* cacert, int (*store_callback)(void* ca_ctx, const unsigned char* pemderbuf, int lenofpemder));
#ifdef __cplusplus
}
#endif

#endif


