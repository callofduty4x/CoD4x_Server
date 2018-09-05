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
#include "qcommon_io.h"
#include "filesystem.h"
#include "scr_vm.h"
#include "cvar.h"

#include <string.h>

static int scr_fopencount;
static scr_fileHandle_t scr_fsh[MAX_SCRIPT_FILEHANDLES];

/*
==============
Scr_FS_CloseFile

If the FILE pointer is an open pak file, leave it open.

For some reason, other dll's can't just cal fclose()
on files returned by FS_FOpenFile...
==============
*/
qboolean Scr_FS_CloseFile( scr_fileHandle_t* f ) {
	// we didn't find it as a pak, so close it as a unique file
	if (f->fh) {
	    fclose (f->fh);
	    Com_Memset( f, 0, sizeof( scr_fileHandle_t ));
	    return qtrue;
	}
	Com_Memset( f, 0, sizeof( scr_fileHandle_t ));
	return qfalse;
}


/*
========================================================================================

Handle based file calls for virtual machines

========================================================================================
*/





/*
=================
Scr_FS_ReadLine
Custom function that only reads single lines
Properly handles line reads
=================
*/

int Scr_FS_ReadLine( void *buffer, int len, fileHandle_t f ) {
	char		*read;
	char		*buf;

	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
	}

        if(f > MAX_SCRIPT_FILEHANDLES || f < 1){
            Scr_Error("Scr_FS_ReadLine: Out of range filehandle\n");
            return 0;
        }

	buf = buffer;
        *buf = 0;
	read = fgets (buf, len, scr_fsh[f -1].fh);
	if (read == NULL) {	//Error

		if(feof(scr_fsh[f -1].fh)) 
			return 0;

		Com_PrintScriptRuntimeWarning("Scr_FS_ReadLine: couldn't read line");
		return -1;
	}
	return 1;
}


qboolean Scr_FS_AlreadyOpened( char* qpath){

    int i;

    FS_ConvertPath(qpath);
    FS_StripTrailingSeperator(qpath);

    for(i = 0; i < MAX_SCRIPT_FILEHANDLES; i++){

        if(!Q_stricmp(qpath, scr_fsh[i].filename)){
            Com_PrintScriptRuntimeWarning("Script_FileOpen: Tried to open a file with the same name two times: %s\n", qpath);
            return qtrue;
        }

    }
    return qfalse;

}


/*
===========
Scr_FS_FOpenFile
===========
*/
qboolean Scr_FS_FOpenFile( const char *filename, fsMode_t mode, scr_fileHandle_t* f ) {
	
	char ospath[MAX_OSPATH];
	
	f->fh = NULL;

	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
	}

	// search homepath
	FS_BuildOSPathForThread( fs_homepath->string, "", filename, ospath, 0);
	// remove trailing slash
	if((ospath[strlen(ospath)-1]) == '/')
		ospath[strlen(ospath)-1] = '\0';

	if ( fs_debug->boolean ) {
		Com_Printf(CON_CHANNEL_SCRIPT, "Scr_FS_FOpenFile (fs_homepath): %s\n", ospath );
	}

        switch(mode){
            case FS_READ:
                f->fh = fopen( ospath, "rt" );
            break;
            case FS_WRITE:
                if( !FS_CreatePath( ospath )) {
                    f->fh = fopen( ospath, "wt" );
                }
            break;
            case FS_APPEND:
                if( !FS_CreatePath( ospath )) {
                f->fh = fopen( ospath, "at" );
                }
            break;
            default:
                Scr_Error("Scr_FS_FOpenFile: bad mode.\n");
                return qfalse;
        }

        if (!f->fh){
        // NOTE TTimo on non *nix systems, fs_homepath == fs_basepath, might want to avoid
            if (Q_stricmp(fs_homepath->string,fs_basepath->string)){
                // search basepath
                FS_BuildOSPathForThread( fs_basepath->string, "", filename, ospath, 0);
                // remove trailing slash
                if((ospath[strlen(ospath)-1]) == '/')
                    ospath[strlen(ospath)-1] = '\0';

                if ( fs_debug->boolean ){
                    Com_Printf(CON_CHANNEL_SCRIPT, "Scr_FS_FOpenFile (fs_basepath): %s\n", ospath );
                }

                switch(mode){
                    case FS_READ:
                        f->fh = fopen( ospath, "rt" );
                    break;
                    case FS_WRITE:

                        if( !FS_CreatePath( ospath )) {
                            f->fh = fopen( ospath, "wt" );
                        }
                    break;
                    case FS_APPEND:
                        if( !FS_CreatePath( ospath )) {
                            f->fh = fopen( ospath, "at" );
                        }
                    break;
                    default:
                        return qfalse;
                }
            }
        }

        if ( f->fh ) {
                f->baseOffset = ftell(f->fh);
                fseek(f->fh,0,SEEK_END);
                f->fileSize = ftell(f->fh);
                fseek(f->fh,0,SEEK_SET);

                return qtrue;
        }
        return qfalse;

}

qboolean Scr_FileExists( const char* qpath )
{

    scr_fileHandle_t fh;

    Com_Memset( &fh, 0, sizeof( fh ));

    if(!Scr_FS_FOpenFile(qpath, FS_READ, &fh))
    {
        return 0;
    }

    Scr_FS_CloseFile(&fh);
    return qtrue;

}

fileHandle_t Scr_OpenScriptFile( char* qpath, scr_fileHandleType_t ft, fsMode_t mode){

    int i;
    char filename[MAX_QPATH];

    if ( !FS_Initialized() ) {
        Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
    }

    Q_strncpyz(filename, qpath, sizeof(filename));


    if(Scr_FS_AlreadyOpened(filename)){
        return 0;
    }


    for(i=0; i < MAX_SCRIPT_FILEHANDLES; i++){

        if(!scr_fsh[i].fh){

            if(!Scr_FS_FOpenFile(filename, mode, &scr_fsh[i])){
                return 0;
            }
            scr_fsh[i].type = ft;
            Q_strncpyz(scr_fsh[i].filename, filename, MAX_QPATH);
            scr_fopencount++;
            return i+1;
        }
    }

    Com_PrintScriptRuntimeWarning("Scr_OpenScriptFile: Exceeded limit of %i opened files\n", MAX_SCRIPT_FILEHANDLES);

    return 0;
}


qboolean Scr_CloseScriptFile( fileHandle_t fh){

    if ( !FS_Initialized() ) {
        Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
    }


    if(fh > MAX_SCRIPT_FILEHANDLES || fh < 1){
        Scr_Error("Scr_CloseScriptFile: Out of range filehandle\n");
        return qfalse;
    }


    switch(scr_fsh[fh -1].type){

    case SCR_FH_FILE:
        if(!Scr_FS_CloseFile(&scr_fsh[fh -1])){
            return qfalse;
        }
    break;
    case SCR_FH_PARALIST:
    //ToDo Additional handling for memcached files
        if(!Scr_FS_CloseFile(&scr_fsh[fh -1])){
            return qfalse;
        }
    break;
    case SCR_FH_INDEXPARALIST:
    //ToDo Additional handling for memcached files
        if(!Scr_FS_CloseFile(&scr_fsh[fh -1])){
            return qfalse;
        }
    }
    scr_fopencount--;
    return qtrue;
}




/*
=================
FS_Read

Properly handles partial reads
=================
*/


int Scr_FS_Read( void *buffer, int len, fileHandle_t f ) {
	int		block, remaining;
	int		read;
	byte		*buf;
	int		tries;

	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
	}

        if(f > MAX_SCRIPT_FILEHANDLES || f < 1){
            Scr_Error("Scr_FS_Read: Out of range filehandle\n");
            return 0;
        }

	buf = (byte *)buffer;

	remaining = len;
	tries = 0;
	while (remaining) {
		block = remaining;

		read = fread (buf, 1, block, scr_fsh[f -1].fh);
		if (read == 0) {
			// we might have been trying to read from a CD, which
			// sometimes returns a 0 read on windows
			if (!tries) {
				tries = 1;
			} else {
				return len-remaining;	//Com_Error (ERR_FATAL, "FS_Read: 0 bytes read");
			}
		}

		if (read == -1) {
			Scr_Error ("Scr_FS_Read: -1 bytes read");
		}

		remaining -= read;
		buf += read;
	}
	return len;
}


/*
=================
Scr_FS_Write

Properly handles partial writes
=================
*/
int Scr_FS_Write( const void *buffer, int len, fileHandle_t h ) {
	int		block, remaining;
	int		written;
	byte	*buf;
	int		tries;
	FILE	*f;

	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
	}

        if(h > MAX_SCRIPT_FILEHANDLES || h < 1){
            Scr_Error("Scr_FS_Write: Out of range filehandle\n");
            return 0;
        }

	f = scr_fsh[h -1].fh;
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
				Com_Printf(CON_CHANNEL_SCRIPT, "Scr_FS_Write: 0 bytes written\n" );
				return 0;
			}
		}

		if (written == -1) {
			Com_Printf(CON_CHANNEL_SCRIPT, "Scr_FS_Write: -1 bytes written\n" );
			return 0;
		}

		remaining -= written;
		buf += written;
	}
	return len;
}

#define PK3_SEEK_BUFFER_SIZE 65536

/*
=================
Scr_FS_Seek

=================
*/
int Scr_FS_Seek( fileHandle_t f, long offset, int origin ) {
	int		_origin;

	if ( !FS_Initialized() ) {
		Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
		return -1;
	}

	if(f > MAX_SCRIPT_FILEHANDLES || f < 1){
            Scr_Error("Scr_FS_Seek: Out of range filehandle\n");
            return -1;
        }

	FILE *file;
	file = scr_fsh[f -1].fh;
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
		Scr_Error( "Bad origin in Scr_FS_Seek" );
		break;
	}
	return fseek( file, offset, _origin );
}





