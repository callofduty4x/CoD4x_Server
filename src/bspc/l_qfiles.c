/*
===========================================================================

Return to Castle Wolfenstein multiplayer GPL Source Code
Copyright (C) 1999-2010 id Software LLC, a ZeniMax Media company. 

This file is part of the Return to Castle Wolfenstein multiplayer GPL Source Code (RTCW MP Source Code).  

RTCW MP Source Code is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

RTCW MP Source Code is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with RTCW MP Source Code.  If not, see <http://www.gnu.org/licenses/>.

In addition, the RTCW MP Source Code is also subject to certain additional terms. You should have received a copy of these additional terms immediately following the terms and conditions of the GNU General Public License which accompanied the RTCW MP Source Code.  If not, please request a copy in writing from id Software at the address below.

If you have questions concerning this license or the applicable additional terms, you may contact in writing id Software LLC, c/o ZeniMax Media Inc., Suite 120, Rockville, Maryland 20850 USA.

===========================================================================
*/

//===========================================================================
//
// Name:			l_qfiles.h
// Function:		-
// Programmer:		Mr Elusive
// Last update:		1999-11-29
// Tab Size:		3
//===========================================================================

#if defined( WIN32 ) | defined( _WIN32 )
#include <windows.h>
#include <sys/types.h>
#include <sys/stat.h>
#else
#include <glob.h>
#include <sys/stat.h>
#include <unistd.h>
#endif

#include "qbsp.h"

//file extensions with their type
typedef struct qfile_exttype_s
{
	char *extension;
	int type;
} qfile_exttyp_t;

qfile_exttyp_t quakefiletypes[] =
{
	{QFILEEXT_UNKNOWN, QFILETYPE_UNKNOWN},
	{QFILEEXT_PAK, QFILETYPE_PAK},
	{QFILEEXT_PK3, QFILETYPE_PK3},
	{QFILEEXT_SIN, QFILETYPE_PAK},
	{QFILEEXT_BSP, QFILETYPE_BSP},
	{QFILEEXT_MAP, QFILETYPE_MAP},
	{QFILEEXT_MDL, QFILETYPE_MDL},
	{QFILEEXT_MD2, QFILETYPE_MD2},
	{QFILEEXT_MD3, QFILETYPE_MD3},
	{QFILEEXT_WAL, QFILETYPE_WAL},
	{QFILEEXT_WAV, QFILETYPE_WAV},
	{QFILEEXT_AAS, QFILETYPE_AAS},
	{QFILEEXT_FF, QFILETYPE_FF},
	{NULL, 0}
};

//===========================================================================
//
// Parameter:			-
// Returns:				-
// Changes Globals:		-
//===========================================================================
int QuakeFileExtensionType( char *extension ) {
	int i;

	for ( i = 0; quakefiletypes[i].extension; i++ )
	{
		if ( !stricmp( extension, quakefiletypes[i].extension ) ) {
			return quakefiletypes[i].type;
		} //end if
	} //end for
	return QFILETYPE_UNKNOWN;
} //end of the function QuakeFileExtensionType
//===========================================================================
//
// Parameter:			-
// Returns:				-
// Changes Globals:		-
//===========================================================================
char *QuakeFileTypeExtension( int type ) {
	int i;

	for ( i = 0; quakefiletypes[i].extension; i++ )
	{
		if ( quakefiletypes[i].type == type ) {
			return quakefiletypes[i].extension;
		} //end if
	} //end for
	return QFILEEXT_UNKNOWN;
} //end of the function QuakeFileExtension
//===========================================================================
//
// Parameter:			-
// Returns:				-
// Changes Globals:		-
//===========================================================================
int QuakeFileType( char *filename ) {
	char ext[_MAX_PATH] = ".";

	ExtractFileExtension( filename, ext + 1 );
	return QuakeFileExtensionType( ext );
} //end of the function QuakeFileTypeFromFileName
//===========================================================================
//
// Parameter:				-
// Returns:					-
// Changes Globals:		-
//===========================================================================
char *StringContains( char *str1, char *str2, int casesensitive ) {
	int len, i, j;

	len = strlen( str1 ) - strlen( str2 );
	for ( i = 0; i <= len; i++, str1++ )
	{
		for ( j = 0; str2[j]; j++ )
		{
			if ( casesensitive ) {
				if ( str1[j] != str2[j] ) {
					break;
				}
			} //end if
			else
			{
				if ( toupper( str1[j] ) != toupper( str2[j] ) ) {
					break;
				}
			} //end else
		} //end for
		if ( !str2[j] ) {
			return str1;
		}
	} //end for
	return NULL;
} //end of the function StringContains
//===========================================================================
//
// Parameter:			-
// Returns:				-
// Changes Globals:		-
//===========================================================================
int FileFilter( char *filter, char *filename, int casesensitive ) {
	char buf[1024];
	char *ptr;
	int i, found;

	while ( *filter )
	{
		if ( *filter == '*' ) {
			filter++;
			for ( i = 0; *filter; i++ )
			{
				if ( *filter == '*' || *filter == '?' ) {
					break;
				}
				buf[i] = *filter;
				filter++;
			} //end for
			buf[i] = '\0';
			if ( strlen( buf ) ) {
				ptr = StringContains( filename, buf, casesensitive );
				if ( !ptr ) {
					return false;
				}
				filename = ptr + strlen( buf );
			} //end if
		} //end if
		else if ( *filter == '?' ) {
			filter++;
			filename++;
		} //end else if
		else if ( *filter == '[' && *( filter + 1 ) == '[' ) {
			filter++;
		} //end if
		else if ( *filter == '[' ) {
			filter++;
			found = false;
			while ( *filter && !found )
			{
				if ( *filter == ']' && *( filter + 1 ) != ']' ) {
					break;
				}
				if ( *( filter + 1 ) == '-' && *( filter + 2 ) && ( *( filter + 2 ) != ']' || *( filter + 3 ) == ']' ) ) {
					if ( casesensitive ) {
						if ( *filename >= *filter && *filename <= *( filter + 2 ) ) {
							found = true;
						}
					} //end if
					else
					{
						if ( toupper( *filename ) >= toupper( *filter ) &&
							 toupper( *filename ) <= toupper( *( filter + 2 ) ) ) {
							found = true;
						}
					} //end else
					filter += 3;
				} //end if
				else
				{
					if ( casesensitive ) {
						if ( *filter == *filename ) {
							found = true;
						}
					} //end if
					else
					{
						if ( toupper( *filter ) == toupper( *filename ) ) {
							found = true;
						}
					} //end else
					filter++;
				} //end else
			} //end while
			if ( !found ) {
				return false;
			}
			while ( *filter )
			{
				if ( *filter == ']' && *( filter + 1 ) != ']' ) {
					break;
				}
				filter++;
			} //end while
			filter++;
			filename++;
		} //end else if
		else
		{
			if ( casesensitive ) {
				if ( *filter != *filename ) {
					return false;
				}
			} //end if
			else
			{
				if ( toupper( *filter ) != toupper( *filename ) ) {
					return false;
				}
			} //end else
			filter++;
			filename++;
		} //end else
	} //end while
	return true;
} //end of the function FileFilter


//===========================================================================
//
// Parameter:			-
// Returns:				-
// Changes Globals:		-
//===========================================================================
int LoadQuakeFile( quakefile_t *qf, void **bufferptr ) {
	FILE *fp;
	void *buffer;
	int length;

	{
		fp = SafeOpenRead( qf->filename );
		if ( qf->offset ) {
			fseek( fp, qf->offset, SEEK_SET );
		}
		length = qf->length;
		if ( !length ) {
			length = Q_filelength( fp );
		}
		buffer = GetMemory( length + 1 );
		( (char *)buffer )[length] = 0;
		SafeRead( fp, buffer, length );
		fclose( fp );

		*bufferptr = buffer;
		return length;
	} //end else
} //end of the function LoadQuakeFile
//===========================================================================
//
// Parameter:			-
// Returns:				-
// Changes Globals:		-
//===========================================================================
int ReadQuakeFile( quakefile_t *qf, void *buffer, int offset, int length ) {
	FILE *fp;
	{
		fp = SafeOpenRead( qf->filename );
		if ( qf->offset ) {
			fseek( fp, qf->offset, SEEK_SET );
		}
		if ( offset ) {
			fseek( fp, offset, SEEK_CUR );
		}
		SafeRead( fp, buffer, length );
		fclose( fp );

		return length;
	} //end else
} //end of the function ReadQuakeFile
//===========================================================================
//
// Parameter:			-
// Returns:				-
// Changes Globals:		-
//===========================================================================
quakefile_t *FindQuakeFilesWithPakFilter(char *pakfilter, char *filter)
{
#if defined(WIN32)|defined(_WIN32)
	WIN32_FIND_DATA filedata;
	HWND handle;
	struct _stat statbuf;
	int done;
#else
	glob_t globbuf;
	struct stat statbuf;
	int j;
#endif
	quakefile_t *qfiles, *lastqf, *qf;
	char pakfile[MAX_PATH], filename[MAX_PATH], *str;

	qfiles = NULL;
	lastqf = NULL;
	if (pakfilter && strlen(pakfilter))
	{
#if defined(WIN32)|defined(_WIN32)
		handle = FindFirstFile(pakfilter, &filedata);
		done = (handle == INVALID_HANDLE_VALUE);
		while(!done)
		{
			_splitpath(pakfilter, pakfile, NULL, NULL, NULL);
			_splitpath(pakfilter, NULL, &pakfile[strlen(pakfile)], NULL, NULL);
			AppendPathSeperator(pakfile, MAX_PATH);
			strcat(pakfile, filedata.cFileName);
			_stat(pakfile, &statbuf);
#else
		glob(pakfilter, 0, NULL, &globbuf);
		for (j = 0; j < globbuf.gl_pathc; j++)
		{
			strcpy(pakfile, globbuf.gl_pathv[j]);
			stat(pakfile, &statbuf);
#endif
			//if the file with .pak or .pk3 is a folder
			if (statbuf.st_mode & S_IFDIR)
			{
				strcpy(filename, pakfilter);
				AppendPathSeperator(filename, MAX_PATH);
				strcat(filename, filter);
				qf = FindQuakeFilesWithPakFilter(NULL, filename);
				if (lastqf) lastqf->next = qf;
				else qfiles = qf;
				lastqf = qf;
				while(lastqf->next) lastqf = lastqf->next;
			} //end if
			else
			{
#if defined(WIN32)|defined(_WIN32)
				str = StringContains(pakfile, ".pk3", false);
#else
				str = StringContains(pakfile, ".pk3", true);
#endif
				if (str && str == pakfile + strlen(pakfile) - strlen(".pk3"))
				{
					//qf = FindQuakeFilesInZip(pakfile, filter);
				} //end if
				else
				{
					//qf = FindQuakeFilesInPak(pakfile, filter);
				} //end else
				//
				qf = NULL;
				if (qf)
				{
					if (lastqf) lastqf->next = qf;
					else qfiles = qf;
					lastqf = qf;
					while(lastqf->next) lastqf = lastqf->next;
				} //end if
			} //end else
			//
#if defined(WIN32)|defined(_WIN32)
			//find the next file
			done = !FindNextFile(handle, &filedata);
		} //end while
#else
		} //end for
		globfree(&globbuf);
#endif
	} //end if
	else
	{
#if defined(WIN32)|defined(_WIN32)
		handle = FindFirstFile(filter, &filedata);
		done = (handle == INVALID_HANDLE_VALUE);
		while(!done)
		{
			_splitpath(filter, filename, NULL, NULL, NULL);
			_splitpath(filter, NULL, &filename[strlen(filename)], NULL, NULL);
			AppendPathSeperator(filename, MAX_PATH);
			strcat(filename, filedata.cFileName);
#else
		glob(filter, 0, NULL, &globbuf);
		for (j = 0; j < globbuf.gl_pathc; j++)
		{
			strcpy(filename, globbuf.gl_pathv[j]);
#endif
			//
			qf = malloc(sizeof(quakefile_t));
			if (!qf) Error("out of memory");
			memset(qf, 0, sizeof(quakefile_t));
			strcpy(qf->pakfile, "");
			strcpy(qf->filename, filename);
			strcpy(qf->origname, filename);
			qf->offset = 0;
			qf->length = 0;
			qf->type = QuakeFileType(filename);
			//add the file ot the list
			qf->next = NULL;
			if (lastqf) lastqf->next = qf;
			else qfiles = qf;
			lastqf = qf;
#if defined(WIN32)|defined(_WIN32)
			//find the next file
			done = !FindNextFile(handle, &filedata);
		} //end while
#else
		} //end for
		globfree(&globbuf);
#endif
	} //end else
	return qfiles;
} //end of the function FindQuakeFilesWithPakFilter
//===========================================================================
//
// Parameter:			-
// Returns:				-
// Changes Globals:		-
//===========================================================================
quakefile_t *FindQuakeFiles(char *filter)
{
	char *str;
	char newfilter[MAX_PATH];
	char pakfilter[MAX_PATH];
	char filefilter[MAX_PATH];

	strcpy(newfilter, filter);
	ConvertPath(newfilter);
	strcpy(pakfilter, newfilter);

	str = StringContains(pakfilter, ".pak", false);
	if (!str) str = StringContains(pakfilter, ".pk3", false);

	if (str)
	{
		str += strlen(".pak");
		if (*str)
		{
			*str++ = '\0';
			while(*str == '\\' || *str == '/') str++;
			strcpy(filefilter, str);
			return FindQuakeFilesWithPakFilter(pakfilter, filefilter);
		} //end if
	} //end else
	return FindQuakeFilesWithPakFilter(NULL, newfilter);
} //end of the function FindQuakeFiles