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




#include "misc.h"
#include "q_shared.h"
#include "qcommon.h"
#include "qcommon_io.h"
#include "g_sv_shared.h"
#include "punkbuster.h"
#include "hl2rcon.h"
#include "cvar.h"

#include <string.h>
#include <stdarg.h>
#include <ctype.h>


typedef struct
{
    short word_0;
    byte byte_2;
    byte numbytes;
    byte datastart;
}slHeader_t;

typedef union
{
    slHeader_t header;
    char data[12];
}slTree_t;

extern slTree_t** scrMemTreePub;


char* SL_ConvertToString(unsigned int location)
{
    char* string;

    slTree_t** ptr = (slTree_t**)scrMemTreePub;
    slTree_t* base = *ptr;
    string = (char*)&base[location].header.datastart;
    return string;
}


unsigned int SL_GetString(const char *string, int type)
{
	int memlen = strlen(string) + 1;
	return SL_GetStringOfSize(string, type, memlen);
}


unsigned int SL_GetLowercaseString(const char *upperstring, int type)
{
	unsigned int size;
	char lwrstr[8192];
	int i;

	size = strlen(upperstring) + 1;
	
	if ( (signed int)size >= sizeof(lwrstr) )
	{
		Com_Error(2, "SL_GetLowercaseString(): max string length exceeded: \"%s\"", upperstring);
		return 0;
	}
  
	for(i = 0; i < size; ++i)
	{
		lwrstr[i] = tolower(upperstring[i]);
	}
    return SL_GetStringOfSize(lwrstr, type, size);
}


unsigned int SL_FindLowercaseString(const char *upperstring)
{
	unsigned int size;
	char lwrstr[8192];
	int i;

	size = strlen(upperstring) + 1;
	
	if ( (signed int)size >= sizeof(lwrstr) )
	{
		return 0;
	}
  
	for(i = 0; i < size; ++i)
	{
		lwrstr[i] = tolower(upperstring[i]);
	}
    return FindStringOfSize(lwrstr, size);
}

int SL_FindString(const char *string)
{
  return FindStringOfSize(string, strlen(string) + 1);
}

