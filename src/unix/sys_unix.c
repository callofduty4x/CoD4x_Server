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


#include "../q_shared.h"
#include "../q_platform.h"
#include "../qcommon_mem.h"
#include "../qcommon_io.h"
#include "../qcommon.h"
#include "../sys_main.h"
#include "../cmd.h"
#include "../sys_cod4defs.h"
#include "../sys_thread.h"
#include "sys_unix.h"

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
#include <sys/time.h>
#include <pthread.h>
#include <stdatomic.h>

void Sys_InitThreadContext();

/*
==================
Sys_RandomBytes
==================
*/
qboolean Sys_RandomBytes( byte *string, int len )
{
	FILE *fp;

	fp = fopen( "/dev/urandom", "r" );
	if( !fp )
		return qfalse;

	if( !fread( string, sizeof( byte ), len, fp ) )
	{
		fclose( fp );
		return qfalse;
	}

	fclose( fp );
	return qtrue;
}

unsigned int Sys_MillisecondsRaw( void )
{
	struct timeval tp;

	gettimeofday( &tp, NULL );

	return tp.tv_sec * 1000 + tp.tv_usec / 1000;
}

void Sys_ReplaceProcess( char *cmdline )
{

	int i;
	char *argv[256];

	Cmd_TokenizeString(cmdline);
	if(Cmd_Argc() < 256)
	{
		for(i = 0; i < Cmd_Argc(); i++)
		{
			argv[i] = CopyString(Cmd_Argv(i));
		}
		argv[i] = NULL;

		execv( argv[0], argv );
		Com_PrintError(CON_CHANNEL_SYSTEM, "Sys_ReplaceProcess: execv failed: %s\n", strerror( errno ) );
	}else{
		Com_PrintError(CON_CHANNEL_SYSTEM, "Sys_ReplaceProcess: Exceeded limit of 256 commandline arguments.\nCommandline is: %s\n", cmdline);
	}
	Cmd_EndTokenizedString();
	_exit( 0 );
}


/*
==================
Sys_Dirname
==================
*/
/* Not changes passed path. */
const char *Sys_Dirname(const char *path)
{
	static char dir[MAX_OSPATH];
	mvabuf;

	strncpy(dir, path, MAX_OSPATH);
	dirname(dir);
	return dir;
}


/*
==================
Sys_Cwd
==================
*/
char *Sys_Cwd( void )
{
	static char cwd[MAX_OSPATH];

	char *result = getcwd( cwd, sizeof( cwd ) - 1 );
	if( result != cwd )
		return NULL;

	cwd[MAX_OSPATH-1] = 0;

	return cwd;
}



void Sys_InitCrashDumps(){

        // core dumps may be disallowed by parent of this process; change that

        struct rlimit core_limit;
        core_limit.rlim_cur = RLIM_INFINITY;
        core_limit.rlim_max = RLIM_INFINITY;

        if (setrlimit(RLIMIT_CORE, &core_limit) < 0)
            Com_PrintWarning(CON_CHANNEL_SYSTEM,"setrlimit: %s\nCore dumps may be truncated or non-existant\n", strerror(errno));

}

qboolean Sys_MemoryProtectWrite(void* startoffset, int len)
{

	if(mprotect((char*)startoffset - ((int)startoffset % getpagesize()), len + (len % getpagesize()), PROT_READ | PROT_WRITE) != 0)
	{
            perror("Sys_MemoryProtectWrite: mprotect change memory to writable error");
            return qfalse;
	}

	return qtrue;
}

qboolean Sys_MemoryProtectExec(void* startoffset, int len)
{
	if(mprotect((char*)startoffset - ((int)startoffset % getpagesize()), len + (len % getpagesize()), PROT_READ | PROT_EXEC) != 0)
	{
            perror("Sys_MemoryProtectExec: mprotect change memory to readonly/execute error");
            return qfalse;
	}

	return qtrue;
}

qboolean Sys_MemoryProtectReadonly(void* startoffset, int len)
{

	if(mprotect((char*)startoffset - ((int)startoffset % getpagesize()), len + (len % getpagesize()), PROT_READ) != 0)
	{
            perror("Sys_MemoryProtectReadonly: mprotect change memory to readonly error");
            return qfalse;
	}

	return qtrue;
}


/*
==============================================================

DIRECTORY SCANNING

==============================================================
*/

#define MAX_FOUND_FILES 0x1000

/*
==================
Sys_ListFilteredFiles
==================
*/
void Sys_ListFilteredFiles( const char *basedir, char *subdirs, char *filter, char **list, int *numfiles )
{
	char          search[MAX_OSPATH], newsubdirs[MAX_OSPATH];
	char          filename[MAX_OSPATH];
	DIR           *fdir;
	struct dirent *d;
	struct stat   st;

	if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
		return;
	}

	if (strlen(subdirs)) {
		Com_sprintf( search, sizeof(search), "%s/%s", basedir, subdirs );
	}
	else {
		Com_sprintf( search, sizeof(search), "%s", basedir );
	}

	if ((fdir = opendir(search)) == NULL) {
		return;
	}

	while ((d = readdir(fdir)) != NULL) {
		Com_sprintf(filename, sizeof(filename), "%s/%s", search, d->d_name);
		if (stat(filename, &st) == -1)
			continue;

		if (st.st_mode & S_IFDIR) {
			if (Q_stricmp(d->d_name, ".") && Q_stricmp(d->d_name, "..")) {
				if (strlen(subdirs)) {
					Com_sprintf( newsubdirs, sizeof(newsubdirs), "%s/%s", subdirs, d->d_name);
				}
				else {
					Com_sprintf( newsubdirs, sizeof(newsubdirs), "%s", d->d_name);
				}
				Sys_ListFilteredFiles( basedir, newsubdirs, filter, list, numfiles );
			}
		}
		if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
			break;
		}
		Com_sprintf( filename, sizeof(filename), "%s/%s", subdirs, d->d_name );
		if (!Com_FilterPath( filter, filename, qfalse ))
			continue;
		list[ *numfiles ] = CopyString( filename );
		(*numfiles)++;
	}

	closedir(fdir);
}

/*
==================
Sys_ListFiles
==================
*/



char **Sys_ListFiles( const char *directory, const char *extension, char *filter, int *numfiles, qboolean wantsubs )
{
/*Looks like the includefile sys/stat.h has a wrong type size. Bugfix */
	struct stat_size_fix
	{
	    struct stat st;
	    int guard1;
	    int guard2;
	};

	struct dirent *d;
	DIR           *fdir;
	qboolean      dironly = wantsubs;
	char          search[MAX_OSPATH];
	int           nfiles;
	char          **listCopy;
	char          *list[MAX_FOUND_FILES];
	int           i;
	struct        stat_size_fix st;
	int           extLen;

	if (filter) {

		nfiles = 0;
		Sys_ListFilteredFiles( directory, "", filter, list, &nfiles );

		list[ nfiles ] = NULL;
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

	if ( !extension)
		extension = "";

	if ( extension[0] == '/' && extension[1] == 0 ) {
		extension = "";
		dironly = qtrue;
	}

	extLen = strlen( extension );

	// search
	nfiles = 0;

	if ((fdir = opendir(directory)) == NULL) {
		*numfiles = 0;
		return NULL;
	}
	while ((d = readdir(fdir)) != NULL) {

		Com_sprintf(search, sizeof(search), "%s/%s", directory, d->d_name);

		if (stat(search, &st.st) == -1)
			continue;

		if ((dironly && !(st.st.st_mode & S_IFDIR)) ||
			(!dironly && (st.st.st_mode & S_IFDIR)))
			continue;

		if (*extension) {
			if ( strlen( d->d_name ) < extLen ||
				Q_stricmp(
					d->d_name + strlen( d->d_name ) - extLen,
					extension ) ) {
				continue; // didn't match
			}
		}
		if ( nfiles == MAX_FOUND_FILES - 1 )
			break;
		list[ nfiles ] = CopyString( d->d_name );
		nfiles++;
	}

	list[ nfiles ] = NULL;

	closedir(fdir);

	// return a copy of the list
	*numfiles = nfiles;

	if ( !nfiles ) {
		return NULL;
	}

	listCopy = S_Malloc( ( nfiles + 1 ) * sizeof( *listCopy ) );
	for ( i = 0 ; i < nfiles ; i++ ) {
		listCopy[i] = list[i];
	}
	listCopy[i] = NULL;

	return listCopy;
}


qboolean Sys_DirectoryHasContent(const char *dir)
{
  DIR *hdir;
  struct dirent *hfiles;

  hdir = opendir(dir);
  if ( hdir )
  {
	hfiles = readdir(hdir);
    while ( hfiles )
    {
        if ( hfiles->d_reclen != 4 || hfiles->d_name[0] != '.' )
		{
	          closedir(hdir);
		  return qtrue;
		}
		hfiles = readdir(hdir);
    }
	closedir(hdir);
  }
  return qfalse;
}



/*
==================
Sys_FreeFileList
==================
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

/*
================
Sys_GetUsername
================
*/
const char* Sys_GetUsername()
{
        struct passwd *passwdstr = getpwuid(getuid());

        if(passwdstr == NULL)
            return "CoD-Admin";

        return passwdstr->pw_name;

}

int main(int argc, char* argv[])
{

    int i;

    uid_t uid = getuid();
    if( uid == 0 || uid != geteuid() ) { // warn user that he/she's operating as a privliged user
        Com_Printf(CON_CHANNEL_SYSTEM, "********************************************************\n" );
        Com_Printf(CON_CHANNEL_SYSTEM, "***** RUNNING SERVER AS A ROOT IS GENERALLY UNSAFE *****\n" );
        Com_Printf(CON_CHANNEL_SYSTEM, "********************************************************\n\n" );
    }
    // go back to real user for config loads
    seteuid( uid );


    char commandLine[MAX_STRING_CHARS];

    commandLine[0] = 0;

    // Concatenate the command line for passing to Com_Init
    for( i = 1; i < argc; i++ )
    {
        const qboolean containsSpaces = strchr(argv[i], ' ') != NULL;
        if (containsSpaces)
            Q_strncat( commandLine, sizeof( commandLine ), "\"" );

        Q_strncat( commandLine, sizeof( commandLine ), argv[ i ] );

        if (containsSpaces)
            Q_strncat( commandLine, sizeof( commandLine ), "\"" );

        Q_strncat( commandLine, sizeof( commandLine ), " " );
    }

    Sys_SetExeFile( argv[ 0 ] );
	const char* find = strrchr( argv[0], '/' );
    if(find)
	{
		Sys_SetExeFileShort( find +1 );
	}else{
		Sys_SetExeFileShort( argv[0] );
	}
	/* This function modifies argv[ 0 ] :S */
    Sys_SetBinaryPath( Sys_Dirname( argv[ 0 ] ) );
    Sys_InitThreadContext();

    return Sys_Main(commandLine);
}


/*
==================
Sys_Basename
==================
*/
const char *Sys_Basename( char *path )
{
	return basename( path );
}

/*
==================
Sys_Mkdir
==================
*/
qboolean Sys_Mkdir( const char *path )
{
	int result = mkdir( path, 0750 );

	if( result != 0 )
		return errno == EEXIST;

	return qtrue;
}

qboolean Sys_SetPermissionsExec(const char* ospath)
{
        if(chmod(ospath, S_IRUSR | S_IWUSR | S_IXUSR | S_IRGRP | S_IXGRP | S_IROTH | S_IXOTH)!=0){
		return qfalse;
        }
	return qtrue;
}


/*
==================
Sys_SleepSec
==================
*/

void Sys_SleepMSec(int msec)
{
		struct timespec ts;
		ts.tv_sec = msec / 1000;
		ts.tv_nsec = (msec % 1000) * 1000000;
		nanosleep(&ts, NULL);
}

void Sys_SleepSec(int seconds)
{
	struct timespec ts;
	ts.tv_sec = seconds;
	ts.tv_nsec = 0;
	nanosleep(&ts, NULL);
}

void Sys_SleepUSec(int usec)
{
	usleep(usec);
}

void Sys_EventLoop()
{

}

void Sys_WaitForErrorConfirmation(const char* error)
{

}

void* currentLibHandle = NULL;

void Sys_LoadLibraryError(char* errormessage, int maxlen)
{
	const char* pterror = dlerror();
	if(pterror == NULL)
	{
		Q_strncpyz(errormessage, "no error occurred while loading shared library", maxlen);
		return;
	}
	Q_strncpyz(errormessage, pterror, maxlen);
}

void* Sys_LoadLibrary(const char* dlfile)
{
	void* handle = dlopen(dlfile, RTLD_NOW);
	currentLibHandle = handle;
	if(handle == NULL)
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"Sys_LoadLibrary error: %s\n", dlerror());
	}
	return handle;
}

void* Sys_GetProcedure(const char* lpProcName)
{
	if(currentLibHandle == NULL)
	{
		Com_Error(ERR_FATAL, "Attempt to get ProcAddress from invalid or not loaded library");
		return NULL;
	}
	void* procedure = dlsym( currentLibHandle, lpProcName );
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
	dlclose(hModule);
}

#define MIN_STACKSIZE 256*1024
qboolean Sys_CreateNewThread(void* (*ThreadMain)(void*), threadid_t *tid, void* arg)
{
	int err;
	pthread_attr_t tattr;

	err = pthread_attr_init(&tattr);
	if(err != 0)
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"pthread_attr_init(): Thread creation failed with the following error: %s\n", strerror(errno));
		return qfalse;
	}

	err = pthread_attr_setdetachstate(&tattr, PTHREAD_CREATE_DETACHED);
	if(err != 0)
	{
		pthread_attr_destroy(&tattr);
		Com_PrintError(CON_CHANNEL_SYSTEM,"pthread_attr_setdetachstate(): Thread creation failed with the following error: %s\n", strerror(errno));
		return qfalse;
	}

	err = pthread_attr_setstacksize(&tattr, MIN_STACKSIZE);
	if(err != 0)
	{
		pthread_attr_destroy(&tattr);
		Com_PrintError(CON_CHANNEL_SYSTEM,"pthread_attr_setstacksize(): Thread creation failed with the following error: %s\n", strerror(errno));
		return qfalse;
	}

	err = pthread_create(tid, &tattr, ThreadMain, arg);
	if(err != 0)
	{
		pthread_attr_destroy(&tattr);
		Com_PrintError(CON_CHANNEL_SYSTEM,"pthread_create(): Thread creation failed with the following error: %s\n", strerror(errno));
		return qfalse;
	}
	pthread_attr_destroy(&tattr);
	return qtrue;
}

//Just for Win32 code compatibility
threadid_t Sys_CreateThreadWithHandle(void* (*ThreadMain)(void*), threadid_t *tid, void* arg)
{
    if(Sys_CreateNewThread(ThreadMain, tid, arg))
    {
        return *tid;
    }
    return 0;
}


static pthread_mutex_t crit_sections[CRITSECT_COUNT];
threadid_t mainthread;

void Sys_InitializeCriticalSections( void )
{
	int i;
	pthread_mutexattr_t muxattr;

	pthread_mutexattr_init(&muxattr);
	pthread_mutexattr_settype(&muxattr, PTHREAD_MUTEX_RECURSIVE);

	for (i = 0; i < CRITSECT_COUNT; i++) {
		pthread_mutex_init( &crit_sections[i], &muxattr );

	}

	pthread_mutexattr_destroy(&muxattr);

}


void __cdecl Sys_EnterCriticalSectionInternal(int section)
{
	pthread_mutex_lock(&crit_sections[section]);
}

void __cdecl Sys_LeaveCriticalSectionInternal(int section)
{
	pthread_mutex_unlock(&crit_sections[section]);
}


qboolean __cdecl Sys_IsMainThread( void )
{
	return Sys_ThreadisSame(mainthread);
}

qboolean Sys_ThreadisSame(threadid_t threadid)
{
	threadid_t thread = pthread_self();

	return pthread_equal(threadid, thread) != 0;

}

threadid_t Sys_GetCurrentThreadId( )
{
	threadid_t thread = pthread_self();

	return thread;

}

void Sys_ExitThread(int code)
{
	pthread_exit(&code);

}

void  __noreturn Sys_ExitForOS( int exitCode )
{
	exit(exitCode);
}

int Sys_Chmod(const char* file, int mode)
{
    return chmod(file, mode);

}


void* Sys_RunNewProcess(void* arg)
{
	char cmdline[4096];

	Q_strncpyz(cmdline, (const char*)arg, sizeof(cmdline));
	free(arg);
	system(cmdline);
	return NULL;
}


void Sys_DoStartProcess( char *cmdline ) {

	threadid_t tid;

	void* mcmdline = (void*)strdup(cmdline);
	if(mcmdline == NULL)
	{
		return;
	}
	if(Sys_CreateNewThread(Sys_RunNewProcess, &tid, mcmdline) == qfalse)
	{
		free(mcmdline);
	}

}

typedef struct
{
    char magic[8];
    void* realstart;
    void* virtualstart;
    int realsize;
    int virtualsize;
    int allocType;
    int protect;
}VirtualAllocInfo_t;

void *__cdecl _VirtualAlloc(void *address, int dwSize, int flAllocationType, int flProtect)
{
  int pagesize = 0x1000;
  void *unaligned;
  int realsize;

  if ( !address )
  {
    realsize = dwSize + pagesize + sizeof(VirtualAllocInfo_t);
    unaligned = calloc(1, realsize);
    if(unaligned == NULL)
    {
        return NULL;
    }
    address = (void*)( (unsigned int)unaligned & ~(pagesize -1));

    address += pagesize;
    if(unaligned + sizeof(VirtualAllocInfo_t) > address)
    {
        address += pagesize;
    }
    VirtualAllocInfo_t *meminfo = (VirtualAllocInfo_t *)((byte*)address - sizeof(VirtualAllocInfo_t));
    meminfo->realstart = unaligned;
    meminfo->virtualstart = address;
    meminfo->realsize = realsize;
    meminfo->virtualsize = dwSize;
    meminfo->allocType = flAllocationType;
    meminfo->protect = flProtect;
    memcpy(meminfo->magic, "VIRALLOC", sizeof(meminfo->magic));
  }else{
//      Com_Printf(CON_CHANNEL_SYSTEM,"VirtualAlloc with address != NULL\nNeed fix to handle VirtualAlloc COMMIT/RESERVE\n");
  }
  return address;
}

bool __cdecl _VirtualFree(void* lpAddress, int dwSize, uint32_t dwFreeType)
{
  if ( lpAddress && dwFreeType == 0x8000 )
  {
    VirtualAllocInfo_t *meminfo = (VirtualAllocInfo_t *)((byte*)lpAddress - sizeof(VirtualAllocInfo_t));
    if(meminfo->realstart == NULL || memcmp(meminfo->magic, "VIRALLOC", sizeof(meminfo->magic)))
    {
        Com_Error(ERR_FATAL, "VirtualFree with invalid handle\n");
        return false;
    }
    free(meminfo->realstart);
    return true;
  }
  else
  {
//    Com_Error(ERR_FATAL, "VirtualFree without address or type != 0x8000");
  }
  return false;
}

DWORD __cdecl Sys_InterlockedDecrement(DWORD volatile *Addend)
{
	return atomic_fetch_sub(Addend, 1) -1;
}
DWORD __cdecl Sys_InterlockedIncrement(DWORD volatile *Addend)
{
	return atomic_fetch_add(Addend, 1) +1;
}
DWORD __cdecl Sys_InterlockedCompareExchange(DWORD volatile *Destination, DWORD Exchange, DWORD Comparand)
{
	return __sync_val_compare_and_swap(Destination, Comparand, Exchange);
}
DWORD __cdecl Sys_InterlockedExchangeAdd(DWORD volatile *Addend, DWORD value)
{
	return atomic_fetch_add(Addend, value);
}


int __cdecl _SleepEx(int dwMilliseconds, BOOL alert)
{
  return 0;
}

#pragma GCC diagnostic ignored "-Wmultichar"


typedef struct
{
  DWORD type;
  union
  {
	FILE* fh;
	pthread_mutex_t mutex;
  };
  pthread_cond_t cond;
  qboolean manualreset;
  qboolean signaled;
  char name[32];
}hObject_t;

BOOL __cdecl _CloseHandle(HANDLE handle)
{

  hObject_t *hObject = (hObject_t *)handle;
  
  if ( hObject->type == 'File' )
  {
    if ( hObject->fh )
    {
      fclose(hObject->fh);
      hObject->fh = 0;
    }
    hObject->type = 'DEAD';
//    _ZdlPv_stub(hObject);
    free(hObject);
    return TRUE;
  }else if(hObject->type == 'Evnt'){
    hObject->type = 'DEAD';
    pthread_mutex_destroy(&hObject->mutex);
    free(hObject);
    return TRUE;
  }
  return FALSE;
}


DWORD sLastError;

DWORD __cdecl _GetLastError()
{
  DWORD result;

  result = sLastError;
  sLastError = 0;
  return result;
}

void __cdecl _SetLastError(DWORD error_val)
{
  sLastError = error_val;
}

BOOL __cdecl _ReadFileEx(HANDLE handle, void *lpBuffer, int nNumberOfBytesToRead, struct _OVERLAPPED *lpOverlapped, void (__stdcall *lpCompletionRoutine)(long unsigned int, long unsigned int, struct _OVERLAPPED*))
{
  sLastError = 0;
  hObject_t *hObject = (hObject_t*)handle;
  if ( hObject->type != 'File' )
  {
    return FALSE;
  }
  if ( fseek(hObject->fh, lpOverlapped->Offset, 0) )
  {
    if(feof(hObject->fh))
    {
        _SetLastError(38); //EOF error
    }else{
        _SetLastError(25); //Seek error
    }
    return FALSE;
  }
  if((signed int)fread(lpBuffer, 1u, nNumberOfBytesToRead, hObject->fh) <= 0)
  {
    if(feof(hObject->fh))
    {
        _SetLastError(38);
    }else{
        _SetLastError(30); //Read fault
    }
    return FALSE;
  }
  return TRUE;
}

FILE* NixFOpen(const char* filen, const char* mode)
{
    unsigned int i;
    char filename[1024];
    if(*filen == 0)
    {
        return NULL;
    }
    for(i = 0; i < sizeof(filename) -1 && filen[i]; ++i)
    {
        filename[i] = filen[i];
        if(filename[i] == '\\')
        {
            filename[i] = '/';
        }
    }
    filename[i] = '\0';
    return fopen(filename, mode);
}

HANDLE __cdecl _CreateFileA(char *lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, void *lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
{
  FILE *fh;
  hObject_t *ho;

  fh = NixFOpen(lpFileName, "rb");
  if ( fh )
  {
    ho = malloc(sizeof(hObject_t));
    if(ho == NULL)
    {
        fclose(fh);
        return (HANDLE)-1;
    }
    ho->type = 'File';
    ho->fh = fh;
    return (HANDLE)ho;
  }
  return (HANDLE)-1;
}


DWORD __cdecl _GetFileSize(HANDLE handle, DWORD *lpFileSizeHigh)
{
  uint32_t current;
  DWORD size;
  hObject_t *hFile = (hObject_t*)handle;

  if ( hFile->type == 'File' )
  {
    current = ftell(hFile->fh);
    fseek(hFile->fh, 0, SEEK_END);
    size = ftell(hFile->fh);
    //restore
    fseek(hFile->fh, current, 0);
    if ( lpFileSizeHigh )
    {
      *lpFileSizeHigh = size;
    }
    return size;
  }
  return -1;

}

int NixStat(const char* filen, struct stat *b)
{
    unsigned int i;
    char filename[1024];
    if(*filen == 0)
    {
        return -1;
    }
    for(i = 0; i < sizeof(filename) -1 && filen[i]; ++i)
    {
        filename[i] = filen[i];
        if(filename[i] == '\\')
        {
            filename[i] = '/';
        }
    }
    return stat(filename, b);
}


int __cdecl _GetFileAttributesA(const char *name)
{
  struct stat st;

  if ( NixStat(name, &st) )
    return -1;

  return (st.st_uid & 0x4000u) >= 1 ? 0x10 : 0;
}

BOOL __cdecl _SetFileAttributesA(const char *name, unsigned int fa)
{
  return FALSE;
}




signed int __cdecl Sys_ResetEvent(HANDLE handle)
{
  hObject_t *h = (hObject_t*)handle;
  char yi;

  if ( h->type != 'Evnt' || pthread_mutex_lock(&h->mutex) )
  {
    return 0;
  }

    if ( h->signaled == 1 )
    {
      h->signaled = 0;
      yi = 1;
    }
    else
    {
      yi = 0;
    }
    pthread_mutex_unlock(&h->mutex);
    if ( yi )
    {
#ifdef __MACH__
      pthread_yield_np();
#else
      pthread_yield();
#endif
    }
    return 1;
}


signed int __cdecl Sys_SetEvent(HANDLE handle)
{
  hObject_t *h = (hObject_t*)handle;

  if ( h->type != 'Evnt' || pthread_mutex_lock(&h->mutex) )
  {
    return 0;
  }
  h->signaled = 1;
  pthread_cond_broadcast(&h->cond);
  pthread_mutex_unlock(&h->mutex);
  return 1;
}


signed int __cdecl Sys_WaitForObject(HANDLE handle)
{
    int s;
    int signaled;

    hObject_t *h = (hObject_t*)handle;

    if ( h->type != 'Evnt' ){
	return -1;
    }

    if ( !pthread_mutex_lock(&h->mutex) )
    {
      signaled = h->signaled;
      if ( !signaled )
      {
        while ( 1 )
        {
          s = pthread_cond_wait(&h->cond, &h->mutex);
          if ( h->signaled )
          {
            signaled = 1;
            break;
          }
          if ( s != 0)
          {
            signaled = 0;
            break;
          }
        }
      }
      //Ty icekobrin pointing me in this direction
      if ( !h->manualreset )
      {
          h->signaled = 0;
      }
      pthread_mutex_unlock(&h->mutex);
      if ( signaled )
      {
        return 0; //Signaled
      }
    }
    return -1; //Error
}


signed int __cdecl Sys_IsObjectSignaled(HANDLE handle)
{
    hObject_t *h = (hObject_t*)handle;
    if ( h->type != 'Evnt' )
    {
	return -1;
    }
    if ( h->signaled )
    {
      return 1;
    }
    return 0;
}

HANDLE Sys_CreateEvent(qboolean bManualReset, qboolean bInitialState, const char *name)
{
  hObject_t *h;
  int r;
  pthread_mutexattr_t attr;

  if ( pthread_mutexattr_init(&attr) )
  {
    return 0;
  }
  pthread_mutexattr_settype(&attr, 2);
  h = (hObject_t *)malloc(sizeof(hObject_t));
  if(h == NULL)
  {
    pthread_mutexattr_destroy(&attr);
    return 0;
  }
  h->type = 'Evnt';
  h->manualreset = bManualReset;
  h->signaled = bInitialState;
  Q_strncpyz(h->name, name, sizeof(h->name));
  r = pthread_mutex_init(&h->mutex, &attr);
  pthread_mutexattr_destroy(&attr);

  if ( r != 0 || pthread_cond_init(&h->cond, 0) != 0)
  {
    free(h);
    return 0;
  }
  return (HANDLE)h;
}


pthread_key_t g_dwTlsKey;

void** Sys_GetThreadLocalStorage()
{
    return pthread_getspecific(g_dwTlsKey);
}

void Sys_InitThreadContext()
{
    pthread_key_create(&g_dwTlsKey, 0);
    mainthread = Sys_GetCurrentThreadId( );
}

void Sys_SetThreadLocalStorage(void** localvar)
{
    pthread_setspecific(g_dwTlsKey, localvar);
}

threadid_t Sys_GetThreadHandleFromID(threadid_t ti)
{
    return ti;
}

