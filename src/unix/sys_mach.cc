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
#include "../sec_crypto.h"
#include "../sec_update.h"
#include "../objfile_parser.h"

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


static char homePath[MAX_OSPATH];

/*
==================
Sys_DefaultHomePath
==================
*/


const char *Sys_DefaultHomePath(void)
{
	char *p;

	if( !*homePath )
	{
		if( ( p = getenv( "HOME" ) ) != NULL )
		{
			Com_sprintf(homePath, sizeof(homePath), "%s%c", p, PATH_SEP);
			Q_strncat(homePath, sizeof(homePath),
				"Library/Application Support/");

			Q_strncat(homePath, sizeof(homePath), HOMEPATH_NAME_MACOSX);
		}
	}

	return homePath;
}

/*
==============
Sys_PlatformInit

Unix specific initialisation
==============
*/
void Sys_PlatformInit( void )
{
	void *allocptr = (void*)0x8040000;  /* Image base of cod4_lnxded-bin */ 
	void *received_mem;
	int pagesize = getpagesize();
	
	allocptr += 0xa1bc; /* Offset of .plt */
	received_mem = mmap(allocptr - ((int)allocptr % pagesize), 0xa60 + 0x4 + 0x1bf1a4 + 0x3c + 0x36898 + pagesize, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_FIXED | MAP_ANON, 0, 0);
	if(received_mem != allocptr - ((int)allocptr % pagesize))
	{
		printf("Allocation of memory at address %p has failed.\n", allocptr);
		exit(1);
	}
	allocptr += 0xa60;
	
	allocptr += 0x4; /* Offset of .text */	
	allocptr += 0x1bf1a4;
	
	allocptr += 0x3c; /* Offset of .rodata */	
	allocptr += 0x36898;
	
	allocptr += 0x2aee8; /* Offset of .data */		
	received_mem = mmap(allocptr - ((int)allocptr % pagesize), 0x9454 + 0x2c + 0xc182240 + pagesize, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_FIXED | MAP_ANON, 0, 0);
	if(received_mem != allocptr - ((int)allocptr % pagesize))
	{
		printf("Allocation of memory at address %p has failed\n", allocptr);
		exit(1);
	}
	allocptr += 0x9454;
	
	allocptr += 0x2c; /* Offset of .bss */
	allocptr += 0xc182240;
	
	Sys_InitCrashDumps();
}
/*
=================
Sys_StripAppBundle

Discovers if passed dir is suffixed with the directory structure of a Mac OS X
.app bundle. If it is, the .app directory structure is stripped off the end and
the result is returned. If not, dir is returned untouched.
=================
*/
const char *Sys_StripAppBundle( const char *dir )
{
	static char cwd[MAX_OSPATH];

	Q_strncpyz(cwd, dir, sizeof(cwd));
	if(strcmp(Sys_Basename(cwd), "MacOS"))
		return dir;
	Q_strncpyz(cwd, Sys_Dirname(cwd), sizeof(cwd));
	if(strcmp(Sys_Basename(cwd), "Contents"))
		return dir;
	Q_strncpyz(cwd, Sys_Dirname(cwd), sizeof(cwd));
	if(!strstr(Sys_Basename(cwd), ".app"))
		return dir;
	Q_strncpyz(cwd, Sys_Dirname(cwd), sizeof(cwd));
	return cwd;
}

void Sys_TermProcess( )
{

}

char** GetStrTable(void* buff, int len, sharedlib_data_t *text)
{
	char** dummy;
	dummy = malloc(sizeof(char**));
	dummy[0] = NULL;
	return dummy;
}


unsigned int Sys_GetProcessAffinityMask()
{
  unsigned int cpucount = 0;
  int size = sizeof(cpucount);

  if ( sysctlbyname_stub("hw.logicalcpu", &cpucount, &size, 0, 0) || cpucount <= 1 )
  {
    processAffinityMask = 1;
  }
  else
  {
    processAffinityMask = 3;
  }
  return processAffinityMask;
}
