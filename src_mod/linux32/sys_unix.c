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


#include <q_shared.h>
#include <q_platform.h>
#include <qcommon_mem.h>
#include <qcommon_io.h>
#include <qcommon.h>
#include <sys_main.h>
#include <cmd.h>
#include <sys_cod4defs.h>
#include <sys_thread.h>
#include <sys_main_libs.h>

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
#include<pthread.h>

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
		Com_PrintError( "Sys_ReplaceProcess: execv failed: %s\n", strerror( errno ) );
	}else{
		Com_PrintError( "Sys_ReplaceProcess: Exceeded limit of 256 commandline arguments.\nCommandline is: %s\n", cmdline);
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
	char dir[MAX_OSPATH] = {'\0'};
	mvabuf;

	strncpy(dir, path, MAX_OSPATH);
	dirname(dir);
	return va("%s", dir);
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
            Com_PrintWarning("setrlimit: %s\nCore dumps may be truncated or non-existant\n", strerror(errno));

}

qboolean Sys_MemoryProtectWrite(void* startoffset, int len)
{

	if(mprotect(startoffset - ((int)startoffset % getpagesize()), len + (len % getpagesize()), PROT_READ | PROT_WRITE) != 0)
	{
            perror("Sys_MemoryProtectWrite: mprotect change memory to writable error");
            return qfalse;
	}

	return qtrue;
}

qboolean Sys_MemoryProtectExec(void* startoffset, int len)
{
	if(mprotect(startoffset - ((int)startoffset % getpagesize()), len + (len % getpagesize()), PROT_READ | PROT_EXEC) != 0)
	{
            perror("Sys_MemoryProtectExec: mprotect change memory to readonly/execute error");
            return qfalse;
	}

	return qtrue;
}

qboolean Sys_MemoryProtectReadonly(void* startoffset, int len)
{

	if(mprotect(startoffset - ((int)startoffset % getpagesize()), len + (len % getpagesize()), PROT_READ) != 0)
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
        Com_Printf( "********************************************************\n" );
        Com_Printf( "***** RUNNING SERVER AS A ROOT IS GENERALLY UNSAFE *****\n" );
        Com_Printf( "********************************************************\n\n" );
    }
    // go back to real user for config loads
    if (0 != seteuid( uid ))
    {
        return errno;
    }


    char commandLine[MAX_STRING_CHARS];

    commandLine[0] = 0;

    // Concatenate the command line for passing to Com_Init
    for( i = 1; i < argc; i++ )
    {
        const qboolean containsSpaces = strchr(argv[i], ' ') != NULL;
        if (containsSpaces)
            Q_strcat( commandLine, sizeof( commandLine ), "\"" );

        Q_strcat( commandLine, sizeof( commandLine ), argv[ i ] );

        if (containsSpaces)
            Q_strcat( commandLine, sizeof( commandLine ), "\"" );

        Q_strcat( commandLine, sizeof( commandLine ), " " );
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

/*
==================
Sys_Backtrace
==================
*/

int Sys_Backtrace(void** buffer, int size)
{
    return backtrace(buffer, size);
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

libHandle_t Sys_LoadLibrary(const char *LibPath_)
{
    if (!LibPath_)
    {
        Com_Error(ERR_FATAL, "Sys_LoadLibrary: NULL library path");
        return INVALID_LIB_HANDLE;
    }

    void *handle = dlopen(LibPath_, RTLD_LAZY);
    return AddLibraryHandle(handle);
}

void* Sys_GetProcedure(libHandle_t hModule_, const char* ProcName_)
{
    if (hModule_ == INVALID_LIB_HANDLE)
    {
        Com_Error(ERR_FATAL, "Sys_GetProcedure: passed invalid library handle");
        return NULL;
    }

    if (!ProcName_ || !ProcName_[0])
    {
        Com_Error(ERR_FATAL, "Sys_GetProcedure: NULL or empty procedure name");
        return NULL;
    }

    void* hRealHandle = GetLibraryByHandle(hModule_);
    if (!hRealHandle)
    {
        Com_Error(ERR_FATAL, "Sys_GetProcedure: invalid or not loaded library");
        return NULL;
    }

    return dlsym(hRealHandle, lpProcName);
}

void Sys_CloseLibrary(libHandle_t hModule_)
{
	if (hModule_ == INVALID_LIB_HANDLE)
    {
        Com_Error(ERR_FATAL, "Sys_CloseLibrary: passed invalid library handle");
        return;[]
    }

    void* hRealModule = GetLibraryByHandle(hModule_);
    if (!hRealModule)
    {
        Com_Error(ERR_FATAL, "Sys_CloseLibrary: library not loaded");
        return;
    }

    dlclose(hRealModule);
    RemoveLibraryHandle(hModule_);
}

#define MIN_STACKSIZE 256*1024
qboolean Sys_CreateNewThread(void* (*ThreadMain)(void*), threadid_t *tid, void* arg)
{
	int err;
	pthread_attr_t tattr;

	err = pthread_attr_init(&tattr);
	if(err != 0)
	{
		Com_PrintError("pthread_attr_init(): Thread creation failed with the following error: %s\n", strerror(errno));
		return qfalse;
	}

	err = pthread_attr_setdetachstate(&tattr, PTHREAD_CREATE_DETACHED);
	if(err != 0)
	{
		pthread_attr_destroy(&tattr);
		Com_PrintError("pthread_attr_setdetachstate(): Thread creation failed with the following error: %s\n", strerror(errno));
		return qfalse;
	}

	err = pthread_attr_setstacksize(&tattr, MIN_STACKSIZE);
	if(err != 0)
	{
		pthread_attr_destroy(&tattr);
		Com_PrintError("pthread_attr_setstacksize(): Thread creation failed with the following error: %s\n", strerror(errno));
		return qfalse;
	}

	err = pthread_create(tid, &tattr, ThreadMain, arg);
	if(err != 0)
	{
		pthread_attr_destroy(&tattr);
		Com_PrintError("pthread_create(): Thread creation failed with the following error: %s\n", strerror(errno));
		return qfalse;
	}
	pthread_attr_destroy(&tattr);
	return qtrue;
}


static pthread_mutex_t crit_sections[CRIT_SIZE];
threadid_t mainthread;

void Sys_InitializeCriticalSections( void )
{
	int i;
	pthread_mutexattr_t muxattr;

	pthread_mutexattr_init(&muxattr);
	pthread_mutexattr_settype(&muxattr, PTHREAD_MUTEX_RECURSIVE);

	for (i = 0; i < CRIT_SIZE; i++) {
		pthread_mutex_init( &crit_sections[i], &muxattr );

	}

	pthread_mutexattr_destroy(&muxattr);

}

void __cdecl Sys_ThreadMain( void )
{
	mainthread = pthread_self();

    Com_InitThreadData();
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

void  __attribute__ ((noreturn)) Sys_ExitForOS( int exitCode )
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
    if (system(cmdline) == -1)
        Com_Printf("Coundn't run new process, errno is %d", errno);
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

