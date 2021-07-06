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
#include "../q_shared.h"
#include "../cmd.h"
#include "../qcommon.h"
#include "../qcommon_mem.h"
#include "../objfile_parser.h"
#include "../sys_main.h"
#include "../sys_cod4defs.h"
#include "sys_win32.h"

#include <windows.h>
#include <wincrypt.h>
#include <direct.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <inttypes.h>
#include <io.h>
#include <Shlobj.h>

void Sys_ShowErrorDialog(const char* functionName);
void Sys_InitThreadContext();

WinVars_t g_wv;

/*
================
Sys_SetFPUCW
Set FPU control word to default value
================
*/

#ifndef _RC_CHOP
	// mingw doesn't seem to have these defined :(

	#define _MCW_EM 0x0008001fU
	#define _MCW_RC 0x00000300U
	#define _MCW_PC 0x00030000U
	#define _RC_NEAR 0x00000000U
	#define _PC_53 0x00010000U

	unsigned int _controlfp(unsigned int new, unsigned int mask);
#endif

#define FPUCWMASK1 (_MCW_RC | _MCW_EM)
#define FPUCW (_RC_NEAR | _MCW_EM | _PC_53)

#if idx64
	#define FPUCWMASK (FPUCWMASK1)
#else
	#define FPUCWMASK (FPUCWMASK1 | _MCW_PC)
#endif

void Sys_SetFloatEnv(void)
{
	_controlfp(FPUCW, FPUCWMASK);
}

/*
================
Sys_RandomBytes
================
*/
qboolean Sys_RandomBytes( byte *string, int len )
{
	HCRYPTPROV  prov;

	if( !CryptAcquireContext( &prov, NULL, NULL,
		PROV_RSA_FULL, CRYPT_VERIFYCONTEXT ) )  {

		return qfalse;
	}

	if( !CryptGenRandom( prov, len, (BYTE *)string ) )  {
		CryptReleaseContext( prov, 0 );
		return qfalse;
	}
	CryptReleaseContext( prov, 0 );
	return qtrue;
}

/*
==================
Sys_Mkdir
==================
*/
qboolean Sys_Mkdir(const char *path)
{
    int result = SHCreateDirectoryExA(0, path, 0);
    return result == ERROR_SUCCESS || result == ERROR_FILE_EXISTS || result == ERROR_ALREADY_EXISTS;
}

/*
==================
Sys_StartProcess

NERVE - SMF
==================
*/
void Sys_StartProcess( char *cmdline, qboolean doexit ) {

		STARTUPINFO si;
		PROCESS_INFORMATION pi;

		ZeroMemory( &si, sizeof( si ) );
		si.cb = sizeof( si );

		// JPW NERVE swiped from Sherman's SP code
		if ( !CreateProcess( NULL, cmdline, NULL, NULL,FALSE, 0, NULL, NULL, &si, &pi ) ) {
			// couldn't start it, popup error box
			if(doexit)
			{
				Com_Error( ERR_DROP, "Could not start process: '%s' ", cmdline );
			}else{
				Com_PrintError(CON_CHANNEL_SYSTEM,"Could not start process: '%s'\n", cmdline);
			}
			return;
		}
		// jpw

		// TTimo: similar way of exiting as used in Sys_OpenURL below
		if ( doexit )
		{
			_exit( 0 );
		}
}

void Sys_DoStartProcess( char *cmdline ) {

	Sys_StartProcess( cmdline, qfalse );
}

void Sys_ReplaceProcess( char *cmdline ) {

	Sys_StartProcess( cmdline, qtrue );
}

qboolean Sys_SetPermissionsExec(const char* ospath)
{
	return qtrue;
}

/*
==================
Sys_SleepSec
==================
*/

void Sys_SleepMSec(int msec)
{
    Sleep(msec);
}

void Sys_SleepSec(int seconds)
{
    Sleep(1000*seconds);
}

int Sys_GetPageSize()
{
	SYSTEM_INFO SystemInfo;
	GetSystemInfo( &SystemInfo );

	return SystemInfo.dwPageSize;
}


qboolean Sys_MemoryProtectWrite(void* startoffset, int len)
{
	DWORD oldProtect;

	if(VirtualProtect((LPVOID)startoffset, len, PAGE_READWRITE, &oldProtect) == 0)
	{
	        Sys_ShowErrorDialog("Sys_MemoryProtectWrite");
            return qfalse;
	}

	return qtrue;
}

qboolean Sys_MemoryProtectExec(void* startoffset, int len)
{

	DWORD oldProtect;

	if(VirtualProtect((LPVOID)startoffset, len, PAGE_EXECUTE_READ, &oldProtect) == 0)
	{
            Sys_ShowErrorDialog("Sys_MemoryProtectExec");
            return qfalse;
	}

	return qtrue;
}

qboolean Sys_MemoryProtectReadonly(void* startoffset, int len)
{

	DWORD oldProtect;

	if(VirtualProtect((LPVOID)startoffset, len, PAGE_READONLY, &oldProtect) == 0)
	{
	        Sys_ShowErrorDialog("Sys_MemoryProtectReadonly");
            return qfalse;
	}

	return qtrue;
}

void Sys_ShowErrorDialog(const char* functionName)
{
	void* HWND = NULL;
	char errMessageBuf[1024];
	char displayMessageBuf[1024];
	DWORD lastError = GetLastError();

	if(lastError != 0)
	{
		FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM, NULL, lastError, MAKELANGID(LANG_NEUTRAL,SUBLANG_DEFAULT), errMessageBuf, sizeof(errMessageBuf) -1, NULL);
	}else{
		Q_strncpyz(errMessageBuf, "Unknown Error", sizeof(errMessageBuf));
	}

	Com_sprintf(displayMessageBuf, sizeof(displayMessageBuf), "Error in function: %s\nThe error is: %s", functionName, errMessageBuf);

	MessageBoxA(HWND, displayMessageBuf, "System Error", MB_OK | MB_ICONERROR);
}

const char *Sys_DefaultHomePath( void ) {
	return NULL;
}



/*
==============================================================

DIRECTORY SCANNING

==============================================================
*/

#define MAX_FOUND_FILES 0x1000

/*
==============
Sys_ListFilteredFiles
==============
*/
void Sys_ListFilteredFiles( const char *basedir, char *subdirs, char *filter, char **list, int *numfiles )
{
	char	search[MAX_OSPATH], newsubdirs[MAX_OSPATH];
	char	filename[MAX_OSPATH];
	intptr_t	findhandle;
	struct _finddata_t findinfo;

	if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
		return;
	}

	if (strlen(subdirs)) {
		Com_sprintf( search, sizeof(search), "%s\\%s\\*", basedir, subdirs );
	}
	else {
		Com_sprintf( search, sizeof(search), "%s\\*", basedir );
	}

	findhandle = _findfirst (search, &findinfo);
	if (findhandle == -1) {
		return;
	}

	do {
		if (findinfo.attrib & _A_SUBDIR) {

			if (Q_stricmp(findinfo.name, ".") && Q_stricmp(findinfo.name, "..")) {

				if (strlen(subdirs)) {
					Com_sprintf( newsubdirs, sizeof(newsubdirs), "%s\\%s", subdirs, findinfo.name);
				}
				else {
					Com_sprintf( newsubdirs, sizeof(newsubdirs), "%s", findinfo.name);
				}
				Sys_ListFilteredFiles( basedir, newsubdirs, filter, list, numfiles );
			}
		}
		if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
			break;
		}
		Com_sprintf( filename, sizeof(filename), "%s\\%s", subdirs, findinfo.name );
		if (!Com_FilterPath( filter, filename, qfalse ))
			continue;
		list[ *numfiles ] = CopyString( filename );
		(*numfiles)++;
	} while ( _findnext (findhandle, &findinfo) != -1 );

	_findclose (findhandle);
}

/*
==============
strgtr
==============
*/

static qboolean strgtr(const char *s0, const char *s1)
{
	int l0, l1, i;

	l0 = strlen(s0);
	l1 = strlen(s1);

	if (l1<l0) {
		l0 = l1;
	}

	for(i=0;i<l0;i++) {
		if (s1[i] > s0[i]) {
			return qtrue;
		}
		if (s1[i] < s0[i]) {
			return qfalse;
		}
	}
	return qfalse;
}

/*
==============
Sys_ListFiles
==============
*/
char **Sys_ListFiles( const char *directory, const char *extension, char *filter, int *numfiles, qboolean wantsubs )
{
	char	search[MAX_OSPATH];
	int	nfiles;
	char	**listCopy;
	char	*list[MAX_FOUND_FILES];
	struct _finddata_t findinfo;
	intptr_t	findhandle;
	int	flag;
	int	i;

	if (filter) {

		nfiles = 0;
		Sys_ListFilteredFiles( directory, "", filter, list, &nfiles );

		list[ nfiles ] = 0;
		*numfiles = nfiles;

		if (!nfiles)
		return NULL;

		listCopy = Z_Malloc( ( nfiles + 1 ) * sizeof( *listCopy ) );
		for ( i = 0 ; i < nfiles ; i++ ) {
			listCopy[i] = list[i];
		}
		listCopy[i] = NULL;

		return listCopy;
	}

	if ( !extension) {
		extension = "";
	}

	// passing a slash as extension will find directories
	if ( extension[0] == '/' && extension[1] == 0 ) {
		extension = "";
		flag = 0;
	} else {
		flag = _A_SUBDIR;
	}

	Com_sprintf( search, sizeof(search), "%s\\*%s", directory, extension );

	// search
	nfiles = 0;

	findhandle = _findfirst (search, &findinfo);
	if (findhandle == -1) {
		*numfiles = 0;
		return NULL;
	}

	do {
		if ( (!wantsubs && flag ^ ( findinfo.attrib & _A_SUBDIR )) || (wantsubs && findinfo.attrib & _A_SUBDIR) ) {
			if ( nfiles == MAX_FOUND_FILES - 1 ) {
				break;
			}
			list[ nfiles ] = CopyString( findinfo.name );
			nfiles++;
		}
	} while ( _findnext (findhandle, &findinfo) != -1 );

	list[ nfiles ] = 0;

	_findclose (findhandle);

	// return a copy of the list
	*numfiles = nfiles;

	if ( !nfiles ) {
		return NULL;
	}

	listCopy = Z_Malloc( ( nfiles + 1 ) * sizeof( *listCopy ) );
	for ( i = 0 ; i < nfiles ; i++ ) {
		listCopy[i] = list[i];
	}
	listCopy[i] = NULL;

	do {
		flag = 0;
		for(i=1; i<nfiles; i++) {
			if (strgtr(listCopy[i-1], listCopy[i])) {
				char *temp = listCopy[i];
				listCopy[i] = listCopy[i-1];
				listCopy[i-1] = temp;
				flag = 1;
			}
		}
	} while(flag);

	return listCopy;
}

/*
==============
Sys_FreeFileList
==============
*/
void Sys_FreeFileList( char **list )
{
	int i;

	if ( !list ) {
		return;
	}

	for ( i = 0 ; list[i] ; i++ ) {
		FreeString( list[i] );
	}

	Z_Free( list );
}


qboolean Sys_DirectoryHasContent(const char *dir)
{
    WIN32_FIND_DATA fdFile;
    HANDLE hFind = NULL;

    char searchpath[MAX_OSPATH];

	if(strlen(dir) > MAX_OSPATH - 6 || dir[0] == '\0')
		return qfalse;

    Q_strncpyz(searchpath, dir, sizeof(searchpath));
	if( searchpath[strlen(searchpath) -1] ==  '\\' )
	{
		searchpath[strlen(searchpath) -1] = '\0';
	}
	Q_strncat(searchpath, sizeof(searchpath), "\\*");

    if((hFind = FindFirstFile(searchpath, &fdFile)) == INVALID_HANDLE_VALUE)
    {
        return qfalse;
    }

    do
    {
        if(stricmp(fdFile.cFileName, ".") != 0 && strcmp(fdFile.cFileName, "..") != 0)
        {
			FindClose(hFind);
			return qtrue;
        }
    }
    while(FindNextFile(hFind, &fdFile));

    FindClose(hFind);

    return qfalse;
}

void Sys_TermProcess( )
{
	Sys_SetFloatEnv();
}

uint32_t Sys_MillisecondsRaw()
{
	return timeGetTime();
}
/*
================
Sys_GetCurrentUser
================
*/
const char *Sys_GetUsername( void )
{

	static char s_userName[1024];
	unsigned long size = sizeof( s_userName );

	if( !GetUserName( s_userName, &size ) || !s_userName[0] )
	{
		Q_strncpyz( s_userName, "CoD-Admin", sizeof(s_userName) );
	}

	return s_userName;
}

/*
==============
Sys_Cwd
==============
*/
char *Sys_Cwd( void ) {
	static char cwd[MAX_OSPATH];

	_getcwd( cwd, sizeof( cwd ) - 1 );
	cwd[MAX_OSPATH-1] = 0;

	return cwd;
}

/*
==============
Sys_Dirname
==============
*/
const char *Sys_Dirname(const char *path)
{
	char dir[MAX_OSPATH] = {'\0'};
    char *slash1 = 0;
    char *slash2 = 0;
    char *max = 0;
	mvabuf;

    strcpy(dir, path);
    slash1 = strrchr(dir, '/');
    slash2 = strrchr(dir, '\\');

    if (slash1 && slash2){
        max = slash1 < slash2 ? slash2 : slash1;
    }else if (slash1 && !slash2){
        max = slash1;
    }else if (!slash1 && slash2){
        max = slash2;
    }
    if (max){
        *max = '\0';
    }
    return va("%s", dir);
}
/*
==============
Sys_PlatformInit

Win32 specific initialisation
==============
*/
void Sys_PlatformInit( void )
{
#if 0
	void *allocptr = (void*)0x8040000;  /* Image base of cod4_lnxded-bin */
	void *received_mem;
	int commitsize;
	int finalsize, delta, pagesize;
	char errormsg[256];

	commitsize = 0;
	commitsize += 0xa1bc; /* Offset of .plt */
	commitsize += 0xa60; /* Size of .plt */
	commitsize += 0x4; /* Offset of .text */
	commitsize += 0x1bf1a4; /* Size of .text */
	commitsize += 0x3c; /* Offset of .rodata */
	commitsize += 0x36898; /* Size of .rodata */
	commitsize += 0x2aee8; /* Offset of .data */
	commitsize += 0x9454; /* Size of .data */
	commitsize += 0x2c; /* Offset of .bss */
	commitsize += 0xc182240; /* Size of .bss */
	/* .= 0xc3b6c40 */
	pagesize = Sys_GetPageSize();

	delta = commitsize % pagesize;
	finalsize = commitsize + (pagesize - delta) + pagesize;

	received_mem = VirtualAlloc(allocptr, finalsize, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
	if(received_mem != allocptr)
	{
		Com_sprintf(errormsg, sizeof(errormsg), "Sys_PlatformInit: Allocate memory @ %p failed Received: %p", allocptr, received_mem);
		Sys_ShowErrorDialog(errormsg);
		exit(1);
	}
#endif
	Sys_SetFloatEnv( );
}

HMODULE currentLibHandle = NULL;

void Sys_LoadLibraryError(char* errormessage, int maxlen)
{
	DWORD lastError;

	lastError = GetLastError();

	if(lastError != 0)
	{
		FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM, NULL, lastError, MAKELANGID(LANG_NEUTRAL,SUBLANG_DEFAULT), (LPSTR)errormessage, maxlen -1, NULL);
	}else{
		Q_strncpyz(errormessage, "an unknown error occurred while loading shared library", maxlen);
	}
}


void* Sys_LoadLibrary(const char* dlfile)
{
	HMODULE handle = LoadLibraryA(dlfile);
	currentLibHandle = handle;
/*
	if(handle == NULL)
	{
		Sys_ShowErrorDialog("Sys_LoadLibrary");
	}
*/
	return handle;
}

void* Sys_GetProcedure(const char* lpProcName)
{
	if(currentLibHandle == NULL)
	{
		Com_Error(ERR_FATAL, "Attempt to get ProcAddress from invalid or not loaded library");
		return NULL;
	}
	FARPROC procedure = GetProcAddress( currentLibHandle, lpProcName );
	return procedure;
}

void Sys_CloseLibrary(void* hModule)
{
	if(hModule == NULL)
	{
		Com_Error(ERR_FATAL, "Attempt to close not loaded library");
		return;
	}
	if(hModule == currentLibHandle)
	{
		currentLibHandle = NULL;
	}
	FreeLibrary(hModule);
}

static CRITICAL_SECTION crit_sections[CRITSECT_COUNT];
threadid_t mainthread;
DWORD tlsKey;


void Sys_InitializeCriticalSections( void )
{
	int i;

	for (i = 0; i < CRITSECT_COUNT; i++) {
		InitializeCriticalSection( &crit_sections[i] );

	}

}


void __cdecl Sys_EnterCriticalSectionInternal(int section)
{
	EnterCriticalSection(&crit_sections[section]);
}

void __cdecl Sys_LeaveCriticalSectionInternal(int section)
{
	LeaveCriticalSection(&crit_sections[section]);
}

HANDLE Sys_GetThreadHandleFromID(threadid_t tid)
{
    return OpenThread(0, 0, tid);
}




HANDLE Sys_CreateThreadWithHandle(void* (*ThreadMain)(void*), threadid_t *tid, void* arg)
{
	char errMessageBuf[512];
	DWORD lastError;


	HANDLE thid = CreateThread(	NULL, // LPSECURITY_ATTRIBUTES lpsa,
								0, // DWORD cbStack,
								(LPTHREAD_START_ROUTINE)ThreadMain, // LPTHREAD_START_ROUTINE lpStartAddr,
								arg, // LPVOID lpvThreadParm,
								0, // DWORD fdwCreate,
								tid );

	if(thid == NULL)
	{
		lastError = GetLastError();

		if(lastError != 0)
		{
			FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM, NULL, lastError, MAKELANGID(LANG_NEUTRAL,SUBLANG_DEFAULT), (LPSTR)errMessageBuf, sizeof(errMessageBuf) -1, NULL);
			Com_PrintError(CON_CHANNEL_SYSTEM,"Failed to start thread with error: %s\n", errMessageBuf);

		}else{
			Com_PrintError(CON_CHANNEL_SYSTEM,"Failed to start thread!\n");
		}
		return NULL;
	}
	return thid;
}

qboolean Sys_CreateNewThread(void* (*ThreadMain)(void*), threadid_t *tid, void* arg)
{
	HANDLE thid = Sys_CreateThreadWithHandle(ThreadMain, tid, arg);

	if(thid == NULL)
	{
		return qfalse;
	}

	CloseHandle(thid);
	return qtrue;
}



qboolean __cdecl Sys_IsMainThread( void )
{
	return Sys_ThreadisSame(mainthread);
}

qboolean Sys_ThreadisSame(threadid_t threadid)
{
	threadid_t thread = GetCurrentThreadId();

	return threadid == thread;

}

void Sys_ExitThread(int code)
{
	ExitThread( code );

}

threadid_t __cdecl Sys_GetCurrentThreadId( void )
{
		return GetCurrentThreadId();
}


char** GetStrTable(void* filebuf, int len, sharedlib_data_t *text)
{
	return PE32_GetStrTable(filebuf, len, text);
}

void CON_InitInternal();

/* Win32 message loop thread */
void* Sys_EventLoopThread(void* nullarg){
	MSG msg;

	CON_InitInternal();
	g_wv.windowsCreated = qtrue;


	// pump the message loop
	while ( GetMessageA( &msg, NULL, 0, 0 ) > 0)
	{
		// save the msg time, because wndprocs don't have access to the timestamp
		g_wv.sysMsgTime = msg.time;

		TranslateMessage( &msg );
		DispatchMessageA( &msg );
	}
	MessageBoxA(NULL, "GetMessageA has failed", "GetMessageA has failed", MB_OK);
	Com_Quit_f();
	return NULL;
}

void Sys_EventLoop()
{

}

void CON_Init()
{
	static qboolean messageThreadActive = 0;
	threadid_t tid;

	if(messageThreadActive)
	{
		return;
	}

	messageThreadActive = Sys_CreateNewThread(Sys_EventLoopThread, &tid, NULL);
	while(messageThreadActive && !g_wv.windowsCreated)
	{
		Sys_SleepSec(0);
	}
}


void* Sys_ErrorBoxThread(void* message)
{
	MessageBoxA(NULL, (char*)message, CLIENT_WINDOW_TITLE " - System Crash", MB_OK | MB_ICONERROR | MB_TOPMOST );
	return NULL;
}

void Sys_WaitForErrorConfirmation(const char* error)
{
	MSG msg;
	unsigned int maxwait;
	threadid_t tid;

	CON_Show( 1, qtrue );

	Sys_CreateNewThread(Sys_ErrorBoxThread, &tid, (void*)error);

	// wait for the user to quit or wait for max 60 seconds
	maxwait = Sys_Milliseconds() + 60000;
	do{
		if ( !GetMessage( &msg, NULL, 0, 0 ) ) {
			break;
		}
		TranslateMessage( &msg );
		DispatchMessage( &msg );
	}while( Sys_Milliseconds() < maxwait );


}

int WINAPI WinMain( HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow )
{

	char lpFilename[MAX_OSPATH];
    char sys_cmdline[MAX_STRING_CHARS];
	char *lastSep;
	DWORD copylen;

	if(lpCmdLine != NULL)
		Q_strncpyz( sys_cmdline, lpCmdLine, sizeof( sys_cmdline ) );
	else
		sys_cmdline[0] = '\0';

	g_wv.hInstance = hInstance;

	copylen = GetModuleFileName(NULL, lpFilename, sizeof(lpFilename));
	if(copylen >= (sizeof(lpFilename) -1))
	{
		Sys_SetExeFile( "" );
		Sys_SetExeFileShort( "" );
		Sys_SetBinaryPath( "" );
		MessageBoxA(NULL, "Path is too long. The whole path to location of this .exe file must not exceed 254 characters", CLIENT_WINDOW_TITLE " Error", MB_OK | MB_ICONERROR);
		return 1;
	}else{
		Sys_SetExeFile( lpFilename );
		lastSep = strrchr(lpFilename, '\\');

		if(lastSep != NULL)
		{
			*lastSep = '\0';
			if(strlen(lastSep +1) > MAX_QPATH)
			{
				MessageBoxA(NULL, ".EXE filename exceeds " "64" " characters.", CLIENT_WINDOW_TITLE " Error", MB_OK | MB_ICONERROR);
				return 1;
			}
			Sys_SetBinaryPath( lpFilename );
			Sys_SetExeFileShort( lastSep +1 );
		}else{
			MessageBoxA(NULL, "GetModuleFileName() returned an unexpected filepath.", CLIENT_WINDOW_TITLE " Error", MB_OK | MB_ICONERROR);
			return 1;
		}
	}
	Sys_InitThreadContext();
    return Sys_Main(sys_cmdline);
}


void  __noreturn Sys_ExitForOS( int exitCode )
{
	ExitProcess( exitCode );
}

int Sys_Chmod(const char* filename, int mode)
{
    return _chmod(filename, mode);
}

void Sys_SleepUSec(int usec)
{
	Sleep((usec + 999) / 1000);
}

unsigned int Sys_GetProcessAffinityMask()
{
  long unsigned int systemAffinityMask;
  long unsigned int processAffinityMask = 0;

  HANDLE h = GetCurrentProcess();

  GetProcessAffinityMask(h, &processAffinityMask, &systemAffinityMask);
  return processAffinityMask;
}

DWORD __cdecl Sys_InterlockedExchangeAdd(DWORD volatile *Addend, DWORD value)
{
	return InterlockedExchangeAdd((LONG volatile *)Addend, value);
}

DWORD __cdecl Sys_InterlockedDecrement(DWORD volatile *Addend)
{
	return InterlockedDecrement((LONG volatile *)Addend);
}
DWORD __cdecl Sys_InterlockedIncrement(DWORD volatile *Addend)
{
	return InterlockedIncrement((LONG volatile *)Addend);
}
DWORD __cdecl Sys_InterlockedCompareExchange(DWORD volatile *Destination, DWORD Exchange, DWORD Comparand)
{
	return InterlockedCompareExchange((LONG volatile *)Destination, Exchange, Comparand);
}

int __cdecl __cxa_atexit(void (__cdecl *func) (void*), void *arg, void *dso_handle)
{
	return atexit((void(__cdecl*)(void))func);
}

void Sys_InitThreadContext()
{
	tlsKey = TlsAlloc();
    mainthread = Sys_GetCurrentThreadId( );
}

void Sys_SetThreadLocalStorage(void** localvar)
{
    if(TlsSetValue(tlsKey, localvar) == FALSE)
	{
		Sys_ShowErrorDialog("Sys_SetThreadLocalStorage");
		ExitProcess(-1);
	}
}

void** Sys_GetThreadLocalStorage()
{
    return TlsGetValue(tlsKey);
}

#ifdef __GNUC__
 

struct tagTHREADNAME_INFO
{
    DWORD dwType; // must be 0x1000
    LPCSTR szName; // pointer to name (in user addr space)
    DWORD dwThreadID; // thread ID (-1=caller thread)
    DWORD dwFlags; // reserved for future use, must be zero
};

#endif

void Sys_SetThreadName(threadid_t tid, const char* szThreadName)
{
	return;
  struct tagTHREADNAME_INFO info;

  info.dwType = 4096;
  info.szName = szThreadName;
  info.dwThreadID = tid;
  info.dwFlags = 0;
  RaiseException(0x406D1388u, 0, 4u, &info.dwType);
}

HANDLE __cdecl Sys_CreateEvent(qboolean bManualReset, qboolean bInitialState, const char *name)
{
	SECURITY_ATTRIBUTES sa;
	sa.nLength = sizeof(sa);
	sa.lpSecurityDescriptor = NULL;
	sa.bInheritHandle = false;
	
	return CreateEventA(&sa, bManualReset, bInitialState, NULL); //Name must be NULL or it will interact with other processes
}

signed int __cdecl Sys_ResetEvent(HANDLE hEvent)
{
	return ResetEvent(hEvent);
}

signed int __cdecl Sys_SetEvent(HANDLE hEvent)
{
	return SetEvent(hEvent);
}

signed int __cdecl Sys_WaitForObject(HANDLE hHandle)
{
	return WaitForSingleObject(hHandle, -1);
}

signed int __cdecl Sys_IsObjectSignaled(HANDLE hHandle)
{
	if(WaitForSingleObject(hHandle, 0) == 0)
	{
		return 1;
	}
	return 0;
}

//Returns number of successful parsed certs
int Sys_ReadCertificate(void* cacert, int (*store_callback)(void* ca_ctx, const unsigned char* pemderbuf, int lenofpemder))
{
//From: http://stackoverflow.com/questions/9507184/can-openssl-on-windows-use-the-system-certificate-store
    HCERTSTORE hStore;
    PCCERT_CONTEXT pContext = NULL;

    hStore = CertOpenSystemStoreA(0, "ROOT");

    if (!hStore)
	{
        return 0;
	}
	int i = 0;
	while ((pContext = CertEnumCertificatesInStore(hStore, pContext)))
	{
		if(pContext->dwCertEncodingType != X509_ASN_ENCODING)
		{
			continue;
		}
		if(store_callback(cacert, pContext->pbCertEncoded, pContext->cbCertEncoded) == 0)
		{
			++i;
		}
	}
	CertFreeCertificateContext(pContext);
	CertCloseStore(hStore, 0);
	return i;
}


void Sys_PrintBacktrace()
{}