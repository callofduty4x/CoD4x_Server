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
#include "qcommon_mem.h"
#include "server.h"
#include "sys_main.h"
#include "sapi.h"
#include "plugin_handler.h"

#include <stdint.h>
#include <string.h>

/*
==================
SV_SSFilename
==================
*/
void SV_SSFilename( int number, const char* basename, char *fileName ) {
	int a,b,c,d;

	if ( number < 0 || number > 9999 ) {
		Com_sprintf( fileName, MAX_OSPATH, "screenshot9999.jpg" );
		return;
	}

	a = number / 1000;
	number -= a * 1000;
	b = number / 100;
	number -= b * 100;
	c = number / 10;
	number -= c * 10;
	d = number;

	Com_sprintf( fileName, MAX_OSPATH, "%s%i%i%i%i", basename, a, b, c, d );
}

char FilenameCharValidate(char k)
{
    if(k <= ' ' || k == 0xff || k == '.' || k == '/' || k == '\\' || k == ':' || k == '*' || k == '?' || k == '\"' || k == '<' || k == '>' || k == '|')
    {
        return '_';
    }

    return k;
}

void ValidateFilename(char* filename)
{
    while(*filename)
    {
        *filename = FilenameCharValidate(*filename);
        ++filename;
    }
}

void SV_ScreenshotBuildName( client_t* cl, char* basename, char* name )
{
	int number;
	char ssName[MAX_QPATH];

	if(basename[0] == '\0')
	{
		Q_strncpyz(basename, cl->name, MAX_QPATH);
	}
	ValidateFilename(basename);
	// scan for a free demo name
	for( number = 0 ; number <= 9999 ; number++ )
	{
		SV_SSFilename( number, basename, ssName );
		Com_sprintf( name, MAX_QPATH, "screenshots/%s", ssName );
		COM_DefaultExtension(name, MAX_QPATH, ".jpg");
		if ( !FS_SV_FileExists( name ) )
		{
			break;  // file doesn't exist
		}
	}
}

/*
====================
SV_ScreenshotClient

Requesting a screenshot from one or multiple clients
====================
*/

void SV_ScreenshotClient( client_t* cl, const char* basename ) {
	char name[MAX_OSPATH];
	char basenamebuf[MAX_QPATH];
	int i;

	if ( cl && cl->state != CS_ACTIVE ) {
		Com_Printf(CON_CHANNEL_SERVER, "Client must be in a level to take a screenshot.\n" );
		return;
	}

	if(basename)
	{
		Q_strncpyz(basenamebuf, basename, sizeof(basenamebuf));
	}else{
		basenamebuf[0] = '\0';
	}

	if(cl)
	{
		SV_ScreenshotBuildName( cl, basenamebuf, name );
		SV_SApiTakeSS(cl, name);
		return;
	}

	for(i = 0, cl = svs.clients; i < sv_maxclients->integer; ++i, ++cl)
	{
		if( cl->state != CS_ACTIVE ) {
			continue;
		}
		basenamebuf[0] = '\0';
		SV_ScreenshotBuildName( cl, basenamebuf, name );
		SV_SApiTakeSS(cl, name);
	}

}




/*
====================
SV_ScreenshotArrived

A screenshot has arrived
====================
*/
void SV_ScreenshotArrived( client_t* cl, const char* filename )
{
	static char cmdline[1024];
	char filepath[1024];

	Com_sprintf(filepath, sizeof(filepath), "%s/%s", fs_homepath->string, filename);


	PHandler_Event(PLUGINS_ONSCREENSHOTARRIVED, cl, filepath);


	if(!*sv_screenshotArrivedCmd->string)
		return;

	if(strstr(sv_screenshotArrivedCmd->string, ".."))
	{
		Com_PrintWarning(CON_CHANNEL_SERVER,"Commandlines containing \"..\" are not allowed\n");
		return;
	}
	Com_sprintf(cmdline, sizeof(cmdline), "\"%s/apps/%s\" \"%s\"", fs_homepath->string, sv_screenshotArrivedCmd->string, filepath);

	Sys_DoStartProcess(cmdline);
}


void SV_ModuleArrived( client_t* cl, const char* modulePath, long checksum)
{
	PHandler_Event(PLUGINS_ONMODULELOADED, cl, modulePath, checksum);
}
