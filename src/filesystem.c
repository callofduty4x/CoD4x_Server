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


/*****************************************************************************
 * name:		files.c
 *
 * desc:		handle based filesystem for Quake III Arena
 *
 * $Archive: /MissionPack/code/qcommon/files.c $
 *
 *****************************************************************************/

/*
=============================================================================

QUAKE3 FILESYSTEM

All of Quake's data access is through a hierarchical file system, but the contents of
the file system can be transparently merged from several sources.

A "qpath" is a reference to game file data.  MAX_ZPATH is 256 characters, which must include
a terminating zero. "..", "\\", and ":" are explicitly illegal in qpaths to prevent any
references outside the quake directory system.

The "base path" is the path to the directory holding all the game directories and usually
the executable.  It defaults to ".", but can be overridden with a "+set fs_basepath c:\quake3"
command line to allow code debugging in a different directory.  Basepath cannot
be modified at all after startup.  Any files that are created (demos, screenshots,
etc) will be created reletive to the base path, so base path should usually be writable.

The "cd path" is the path to an alternate hierarchy that will be searched if a file
is not located in the base path.  A user can do a partial install that copies some
data to a base path created on their hard drive and leave the rest on the cd.  Files
are never writen to the cd path.  It defaults to a value set by the installer, like
"e:\quake3", but it can be overridden with "+set ds_cdpath g:\quake3".

If a user runs the game directly from a CD, the base path would be on the CD.  This
should still function correctly, but all file writes will fail (harmlessly).

The "home path" is the path used for all write access. On win32 systems we have "base path"
== "home path", but on *nix systems the base installation is usually readonly, and
"home path" points to ~/.q3a or similar

The user can also install custom mods and content in "home path", so it should be searched
along with "home path" and "cd path" for game content.


The "base game" is the directory under the paths where data comes from by default, and
can be either "baseq3" or "demoq3".

The "current game" may be the same as the base game, or it may be the name of another
directory under the paths that should be searched for files before looking in the base game.
This is the basis for addons.

Clients automatically set the game directory after receiving a gamestate from a server,
so only servers need to worry about +set fs_game.

No other directories outside of the base game and current game will ever be referenced by
filesystem functions.

To save disk space and speed loading, directory trees can be collapsed into zip files.
The files use a ".pk3" extension to prevent users from unzipping them accidentally, but
otherwise the are simply normal uncompressed zip files.  A game directory can have multiple
zip files of the form "pak0.pk3", "pak1.pk3", etc.  Zip files are searched in decending order
from the highest number to the lowest, and will always take precedence over the filesystem.
This allows a pk3 distributed as a patch to override all existing data.

Because we will have updated executables freely available online, there is no point to
trying to restrict demo / oem versions of the game with code changes.  Demo / oem versions
should be exactly the same executables as release versions, but with different data that
automatically restricts where game media can come from to prevent add-ons from working.

After the paths are initialized, quake will look for the product.txt file.  If not
found and verified, the game will run in restricted mode.  In restricted mode, only
files contained in demoq3/pak0.pk3 will be available for loading, and only if the zip header is
verified to not have been modified.  A single exception is made for q3config.cfg.  Files
can still be written out in restricted mode, so screenshots and demos are allowed.
Restricted mode can be tested by setting "+set fs_restrict 1" on the command line, even
if there is a valid product.txt under the basepath or cdpath.

If not running in restricted mode, and a file is not found in any local filesystem,
an attempt will be made to download it and save it under the base path.

If the "fs_copyfiles" cvar is set to 1, then every time a file is sourced from the cd
path, it will be copied over to the base path.  This is a development aid to help build
test releases and to copy working sets over slow network links.

File search order: when FS_FOpenFileRead gets called it will go through the fs_searchpaths
structure and stop on the first successful hit. fs_searchpaths is built with successive
calls to FS_AddGameDirectory

Additionaly, we search in several subdirectories:
current game is the current mode
base game is a variable to allow mods based on other mods
(such as baseq3 + missionpack content combination in a mod for instance)
BASEGAME is the hardcoded base game ("baseq3")

e.g. the qpath "sound/newstuff/test.wav" would be searched for in the following places:

home path + current game's zip files
home path + current game's directory
base path + current game's zip files
base path + current game's directory
cd path + current game's zip files
cd path + current game's directory

home path + base game's zip file
home path + base game's directory
base path + base game's zip file
base path + base game's directory
cd path + base game's zip file
cd path + base game's directory

home path + BASEGAME's zip file
home path + BASEGAME's directory
base path + BASEGAME's zip file
base path + BASEGAME's directory
cd path + BASEGAME's zip file
cd path + BASEGAME's directory

server download, to be written to home path + current game's directory


The filesystem can be safely shutdown and reinitialized with different
basedir / cddir / game combinations, but all other subsystems that rely on it
(sound, video) must also be forced to restart.

Because the same files are loaded by both the clip model (CM_) and renderer (TR_)
subsystems, a simple single-file caching scheme is used.  The CM_ subsystems will
load the file with a request to cache.  Only one file will be kept cached at a time,
so any models that are going to be referenced by both subsystems should alternate
between the CM_ load function and the ref load function.

TODO: A qpath that starts with a leading slash will always refer to the base game, even if another
game is currently active.  This allows character models, skins, and sounds to be downloaded
to a common directory no matter which game is active.

How to prevent downloading zip files?
Pass pk3 file names in systeminfo, and download before FS_Restart()?

Aborting a download disconnects the client from the server.

How to mark files as downloadable?  Commercial add-ons won't be downloadable.

Non-commercial downloads will want to download the entire zip file.
the game would have to be reset to actually read the zip in

Auto-update information

Path separators

Casing

  separate server gamedir and client gamedir, so if the user starts
  a local game after having connected to a network game, it won't stick
  with the network game.

  allow menu options for game selection?

Read / write config to floppy option.

Different version coexistance?

When building a pak file, make sure a q3config.cfg isn't present in it,
or configs will never get loaded from disk!

  todo:

  downloading (outside fs?)
  game directory passing and restarting

=============================================================================

*/

#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#include "filesystem.h"
#include "qcommon.h"
#include "qcommon_io.h"
#include "qcommon_mem.h"
#include "qcommon_logprint.h"
#include "cvar.h"
#include "q_platform.h"
#include "qcommon_parsecmdline.h"
#include "sys_main.h"
#include "cmd.h"
#include "sys_thread.h"
#include "plugin_handler.h"
#include "crc.h"

#include <sys/stat.h>
#include <sys/file.h>
#include <errno.h>
#include <unistd.h>
#include <ctype.h>



#define BASEGAME "main"
#define fs_gamedirvar fs_gameDirVar

cvar_t* fs_debug;
cvar_t* fs_copyfiles;
cvar_t* fs_cdpath;
cvar_t* fs_basepath;
cvar_t* fs_basegame;
cvar_t* fs_gameDirVar;
cvar_t* fs_ignoreLocalized;
cvar_t* fs_homepath;
cvar_t* fs_restrict;
cvar_t* fs_usedevdir;

cvar_t* loc_language;
cvar_t* loc_forceEnglish;
cvar_t* loc_translate;
cvar_t* loc_warnings;
cvar_t* loc_warningsAsErrors;
qboolean g_currentAsian;



int fs_packFiles;
int fs_checksumFeed;
static int fs_loadStack;
static searchpath_t* fs_searchpaths;
static fileHandleData_t fsh[MAX_FILE_HANDLES +1];

static char fs_gamedir[MAX_OSPATH];
static char lastValidBase[MAX_OSPATH];
static char lastValidGame[MAX_OSPATH];


static int fs_numServerIwds;
static int fs_serverIwds[1024];
static char *fs_serverIwdNames[1024];
static int *fs_additionalPureChecksums;
static int fs_additionalPureChecksumCount;

/*
==============
FS_Initialized
==============
*/

qboolean FS_Initialized() {

	bool init = (fs_searchpaths != NULL);
	return init;
}

/*
=================
FS_LoadStack
return load stack
=================
*/
int FS_LoadStack() {
	int val;

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);
	val = fs_loadStack;
	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

	return val;
}

void FS_LoadStackInc()
{
	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);
	fs_loadStack++;
	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
}
void FS_LoadStackDec()
{
	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);
	fs_loadStack--;
	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
}


static fileHandle_t FS_HandleForFileForThread(int FsThread)
{
  signed int startIndex;
  signed int size;
  signed int i;
  mvabuf;


  if ( FsThread == 1 )
  {
    startIndex = 49;
    size = 13;
  }else if ( FsThread == 3 ){
    startIndex = 63;
    size = 1;
  }else if ( FsThread ){
    startIndex = 62;
    size = 1;
  }else{
    startIndex = 1;
	size = 48;
  }

  Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);

  for (i = 0 ; size > i ; i++)
  {
    if ( fsh[i + startIndex].handleFiles.file.o == NULL )
    {
		if ( fs_debug->integer > 1 )
			Sys_Print(va("^4Open filehandle: %d\n", i + startIndex));

		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

		return i + startIndex;
    }
  }

  Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

  if ( !FsThread )
  {
	for(i = 1; i < MAX_FILE_HANDLES; i++)
	{
		Com_Printf(CON_CHANNEL_FILES,"FILE %2i: '%s' 0x%x\n", i, fsh[i].name, fsh[i].handleFiles.file.o);
	}
	Com_Error(2, "FS_HandleForFile: none free");
  }
  Com_PrintWarning(CON_CHANNEL_FILES, "FILE %2i: '%s' 0x%x\n", startIndex, fsh[startIndex].name, fsh[startIndex].handleFiles.file.o);
  Com_PrintWarning(CON_CHANNEL_FILES, "FS_HandleForFile: none free (%d)\n", FsThread);
  return 0;
}

#define FS_HandleForFile() FS_HandleForFileForThread(0)

static FILE	*FS_FileForHandle( fileHandle_t f ) {

	mvabuf;

	if ( f < 0 || f > MAX_FILE_HANDLES ) {
		Com_Error( ERR_DROP, "FS_FileForHandle: out of range %i\n", f);
	}

	if ( fs_debug->integer > 1 )
		Sys_Print(va("^4Using filehandle: %d Name: %s\n", f, fsh[f].name));

	if ( !fsh[f].handleFiles.file.o ) {
		Com_Error( ERR_DROP, "FS_FileForHandle: NULL" );
	}

	return fsh[f].handleFiles.file.o;
}

static void FS_SetFilenameForHandle( fileHandle_t f, const char* filename ) {

	if ( f < 0 || f > MAX_FILE_HANDLES ) {
		Com_Error( ERR_DROP, "FS_SetFilenameForHandle: out of range %i\n", f);
	}
	Q_strncpyz(fsh[f].name, filename, sizeof(fsh[f].name));
}


void	FS_ForceFlush( fileHandle_t f ) {
	FILE *file;

	file = FS_FileForHandle(f);
	setvbuf( file, NULL, _IONBF, 0 );
}


/*
==============
FS_FCloseFile

If the FILE pointer is an open pak file, leave it open.

For some reason, other dll's can't just cal fclose()
on files returned by FS_FOpenFile...
==============
*/
qboolean FS_FCloseFile( fileHandle_t f ) {

	mvabuf;

	if ( f < 0 || f > MAX_FILE_HANDLES ) {
		Com_Error( ERR_DROP, "FS_FCloseFile: out of range %i\n", f);
	}

	if ( fs_debug->integer > 1 )
		Sys_Print(va("^4Close filehandle: %d File: %s\n", f, fsh[f].name));

	if(fsh[f].zipFile)
	{
		unzCloseCurrentFile(fsh[f].handleFiles.file.z);
		if(fsh[f].handleFiles.unique)
		{
			unzClose(fsh[f].handleFiles.file.z);
		}
		Com_Memset( &fsh[f], 0, sizeof( fsh[f] ) );
		return qtrue;
	}

	if (fsh[f].handleFiles.file.o) {
	// we didn't find it as a pak, so close it as a unique file
	    fclose (fsh[f].handleFiles.file.o);
	    Com_Memset( &fsh[f], 0, sizeof( fsh[f] ) );
	    return qtrue;
	}

	Com_Memset( &fsh[f], 0, sizeof( fsh[f] ) );
	return qfalse;
}

/*
================
FS_filelengthForOSPath

If this is called on a non-unique FILE (from a pak file),
it will return the size of the pak file, not the expected
size of the file.
================
*/
int FS_filelengthForOSPath( const char*  ospath )
{
	int		end;
	FILE*	h;

	h = fopen(ospath, "rb");
	if(!h)
	{
		return 0;
	}

	fseek (h, 0, SEEK_END);
	end = ftell (h);
	fclose( h );

	return end;
}

/*
================
FS_filelength

If this is called on a non-unique FILE (from a pak file),
it will return the size of the pak file, not the expected
size of the file.
================
*/
int FS_filelength( fileHandle_t f ) {
	int		pos;
	int		end;
	FILE*	h;

	h = FS_FileForHandle(f);
	pos = ftell (h);
	fseek (h, 0, SEEK_END);
	end = ftell (h);
	fseek (h, pos, SEEK_SET);

	return end;
}

/*
====================
FS_ReplaceSeparators

Fix things up differently for win/unix/mac
====================
*/
void FS_ReplaceSeparators( char *path ) {
	char	*s;

	for ( s = path ; *s ; s++ ) {
		if ( *s == '/' || *s == '\\' ) {
			*s = PATH_SEP;
		}
	}
}


/*
====================
FS_StripTrailingSeperator

Fix things up differently for win/unix/mac
====================
*/
void FS_StripTrailingSeperator( char *path ) {

	int len = strlen(path);

	if(path[len -1] == '\\' || path[len -1] == '/')
	{
		path[len -1] = '\0';
	}
}


void FS_StripSeperators(char* qpath)
{
	int i, y;
	char newpath[4096];
	int len = strlen(qpath);

	if(len > sizeof(newpath))
	{
		len = sizeof(newpath);
	}

	for(i = 0, y = 0; i < len; ++i)
	{
		if((qpath[i] == '\\' || qpath[i] == '/') && (qpath[i +1] == '\\' || qpath[i +1] == '/'))
		{
			continue;
		}
		newpath[y] = qpath[i];
		++y;
	}
	newpath[y] = '\0';
	FS_StripTrailingSeperator( newpath );
	Q_strncpyz(qpath, newpath, len +1);
}


void FS_BuildOSPathForThread(const char *base, const char *game, const char *qpath, char *fs_path, int fs_thread)
{
  char basename[MAX_OSPATH];
  char gamename[MAX_OSPATH];

  int len;

  if ( !game || !*game )
    game = fs_gamedir;

  Q_strncpyz(basename, base, sizeof(basename));
  Q_strncpyz(gamename, game, sizeof(gamename));

  len = strlen(basename);
  if(len > 0 && (basename[len -1] == '/' || basename[len -1] == '\\'))
  {
        basename[len -1] = '\0';
  }

  len = strlen(gamename);
  if(len > 0 && (gamename[len -1] == '/' || gamename[len -1] == '\\'))
  {
        gamename[len -1] = '\0';
  }
  if ( Com_sprintf(fs_path, MAX_OSPATH, "%s/%s/%s", basename, gamename, qpath) >= MAX_OSPATH )
  {
    if ( fs_thread )
    {
        fs_path[0] = 0;
        return;
    }
    Com_Error(ERR_FATAL, "FS_BuildOSPath: os path length exceeded");
  }
  FS_ReplaceSeparators(fs_path);
}

/*
============
FS_CreatePath

Creates any directories needed to store the given filename
============
*/
/* TODO: Not creating nested directories on Windows. */
qboolean FS_CreatePath (char *OSPath) {
	char	*ofs;

	// make absolutely sure that it can't back up the path
	// FIXME: is c: allowed???
	if ( strstr( OSPath, ".." ) || strstr( OSPath, "::" ) ) {
		Com_Printf(CON_CHANNEL_FILES, "WARNING: refusing to create relative path \"%s\"\n", OSPath );
		return qtrue;
	}

	for (ofs = OSPath+1 ; *ofs ; ofs++) {
		if (*ofs == PATH_SEP) {
			// create the directory
			*ofs = 0;
			Sys_Mkdir (OSPath);
			*ofs = PATH_SEP;
		}
	}
	return qfalse;
}


/*
===========
FS_HomeRemove

===========
*/
qboolean FS_HomeRemove( const char *path ) {
	char osPath[MAX_OSPATH];
	FS_BuildOSPathForThread( fs_homepath->string, "", path, osPath, 0);
	return remove( osPath ) == 0;
}

/*
===========
FS_SV_HomeRemove

===========
*/
qboolean FS_SV_HomeRemove( const char *path ) {
	char osPath[MAX_OSPATH];
	FS_BuildOSPathForThread( fs_homepath->string, path, "", osPath, 0 );
	FS_StripTrailingSeperator( osPath );
	return remove( osPath ) == 0;
}

/*
===========
FS_BaseRemove

===========
*/
qboolean FS_BaseRemove( const char *path ) {
	char osPath[MAX_OSPATH];
	FS_BuildOSPathForThread( fs_basepath->string, "", path, osPath, 0);
	return remove( osPath ) == 0;
}

/*
===========
FS_SV_BaseRemove

===========
*/
qboolean FS_SV_BaseRemove( const char *path ) {
	char osPath[MAX_OSPATH];
	FS_BuildOSPathForThread( fs_basepath->string, path, "", osPath, 0 );
	FS_StripTrailingSeperator( osPath );
	return remove( osPath ) == 0;
}


/*
===========
FS_RemoveOSPath

===========
*/
void FS_RemoveOSPath( const char *osPath ) {
	remove( osPath );
}

/*
================
FS_FileExists

Tests if the file exists in the current gamedir, this DOES NOT
search the paths.  This is to determine if opening a file to write
(which always goes into the current gamedir) will cause any overwrites.
NOTE TTimo: this goes with FS_FOpenFileWrite for opening the file afterwards
================
*/
qboolean FS_FileExists( const char *file )
{
	FILE *f;
	char testpath[MAX_OSPATH];

	FS_BuildOSPathForThread( fs_homepath->string, "", file, testpath, 0);

	f = fopen( testpath, "rb" );
	if (f) {
		fclose( f );
		return qtrue;
	}
	return qfalse;
}

/*
================
FS_SV_FileExists

Tests if the file exists in the current gamedir, this DOES NOT
search the paths.  This is to determine if opening a file to write
(which always goes into the current gamedir) will cause any overwrites.
NOTE TTimo: this goes with FS_FOpenFileWrite for opening the file afterwards
================
*/
qboolean FS_SV_HomeFileExists( const char *file )
{
	FILE *f;
	char testpath[MAX_OSPATH];

	FS_BuildOSPathForThread( fs_homepath->string, file, "", testpath, 0);
	FS_StripTrailingSeperator( testpath );

	f = fopen( testpath, "rb" );
	if (f) {
		fclose( f );
		return qtrue;
	}
	return qfalse;
}

qboolean FS_SV_FileExists( const char *file )
{
	FILE *f;
	char testpath[MAX_OSPATH];

	FS_BuildOSPathForThread( fs_homepath->string, file, "", testpath, 0);
	FS_StripTrailingSeperator( testpath );

	f = fopen( testpath, "rb" );
	if (f) {
		fclose( f );
		return qtrue;
	}

	FS_BuildOSPathForThread( fs_basepath->string, file, "", testpath, 0);
	FS_StripTrailingSeperator( testpath );

	f = fopen( testpath, "rb" );
	if (f) {
		fclose( f );
		return qtrue;
	}
	return qfalse;
}



char* FS_SV_GetFilepath( const char *file, char* testpath, int lenpath )
{
	FILE *f;

	if(lenpath < MAX_OSPATH)
		Com_Error(ERR_FATAL, "FS_SV_GetFilepath: Given buffer has less than %d bytes length\n", MAX_OSPATH );

	FS_BuildOSPathForThread(fs_homepath->string, file, "", testpath, 0 );
	FS_StripTrailingSeperator( testpath );

	f = fopen( testpath, "rb" );
	if (f) {
		fclose( f );
		return testpath;
	}

	FS_BuildOSPathForThread( fs_basepath->string, file, "", testpath, 0 );
	FS_StripTrailingSeperator( testpath );

	f = fopen( testpath, "rb" );
	if (f) {
		fclose( f );
		return testpath;
	}

	return NULL;
}




/*
===========
FS_Rename

===========
*/
void FS_Rename( const char *from, const char *to ) {
	char	from_ospath[MAX_OSPATH];
	char	to_ospath[MAX_OSPATH];
	mvabuf;

	FS_BuildOSPathForThread( fs_homepath->string, "", from, from_ospath, 0);
	FS_BuildOSPathForThread( fs_homepath->string, "", to, to_ospath, 0);
	FS_StripTrailingSeperator( to_ospath );
	FS_StripTrailingSeperator( from_ospath );

	if ( fs_debug->integer ) {
		Sys_Print(va("^4FS_Rename: %s --> %s\n", from_ospath, to_ospath ));
	}

	if (rename( from_ospath, to_ospath )) {
		// Failed, try copying it and deleting the original
		FS_CopyFile ( from_ospath, to_ospath );
		FS_RemoveOSPath ( from_ospath );
	}
}

/*
===========
FS_RenameOSPath

===========
*/
void FS_RenameOSPath( const char *from_ospath, const char *to_ospath ) {

	mvabuf;

	if ( fs_debug->integer ) {
		Sys_Print(va("^4FS_RenameOSPath: %s --> %s\n", from_ospath, to_ospath ));
	}

	if (rename( from_ospath, to_ospath )) {
		// Failed, try copying it and deleting the original
		FS_CopyFile ( (char*)from_ospath, (char*)to_ospath );
		FS_RemoveOSPath ( from_ospath );
	}
}

/*
===========
FS_FileExistsOSPath

===========
*/
qboolean FS_FileExistsOSPath( const char *ospath ) {

	FILE* f;

	f = fopen( ospath, "rb" );
	if (f) {
		fclose( f );
		return qtrue;
	}
	return qfalse;
}



/*
===========
FS_SV_Rename
Will rename files inside fs_homepath and fs_basepath
ignores zip-files
===========
*/
void FS_SV_Rename( const char *from, const char *to ) {
	char	from_ospath[MAX_OSPATH];
	char	to_ospath[MAX_OSPATH];
	mvabuf;

	FS_BuildOSPathForThread( fs_homepath->string, from, "", from_ospath, 0);
	FS_BuildOSPathForThread( fs_homepath->string, to, "", to_ospath, 0);
	FS_StripTrailingSeperator( to_ospath );
	FS_StripTrailingSeperator( from_ospath );

	if(FS_FileExistsOSPath( from_ospath ))
	{
		if ( fs_debug->integer ) {
			Sys_Print(va("^4FS_Rename: %s --> %s\n", from_ospath, to_ospath ));
		}
		if (rename( from_ospath, to_ospath )) {
			// Failed, try copying it and deleting the original
			FS_RemoveOSPath( to_ospath );
			if(FS_FileExistsOSPath( to_ospath ) == qfalse)
			{
				FS_CopyFile ( from_ospath, to_ospath );
				if(FS_FileExistsOSPath( to_ospath ) == qtrue){
					FS_RemoveOSPath ( from_ospath );
				}
			}
		}
	}

	FS_BuildOSPathForThread( fs_basepath->string, from, "", from_ospath, 0);
	FS_BuildOSPathForThread( fs_basepath->string, to, "", to_ospath, 0);
	FS_StripTrailingSeperator( to_ospath );
	FS_StripTrailingSeperator( from_ospath );

	if(FS_FileExistsOSPath( from_ospath ))
	{
		if ( fs_debug->integer ) {
			Sys_Print(va("^4FS_Rename: %s --> %s\n", from_ospath, to_ospath ));
		}
		if (rename( from_ospath, to_ospath )) {
			// Failed, try copying it and deleting the original
			FS_RemoveOSPath( to_ospath );
			if(FS_FileExistsOSPath( to_ospath ) == qfalse)
			{
				FS_CopyFile ( from_ospath, to_ospath );
				if(FS_FileExistsOSPath( to_ospath ) == qtrue){
					FS_RemoveOSPath ( from_ospath );
				}
			}
		}
	}
}

/*
===========
FS_SV_HomeRename
Will rename files inside fs_homepath
ignores zip-files
===========
*/
void FS_SV_HomeRename( const char *from, const char *to ) {
	char	from_ospath[MAX_OSPATH];
	char	to_ospath[MAX_OSPATH];
	mvabuf;


	FS_BuildOSPathForThread( fs_homepath->string, from, "", from_ospath, 0);
	FS_BuildOSPathForThread( fs_homepath->string, to, "", to_ospath, 0);

	FS_StripTrailingSeperator( to_ospath );
	FS_StripTrailingSeperator( from_ospath );

	if ( fs_debug->integer ) {
		Sys_Print(va("^4FS_Rename: %s --> %s\n", from_ospath, to_ospath ));
	}

	if (rename( from_ospath, to_ospath )) {
		// Failed, try copying it and deleting the original
		FS_CopyFile ( from_ospath, to_ospath );
		FS_RemoveOSPath ( from_ospath );
	}
}

qboolean __cdecl FS_FilesAreLoadedGlobally(const char *filename)
{
  const char *extensions[10];
  int filenameLen;
  int extensionNum;

  extensions[0] = ".hlsl";
  extensions[1] = ".txt";
  extensions[2] = ".cfg";
  extensions[3] = ".levelshots";
  extensions[4] = ".menu";
  extensions[5] = ".arena";
  extensions[6] = ".str";
  extensions[7] = ".so";
  extensions[8] = ".dll";
  extensions[8] = ".sum";
  extensions[9] = "";
  filenameLen = strlen(filename);
  for ( extensionNum = 0; *extensions[extensionNum]; ++extensionNum )
  {
    if ( !Q_stricmp(&filename[filenameLen - strlen(extensions[extensionNum])], extensions[extensionNum]) )
    {
      return qtrue;
    }
  }
  return qfalse;
}

/*
===========
FS_FilenameCompare

Ignore case and seprator char distinctions
===========
*/
qboolean FS_FilenameCompare( const char *s1, const char *s2 ) {
	int		c1, c2;

	do {
		c1 = *s1++;
		c2 = *s2++;

		if (c1 >= 'a' && c1 <= 'z') {
			c1 -= ('a' - 'A');
		}
		if (c2 >= 'a' && c2 <= 'z') {
			c2 -= ('a' - 'A');
		}

		if ( c1 == '\\' || c1 == ':' ) {
			c1 = '/';
		}
		if ( c2 == '\\' || c2 == ':' ) {
			c2 = '/';
		}

		if (c1 != c2) {
			return -1;		// strings not equal
		}
	} while (c1);

	return 0;		// strings are equal
}

/*
===========
FS_ShiftedStrStr
===========
*/
char *FS_ShiftedStrStr(const char *string, const char *substring, int shift) {
	char buf[MAX_STRING_TOKENS];
	int i;

	for (i = 0; substring[i]; i++) {
		buf[i] = substring[i] + shift;
	}
	buf[i] = '\0';
	return strstr(string, buf);
}




/*
================
FS_fplength
================
*/

long FS_fplength(FILE *h)
{
	long		pos;
	long		end;

	pos = ftell(h);
	fseek(h, 0, SEEK_END);
	end = ftell(h);
	fseek(h, pos, SEEK_SET);

	return end;
}


/*
===========
FS_IsExt

Return qtrue if ext matches file extension filename
===========
*/

qboolean FS_IsExt(const char *filename, const char *ext, int namelen)
{
	int extlen;

	extlen = strlen(ext);

	if(extlen > namelen)
		return qfalse;

	filename += namelen - extlen;

	return !Q_stricmp(filename, ext);
}




/*
=================================================================================

DIRECTORY SCANNING FUNCTIONS

=================================================================================
*/

#define	MAX_FOUND_FILES	0x1000



/*
===========
FS_ConvertPath
===========
*/
void FS_ConvertPath( char *s ) {
	while (*s) {
		if ( *s == '\\' || *s == ':' ) {
			*s = '/';
		}
		s++;
	}
}

/*
===========
FS_PathCmp

Ignore case and seprator char distinctions
===========
*/
int FS_PathCmp( const char *s1, const char *s2 ) {
	int		c1, c2;

	do {
		c1 = *s1++;
		c2 = *s2++;

		if (c1 >= 'a' && c1 <= 'z') {
			c1 -= ('a' - 'A');
		}
		if (c2 >= 'a' && c2 <= 'z') {
			c2 -= ('a' - 'A');
		}

		if ( c1 == '\\' || c1 == ':' ) {
			c1 = '/';
		}
		if ( c2 == '\\' || c2 == ':' ) {
			c2 = '/';
		}

		if (c1 < c2) {
			return -1;		// strings not equal
		}
		if (c1 > c2) {
			return 1;
		}
	} while (c1);

	return 0;		// strings are equal
}

/*
================
return a hash value for the filename
================
*/
long FS_HashFileName( const char *fname, int hashSize ) {
	int i;
	long hash;
	char letter;

	hash = 0;
	i = 0;
	while ( fname[i] != '\0' ) {
		letter = tolower( fname[i] );
		if ( letter == '.' ) {
			break;                          // don't include extension
		}
		if ( letter == '\\' ) {
			letter = '/';                   // damn path names
		}
		if ( letter == PATH_SEP ) {
			letter = '/';                           // damn path names
		}
		hash += (long)( letter ) * ( i + 119 );
		i++;
	}
	hash = ( hash ^ ( hash >> 10 ) ^ ( hash >> 20 ) );
	hash &= ( hashSize - 1 );
	return hash;
}


/*
===========
FS_FOpenFileReadDir

Tries opening file "filename" in searchpath "search"
Returns filesize and an open FILE pointer.
===========
*/
extern qboolean		com_fullyInitialized;

long FS_FOpenFileReadDir(const char *filename, searchpath_t *search, fileHandle_t *file, qboolean uniqueFILE, qboolean unpure, int FsThread)
{
	long			hash;
	pack_t		*pak;
	fileInPack_t	*pakFile;
	directory_t	*dir;
	char		netpath[MAX_OSPATH];
	FILE		*filep;
	int		len;
	int		err;
	unz_file_info	file_info;
	mvabuf;

	if(filename == NULL)
		Com_Error(ERR_FATAL, "FS_FOpenFileRead: NULL 'filename' parameter passed");

	// qpaths are not supposed to have a leading slash
	if(filename[0] == '/' || filename[0] == '\\')
		filename++;

	// make absolutely sure that it can't back up the path.
	// The searchpaths do guarantee that something will always
	// be prepended, so we don't need to worry about "c:" or "//limbo"
	if(strstr(filename, ".." ) || strstr(filename, "::"))
	{
	        if(file == NULL)
	                return qfalse;

		*file = 0;
		return -1;
	}
	if(file == NULL)
	{
		// just wants to see if file is there

		/* Cod4 adds localization check */
		if(search->localized && !fs_ignoreLocalized->boolean && search->langIndex != loc_language->integer)
			return 0;

		// is the element a pak file?
		if(search->pack)
		{
			hash = FS_HashFileName(filename, search->pack->hashSize);

      if(search->pack->hashTable[hash])
      {
				// look through all the pak file elements
				pak = search->pack;
				pakFile = pak->hashTable[hash];

				do
				{
					// case and separator insensitive comparisons
					if(!FS_FilenameCompare(pakFile->name, filename))
					{
						err = unzLocateFile( pak->handle, pakFile->name, 2);
						if(err != UNZ_OK)
						{
							Com_PrintWarning(CON_CHANNEL_FILES,"Read error in Zip-file: %s\n", pak->pakFilename);
							return 1;
						}
						err = unzGetCurrentFileInfo( pak->handle, &file_info, netpath, sizeof( netpath ), NULL, 0, NULL, 0 );
						if(err != UNZ_OK)
						{
							Com_PrintWarning(CON_CHANNEL_FILES,"Read error in Zip-file: %s\n", pak->pakFilename);
							return 1;
						}

						// found it!
						if(file_info.uncompressed_size)
							return file_info.uncompressed_size;
		        else
		        {
		            // It's not nice, but legacy code depends
		            // on positive value if file exists no matter
		            // what size
		            return 1;
		        }
				}

					pakFile = pakFile->next;
				} while(pakFile != NULL);
			}
		}
		else if(search->dir)
		{
			dir = search->dir;

			FS_BuildOSPathForThread(dir->path, dir->gamedir, filename, netpath, FsThread);
			filep = fopen (netpath, "rb");

			if(filep)
			{
			        len = FS_fplength(filep);
				fclose(filep);

				if(len)
					return len;
                                else
                                        return 1;
			}
		}

		return -1;
	}
	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);
	*file = FS_HandleForFileForThread(FsThread);

	if(*file == 0)
		return -1;

	FS_SetFilenameForHandle(*file, filename);

	fsh[*file].handleFiles.unique = uniqueFILE;

	// is the element a pak file?
	if(search->pack)
	{

		hash = FS_HashFileName(filename, search->pack->hashSize);

		if(search->pack->hashTable[hash])
		{
			// look through all the pak file elements
			pak = search->pack;
			pakFile = pak->hashTable[hash];

			do
			{
				// case and separator insensitive comparisons
				if(!FS_FilenameCompare(pakFile->name, filename))
				{
					// found it!

					// mark the pak as having been referenced and mark specifics on cgame and ui
					// shaders, txt, arena files  by themselves do not count as a reference as
					// these are loaded from all pk3s
					// from every pk3 file..
					len = strlen(filename);

					if (!(pak->referenced & FS_GENERAL_REF) && !FS_FilesAreLoadedGlobally(filename))
					{
							pak->referenced |= FS_GENERAL_REF;
							FS_AddIwdPureCheckReference(search);
					}

					if(uniqueFILE)
					{
						// open a new file on the pakfile
						fsh[*file].handleFiles.file.z = unzOpen(pak->pakFilename);

						if(fsh[*file].handleFiles.file.z == NULL)
						{
							Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
							Com_Error(ERR_FATAL, "Couldn't open %s", pak->pakFilename);
						}
					}
					else
					{
						fsh[*file].handleFiles.file.z = pak->handle;
					}
					Q_strncpyz(fsh[*file].name, filename, sizeof(fsh[*file].name));
					fsh[*file].zipFile = qtrue;

					// set the file position in the zip file (also sets the current file info)
					unzSetOffset(fsh[*file].handleFiles.file.z, pakFile->pos);

					// open the file in the zip
					if(unzOpenCurrentFile(fsh[*file].handleFiles.file.z) != UNZ_OK)
					{
						Com_PrintError(CON_CHANNEL_FILES,"FS_FOpenFileReadDir: Failed to open Zip-File\n");
					}
					fsh[*file].zipFilePos = pakFile->pos;

					Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

					if(fs_debug->integer)
					{
						Sys_Print(va("^4FS_FOpenFileRead: %s (found in '%s')\n", filename, pak->pakFilename));
					}

					err = unzGetCurrentFileInfo( fsh[*file].handleFiles.file.z, &file_info, netpath, sizeof( netpath ), NULL, 0, NULL, 0 );
					if(err != UNZ_OK)
					{
						Com_PrintWarning(CON_CHANNEL_FILES,"Read error in Zip-file: %s\n", pak->pakFilename);
						return 1;
					}
					if(file_info.uncompressed_size)
					{
						return file_info.uncompressed_size;
					}
					return 1;
				}

				pakFile = pakFile->next;
			} while(pakFile != NULL);
		}
	}
	else if(search->dir)
	{
		// check a file in the directory tree

		dir = search->dir;

		FS_BuildOSPathForThread(dir->path, dir->gamedir, filename, netpath, FsThread);
		filep = fopen(netpath, "rb");

		if (filep == NULL)
		{
			*file = 0;
			Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
			return -1;
		}

		Q_strncpyz(fsh[*file].name, filename, sizeof(fsh[*file].name));
		fsh[*file].zipFile = qfalse;

		if(fs_debug->integer)
		{
		Sys_Print(va("^4FS_FOpenFileRead: %s (found in '%s/%s')\n", filename, dir->path, dir->gamedir));
		}

		fsh[*file].handleFiles.file.o = filep;

		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

		return FS_fplength(filep);
	}
	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

	return -1;
}

/*
===========
FS_FOpenFileRead

Finds the file in the search path.
Returns filesize and an open FILE pointer.
Used for streaming data out of either a
separate file or a ZIP file.
===========
*/
long FS_FOpenFileReadForThread(const char *filename, fileHandle_t *file, int fsThread)
{
	searchpath_t *search;
	long len;

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);

	if(!FS_Initialized())
		Com_Error(ERR_FATAL, "Filesystem call made without initialization");

	for(search = fs_searchpaths; search; search = search->next)
	{
	        len = FS_FOpenFileReadDir(filename, search, file, 0, qfalse, fsThread);

	        if(file == NULL)
	        {
						if(len > 0)
						{
							Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
							return len;
						}
	        }
	        else
	        {
						if(len >= 0 && *file)
						{
							Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
							return len;
						}
	        }
	}

	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

#ifdef FS_MISSING
	if(missingFiles)
		fprintf(missingFiles, "%s\n", filename);
#endif

        if(file)
        	*file = 0;

	return -1;
}

long FS_FOpenFileRead(const char *filename, fileHandle_t *file)
{
    return FS_FOpenFileReadForThread(filename, file, 0);
}

long FS_FOpenFileReadThread1(const char *filename, fileHandle_t *file)
{
    return FS_FOpenFileReadForThread(filename, file, 1);
}

long FS_FOpenFileReadThread2(const char *filename, fileHandle_t *file)
{
    return FS_FOpenFileReadForThread(filename, file, 2);
}


/*
============
FS_Path_f

============
*/
void FS_Path_f( void ) {
	searchpath_t	*s;
	int				i;

	Com_Printf (CON_CHANNEL_DONT_FILTER, "Current search path:\n");
	for (s = fs_searchpaths; s; s = s->next) {
		if (s->pack) {
			Com_Printf (CON_CHANNEL_DONT_FILTER, "%s (%i files)\n", s->pack->pakFilename, s->pack->numfiles);
		} else {
			Com_Printf (CON_CHANNEL_DONT_FILTER, "%s%c%s\n", s->dir->path, PATH_SEP, s->dir->gamedir );
		}
	}

	Com_Printf(CON_CHANNEL_FILES, "\n" );
	for ( i = 1 ; i < MAX_FILE_HANDLES ; i++ ) {
		if ( fsh[i].handleFiles.file.o ) {
			Com_Printf(CON_CHANNEL_DONT_FILTER, "handle %i: %s\n", i, fsh[i].name );
		}
	}
}

/*
============
FS_Which
============
*/

qboolean FS_Which(const char *filename, void *searchPath)
{
	searchpath_t *search = searchPath;
	char netpath[MAX_OSPATH];

	if(FS_FOpenFileReadDir(filename, search, NULL, qfalse, qfalse, 0) > 0)
	{
		if(search->pack)
		{
			Com_Printf(CON_CHANNEL_FILES,"File \"%s\" found in \"%s\"\n", filename, search->pack->pakFilename);
			return qtrue;
		}
		else if(search->dir)
		{
			FS_BuildOSPathForThread(search->dir->path, search->dir->gamedir, filename, netpath, 0);
			Com_Printf(CON_CHANNEL_FILES, "File \"%s\" found at \"%s\"\n", filename, netpath);
			return qtrue;
		}
	}

	return qfalse;
}

/*
============
FS_Which_f
============
*/
void FS_Which_f( void ) {
	searchpath_t	*search;
	char		*filename;

	filename = Cmd_Argv(1);

	if ( !filename[0] ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: which <file>\n" );
		return;
	}

	// qpaths are not supposed to have a leading slash
	if ( filename[0] == '/' || filename[0] == '\\' ) {
		filename++;
	}

	// just wants to see if file is there
	for(search = fs_searchpaths; search; search = search->next)
	{
		if(FS_Which(filename, search))
			return;
	}

	Com_Printf(CON_CHANNEL_DONT_FILTER,"File not found: \"%s\"\n", filename);
	return;
}


/*
================
FS_Dir_f
================
*/
void FS_Dir_f( void ) {
	char	*path;
	char	*extension;
	const char	**dirnames;
	int		ndirs;
	int		i;

	if ( Cmd_Argc() < 2 || Cmd_Argc() > 3 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "usage: dir <directory> [extension]\n" );
		return;
	}

	if ( Cmd_Argc() == 2 ) {
		path = Cmd_Argv( 1 );
		extension = "";
	} else {
		path = Cmd_Argv( 1 );
		extension = Cmd_Argv( 2 );
	}

	Com_Printf(CON_CHANNEL_DONT_FILTER, "Directory of %s %s\n", path, extension );
	Com_Printf(CON_CHANNEL_DONT_FILTER, "---------------\n" );

	dirnames = FS_ListFiles( path, extension, 0, &ndirs );

	for ( i = 0; i < ndirs; i++ ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "%s\n", dirnames[i] );
	}
	FS_FreeFileList( dirnames );
}


int	FS_FTell( fileHandle_t f ) {
	int pos;
		pos = ftell(fsh[f].handleFiles.file.o);
	return pos;
}

void	FS_Flush( fileHandle_t f ) {
	fflush(fsh[f].handleFiles.file.o);
}


/*
=============
FS_FreeFile
=============
*/
void FS_FreeFile( void *buffer ) {

	if ( !buffer ) {
		Com_Error( ERR_FATAL, "FS_FreeFile( NULL )" );
	}
	FS_LoadStackDec();

	free( buffer );
}

/*
 =============
 FS_FreeFileKeepBuf
 =============
 */
void FS_FreeFileKeepBuf( )
{

	FS_LoadStackDec();
}


/*
=================
FS_ReadLine
Custom function that only reads single lines
Properly handles line reads
=================
*/

int FS_ReadLine( void *buffer, int len, fileHandle_t f ) {
	char		*read;
	char		*buf;

	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
	}
	if ( !f ) {
		return 0;
	}

	if(fsh[f].zipFile == qtrue)
	{
		Com_Error( ERR_FATAL, "FS_ReadLine: Can not read ZIP-Files\n" );
	}

	buf = buffer;
        *buf = 0;
	read = fgets (buf, len, fsh[f].handleFiles.file.o);


	if (read == NULL) {	//Error

		if(feof(fsh[f].handleFiles.file.o)) return 0;
		Com_PrintError(CON_CHANNEL_FILES,"FS_ReadLine: couldn't read");
		return -1;
	}
	return 1;
}


/*
===========
FS_SV_FOpenFileRead
search for a file somewhere below the home path, base path or cd path
we search in that order, matching FS_SV_FOpenFileRead order
===========
*/
long FS_SV_FOpenFileRead( const char *filename, fileHandle_t *fp ) {
	char ospath[MAX_OSPATH];
	fileHandle_t	f = 0;
	*fp = 0;
	mvabuf;


	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);


	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
	}

	if(filename == NULL || filename[0] == 0)
	{
		return 0;
	}

	f = FS_HandleForFile();
	if(f == 0){

		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return 0;
	}
	FS_SetFilenameForHandle(f, filename);
	fsh[f].zipFile = qfalse;

	Q_strncpyz( fsh[f].name, filename, sizeof( fsh[f].name ) );

	// search homepath
	FS_BuildOSPathForThread( fs_homepath->string, filename, "", ospath, 0 );
	// remove trailing slash
	ospath[strlen(ospath)-1] = '\0';

	if ( fs_debug->integer ) {
		Sys_Print(va("FS_SV_FOpenFileRead (fs_homepath): %s\n", ospath ));
	}

	fsh[f].handleFiles.file.o = fopen( ospath, "rb" );
	fsh[f].handleSync = qfalse;

	if (!fsh[f].handleFiles.file.o){
	// NOTE TTimo on non *nix systems, fs_homepath == fs_basepath, might want to avoid
		if (Q_stricmp(fs_homepath->string,fs_basepath->string)){
		// search basepath
			FS_BuildOSPathForThread( fs_basepath->string, filename, "", ospath, 0 );

            ospath[strlen(ospath)-1] = '\0';
            if ( fs_debug->integer ){
				Sys_Print(va("FS_SV_FOpenFileRead (fs_basepath): %s\n", ospath ));
			}

            fsh[f].handleFiles.file.o = fopen( ospath, "rb" );
            fsh[f].handleSync = qfalse;

		}
	}
	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

	if ( !fsh[f].handleFiles.file.o ){
		f = 0;
	}

	*fp = f;
	if (f) {
		return FS_filelength(f);
	}
	return 0;
}


/*
===========
FS_SV_FOpenFileAppend

===========
*/
fileHandle_t FS_SV_FOpenFileAppend( const char *filename ) {
	char ospath[MAX_OSPATH];
	fileHandle_t	f;
	mvabuf;

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);


	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
	}

	f = FS_HandleForFile();
	if(f == 0){
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return 0;
	}
	FS_SetFilenameForHandle(f, filename);
	fsh[f].zipFile = qfalse;

	Q_strncpyz( fsh[f].name, filename, sizeof( fsh[f].name ) );

	FS_BuildOSPathForThread( fs_homepath->string, filename, "", ospath, 0 );
	ospath[strlen(ospath)-1] = '\0';

	if ( fs_debug->integer ) {
		Sys_Print(va("FS_SV_FOpenFileAppend (fs_homepath): %s\n", ospath ));
	}

	if( FS_CreatePath( ospath ) ) {
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return 0;
	}

	fsh[f].handleFiles.file.o = fopen( ospath, "ab" );
	fsh[f].handleSync = qfalse;

	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

	if (!fsh[f].handleFiles.file.o) {
		f = 0;
	}
	return f;
}


/*
=================
FS_Read

Properly handles partial reads
=================
*/


int FS_Read( void *buffer, int len, fileHandle_t f ) {
	int		block, remaining;
	int		read;
	byte	*buf;
	int		tries;

	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
	}

	if ( !f ) {
		return 0;
	}

	buf = (byte *)buffer;

	if (fsh[f].zipFile == qfalse) {
		remaining = len;
		tries = 0;
		while (remaining) {
			block = remaining;
			read = fread (buf, 1, block, fsh[f].handleFiles.file.o);
			if (read == 0)
			{
				// we might have been trying to read from a CD, which
				// sometimes returns a 0 read on windows
				if (!tries) {
					tries = 1;
				} else {
					return len-remaining;	//Com_Error (ERR_FATAL, "FS_Read: 0 bytes read");
				}
			}

			if (read == -1) {
				Com_Error (ERR_FATAL, "FS_Read: -1 bytes read");
			}

			remaining -= read;
			buf += read;
		}
		return len;
	} else {
		return unzReadCurrentFile(fsh[f].handleFiles.file.z, buffer, len);
	}
}




int FS_Read2( void *buffer, int len, fileHandle_t f ) {
	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
	}

	if ( !f ) {
		return 0;
	}
	if (fsh[f].streamed) {
		int r;
		fsh[f].streamed = qfalse;
		r = FS_Read( buffer, len, f );
		fsh[f].streamed = qtrue;
		return r;
	} else {
		return FS_Read( buffer, len, f);
	}
}


/*
=================
FS_Write

Properly handles partial writes
=================
*/
int FS_Write( const void *buffer, int len, fileHandle_t h ) {
	int		block, remaining;
	int		written;
	byte	*buf;
	int		tries;
	FILE	*f;

	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
	}

	if ( !h ) {
		return 0;
	}

	f = FS_FileForHandle(h);
	buf = (byte *)buffer;

	remaining = len;
	tries = 0;
	while (remaining) {
		block = remaining;
		written = fwrite (buf, 1, block, f);
		if (written == 0) {
			if (!tries) {
				tries = 1;
			} else {
				Com_Printf(CON_CHANNEL_FILES, "FS_Write: 0 bytes written\n" );
				return 0;
			}
		}

		if (written == -1) {
			Com_Printf(CON_CHANNEL_FILES, "FS_Write: -1 bytes written\n" );
			return 0;
		}

		remaining -= written;
		buf += written;
	}
	if ( fsh[h].handleSync ) {
		fflush( f );
	}

	return len;
}




/*
============
FS_ReadFile

Filename are relative to the quake search path
a null buffer will just return the file length without loading
============
*/
int FS_ReadFile( const char *qpath, void **buffer ) {
	fileHandle_t	h;
	byte*			buf;
	int			len;



	if ( !qpath || !qpath[0] ) {
		Com_Error( ERR_FATAL, "FS_ReadFile with empty name\n" );
	}

	buf = NULL;	// quiet compiler warning

	// look for it in the filesystem or pack files
	len = FS_FOpenFileRead( qpath, &h );
	if ( h == 0 ) {
		if ( buffer ) {
			*buffer = NULL;
		}
		return -1;
	}

	if ( !buffer ) {
		FS_FCloseFile( h);
		return len;
	}

	FS_LoadStackInc();

	buf = malloc(len+1);
	*buffer = buf;

	FS_Read (buf, len, h);

	// guarantee that it will have a trailing 0 for string operations
	buf[len] = 0;
	FS_FCloseFile( h );
	return len;
}


/*
============
FS_SV_ReadFile

Filename are relative to the quake search path
a null buffer will just return the file length without loading
============
*/
int FS_SV_ReadFile( const char *qpath, void **buffer ) {
	fileHandle_t	h;
	byte*			buf;
	int			len;

	if ( !qpath || !qpath[0] ) {
		Com_Error( ERR_FATAL, "FS_ReadFile with empty name\n" );
	}

	buf = NULL;	// quiet compiler warning

	// look for it in the filesystem or pack files
	len = FS_SV_FOpenFileRead( qpath, &h );
	if ( h == 0 ) {
		if ( buffer ) {
			*buffer = NULL;
		}
		return -1;
	}

	if ( !buffer ) {
		FS_FCloseFile( h);
		return len;
	}

	FS_LoadStackInc();

	buf = malloc(len+1);
	*buffer = buf;

	FS_Read (buf, len, h);

	// guarantee that it will have a trailing 0 for string operations
	buf[len] = 0;
	FS_FCloseFile( h );
	return len;
}



/*
============
FS_WriteFile

Filename are reletive to the quake search path
============
*/
int FS_WriteFile( const char *qpath, const void *buffer, int size ) {
	fileHandle_t f;
	int len;

	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
	}

	if ( !qpath || !buffer ) {
		Com_Error( ERR_FATAL, "FS_WriteFile: NULL parameter" );
		return -1;
	}

	f = FS_FOpenFileWrite( qpath );
	if ( !f ) {
		Com_Printf(CON_CHANNEL_FILES, "Failed to open %s\n", qpath );
		return -1;
	}

	len = FS_Write( buffer, size, f );

	FS_FCloseFile( f );

	return len;

}


/*
============
FS_WriteFileOSPath

Filename are reletive to the quake search path
============
*/
int FS_WriteFileOSPath(char *ospath, const void *buffer, int size ) {

	FILE *fh;
	int		block, remaining;
	int		written;
	byte	*buf;
	int		tries;
	mvabuf;

	if ( !ospath || !buffer ) {
		Com_Error( ERR_FATAL, "FS_WriteFileOSPath: NULL parameter" );
		return -1;
	}

	if ( fs_debug->integer ) {
		Sys_Print(va("FS_WriteFileOSPath: %s\n", ospath ));
	}

	FS_ReplaceSeparators(ospath);
	FS_StripTrailingSeperator( ospath );

	if( FS_CreatePath( (char*)ospath ) ) {
		return 0;
	}

	fh = fopen( ospath, "wb" );
	if ( !fh ) {
		Com_Printf(CON_CHANNEL_FILES, "Failed to open %s\n", ospath );
		return -1;
	}

	buf = (byte *)buffer;

	remaining = size;
	tries = 0;

	while (remaining) {
		block = remaining;
		written = fwrite (buf, 1, block, fh);
		if (written == 0) {
			if (!tries) {
				tries = 1;
			} else {
				Com_Printf(CON_CHANNEL_FILES, "FS_WriteFileOSPath: 0 bytes written\n" );
				return 0;
			}
		}

		if (written == -1) {
			Com_Printf(CON_CHANNEL_FILES, "FS_WriteFileOSPath: -1 bytes written\n" );
			return 0;
		}

		remaining -= written;
		buf += written;
	}

	fclose( fh );

	return size;

}



/*
===========
FS_SV_FOpenFileWrite

===========
*/

static fileHandle_t FS_SV_FOpenFileWriteGeneric( const char *filename, const char* basepath ) {
	char ospath[MAX_OSPATH];
	fileHandle_t	f;
	mvabuf;


	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
	}

	FS_BuildOSPathForThread( basepath, filename, "", ospath, 0 );
	FS_StripTrailingSeperator( ospath );

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);

	f = FS_HandleForFile();
	if(f == 0){
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return 0;
	}
	FS_SetFilenameForHandle(f, filename);
	fsh[f].zipFile = qfalse;

	if ( fs_debug->integer ) {
		Sys_Print(va("^4FS_SV_FOpenFileWrite: %s\n", ospath ));
	}

	if( FS_CreatePath( ospath ) ) {
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return 0;
	}

	fsh[f].handleFiles.file.o = fopen( ospath, "wb" );
	fsh[f].handleSync = qfalse;

	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

	if (!fsh[f].handleFiles.file.o) {
		f = 0;
	}
	return f;
}

fileHandle_t FS_SV_FOpenFileWrite( const char *filename )
{
    return FS_SV_FOpenFileWriteGeneric( filename, fs_homepath->string );
}


/*
============
FS_SV_WriteFile

Filename are reletive to the quake search path
============
*/

static int FS_SV_WriteFileGeneric( const char *qpath, const void *buffer, int size, const char* basepath) {
	fileHandle_t f;
	int len;

	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
		return -1;
	}

	if ( !qpath || !buffer ) {
		Com_Error( ERR_FATAL, "FS_WriteFile: NULL parameter" );
		return -1;
	}

	f = FS_SV_FOpenFileWriteGeneric( qpath, basepath );
	if ( !f ) {
		Com_Printf(CON_CHANNEL_FILES, "Failed to open %s\n", qpath );
		return -1;
	}

	len = FS_Write( buffer, size, f );
	FS_FCloseFile( f );

	return len;
}

int FS_SV_BaseWriteFile( const char *qpath, const void *buffer, int size)
{
    return FS_SV_WriteFileGeneric( qpath, buffer, size, fs_basepath->string);

}


int FS_SV_HomeWriteFile( const char *qpath, const void *buffer, int size)
{
    return FS_SV_WriteFileGeneric( qpath, buffer, size, fs_homepath->string);

}


void QDECL FS_Printf( fileHandle_t h, const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	va_start (argptr,fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

	FS_Write(msg, strlen(msg), h);
}





#define PK3_SEEK_BUFFER_SIZE 65536

/*
=================
FS_Seek

=================
*/
int FS_Seek( fileHandle_t f, long offset, int origin ) {
	int		_origin;

	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
		return -1;
	}

	if (fsh[f].streamed) {
		fsh[f].streamed = qfalse;
	 	FS_Seek( f, offset, origin );
		fsh[f].streamed = qtrue;
	}

	if (fsh[f].zipFile == qtrue) {
		//FIXME: this is incomplete and really, really
		//crappy (but better than what was here before)
		byte	buffer[PK3_SEEK_BUFFER_SIZE];
		int		remainder = offset;

		if( offset < 0 || origin == FS_SEEK_END ) {
			Com_Error( ERR_FATAL, "Negative offsets and FS_SEEK_END not implemented "
					"for FS_Seek on pk3 file contents" );
			return -1;
		}

		switch( origin ) {
			case FS_SEEK_SET:
				unzSetOffset(fsh[f].handleFiles.file.z, fsh[f].zipFilePos);
				if(unzOpenCurrentFile(fsh[f].handleFiles.file.z) != UNZ_OK)
				{
					Com_PrintError(CON_CHANNEL_FILES,"FS_Seek: Failed to open zipfile\n");
					return -1;
				}
				//fallthrough

			case FS_SEEK_CUR:
				while( remainder > PK3_SEEK_BUFFER_SIZE ) {
					FS_Read( buffer, PK3_SEEK_BUFFER_SIZE, f );
					remainder -= PK3_SEEK_BUFFER_SIZE;
				}
				FS_Read( buffer, remainder, f );
				return offset;
				break;

			default:
				Com_Error( ERR_FATAL, "Bad origin in FS_Seek" );
				return -1;
				break;
		}
	} else {
		FILE *file;
		file = FS_FileForHandle(f);
		switch( origin ) {
		case FS_SEEK_CUR:
			_origin = SEEK_CUR;
			break;
		case FS_SEEK_END:
			_origin = SEEK_END;
			break;
		case FS_SEEK_SET:
			_origin = SEEK_SET;
			break;
		default:
			_origin = SEEK_CUR;
			Com_Error( ERR_FATAL, "Bad origin in FS_Seek" );
			break;
		}
		return fseek( file, offset, _origin );
	}
}


__cdecl const char* FS_GetBasepath(){

    if(fs_basepath && *fs_basepath->string){
        return fs_basepath->string;
    }else{
        return "";
    }
}


/*
=================
FS_SV_HomeCopyFile

Copy a fully specified file from one place to another
=================
*/
void FS_SV_HomeCopyFile( char *from, char *to ) {
	FILE	*f;
	int		len;
	byte	*buf;
	char	from_ospath[MAX_OSPATH];
	char	to_ospath[MAX_OSPATH];
	mvabuf;


        FS_BuildOSPathForThread( fs_homepath->string, from, "", from_ospath, 0 );
        FS_BuildOSPathForThread( fs_homepath->string, to, "", to_ospath, 0 );

	from_ospath[strlen(from_ospath)-1] = '\0';
	to_ospath[strlen(to_ospath)-1] = '\0';

	if ( fs_debug->integer ) {
		Sys_Print(va("FS_SVHomeCopyFile: %s --> %s\n", from_ospath, to_ospath ));
	}

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);

	f = fopen( from_ospath, "rb" );
	if ( !f ) {
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return;
	}
	fseek (f, 0, SEEK_END);
	len = ftell (f);
	fseek (f, 0, SEEK_SET);

	// we are using direct malloc instead of Z_Malloc here, so it
	// probably won't work on a mac... Its only for developers anyway...
	buf = malloc( len );
	if (fread( buf, 1, len, f ) != len)
		Com_Error( ERR_FATAL, "Short read in FS_Copyfiles()\n" );
	fclose( f );

	if( FS_CreatePath( to_ospath ) ) {
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return;
	}

	f = fopen( to_ospath, "wb" );
	if ( !f ) {
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return;
	}
	if (fwrite( buf, 1, len, f ) != len)
		Com_Error( ERR_FATAL, "Short write in FS_Copyfiles()\n" );
	fclose( f );
	free( buf );
	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

}


// CVE-2006-2082
// compared requested pak against the names as we built them in FS_ReferencedPakNames
qboolean FS_VerifyPak( const char *pak ) {
	char teststring[ BIG_INFO_STRING ];
	searchpath_t    *search;

	for ( search = fs_searchpaths ; search ; search = search->next ) {
		if ( search->pack ) {
			Q_strncpyz( teststring, search->pack->pakGamename, sizeof( teststring ) );
			Q_strncat( teststring, sizeof( teststring ), "/" );
			Q_strncat( teststring, sizeof( teststring ), search->pack->pakBasename );
			Q_strncat( teststring, sizeof( teststring ), ".iwd" );
			if ( !Q_stricmp( teststring, pak ) ) {
				return qtrue;
			}

		}

	}
	
	Com_sprintf(teststring, sizeof( teststring ), "%s/mod.ff", fs_gameDirVar->string);
	if ( !Q_stricmp( teststring, pak ) ){
		return qtrue;
	}

	Com_sprintf(teststring, sizeof( teststring ), "%s/common_mp.ff", fs_gameDirVar->string);
	if ( !Q_stricmp( teststring, pak ) ){
		return qtrue;
	}

	Com_sprintf(teststring, sizeof( teststring ), "%s/localized_common_mp.ff", fs_gameDirVar->string);
	if ( !Q_stricmp( teststring, pak ) ){
		return qtrue;
	}

	Com_sprintf(teststring, sizeof( teststring ), "%s/code_post_gfx_mp.ff", fs_gameDirVar->string);
	if ( !Q_stricmp( teststring, pak ) ){
		return qtrue;
	}

	Com_sprintf(teststring, sizeof( teststring ), "%s/localized_code_post_gfx_mp.ff", fs_gameDirVar->string);
	if ( !Q_stricmp( teststring, pak ) ){
		return qtrue;
	}

	if ( !Q_stricmpn( "usermaps/", pak, 9) ){

		if(strstr(pak, "..") || strstr(pak, ";"))
			return qfalse;
		else
			return qtrue;

	}

	return qfalse;
}



/*
==========================================================================

ZIP FILE LOADING

==========================================================================
*/



unsigned Com_BlockChecksumKey32T(void* buffer, int length, int key);

/*
=================
FS_LoadZipFile

Creates a new pak_t in the search chain for the contents
of a zip file.
=================
*/
static pack_t *FS_LoadZipFile( char *zipfile, const char *basename ) {
	fileInPack_t    *buildBuffer;
	pack_t          *pack;
	unzFile uf;
	int err;
	unz_global_info gi;
	char filename_inzip[MAX_ZPATH];
	unz_file_info file_info;
	int i, len;
	long hash;
	int fs_numHeaderLongs;
	int             *fs_headerLongs;
	char            *namePtr;

	fs_numHeaderLongs = 0;

	uf = unzOpen( zipfile );
	err = unzGetGlobalInfo( uf,&gi );

	if ( err != UNZ_OK ) {
		return NULL;
	}

	fs_packFiles += gi.number_entry;

	len = 0;
	unzGoToFirstFile( uf );
	for ( i = 0; i < gi.number_entry; i++ )
	{
		err = unzGetCurrentFileInfo( uf, &file_info, filename_inzip, sizeof( filename_inzip ), NULL, 0, NULL, 0 );
		if ( err != UNZ_OK ) {
			break;
		}
		len += strlen( filename_inzip ) + 1;
		unzGoToNextFile( uf );
	}


	buildBuffer = Z_Malloc( ( gi.number_entry * sizeof( fileInPack_t ) ) + len );
	namePtr = ( (char *) buildBuffer ) + gi.number_entry * sizeof( fileInPack_t );
	fs_headerLongs = Z_Malloc( gi.number_entry * sizeof( int ) );

	// get the hash table size from the number of files in the zip
	// because lots of custom pk3 files have less than 32 or 64 files
	for ( i = 1; i <= MAX_FILEHASH_SIZE; i <<= 1 ) {
		if ( i > gi.number_entry ) {
			break;
		}
	}

	pack = Z_Malloc( sizeof( pack_t ) + i * sizeof( fileInPack_t * ) );
	pack->hashSize = i;
	pack->hashTable = ( fileInPack_t ** )( ( (char *) pack ) + sizeof( pack_t ) );
	for ( i = 0; i < pack->hashSize; i++ ) {
		pack->hashTable[i] = NULL;
	}

	Q_strncpyz( pack->pakFilename, zipfile, sizeof( pack->pakFilename ) );
	Q_strncpyz( pack->pakBasename, basename, sizeof( pack->pakBasename ) );

	// strip .pk3 if needed
	if ( strlen( pack->pakBasename ) > 4 && !Q_stricmp( pack->pakBasename + strlen( pack->pakBasename ) - 4, ".iwd" ) ) {
		pack->pakBasename[strlen( pack->pakBasename ) - 4] = 0;
	}

	pack->handle = uf;
	pack->numfiles = gi.number_entry;
	pack->hasOpenFile = 0;
	unzGoToFirstFile( uf );

	for ( i = 0; i < gi.number_entry; i++ )
	{
		err = unzGetCurrentFileInfo( uf, &file_info, filename_inzip, sizeof( filename_inzip ), NULL, 0, NULL, 0 );
		if ( err != UNZ_OK ) {
			break;
		}
		if ( file_info.uncompressed_size > 0 ) {
			fs_headerLongs[fs_numHeaderLongs++] = LittleLong( file_info.crc );
		}
		Q_strlwr( filename_inzip );
		hash = FS_HashFileName( filename_inzip, pack->hashSize );
		buildBuffer[i].name = namePtr;
		strcpy( buildBuffer[i].name, filename_inzip );
		namePtr += strlen( filename_inzip ) + 1;
		// store the file position in the zip
		buildBuffer[i].pos = unzGetOffset( uf );
		buildBuffer[i].next = pack->hashTable[hash];
		pack->hashTable[hash] = &buildBuffer[i];
		unzGoToNextFile( uf );
	}

/*//Code for dumping iwd pure sums
	char headername[1024];
	sprintf(headername, "%s.sum", zipfile);
	FILE* df = fopen(headername, "wb");
	if(df)
	{
		fwrite(fs_headerLongs, 4, fs_numHeaderLongs, df);
		fclose(df);
	}*/
	
	pack->checksum = Com_BlockChecksumKey32( fs_headerLongs, 4 * fs_numHeaderLongs, LittleLong( 0 ) );

	if(fs_checksumFeed)
		pack->pure_checksum = Com_BlockChecksumKey32( fs_headerLongs, 4 * fs_numHeaderLongs, LittleLong( fs_checksumFeed ) );
	else
		pack->pure_checksum = pack->checksum;
	// TTimo: DO_LIGHT_DEDICATED
	// curious about the size of those
	//Com_DPrintf("Com_BlockChecksumKey: %s %u\n", pack->pakBasename, 4 * fs_numHeaderLongs);
	// cumulated for light dedicated: 21558 bytes
	pack->checksum = LittleLong( pack->checksum );
	pack->pure_checksum = LittleLong( pack->pure_checksum );

	Z_Free( fs_headerLongs );

	pack->buildBuffer = buildBuffer;
	return pack;
}


void FS_InitLocalizedIwdPureChecksums()
{
    int i;
    fileHandle_t fh;
    int len;
    char filebuffer[0x4000];

    const char** checksumheaderfiles = FS_ListFilesInPackDirectory("addiwdheaders");
    if(checksumheaderfiles == NULL)
    {
        Cvar_Set2("sv_pure", "0", qfalse);
        return;
    }

    for(i = 0; checksumheaderfiles[i] != NULL; ++i);

    if(i == 0)
    {
        Z_Free(checksumheaderfiles);
        Cvar_Set2("sv_pure", "0", qfalse);
        return;
    }

    fs_additionalPureChecksums = Z_Malloc(sizeof(int) * i);
    if(fs_additionalPureChecksums == NULL)
    {
        Z_Free(checksumheaderfiles);
        Cvar_Set2("sv_pure", "0", qfalse);
        return;
    }

    fs_additionalPureChecksumCount = i;
    for(i = 0; i < fs_additionalPureChecksumCount; ++i)
    {
        len = FS_FOpenFileRead(checksumheaderfiles[i], &fh);
        if(len > 0 && len < sizeof(filebuffer))
        {
            int readlen;
            if((readlen = FS_Read(filebuffer, len, fh)) > 0 && readlen % 4 == 0)
            {
                int sum = Com_BlockChecksumKey32( filebuffer, readlen, LittleLong( fs_checksumFeed ) );
                fs_additionalPureChecksums[i] = LittleLong( sum );
//                Com_Printf(CON_CHANNEL_FILES, "^6Adding checksum for %s\n", checksumheaderfiles[i]);
            }
        }
        if(len >= 0)
        {
            FS_FCloseFile(fh);
        }
    }

    Z_Free(checksumheaderfiles);
}


const char *__cdecl FS_LoadedIwdPureChecksums(char* info4, int len)
{
  struct searchpath_s *search;
  int i;

  info4[0] = 0;
  for ( search = fs_searchpaths; search; search = search->next )
  {
    if ( search->pack && !search->localized)
    {
        Q_strncat(info4, len, va("%i ", search->pack->pure_checksum));
    }
  }
  for ( i = 0; i < fs_additionalPureChecksumCount; ++i )
  {
    Q_strncat(info4, len, va("%i ", fs_additionalPureChecksums[i]));
  }
  return info4;
}

void SEH_InitLanguage()
{
  loc_language = Cvar_RegisterInt("loc_language", 0, 0, 14, 0x21u, "Language");
  loc_forceEnglish = Cvar_RegisterBool("loc_forceEnglish", 0, 0x21u, "Force english localized strings");
  loc_translate = Cvar_RegisterBool("loc_translate", qtrue, 0x20u, "Enable translations");
  loc_warnings = Cvar_RegisterBool("loc_warnings", 0, 0, "Enable localization warnings");
  loc_warningsAsErrors = Cvar_RegisterBool("loc_warningsAsErrors", 0, 0,"Throw an error for any unlocalized string");
  g_currentAsian = (loc_language->integer - 8) <= 4;

}


void FS_InitFilesystem()
{
  SEH_InitLanguage();
  FS_Startup(BASEGAME);
//  _Z17SEH_Init_StringEdv();
//  _Z22SEH_UpdateLanguageInfov();
//  _Z18FS_SetRestrictionsv();
//  if ( FS_ReadFile("fileSysCheck.cfg", 0) <= 0 )
//    Com_Error(ERR_DROP, "Couldn't load %s.  Make sure Call of Duty is run from the correct folder.", "fileSysCheck.cfg");
  Q_strncpyz(lastValidBase, fs_basepath->string, sizeof(lastValidBase));
  Q_strncpyz(lastValidGame, fs_gameDirVar->string, sizeof(lastValidGame));

/*
  char info[8192];
  Com_Printf(CON_CHANNEL_FILES, "Valid IWD checksums: %s\n", FS_LoadedIwdPureChecksums(info, 8192));
*/
}




qboolean FS_GameDirDomainFunc(const char *cvar_name, const char *fs_gamestring)
{

  if ( !*fs_gamestring )
    return qtrue;

  if ( Q_stricmpn(fs_gamestring, "mods", 4) || strlen(fs_gamestring) < 6 ||
		(fs_gamestring[4] != '/' && fs_gamestring[4] != '\\') ||
		strstr(fs_gamestring, "..") ||
		strstr(fs_gamestring, "::"))
  {
    //LiveStoreage_ClearWriteFlag();
    Com_Error(ERR_DROP, "ERROR: Invalid server value '%s' for '%s'\n\n", fs_gamestring, cvar_name);
    return qfalse;
  }

  return qtrue;
}

void FS_GameCheckDir(cvar_t *var)
{
  if ( !FS_GameDirDomainFunc(var->name, var->string))
  {
    Com_Printf(CON_CHANNEL_FILES,"'%s' is not a valid value for dvar '%s'\n\n", Cvar_DisplayableValue(var), var->name);
    Cvar_SetString(var, var->resetString);
  }
}


void FS_SetDirSep(cvar_t* fs_dir)
{
  int length;
  int i;
  qboolean flag;
  char buf[MAX_OSPATH];


  flag = qfalse;
  Q_strncpyz(buf, fs_dir->string, sizeof(buf));
  length = strlen(buf);

  if( length == 0 )
  {
    return;
  }

  for (i = 0; length >= i; i++)
  {
    if ( buf[i] == '\\' )
    {
        buf[i] = '/';
        flag = qtrue;
    }
    if ( Q_isupper(buf[i]) )
    {
        buf[i] = tolower(buf[i]);
        flag = qtrue;
    }
  }
  if(buf[length -1] == '/')
  {
    buf[length -1] = '\0';
    flag = qtrue;
  }
  if ( flag )
      Cvar_SetString(fs_dir, buf);
}

void FS_AddGameDirectory_Single(const char *path, const char *dir_nolocal, qboolean last, int index);

void FS_AddGameDirectory(const char *path, const char *dir)
{
  signed int i;

  for(i = 14; i >= 0; i--)
    FS_AddGameDirectory_Single(path, dir, qtrue, i--);

  FS_AddGameDirectory_Single(path, dir, 0, 0);
}
//Existing languages english, french, german, italian, spanish, russian, polish, chinese
static char* g_languages[] = {"english", "french", "german", "italian",
                              "spanish", "british", "russian", "polish",
                              "korean", "taiwanese", "japanese", "chinese",
                              "thai", "leet", "czech"};

int SEH_GetCurrentLanguage(void)
{
	return loc_language->integer;
}

const char* SEH_GetLanguageName(unsigned int langindex)
{
    if(langindex > 14)
        return g_languages[0];

    return g_languages[langindex];
}

qboolean SEH_GetLanguageIndexForName(const char* language, int *langindex)
{
    int i;

    for(i = 0; i < 15; i++)
    {
        if(!Q_stricmp(language, g_languages[i]))
        {
            *langindex = i;
            return qtrue;
        }
    }
    return qfalse;
}

/*
=================
FS_ShutdownSearchpath

Shuts down and clears a single searchpath only
=================
*/

void FS_ShutdownSearchpath(searchpath_t *clear)
{
	searchpath_t    **back, *p;

	back = &fs_searchpaths;
	while ( 1 )
	{
		p = *back;
		if( p == NULL )
		{
			return;
		}
		if(p == clear)
		{
			*back = p->next;
			if ( p->pack ) {
				unzClose( p->pack->handle );
				Z_Free( p->pack->buildBuffer );
				Z_Free( p->pack );
			}
			if ( p->dir ) {
				Z_Free( p->dir );
			}
			Z_Free( p );
			return;
		}
		back = &p->next;
	}
}

void FS_DisplayPath( void ) {
	searchpath_t    *s;
	int i;

	Com_Printf(CON_CHANNEL_FILES,"Current language: %s\n", SEH_GetLanguageName(SEH_GetCurrentLanguage()));
	Com_Printf(CON_CHANNEL_FILES,"Current fs_basepath: %s\n", fs_basepath->string);
	Com_Printf(CON_CHANNEL_FILES,"Current fs_homepath: %s\n", fs_homepath->string);
	if ( fs_ignoreLocalized->integer)
		Com_Printf(CON_CHANNEL_FILES,"    localized assets are being ignored\n");

	Com_Printf(CON_CHANNEL_FILES, "Current search path:\n" );
	for ( s = fs_searchpaths; s; s = s->next )
	{
		if ( s->pack )
		{
			Com_Printf(CON_CHANNEL_FILES, "%s (%i files)\n", s->pack->pakFilename, s->pack->numfiles );
			if ( s->localized )
			{
			    Com_Printf(CON_CHANNEL_FILES,"    localized assets iwd file for %s\n", SEH_GetLanguageName(s->langIndex));
			}
//			if ( fs_numServerPaks ) {
//				if ( !FS_PakIsPure( s->pack ) ) {
//					Com_Printf(CON_CHANNEL_FILES, "    not on the pure list\n" );
//				} else {
//					Com_Printf(CON_CHANNEL_FILES, "    on the pure list\n" );
//				}
//			}
		} else {
			Com_Printf(CON_CHANNEL_FILES, "%s/%s\n", s->dir->path, s->dir->gamedir );
			if ( s->localized )
			{
				Com_Printf(CON_CHANNEL_FILES,"    localized assets game folder for %s\n", SEH_GetLanguageName(s->langIndex));
			}
		}
	}
	Com_Printf(CON_CHANNEL_FILES,"\nFile Handles:\n");
	for ( i = 1 ; i < MAX_FILE_HANDLES ; i++ ) {
		if ( fsh[i].handleFiles.file.o ) {
			Com_Printf(CON_CHANNEL_FILES, "handle %i: %s\n", i, fsh[i].name );
		}
	}
}

void FS_InitCvars()
{
    char *homePath;

	Com_StartupVariable("fs_cdpath");
	Com_StartupVariable("fs_basepath");
	Com_StartupVariable("fs_homepath");
	Com_StartupVariable("fs_game");
	Com_StartupVariable("fs_copyfiles");
	Com_StartupVariable("fs_restrict");
	Com_StartupVariable("loc_language");

    fs_cdpath = Cvar_RegisterString("fs_cdpath", Sys_DefaultCDPath(), 16, "CD path");
    fs_basepath = Cvar_RegisterString("fs_basepath", Sys_DefaultInstallPath(), 528, "Base game path");
    fs_basegame = Cvar_RegisterString("fs_basegame", "", 16, "Base game name");
    fs_gameDirVar = Cvar_RegisterString("fs_game", "", 28, "Game data directory. Must be \"\" or a sub directory of 'mods/'.");
    homePath = (char *)Sys_DefaultHomePath();
    if (!homePath || !homePath[0])
        homePath = Sys_Cwd();
    fs_homepath = Cvar_RegisterString("fs_homepath", homePath, 528, "Game home path");

    FS_SetDirSep(fs_homepath);
    FS_SetDirSep(fs_basepath);
    FS_SetDirSep(fs_gameDirVar);
    FS_GameCheckDir(fs_gameDirVar);

    fs_debug = Cvar_RegisterInt("fs_debug", 0, 0, 2, 0, "Enable file system debugging information");
    fs_copyfiles = Cvar_RegisterBool("fs_copyfiles", 0, 16, "Copy all used files to another location");
    fs_ignoreLocalized = Cvar_RegisterBool("fs_ignoreLocalized", qfalse, 160, "Ignore localized files");
    fs_restrict = Cvar_RegisterBool("fs_restrict", qfalse, 16, "Restrict file access for demos etc.");
    fs_usedevdir = Cvar_RegisterBool("fs_usedevdir", qfalse, 16, "Use development directories.");

}

void FS_Startup(const char *gameName)
{
    cvar_t *levelname;
    mvabuf;

    Com_Printf(CON_CHANNEL_FILES,"----- FS_Startup -----\n");

    Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);

    fs_packFiles = 0;

    FS_InitCvars();

    levelname = Cvar_FindVar("mapname");

    if (fs_basepath->string[0])
    {
        if (fs_usedevdir->string)
        {
            FS_AddGameDirectory(fs_basepath->string, "devraw_shared");
            FS_AddGameDirectory(fs_basepath->string, "devraw");
            FS_AddGameDirectory(fs_basepath->string, "raw_shared");
            FS_AddGameDirectory(fs_basepath->string, "raw");
        }
        FS_AddGameDirectory(fs_basepath->string, "players");
    }

    if (fs_homepath->string[0] && Q_stricmp(fs_basepath->string, fs_homepath->string) && fs_usedevdir->string)
    {
        FS_AddGameDirectory(fs_homepath->string, "devraw_shared");
        FS_AddGameDirectory(fs_homepath->string, "devraw");
        FS_AddGameDirectory(fs_homepath->string, "raw_shared");
        FS_AddGameDirectory(fs_homepath->string, "raw");
    }
    /* CDPath set. */
    if (fs_cdpath->string[0] && Q_stricmp(fs_basepath->string, fs_cdpath->string))
    {
        if (fs_usedevdir->string)
        {
            FS_AddGameDirectory(fs_cdpath->string, "devraw_shared");
            FS_AddGameDirectory(fs_cdpath->string, "devraw");
            FS_AddGameDirectory(fs_cdpath->string, "raw_shared");
            FS_AddGameDirectory(fs_cdpath->string, "raw");
        }
        FS_AddGameDirectory(fs_cdpath->string, gameName);
    }
    /* BaseGame set. */
    if (fs_basepath->string[0])
    {
        FS_AddGameDirectory(fs_basepath->string, va("%s_shared", gameName));
        FS_AddGameDirectory(fs_basepath->string, gameName);
    }
    /* BaseGame set and (HomePath not equal to BaseGame). (aka multiple servers on one game). */
    if (fs_basepath->string[0] && Q_stricmp(fs_homepath->string, fs_basepath->string))
    {
        /* Last added fs_homepath directory used for logfiles output? */
        /* Swap next 2 lines and you will get logfile output to '%s_shared'. Why? */
        /* What about 'usermaps' directory? Why output still same? */
        FS_AddGameDirectory(fs_homepath->string, va("%s_shared", gameName));
        FS_AddGameDirectory(fs_homepath->string, gameName);
        FS_AddGameDirectory(fs_basepath->string, va("%s_shared", gameName));
    }
    /* BaseGame set, fs_game is "main" and BaseGame not equal to "main". WUT? */
    if (fs_basegame->string[0] && !Q_stricmp(gameName, BASEGAME) && Q_stricmp(fs_basegame->string, gameName))
    {
        if (fs_cdpath->string[0])
            FS_AddGameDirectory(fs_cdpath->string, fs_basegame->string);
        if (fs_basepath->string[0])
            FS_AddGameDirectory(fs_basepath->string, fs_basegame->string);
        if (fs_homepath->string[0] && Q_stricmp(fs_homepath->string, fs_basepath->string))
            FS_AddGameDirectory(fs_homepath->string, fs_basegame->string);
    }

    /* Setup usermaps directory. */
    if (fs_gameDirVar->string[0] && !Q_stricmp(gameName, BASEGAME) && Q_stricmp(fs_gameDirVar->string, gameName) && levelname && levelname->string[0])
    {
        if (fs_cdpath->string[0])
            FS_AddGameDirectory(fs_cdpath->string, va("usermaps/%s", levelname->string));
        if (fs_basepath->string[0])
            FS_AddGameDirectory(fs_basepath->string, va("usermaps/%s", levelname->string));
        if (fs_homepath->string[0] && Q_stricmp(fs_homepath->string, fs_basepath->string))
            FS_AddGameDirectory(fs_homepath->string, va("usermaps/%s", levelname->string));
    }

    if (fs_gameDirVar->string[0] && !Q_stricmp(gameName, BASEGAME) && Q_stricmp(fs_gameDirVar->string, gameName))
    {
        if (fs_cdpath->string[0])
            FS_AddGameDirectory(fs_cdpath->string, fs_gameDirVar->string);
        if (fs_basepath->string[0])
            FS_AddGameDirectory(fs_basepath->string, fs_gameDirVar->string);
        if (fs_homepath->string[0] && Q_stricmp(fs_homepath->string, fs_basepath->string))
            FS_AddGameDirectory(fs_homepath->string, fs_gameDirVar->string);
    }
    FS_InitLocalizedIwdPureChecksums();
    /*  Com_ReadCDKey(); */
    Cmd_AddCommand("path", FS_Path_f);
    Cmd_AddCommand("which", FS_Which_f);
    //Cmd_AddCommand("dir", FS_Dir_f );
    FS_DisplayPath();
    /*  Cvar_ClearModified(fs_gameDirVar);*/
    fs_gameDirVar->modified = 0;
    Com_Printf(CON_CHANNEL_FILES,"----------------------\n");
    Com_Printf(CON_CHANNEL_FILES,"%d files in iwd files\n", fs_packFiles);

    Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

    PHandler_Event(PLUGINS_ONFSSTARTED, fs_searchpaths);
}

void FS_AddIwdFilesForGameDirectory(const char *path, const char *dir);

void FS_AddGameDirectory_Single(const char *path, const char *dir_nolocal, qboolean localized, int index)
{
  const char* localization;
  searchpath_t *search;
  searchpath_t *sp;
  searchpath_t *prev;
  const char *language_name;
  char ospath[MAX_OSPATH];
  char dir[MAX_QPATH];


	if ( localized )
	{
		language_name = SEH_GetLanguageName(index);
		Com_sprintf(dir, sizeof(dir), "%s/%s", dir_nolocal, language_name);
	}
	else
	{
		Q_strncpyz(dir, dir_nolocal, sizeof(dir));
	}

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);

	for (sp = fs_searchpaths ; sp ; sp = sp->next)
	{
		if ( sp->dir && !Q_stricmp(sp->dir->path, path) && !Q_stricmp(sp->dir->gamedir, dir) )
		{
			if ( localized != sp->localized )
			{
				localization = "localized";
				if ( !sp->localized )
					localization = "non-localized";
				Com_PrintWarning(CON_CHANNEL_FILES,"WARNING: game folder %s/%s added as both localized & non-localized. Using folder as %s\n", path, dir, localization);
			}
			if ( sp->localized && index != sp->localized )
				Com_PrintWarning(CON_CHANNEL_FILES, "WARNING: game folder %s/%s re-added as localized folder with different language\n", path, dir);

			Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
			return;
		}
	}

    if ( localized )
    {

      FS_BuildOSPathForThread(path, dir, "", ospath, 0);
      if(ospath[0])
          ospath[strlen(ospath) -1] = 0;
		if ( !Sys_DirectoryHasContent(ospath) )
		{
			Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
			return;
		}
    }
    else
    {
      Q_strncpyz(fs_gamedir, dir, 256);
    }
    search = (searchpath_t *)S_Malloc(sizeof(searchpath_t));
    search->dir = (directory_t *)Z_Malloc(sizeof(directory_t));
    Q_strncpyz(search->dir->path, path, sizeof(search->dir->path));
    Q_strncpyz(search->dir->gamedir, dir, sizeof(search->dir->gamedir));
    search->localized = localized;
    search->langIndex = index;
    search->val_2 = Q_stricmp(dir_nolocal, BASEGAME) == 0;
    search->val_3 = Q_stricmp(dir_nolocal, "players") == 0;

    prev = (searchpath_t*)&fs_searchpaths;
    sp = fs_searchpaths;

    if (search->localized)
    {
        for (sp = fs_searchpaths; sp != NULL && !sp->localized; sp = sp->next)
        {
            prev = sp;
        }
    }
    search->next = sp;
    prev->next = search;
    FS_AddIwdFilesForGameDirectory(path, dir);

	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

}


static const char* sub_55D700(const char *instr)
{
  signed int i;
  static qboolean flip;
  static char Array64[128];

  flip ^= 1u;
  if ( strlen(instr) >= 10 )
  {
    Com_Memset(&Array64[64 * flip], 0, 64);
	for(i = 10; i < 64 && instr[i] != '\0' && isalpha(instr[i]) != '\0'; i++)
	{
		Array64[(64 * flip) + i - 10] = instr[i];
    }
    return &Array64[64 * flip];
  }

  Array64[64 * flip] = 0;
  return &Array64[64 * flip];
}

static signed int iwdsort(const void *cmp1_arg, const void *cmp2_arg)
{
  const char* cmp1;
  const char* cmp2;

  cmp1 = *(const char**)cmp1_arg;
  cmp2 = *(const char**)cmp2_arg;

  if(Q_stricmpn(cmp1, "          ", 10) || Q_stricmpn(cmp2, "          ", 10) )
        return FS_PathCmp(cmp1, cmp2);

  if ( Q_stricmp( sub_55D700(cmp1), "english") )
  {
    if ( !Q_stricmp( sub_55D700(cmp2), "english") )
      return 1;
  }
  else
  {
    if ( Q_stricmp( sub_55D700(cmp2), "english") )
      return -1;
  }
  return FS_PathCmp(cmp1, cmp2);
}


#define MAX_PAKFILES 1024
void FS_AddIwdFilesForGameDirectory(const char *path, const char *dir)
{

  searchpath_t *search, *prev, *sp;
  int langindex;
  int numfiles;
  const char* language;
  qboolean islocalized;
  int i, j;
  pack_t* pak;
  char** pakfiles;
  char pakfile[MAX_OSPATH];
  char* sorted[MAX_PAKFILES];
  qboolean languagesListed;

  FS_BuildOSPathForThread(path, dir, "", pakfile, 0);
  pakfile[strlen(pakfile) - 1] = 0;
  pakfiles = Sys_ListFiles(pakfile, "iwd", 0, &numfiles, 0);

  if(!pakfiles)
    return;

  if ( numfiles > MAX_PAKFILES )
  {
    Com_PrintWarning(CON_CHANNEL_FILES,"WARNING: Exceeded max number of iwd files in %s/%s (%1/%1)\n", path, dir, numfiles, MAX_PAKFILES);
    numfiles = MAX_PAKFILES;
  }
  if ( !numfiles && !Q_stricmp(dir, BASEGAME) && !Q_stricmp(path, fs_basepath->string) )
    Com_Error(ERR_FATAL, "No IWD files found in /main");


  for(i = 0; i < numfiles; i++)
  {
	sorted[i] = pakfiles[i];

	if ( !Q_strncmp(sorted[i], "localized_", 10) )
	{
		Com_Memcpy(sorted[i],  "          ", 10);
	}
  }

  qsort(sorted, numfiles, 4, iwdsort);

  langindex = 0;
  languagesListed = 0;

	for(i = 0; i < numfiles; i++)
	{
		if(!Q_strncmp(sorted[i], "          ", 10))
		{
			Com_Memcpy(sorted[i],  "localized_", 10);
			language = sub_55D700(sorted[i]);
			if ( !language[0] )
			{
				Com_PrintWarning(CON_CHANNEL_FILES,"WARNING: Localized assets iwd file %s/%s/%s has invalid name (no language specified). Proper naming convention is: localized_[language]_iwd#.iwd\n", path, dir, sorted[i]);
				continue;
			}
			if ( !SEH_GetLanguageIndexForName(language, &langindex))
			{
				Com_PrintWarning(CON_CHANNEL_FILES,"WARNING: Localized assets iwd file %s/%s/%s has invalid name (bad language name specified). Proper naming convention is: localized_[language]_iwd#.iwd\n", path, dir, sorted[i]);
			  if ( !languagesListed )
			  {
				Com_Printf(CON_CHANNEL_FILES,"Supported languages are:\n");
				for(j = 0; j < 15; j++)
				{
					Com_Printf(CON_CHANNEL_FILES,"    %s\n", SEH_GetLanguageName(j));
				}
				languagesListed = 1;
			  }
			  continue;
			}
			islocalized = qtrue;
		}else{
		    if ( !Q_stricmp(dir, BASEGAME) && !Q_stricmp(path, fs_basepath->string) && Q_stricmpn(sorted[i], "iw_", 3) && Q_stricmpn(sorted[i], "jcod4x_", 7) && Q_stricmpn(sorted[i], "xbase_", 6))
			{
				Com_PrintWarning(CON_CHANNEL_FILES,"WARNING: Invalid IWD %s in \\main.\n", sorted[i]);
				continue;
			}
			islocalized = qfalse;
		}

		FS_BuildOSPathForThread(path, dir, sorted[i], pakfile, 0);
		pak = FS_LoadZipFile( pakfile, sorted[i]);
		if(pak == NULL)
		{
			continue;
		}
		/* Shutdown already loaded pak files with same name to circumvent conflicts */

		for(sp = fs_searchpaths; sp != NULL; sp = sp->next)
		{
			if(sp->pack != NULL && !Q_stricmp(sp->pack->pakBasename, pak->pakBasename))
			{
				FS_ShutdownSearchpath(sp);
				break; //Break out - sp is now invalid
			}
		}

		Q_strncpyz(pak->pakGamename, dir, sizeof(pak->pakGamename));

		search = (searchpath_t *)S_Malloc(sizeof(searchpath_t));
		search->pack = pak;
		search->localized = islocalized;
		search->langIndex = langindex;

		prev = (searchpath_t*)&fs_searchpaths;
		sp = fs_searchpaths;

		if (search->localized)
		{
			for (sp = fs_searchpaths; sp != NULL && !sp->localized; sp = sp->next)
			{
				prev = sp;
			}
			Cvar_SetInt(loc_language, search->langIndex);
		}
		search->next = sp;
		prev->next = search;
	}

	Sys_FreeFileList(pakfiles);
}


unsigned Com_BlockChecksumKey32(void* buffer, int length, int key)
{
        int i, j;
        unsigned int q = ~key;
        byte* val = buffer;

        for(i = 0; i < length; i++)
        {
            q = val[i] ^ q;

            for(j = 0; j < 8; j++)
            {
                if(q & 1)
                    q = (q >> 1) ^ 0xEDB88320;
                else
                    q = (q >> 1) ^ 0;
            }
        }
        return ~q;
}



void __cdecl FS_AddUserMapDirIWDs(const char *pszGameFolder)
{
  struct searchpath_s *i;

  for ( i = fs_searchpaths; i; i = i->next )
  {
    if ( i->pack && !Q_stricmp(i->pack->pakGamename, pszGameFolder) )
    {
      return;
    }
  }
  FS_AddIwdFilesForGameDirectory(fs_homepath->string, pszGameFolder);
}



/*
================
FS_Shutdown

Frees all resources and closes all files
================
*/
void FS_Shutdown( qboolean closemfp ) {
	searchpath_t    *p, *next;
	int i;

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);

	for ( i = 0; i < MAX_FILE_HANDLES; i++ ) {
		if ( fsh[i].handleSync ) {
			FS_FCloseFile( i );
		}
	}

	// free everything
	for( p = fs_searchpaths ; p ; p = next ) {
		next = p->next;

		if ( p->pack ) {
			unzClose( p->pack->handle );
			Z_Free( p->pack->buildBuffer );
			Z_Free( p->pack );
		}
		if ( p->dir ) {
			Z_Free( p->dir );
		}
		Z_Free( p );
	}

	// any FS_ calls will now be an error until reinitialized
	fs_searchpaths = NULL;

	Cmd_RemoveCommand( "path" );
	Cmd_RemoveCommand( "which" );
	Cmd_RemoveCommand( "fdir" );

        if(fs_additionalPureChecksums)
        {
            Z_Free(fs_additionalPureChecksums);
        }
        fs_additionalPureChecksums = NULL;

#ifdef FS_MISSING
	if ( closemfp ) {
		fclose( missingFiles );
	}
#endif
	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
}


/*
=====================
FS_ClearPakReferences
=====================
*/
void FS_ClearPakReferences( int flags ) {
	searchpath_t *search;

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);

	if ( !flags ) {
		flags = -1;
	}
	for ( search = fs_searchpaths; search; search = search->next ) {
		// is the element a pak file and has it been referenced?
		if ( search->pack ) {
			search->pack->referenced &= ~flags;
		}
	}

	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
}

/*
=====================
FS_LoadedPaks

Returns a space separated string containing the checksums of all loaded pk3 files.
Servers with sv_pure set will get this string and pass it to clients.
=====================
*/

void FS_LoadedPaks( char* outsums, char* outnames, int maxlen ) {
	searchpath_t    *search;
	mvabuf;

	outsums[0] = 0;
	outnames[0] = 0;


	for ( search = fs_searchpaths ; search ; search = search->next ) {
		// is the element a pak file?
		if ( !search->pack || search->localized) {
			continue;
		}

		if ( *outsums ) {
			Q_strncat( outsums, maxlen, " " );
		}
		Q_strncat( outsums, maxlen, va( "%i", search->pack->checksum ));

		if ( *outnames ) {
			Q_strncat( outnames, maxlen, " " );
		}
		Q_strncat( outnames, maxlen, search->pack->pakBasename );
	}

}

/*
================
FS_Restart
================
*/
void FS_Restart( int checksumFeed ) {

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);

	// free anything we currently have loaded
	FS_Shutdown( qfalse );

	// set the checksum feed
	fs_checksumFeed = checksumFeed;

	// clear pak references
	FS_ClearPakReferences( 0 );

	// try to start up normally
	FS_Startup( BASEGAME );

	// see if we are going to allow add-ons
	//FS_SetRestrictions();

	// if we can't find default.cfg, assume that the paths are
	// busted and error out now, rather than getting an unreadable
	// graphics screen when the font fails to load
/*	if ( FS_ReadFile( "default.cfg", NULL ) <= 0 ) {
		// this might happen when connecting to a pure server not using BASEGAME/pak0.pk3
		// (for instance a TA demo server)
		if ( lastValidBase[0] ) {
			FS_PureServerSetLoadedPaks( "", "" );
			Cvar_Set( "fs_basepath", lastValidBase );
			Cvar_Set( "fs_gamedirvar", lastValidGame );
			lastValidBase[0] = '\0';
			lastValidGame[0] = '\0';
			Cvar_Set( "fs_restrict", "0" );
			FS_Restart( checksumFeed );
			Com_Error( ERR_DROP, "Invalid game folder\n" );
			return;
		}
		Com_Error( ERR_FATAL, "Couldn't load default.cfg" );
	}
*/
	// bk010116 - new check before safeMode
	if ( Q_stricmp( fs_gamedirvar->string, lastValidGame ) ) {
		// skip the wolfconfig.cfg if "safe" is on the command line
		if ( !Com_SafeMode() ) {
			Cbuf_AddText( "exec config_mp.cfg\n" );
		}
	}

	Q_strncpyz( lastValidBase, fs_basepath->string, sizeof( lastValidBase ) );
	Q_strncpyz( lastValidGame, fs_gamedirvar->string, sizeof( lastValidGame ) );

	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

}


/*
=================
FS_CopyFile

Copy a fully specified file from one place to another
=================
*/
void FS_CopyFile( char *fromOSPath, char *toOSPath ) {
	FILE    *f;
	int len;
	byte    *buf;
	mvabuf;

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);

	if ( fs_debug->integer ) {
		Sys_Print( va("^4copy %s to %s\n", fromOSPath, toOSPath ) );
	}

	f = fopen( fromOSPath, "rb" );
	if ( !f ) {
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return;
	}
	fseek( f, 0, SEEK_END );
	len = ftell( f );
	fseek( f, 0, SEEK_SET );

	// we are using direct malloc instead of Z_Malloc here, so it
	// probably won't work on a mac... Its only for developers anyway...
	buf = malloc( len );
	if ( fread( buf, 1, len, f ) != len ) {
		Com_Error( ERR_FATAL, "Short read in FS_Copyfiles()\n" );
	}
	fclose( f );

	if ( FS_CreatePath( toOSPath ) ) {
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return;
	}

	f = fopen( toOSPath, "wb" );
	if ( !f ) {
		free( buf );    //DAJ free as well
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return;
	}
	if ( fwrite( buf, 1, len, f ) != len ) {
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		Com_Error( ERR_FATAL, "Short write in FS_Copyfiles()\n" );
	}
	fclose( f );
	free( buf );
	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

}

/*
===========
FS_FOpenFileWrite

===========
*/
fileHandle_t FS_FOpenFileWrite( const char *filename ) {
	char            ospath[MAX_OSPATH];
	fileHandle_t f;
	mvabuf;


	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
	}

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);

	f = FS_HandleForFile();
	if(f == 0){
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return 0;
	}
	FS_SetFilenameForHandle(f, filename);
	fsh[f].zipFile = qfalse;

	FS_BuildOSPathForThread( fs_homepath->string, fs_gamedir, filename, ospath, 0 );

	if ( fs_debug->integer ) {
		Sys_Print(va("FS_FOpenFileWrite: %s\n", ospath ));
	}

	if ( FS_CreatePath( ospath ) ) {
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return 0;
	}

	// enabling the following line causes a recursive function call loop
	// when running with +set logfile 1 +set developer 1
	//Com_DPrintf( "writing to: %s\n", ospath );
	fsh[f].handleFiles.file.o = fopen( ospath, "wb" );

	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

	Q_strncpyz( fsh[f].name, filename, sizeof( fsh[f].name ) );

	fsh[f].handleSync = qfalse;

	if ( !fsh[f].handleFiles.file.o ) {
		f = 0;
	}
	return f;
}



/*
===========
FS_FOpenFileAppend

===========
*/
fileHandle_t __cdecl FS_FOpenFileAppend( const char *filename ) {
	char            ospath[MAX_OSPATH];
	fileHandle_t f;
	mvabuf;

	Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);


	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
	}

	if(Sys_IsMainThread())
	{
		f = FS_HandleForFileForThread(0);
	}else{
		f = FS_HandleForFileForThread(3);
	}

	if(f == 0){
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return 0;
	}
	FS_SetFilenameForHandle(f, filename);
	fsh[f].zipFile = qfalse;

	Q_strncpyz( fsh[f].name, filename, sizeof( fsh[f].name ) );

	// don't let sound stutter
	//S_ClearSoundBuffer();

	FS_BuildOSPathForThread( fs_homepath->string, fs_gamedir, filename, ospath, 0 );

	if ( fs_debug->integer ) {
		Sys_Print(va("FS_FOpenFileAppend: %s\n", ospath ));
	}

	if ( FS_CreatePath( ospath ) ) {
		Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);
		return 0;
	}

	fsh[f].handleFiles.file.o = fopen( ospath, "ab" );
	fsh[f].handleSync = qfalse;

	Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);


	if ( !fsh[f].handleFiles.file.o ) {
		f = 0;
	}
	return f;
}


qboolean FS_SetPermissionsExec(const char* ospath)
{
	return Sys_SetPermissionsExec( ospath );
}

//void DB_BuildOSPath(const char *filename<eax>, int ffdir<edx>, int len<ecx>, char *buff)
__regparm3 void DB_BuildOSPath(const char *filename, int ffdir, int len, char *buff)
{
    const char *languagestr;
    char *mapstrend;
    char mapname[MAX_QPATH];
    char ospath[MAX_OSPATH];

    switch(ffdir)
    {
        case 0:
            languagestr = SEH_GetLanguageName( SEH_GetCurrentLanguage() );
            if ( !languagestr )
            {
                languagestr = "english";
            }
            //Shitty workaround due to updatesystem
            Com_sprintf(ospath, sizeof(ospath), "zone/%s.ff", filename);
            if(FS_SV_GetFilepath( ospath, buff, len ) == NULL)
            {
                Com_sprintf(ospath, sizeof(ospath), "zone/%s/%s.ff", languagestr, filename);
                FS_SV_GetFilepath( ospath, buff, len );
            }
            return;

        case 1:

            Com_sprintf(ospath, sizeof(ospath), "%s/%s.ff", fs_gamedirvar->string, filename);
            FS_SV_GetFilepath( ospath, buff, len );
            return;

        case 2:

            Q_strncpyz(mapname, filename, sizeof(mapname));
            mapstrend = strstr(mapname, "_load");
            if ( mapstrend )
            {
                mapstrend[0] = '\0';
            }
            Com_sprintf(ospath, sizeof(ospath), "%s/%s/%s.ff", "usermaps", mapname, filename);
            FS_SV_GetFilepath( ospath, buff, len );
            return;
    }
}


void DB_BuildQPath(const char *filename, int ffdir, int len, char *buff)
{
    const char *languagestr;
    char *mapstrend;
    char mapname[MAX_QPATH];
    char tmppath[MAX_OSPATH];
    char tmppath2[MAX_OSPATH];

    switch(ffdir)
    {
        case 0:
            languagestr = SEH_GetLanguageName( SEH_GetCurrentLanguage() );
            if ( !languagestr )
            {
                languagestr = "english";
            }

            Com_sprintf(tmppath, sizeof(tmppath), "zone/%s.ff", filename);
            if(FS_SV_GetFilepath( tmppath, tmppath2, sizeof(tmppath) ) == NULL)
            {
                Com_sprintf(buff, len, "zone/%s/%s.ff", languagestr, filename);
            }else{
                Com_sprintf(buff, len, "zone/%s.ff", filename);
            }
            return;

        case 1:

            Com_sprintf(buff, len, "%s/%s.ff", fs_gamedirvar->string, filename);
            return;

        case 2:

            Q_strncpyz(mapname, filename, sizeof(mapname));
            mapstrend = strstr(mapname, "_load");
            if ( mapstrend )
            {
                mapstrend[0] = '\0';
            }
            Com_sprintf(buff, len, "%s/%s/%s.ff", "usermaps", mapname, filename);
            return;
        case 3:
            Com_sprintf(buff, len, "%s.ff", filename);
            return;

    }
}



/*
========================================================================================

Handle based file calls for virtual machines

========================================================================================
*/

int     FS_FOpenFileByMode( const char *qpath, fileHandle_t *f, fsMode_t mode ) {
	int r;
	qboolean sync;

	sync = qfalse;

	switch ( mode ) {
	case FS_READ:
		r = FS_FOpenFileRead( qpath, f );
		break;
	case FS_WRITE:
/*
#ifdef __MACOS__    //DAJ MacOS file typing
		{
			extern _MSL_IMP_EXP_C long _fcreator, _ftype;
			_ftype = 'WlfB';
			_fcreator = 'WlfM';
		}
#endif
*/
		*f = FS_FOpenFileWrite( qpath );
		r = 0;
		if ( *f == 0 ) {
			r = -1;
		}
		break;
	case FS_APPEND_SYNC:
		sync = qtrue;
	case FS_APPEND:
/*
#ifdef __MACOS__    //DAJ MacOS file typing
		{
			extern _MSL_IMP_EXP_C long _fcreator, _ftype;
			_ftype = 'WlfB';
			_fcreator = 'WlfM';
		}
#endif
*/
		*f = FS_FOpenFileAppend( qpath );
		r = 0;
		if ( *f == 0 ) {
			r = -1;
		}
		break;
	default:
		Com_Error( ERR_FATAL, "FSH_FOpenFile: bad mode" );
		return -1;
	}

	if ( !f ) {
		return r;
	}

	if ( *f ) {

		fsh[*f].fileSize = r;
		fsh[*f].streamed = qfalse;

		// uncommenting this makes fs_reads
		// use the background threads --
		// MAY be faster for loading levels depending on the use of file io
		// q3a not faster
		// wolf not faster

//		if (mode == FS_READ) {
//			Sys_BeginStreamedFile( *f, 0x4000 );
//			fsh[*f].streamed = qtrue;
//		}
	}
	fsh[*f].handleSync = sync;

	return r;
}





typedef struct fsPureSums_s
{

  struct fsPureSums_s *next;
  int checksum;
  char baseName[MAX_OSPATH];
  char gameName[MAX_OSPATH];

}fsPureSums_t;

static fsPureSums_t *fs_iwdPureChecks;


void __cdecl FS_AddIwdPureCheckReference(searchpath_t *search)
{

    fsPureSums_t *checks;
    fsPureSums_t *newCheck;

    if( search->localized )
    {
	return;
    }

    for(checks = fs_iwdPureChecks; checks != NULL ; checks = checks->next)
    {
        if ( checks->checksum == search->pack->checksum )
        {
          if ( !Q_stricmp(checks->baseName, search->pack->pakBasename) )
	  {
			return;
	  }
        }
    }
    newCheck = (fsPureSums_t *)Z_Malloc(sizeof(fsPureSums_t));
    newCheck->next = NULL;
    newCheck->checksum = search->pack->checksum;
    Q_strncpyz(newCheck->baseName, search->pack->pakBasename, sizeof(newCheck->baseName));
    Q_strncpyz(newCheck->gameName, search->pack->pakGamename, sizeof(newCheck->gameName));

    if(fs_iwdPureChecks == NULL)
    {
        fs_iwdPureChecks = newCheck;
	return;
    }

    for( checks = fs_iwdPureChecks; checks->next != NULL; checks = checks->next );

    checks->next = newCheck;
}


void __cdecl FS_ShutdownIwdPureCheckReferences()
{
  fsPureSums_t *cur;
  fsPureSums_t *next;

  cur = fs_iwdPureChecks;

  while( cur )
  {
    next = cur->next;
    Z_Free( cur );
    cur = next;
  }
  fs_iwdPureChecks = 0;
}



void FS_ReferencedPaks(char *outChkSums, char *outPathNames, int maxlen)
{
  fsPureSums_t *puresum;
  searchpath_t *search;

  char chkSumString[8192];
  char pathString[8192];
  char chksum[1024];
  char singlepath[1024];

  chkSumString[0] = 0;
  pathString[0] = 0;

  for ( puresum = fs_iwdPureChecks; puresum; puresum = puresum->next )
  {
	if(fs_gameDirVar->string[0] && !Q_stricmp(puresum->gameName, fs_gameDirVar->string))
	{
		continue;
	}
	Com_sprintf(chksum, sizeof(chksum), "%i ", puresum->checksum);
	Q_strncat(chkSumString, sizeof(chkSumString), chksum);
	if ( pathString[0] )
	{
		Q_strncat(pathString, sizeof(pathString), " ");
	}
	Q_strncat(pathString, sizeof(pathString), puresum->gameName);
    Q_strncat(pathString, sizeof(pathString), "/");
    Q_strncat(pathString, sizeof(pathString), puresum->baseName);
  }

  if ( fs_gameDirVar->string[0] )
  {
	for ( search = fs_searchpaths; search; search = search->next )
	{
		if ( search->pack && !search->localized )
		{
		//!(search->pack->referenced & FS_GENERAL_REF) &&
			if ( strstr( search->pack->pakBasename, "_svr_") == NULL &&
			(!Q_stricmp(search->pack->pakGamename, fs_gameDirVar->string) || !Q_stricmpn(search->pack->pakGamename, "usermaps", 8)))
			{
				Com_sprintf(chksum, sizeof(chksum), "%i ", search->pack->checksum);
				Q_strfrontcat(chkSumString, sizeof(chkSumString), chksum);
				singlepath[0] = 0;

				Q_strncat(singlepath, sizeof(singlepath), search->pack->pakGamename);
				Q_strncat(singlepath, sizeof(singlepath), "/");
				Q_strncat(singlepath, sizeof(singlepath), search->pack->pakBasename);
				Q_strncat(singlepath, sizeof(singlepath), " ");

				Q_strfrontcat(pathString, sizeof(pathString), singlepath);
			}
		}
	}
  }

  Q_strncpyz(outChkSums, chkSumString, maxlen);
  Q_strncpyz(outPathNames, pathString, maxlen);

}

void __cdecl FS_ShutdownReferencedFiles(int *numFiles, char **names)
{
  int i;

  for(i = 0; i < *numFiles; i++)
  {
        FreeString(names[i]);
        names[i] = NULL;
  }
  *numFiles = 0;
}


void FS_ShutdownServerIwdNames()
{
    FS_ShutdownReferencedFiles(&fs_numServerIwds, fs_serverIwdNames);
}

int fs_numServerReferencedFFs, fs_numServerReferencedIwds;
char* fs_serverReferencedFFNames, *fs_serverReferencedIwdNames;

void __cdecl FS_ShutdownServerReferencedIwds()
{
  FS_ShutdownReferencedFiles(&fs_numServerReferencedIwds, &fs_serverReferencedIwdNames);
}

void __cdecl FS_ShutdownServerReferencedFFs()
{
  FS_ShutdownReferencedFiles(&fs_numServerReferencedFFs, &fs_serverReferencedFFNames);
}


/*
=====================
FS_PureServerSetLoadedPaks

If the string is empty, all data sources will be allowed.
If not empty, only pk3 files that match one of the space
separated checksums will be checked for files, with the
exception of .cfg and .dat files.
=====================
*/

int FS_PureServerSetLoadedIwds(const char *paksums, const char *paknames)
{
  int i, k, l, rt;
  int numPakSums;
  fsPureSums_t *pureSums;
  int numPakNames;
  char *lpakNames[1024];
  int lpakSums[1024];

  rt = 0;

  Cmd_TokenizeString(paksums);

  numPakSums = Cmd_Argc();

  if ( numPakSums > sizeof(lpakSums)/sizeof(lpakSums[0]))
  {
    numPakSums = sizeof(lpakSums)/sizeof(lpakSums[0]);
  }

  for ( i = 0 ; i < numPakSums ; i++ ) {
	lpakSums[i] = atoi( Cmd_Argv( i ) );
  }
  Cmd_EndTokenizedString();

  Cmd_TokenizeString(paknames);
  numPakNames = Cmd_Argc();

  if ( numPakNames > sizeof(lpakNames)/sizeof(lpakNames[0]) )
  {
    numPakNames = sizeof(lpakNames)/sizeof(lpakNames[0]);
  }

  for ( i = 0 ; i < numPakNames ; i++ ) {
	lpakNames[i] = CopyString( Cmd_Argv( i ) );
  }

  Cmd_EndTokenizedString();

  if ( numPakSums != numPakNames )
  {
    Com_Error(ERR_FATAL, "iwd sum/name mismatch");
	return rt;
  }

	if ( numPakSums )
	{

		for(pureSums = fs_iwdPureChecks; pureSums; pureSums = pureSums->next)
		{

			for ( i = 0; i < numPakSums; i++)
			{
				if(lpakSums[i] == pureSums->checksum && !Q_stricmp(lpakNames[i], pureSums->baseName))
				{
					break;
				}
			}
			if ( i == numPakSums )
			{
				rt = 1;
				break;
			}
		}
	}

	if ( numPakSums == fs_numServerIwds && rt == 0)
	{
		for ( i = 0, k = 0; i < fs_numServerIwds; )
		{
		  if ( lpakSums[k] == fs_serverIwds[i] && !Q_stricmp(lpakNames[k], fs_serverIwdNames[i]) )
		  {
			++k;
			if ( k < numPakSums )
			{
			  i = 0;
			  continue;
			}

			for ( l = 0; l < numPakNames; ++l )
			{
				FreeString(lpakNames[l]);
				lpakNames[l] = NULL;
			}
			return 0;

		  }
		  ++i;
		}
		if ( numPakSums == 0 )
		{
			return rt;
		}
	}

    //SND_StopSounds(8);
    FS_ShutdownServerIwdNames( );
    fs_numServerIwds = numPakSums;
    if ( numPakSums )
    {
      Com_DPrintf(CON_CHANNEL_FILES,"Connected to a pure server.\n");
      Com_Memcpy(fs_serverIwds, lpakSums, sizeof(int) * fs_numServerIwds);
      Com_Memcpy(fs_serverIwdNames, lpakNames, sizeof(char*) * fs_numServerIwds);
      //fs_fakeChkSum = 0;
    }
    return rt;
}


#define SERVERFILECHKSUMPERFILE 256

typedef struct
{
    char qpath[MAX_QPATH];
    int length;
    int sums[SERVERFILECHKSUMPERFILE];
    int sum;
}fs_crcsum_t;

#define SERVERFILECHKSUMBLOCKSIZE 2*1024*1024
#define SERVERFILEMAXCHKSUM 512



typedef struct
{
    fs_crcsum_t sums[SERVERFILEMAXCHKSUM];
    fs_crcsum_t *hash[SERVERFILEMAXCHKSUM << 2];
}fs_crcsums_t;

fs_crcsums_t fscrcsums;

fs_crcsum_t* FS_FindChecksumForFile(const char* filename, int len)
{

    int i;

    for(i = 0; i < SERVERFILEMAXCHKSUM; ++i)
    {

        if(strcmp(filename, fscrcsums.sums[i].qpath) == 0)
        {
            if(fscrcsums.sums[i].length != len)
            {
                Com_Memset(&fscrcsums.sums[i], 0, sizeof(fs_crcsum_t));
            }
            return &fscrcsums.sums[i];
        }

        if(fscrcsums.sums[i].length == 0)
        {
            return &fscrcsums.sums[i];
        }

    }
    Com_PrintError(CON_CHANNEL_FILES,"Exceeded number of maximum files for checksumming\n");
    Com_Memset(&fscrcsums.sums[SERVERFILEMAXCHKSUM / 2 -1], 0, sizeof(fscrcsums.sums) / 2);

    return &fscrcsums.sums[SERVERFILEMAXCHKSUM / 2 -1];
}


int FS_CalculateChecksumForFile(const char* filename, int *crc32)
{
    int blockSize, len, i;
    fileHandle_t fh;
    byte block[SERVERFILECHKSUMBLOCKSIZE];
    fs_crcsum_t* chksums;

    *crc32 = 0;

    len = FS_SV_FOpenFileRead( filename, &fh );

    if(len <= 0)
    {
        return len;
    }

    chksums = FS_FindChecksumForFile(filename, len);

    if(chksums->length != len)
    {
        i = 0;
        do
        {
            blockSize = FS_Read( block, sizeof(block), fh );
            *crc32 = crc32_16bytes(  block, blockSize, *crc32 );
            chksums->sums[i] = crc32_16bytes( block, blockSize, 0 );
            ++i;
        }while(blockSize > 0 && i < SERVERFILECHKSUMPERFILE);
        chksums->length = len;
        chksums->sum = *crc32;
        Q_strncpyz(chksums->qpath, filename, sizeof(chksums->qpath));
        fscrcsums.hash[FS_HashFileName(chksums->qpath, sizeof(fscrcsums.hash) / sizeof(fs_crcsum_t*))] = chksums;
    }else{
        *crc32 = chksums->sum;
    }
    FS_FCloseFile(fh);

    return len;
}

int FS_WriteChecksumInfo(const char* filename, byte* data, int maxsize)
{
    int i;

    fs_crcsum_t* chksums = fscrcsums.hash[FS_HashFileName(filename, sizeof(fscrcsums.hash) / sizeof(fs_crcsum_t*))];

    if(chksums == NULL || chksums->length == 0)
    {
        return 0;
    }
    if(maxsize < sizeof(fs_crcsum_t))
    {
        Com_PrintError(CON_CHANNEL_FILES,"FS_WriteChecksumInfo(): Insufficient buffer size. Expected %d but got %d\n", sizeof(fs_crcsum_t), maxsize);
        return 0;
    }
    if(strcmp(chksums->qpath, filename) == 0)
    {
        Com_Printf(CON_CHANNEL_FILES,"Writing %s len %d\n", chksums->qpath, chksums->length);
        Com_Memcpy(data, chksums, sizeof(fs_crcsum_t));
        return sizeof(fs_crcsum_t);
    }

    //Search via hash has failed. Doing slow search
    for(i = 0; i < SERVERFILEMAXCHKSUM; ++i)
    {
        if(strcmp(filename, fscrcsums.sums[i].qpath) == 0)
        {

            Com_Memcpy(data, &fscrcsums.sums[i], sizeof(fs_crcsum_t));
            return sizeof(fs_crcsum_t);
        }
    }
    //Slow search did not generate results :/
    return 0;

}


/*
=================
FS_ReadOSPath

Properly handles partial reads
=================
*/
int FS_ReadOSPath( void *buffer, int len, FILE* f ) {
	int		block, remaining;
	int		read;
	byte	*buf;

	if ( !f ) {
		return 0;
	}

	buf = (byte *)buffer;

	remaining = len;
	while (remaining) {
		block = remaining;
		read = fread (buf, 1, block, f);
		if (read == 0)
		{
			return len-remaining;	//Com_Error (ERR_FATAL, "FS_Read: 0 bytes read");
		}

		if (read == -1) {
			Com_Error(ERR_FATAL, "FS_ReadOSPath: -1 bytes read");
		}

		remaining -= read;
		buf += read;
	}
	return len;

}


/*
================
FS_filelengthOSPath

If this is called on a non-unique FILE (from a pak file),
it will return the size of the pak file, not the expected
size of the file.
================
*/
int FS_filelengthOSPath( FILE* h ) {
	int		pos;
	int		end;

	pos = ftell (h);
	fseek (h, 0, SEEK_END);
	end = ftell (h);
	fseek (h, pos, SEEK_SET);

	return end;
}

/*
===========
FS_FOpenFileReadOSPathUni
search for a file somewhere below the home path, base path or cd path
we search in that order, matching FS_SV_FOpenFileRead order
===========
*/
int FS_FOpenFileReadOSPath( const char *filename, FILE **fp ) {
	char ospath[MAX_OSPATH];
	FILE* fh;

	Q_strncpyz( ospath, filename, sizeof( ospath ) );

	fh = fopen( ospath, "rb" );

	if ( !fh ){
		*fp = NULL;
		return -1;
	}

	*fp = fh;

	return FS_filelengthOSPath(fh);
}

/*
==============
FS_FCloseFileOSPath

==============
*/
qboolean FS_FCloseFileOSPath( FILE* f ) {

	if (f) {
	    fclose (f);
	    return qtrue;
	}
	return qfalse;
}


/*
============
FS_ReadFileOSPath

Filename are os paths a null buffer will just return the file length without loading
============
*/
int FS_ReadFileOSPath( const char *ospath, void **buffer ) {
	byte*	buf;
	int		len;
	FILE*   h;


	if ( !ospath || !ospath[0] ) {
		Com_Error(ERR_FATAL, "FS_ReadFileOSPath with empty name\n" );
	}

	buf = NULL;	// quiet compiler warning

	// look for it in the filesystem or pack files
	len = FS_FOpenFileReadOSPath( ospath, &h );
	if ( len == -1 ) {
		if ( buffer ) {
			*buffer = NULL;
		}
		return -1;
	}

	if ( !buffer ) {
		FS_FCloseFileOSPath( h );
		return len;
	}

	buf = malloc(len+1);
	if(buf == NULL)
	{
		Com_Error(ERR_FATAL, "FS_ReadFileOSPathUni got no memory\n" );
	}
	*buffer = buf;

	FS_ReadOSPath (buf, len, h);

	// guarantee that it will have a trailing 0 for string operations
	buf[len] = 0;
	FS_FCloseFileOSPath( h );
	return len;
}


/*
=============
FS_FreeFile
=============
*/
void FS_FreeFileOSPath( void *buffer ) {

	if ( !buffer ) {
		Com_Error( ERR_FATAL, "FS_FreeFile( NULL )" );
	}
	//Like regular FS_FreeFile but ignoring FS_LoadStack
	free( buffer );
}



bool __cdecl FS_IsBackupSubStr(const char *filenameSubStr)
{
  bool result;

  if ( filenameSubStr[0] != '.' || filenameSubStr[1] != '.' )
  {
    if(filenameSubStr[0] == ':' && filenameSubStr[1] == ':')
    {
        return true;
    }
    else
    {
        return false;
    }
  }
  else
  {
    result = 1;
  }
  return result;
}


char __cdecl FS_SanitizeFilename(const char *filename, char *sanitizedName, int sanitizedNameSize)
{
  int srcIndex;
  int dstIndex;

  assert(filename);
  assert(sanitizedName);
  assert(sanitizedNameSize > 0);

  for ( srcIndex = 0; ; ++srcIndex )
  {
    if ( !(filename[srcIndex] == '/' || filename[srcIndex] == '\\') )
    {
      break;
    }
  }

  dstIndex = 0;
  while ( filename[srcIndex] )
  {
    if ( FS_IsBackupSubStr(&filename[srcIndex]) )
    {
      return 0;
    }
    if ( filename[srcIndex] != '.' || (filename[srcIndex + 1] != 0 && 
	filename[srcIndex + 1] != '/' && filename[srcIndex + 1] != '\\' ))
    {
      if ( dstIndex + 1 >= sanitizedNameSize )
      {
        assert(dstIndex + 1 < sanitizedNameSize);
        return 0;
      }
      if ( filename[srcIndex] == '/' || filename[srcIndex] == '\\' )
      {
        sanitizedName[dstIndex] = '/';
        while ( 1 )
        {
          if ( !(filename[srcIndex +1] == '/' || filename[srcIndex +1] == '\\') )
          {
            break;
          }
          ++srcIndex;
        }
      }
      else
      {
        sanitizedName[dstIndex] = filename[srcIndex];
      }
      ++dstIndex;
    }
    ++srcIndex;
  }
  assert ( dstIndex <= srcIndex);
  sanitizedName[dstIndex] = 0;
  return 1;
}

qboolean __cdecl FS_UseSearchPath(searchpath_t *pSearch)
{

  if ( pSearch->localized && fs_ignoreLocalized->boolean )
  {
    return 0;
  }
  return !pSearch->localized || pSearch->langIndex == SEH_GetCurrentLanguage();
}

FILE *__cdecl FileWrapper_Open(const char *ospath, const char *mode)
{
  FILE *file;

  file = fopen(ospath, mode);

  return file;
}

FILE *__cdecl FS_FileOpenWriteBinary(const char *filename)
{
  FILE *file;

//  ProfLoad_BeginTrackedValue(0);
  file = FileWrapper_Open(filename, "wb");
//  ProfLoad_EndTrackedValue(0);
  return file;
}


FILE* __cdecl FS_FileOpenReadBinary(const char *filename)
{
  FILE *file;

//  ProfLoad_BeginTrackedValue(0);
  file = FileWrapper_Open(filename, "rb");
//  ProfLoad_EndTrackedValue(0);
  return file;
}

FILE* __cdecl FS_FileOpenWriteText(const char *filename)
{
  FILE *file;

//  ProfLoad_BeginTrackedValue(0);
  file = FileWrapper_Open(filename, "wt");
//  ProfLoad_EndTrackedValue(0);
  return file;
}


void __cdecl FS_FileClose(FILE *stream)
{
  fclose(stream);
}


fileHandle_t __cdecl FS_GetHandleAndOpenFile(const char *filename, const char *ospath, int thread)
{
  fileHandle_t f;
  FILE *fp;

  fp = FS_FileOpenWriteBinary(ospath);
  if ( fp )
  {
    f = FS_HandleForFileForThread(thread);

    fsh[f].zipFile = 0;
    fsh[f].handleFiles.file.o = fp;
    Q_strncpyz(fsh[f].name, filename, sizeof(fsh[0].name));
    fsh[f].handleSync = 0;

    return f;
  }
  return 0;
}


int __cdecl FS_GetFileOsPath(const char *filename, char *ospath)
{
  char sanitizedName[256];
  directory_t *dir;
  struct searchpath_s *search;
  FILE *fp;


  assert(filename);
  assert(ospath);

  if ( FS_SanitizeFilename(filename, sanitizedName, 256) )
  {
    for ( search = fs_searchpaths; search; search = search->next )
    {
      if ( FS_UseSearchPath(search) )
      {
        if ( !search->pack )
        {
          dir = search->dir;
          FS_BuildOSPathForThread(dir->path, dir->gamedir, sanitizedName, ospath, 0);
          fp = FS_FileOpenReadBinary(ospath);
          if ( fp )
          {
            FS_FileClose(fp);
            return 0;
          }
        }
      }
    }
  }
  return -1;
}



int __cdecl FS_OpenFileOverwrite(const char *qpath)
{
  DWORD v1;
  char ospath[256];
  unsigned int attributes;

  if(!FS_Initialized())
    Com_Error(ERR_FATAL, "Filesystem call made without initialization");

  assert(qpath);

  if ( FS_GetFileOsPath(qpath, ospath) < 0 )
  {
    Com_Error(ERR_DROP, "FS_FOpenFileOverWrite: Failed to open %s for writing.  It either does not exist or is in a iwd file.", qpath);
  }
  if ( fs_debug->integer )
  {
    Com_Printf(CON_CHANNEL_FILES, "FS_FOpenFileOverWrite: %s\n", ospath);
  }
  v1 = _GetFileAttributesA(ospath);
  attributes = v1 & 0xFFFFFFFE;
  if (attributes != v1 )
  {
    _SetFileAttributesA(ospath, attributes);
  }
  return FS_GetHandleAndOpenFile(qpath, ospath, 0);
}

int __cdecl FS_FOpenTextFileWrite(const char *filename)
{
  char ospath[MAX_OSPATH];
  const char *basepath;
  FILE *f;
  fileHandle_t h;

  h = 0;

  if(!FS_Initialized())
    Com_Error(ERR_FATAL, "Filesystem call made without initialization");

  basepath = fs_homepath->string;
  FS_BuildOSPathForThread(basepath, fs_gamedir, filename, ospath, 0);
  if ( fs_debug->integer )
  {
    Com_Printf(CON_CHANNEL_FILES, "FS_FOpenTextFileWrite: %s\n", ospath);
  }
  if ( FS_CreatePath(ospath) )
  {
    return 0;
  }

    f = FS_FileOpenWriteText(ospath);
    if ( f )
    {
    //h = FS_HandleForFileForCurrentThread();
      h = FS_HandleForFile();
      fsh[h].zipFile = 0;
      fsh[h].handleFiles.file.o = f;
      Q_strncpyz(fsh[h].name, filename, sizeof(fsh[0].name));
      fsh[h].handleSync = 0;
      if ( !fsh[h].handleFiles.file.o )
      {
        FS_FCloseFile(h);
        h = 0;
      }
      return h;
    }
    return 0;
}

FILE *__cdecl FS_FileOpenReadText(const char *filename)
{
  FILE *file; // ST0C_4@1

//  ProfLoad_BeginTrackedValue(0);
  file = FileWrapper_Open(filename, "rt");
//  ProfLoad_EndTrackedValue(0);
  return file;
}

int __cdecl FS_FileGetFileSize(FILE *file)
{
  return FileWrapper_GetFileSize(file);
}

unsigned int __cdecl FS_FileRead(void *ptr, unsigned int len, FILE *stream)
{
  unsigned int read_size;

//  ProfLoad_BeginTrackedValue(MAP_PROFILE_FILE_READ);
  read_size = fread(ptr, 1u, len, stream);
//  ProfLoad_EndTrackedValue(MAP_PROFILE_FILE_READ);
  return read_size;
}


const char **__cdecl FS_ListFiles(const char *path, const char *extension, int behavior, int *numfiles)
{
    return (const char**)Sys_ListFiles(path, extension, 0, numfiles, qfalse);
}

void FS_FreeFileList(const char** list)
{
    Sys_FreeFileList((char**)list);
}

/*
int __cdecl FS_GetModList(char *listbuf, int bufsize)
{
  char v2; // ST47_1@4
  _iobuf *file; // ST64_4@7
  char v4; // ST27_1@13
  char v5; // ST17_1@15
  char *v7; // [sp+8h] [bp-17Ch]@14
  char *v8; // [sp+Ch] [bp-178h]@14
  char *v9; // [sp+18h] [bp-16Ch]@12
  char *v10; // [sp+1Ch] [bp-168h]@12
  char *v11; // [sp+38h] [bp-14Ch]@3
  char *v12; // [sp+3Ch] [bp-148h]@3
  int nMods; // [sp+54h] [bp-130h]@1
  int nDescLen; // [sp+58h] [bp-12Ch]@7 MAPDST
  int descHandle; // [sp+5Ch] [bp-128h]@5
  const char *basepath; // [sp+60h] [bp-124h]@1
  int dummy; // [sp+64h] [bp-120h]@1
  char *name; // [sp+68h] [bp-11Ch]@3
  char descPath[256]; // [sp+6Ch] [bp-118h]@1
  int nPotential; // [sp+170h] [bp-14h]@1
  int nLen; // [sp+174h] [bp-10h]@3
  int nTotal; // [sp+178h] [bp-Ch]@1
  int i; // [sp+17Ch] [bp-8h]@1
  char **pFiles; // [sp+180h] [bp-4h]@1
  char *listbufa; // [sp+18Ch] [bp+8h]@14

  pFiles = 0;
  *listbuf = 0;
  nTotal = 0;
  nPotential = 0;
  nMods = 0;
  basepath = fs_homepath->current.string;
  Com_sprintf(descPath, 256, "%s/%s", basepath, "mods");
  pFiles = Sys_ListFiles(descPath, 0, 0, &dummy, 1);
  nPotential = Sys_CountFileList(pFiles);
  for ( i = 0; i < nPotential; ++i )
  {
    name = pFiles[i];
    nLen = strlen(name) + 1;
    v12 = name;
    v11 = descPath;
    do
    {
      v2 = *v12;
      *v11++ = *v12++;
    }
    while ( v2 );
    I_strncat(descPath, 256, "/description.txt");
    if ( FS_SV_FOpenFileRead(descPath, "mods", &descHandle) > 0 && descHandle )
    {
      file = FS_FileForHandle(descHandle);
      Com_Memset(descPath, 0, 256);
      nDescLen = FS_FileRead(descPath, 0x30u, file);
      if ( nDescLen >= 0 )
      {
        descPath[nDescLen] = 0;
      }
      FS_FCloseFile(descHandle);
    }
    else
    {
      Com_Printf(CON_CHANNEL_FILES, "FS_GetModList: failed to open %s\n", descPath);
      descPath[0] = 0;
    }
    nDescLen = strlen(descPath) + 1;
    if ( nLen + nTotal + nDescLen + 2 >= bufsize )
    {
      break;
    }
    v10 = name;
    v9 = listbuf;
    do
    {
      v4 = *v10;
      *v9++ = *v10++;
    }
    while ( v4 );
    listbufa = &listbuf[nLen];
    v8 = descPath;
    v7 = listbufa;
    do
    {
      v5 = *v8;
      *v7++ = *v8++;
    }
    while ( v5 );
    listbuf = &listbufa[nDescLen];
    nTotal += nDescLen + nLen;
    ++nMods;
  }
  FS_FreeFileList((const char **)pFiles);
  return nMods;
}
*/

int __cdecl FS_GetFileList(const char *path, const char *extension, int behavior, char *listbuf, int bufsize)
{
  int result;
  const char **fileNames;
  int nLen;
  int nTotal;
  int i;
  int fileCount;

  *listbuf = 0;
  fileCount = 0;
  nTotal = 0;
  if ( Q_stricmp(path, "$modlist") )
  {
    fileNames = FS_ListFiles(path, extension, behavior, &fileCount);
    for ( i = 0; i < fileCount; ++i )
    {
      nLen = strlen(fileNames[i]) + 1;
      if ( nTotal + nLen + 1 >= bufsize )
      {
        fileCount = i;
        break;
      }
      strcpy(listbuf, fileNames[i]);
      listbuf += nLen;
      nTotal += nLen;
    }
    FS_FreeFileList(fileNames);
    result = fileCount;
  }
  else
  {
    result = FS_GetModList(listbuf, bufsize);
  }
  return result;
}

qboolean __cdecl FS_LanguageHasAssets(int iLanguage)
{
  searchpath_t *pSearch;

  for ( pSearch = fs_searchpaths; pSearch; pSearch = pSearch->next )
  {
    if ( pSearch->localized && pSearch->langIndex == iLanguage )
    {
      return qtrue;
    }
  }
  return qfalse;
}


char *__cdecl FS_GetMapBaseName(const char *mapname)
{
  int c;
  int len;
  static char basename[MAX_QPATH];

  assert(mapname != NULL);

  if ( !Q_stricmpn(mapname, "maps/mp/", 8) )
  {
    mapname += 8;
  }
  len = strlen(mapname);
  if(len >= sizeof(basename))
  if ( !Q_stricmp(&mapname[len - 3], "bsp") )
  {
    len = len - 7;
  }
  memcpy(basename, (char *)mapname, len);
  basename[len] = 0;
  for ( c = 0; c < len; ++c )
  {
    if ( basename[c] == '%' )
    {
      basename[c] = '_';
    }
  }
  return basename;
}

//8kbyte buffer
#define DEFAULT_LOGFILEBUFFER (1024*8)

void FS_CloseLogFile(fileHandle_t f)
{
    fileHandleData_t *fhd;

    if(f < 1)
    {
        return;
    }

    fhd = &fsh[f];

    FS_WriteLogFlush( f );

    Z_Free(fhd->writebuffer);
    FS_FCloseFile( f );
}


fileHandle_t FS_OpenLogfile(const char* name, char mode)
{
	fileHandle_t logfile;
	fileHandleData_t *fhd;

	switch( mode)
	{
		case 'w':
			logfile = FS_FOpenFileWrite( name );
			break;
		case 'a':
			logfile = FS_FOpenFileAppend( name );
			break;
		default:
			logfile = 0;
	}
	if(!logfile)
	{
		return 0;
	}
	fhd = &fsh[logfile];

	fhd->writebuffer = Z_Malloc(DEFAULT_LOGFILEBUFFER);
	if(fhd->writebuffer == NULL)
	{
		FS_FCloseFile( logfile );
		return 0;
	}
	fhd->bufferSize = DEFAULT_LOGFILEBUFFER;
	fhd->bufferPos = 0;
	fhd->rbufferPos = 0;
	return logfile;
}

int FS_WriteLog( const void *buffer, int ilen, fileHandle_t h )
{
	fileHandleData_t *fhd;
	int remaining;
	int writelen;
	int i, len;
	len = ilen;

	fhd = &fsh[h];
	if(fhd->writebuffer == NULL)
	{
		Com_Error(ERR_FATAL, "attempted to use FS_WriteLog on a non logfile handle");
	}

	Sys_EnterCriticalSection(CRITSECT_LOGFILETHREAD);

	if(fhd->bufferPos >= fhd->rbufferPos)
	{
	    remaining = DEFAULT_LOGFILEBUFFER - (fhd->bufferPos - fhd->rbufferPos) -1;
	}else{
	    remaining = (fhd->rbufferPos - fhd->bufferPos) -1;
	}

	writelen = len;
	if(remaining < writelen)
	{
		writelen = remaining;
	}
	int index;
	for(i = 0; i < writelen; ++i)
	{
		index = (fhd->bufferPos + i) % DEFAULT_LOGFILEBUFFER;
		((char*)fhd->writebuffer)[index] = ((char*)buffer)[i];
	}
	fhd->bufferPos = (fhd->bufferPos + i) % DEFAULT_LOGFILEBUFFER;

	Sys_LeaveCriticalSection(CRITSECT_LOGFILETHREAD);

	return writelen;
}


void FS_WriteLogFlush( fileHandle_t h ) //This function gets called from the logwrite thread and fileclose function
{
	fileHandleData_t *fhd;
	int remaining;
	int i;
	char cpybuffer[DEFAULT_LOGFILEBUFFER];

	if(h < 1)
	{
		return;
	}

	fhd = &fsh[h];
	if(fhd->writebuffer == NULL)
	{
		Com_Error(ERR_FATAL, "attempted to use FS_WriteLogFlush on a non logfile handle");
	}

	Sys_EnterCriticalSection(CRITSECT_LOGFILETHREAD);

	if(fhd->bufferPos == fhd->rbufferPos)
	{
		Sys_LeaveCriticalSection(CRITSECT_LOGFILETHREAD);
		return;
	}

	if(fhd->bufferPos >= fhd->rbufferPos)
	{
	    remaining = (fhd->bufferPos - fhd->rbufferPos);
	}else{
	    remaining = DEFAULT_LOGFILEBUFFER - (fhd->rbufferPos - fhd->bufferPos);
	}

	assert(remaining <= DEFAULT_LOGFILEBUFFER);

	for(i = 0; i < remaining; ++i)
	{
	    ((char*)cpybuffer)[i] = ((char*)fhd->writebuffer)[(fhd->rbufferPos + i) % DEFAULT_LOGFILEBUFFER];
	}
	fhd->rbufferPos = fhd->bufferPos;

	Sys_LeaveCriticalSection(CRITSECT_LOGFILETHREAD);

	int written = fwrite (cpybuffer, 1, remaining, fhd->handleFiles.file.o);
	if (written == 0) {
		Sys_Print("FS_WriteLogFlush: 0 bytes written\n" );
		return;
	}

	if (written == -1) {
		Sys_Print("FS_WriteLogFlush: -1 bytes written\n" );
		return;
	}
	if ( fhd->handleSync ) {
		fflush( fhd->handleFiles.file.o );
	}

}

//Parse all zip files for files inside a directory, path must be with forward slash only
//must Z_Free return value, result will go invalid on FS_Restart
//On fail return value is NULL
const char** FS_ListFilesInPackDirectory(const char* directory)
{
    int i, h, y;
    pack_t		*pak;
    fileInPack_t	*pakFile;
    int hashtablesize = 2*fs_packFiles;
    struct searchpath_s* search;
    unsigned int directorylen = 0;

    if(directory != NULL)
    {
        directorylen = strlen(directory);
    }
    const char** hashtable = Z_Malloc(hashtablesize * sizeof(const char*));
    if(hashtable == NULL)
    {
        return NULL;
    }

    if(!FS_Initialized())
    {
        Com_Error(ERR_FATAL, "Filesystem call made without initialization");
    }
    Sys_EnterCriticalSection(CRITSECT_FILESYSTEM);
    for(search = fs_searchpaths; search; search = search->next)
    {
	if(!search->pack)
	{
	    continue;
	}
        pak = search->pack;
        for(i = 0; i < pak->numfiles; ++i)
        {
            pakFile = &pak->buildBuffer[i];

            if(directorylen == 0 || !Q_stricmpn(pakFile->name, directory, directorylen))
            {
                unsigned int paknamelen = strlen(pakFile->name);
                if(paknamelen > 0 && pakFile->name[paknamelen -1] != '/') //is directory, not file
                {
                    //Add file to hashtable
                    long hash = FS_HashFileName( pakFile->name, 0x80000000);
                    for(h = 0; h < 2*fs_packFiles; ++h)
                    {
                        const char** entry = &hashtable[(hash +h) % hashtablesize];

                        if(*entry == NULL)
                        {
                            *entry = pakFile->name;
                        }

                        if(strcmp(*entry, pakFile->name) == 0)
                        {
                            break; //already in there
                        }

                    }
                }
            }
        }
    }
    Sys_LeaveCriticalSection(CRITSECT_FILESYSTEM);

    unsigned int numentries;

    for(i = 0, numentries = 0; i < hashtablesize; ++i)
    {
        if(hashtable[i])
        {
            numentries++;
        }
    }

    const char** buf = Z_Malloc((numentries +1)* sizeof(const char*));
    if(!buf)
    {
        Z_Free(hashtable);
        return NULL;
    }

    for(i = 0, y = 0; i < hashtablesize; ++i)
    {
        if(hashtable[i])
        {
            buf[y] = hashtable[i];
            ++y;
        }
    }
    buf[y] = NULL;
    Z_Free(hashtable);
    return buf;
}
