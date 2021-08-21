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


#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <ctype.h>
#define __QSHARED_C__
#include "q_shared.h"
#include "qcommon_io.h"
#include "sys_thread.h"
#include "misc.h"
#include "null_client.h"


int Q_isprint( int c )
{
	if ( c >= 0x20 && c <= 0x7E )
		return ( 1 );
	return ( 0 );
}

int Q_islower( int c )
{
	if (c >= 'a' && c <= 'z')
		return ( 1 );
	return ( 0 );
}

int Q_isupper( int c )
{
	if (c >= 'A' && c <= 'Z')
		return ( 1 );
	return ( 0 );
}

int Q_isalpha( int c )
{
	if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))
		return ( 1 );
	return ( 0 );
}

int Q_isalphanum( int c )
{
	if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9'))
		return ( 1 );
	return ( 0 );
}

qboolean Q_isanumber( const char *s )
{
	char *p;

	if( *s == '\0' )
		return qfalse;

	strtod( s, &p );

	return *p == '\0';
}

qboolean Q_isintegral( float f )
{
	return (int)f == f;
}

qboolean Q_isprintstring( char* s ){
    char* a = s;
    while( *a ){
        if ( *a < 0x20 || *a > 0x7E ) return 0;
        a++;
    }
    return 1;
}

/*
This part makes qshared.c undepended in case no proper qcommon.h is included
*/

#ifndef __QCOMMON_STDIO_H__

#define Com_Printf printf
#define Com_PrintWarning printf
#define Com_DPrintf printf

#define ERR_FATAL 0
#define ERR_DROP 1
void Com_Error(int err, char* fmt,...)
{
	char buf[MAX_STRING_CHARS];

	va_list		argptr;

	va_start (argptr,fmt);
	Q_vsnprintf(buf, sizeof(buf), fmt, argptr);
	va_end (argptr);

	fputs(buf, stdout);
	exit(1);
}

#endif

/*
=============
Q_strncpyz

Safe strncpy that ensures a trailing zero
=============
*/
void Q_strncpyz( char *dest, const char *src, int destsize ) {

	if (!dest ) {
	    Com_Error( ERR_FATAL, "Q_strncpyz: NULL dest" );
	}
	if ( !src ) {
		Com_Error( ERR_FATAL, "Q_strncpyz: NULL src" );
	}
	if ( destsize < 1 ) {
		Com_Error(ERR_FATAL,"Q_strncpyz: destsize < 1" );
	}

	strncpy( dest, src, destsize-1 );
  dest[destsize-1] = 0;
}


int Q_stricmpn (const char *s1, const char *s2, int n) {
	int		c1, c2;

        if ( s1 == NULL ) {
           if ( s2 == NULL )
             return 0;
           else
             return -1;
        }
        else if ( s2==NULL )
          return 1;



	do {
		c1 = *s1++;
		c2 = *s2++;

		if (!n--) {
			return 0;		// strings are equal until end point
		}

		if (c1 != c2) {
			if (c1 >= 'a' && c1 <= 'z') {
				c1 -= ('a' - 'A');
			}
			if (c2 >= 'a' && c2 <= 'z') {
				c2 -= ('a' - 'A');
			}
			if (c1 != c2) {
				return c1 < c2 ? -1 : 1;
			}
		}
	} while (c1);

	return 0;		// strings are equal
}

int Q_strncmp (const char *s1, const char *s2, int n) {
	int		c1, c2;

	do {
		c1 = *s1++;
		c2 = *s2++;

		if (!n--) {
			return 0;		// strings are equal until end point
		}

		if (c1 != c2) {
			return c1 < c2 ? -1 : 1;
		}
	} while (c1);

	return 0;		// strings are equal
}

int Q_stricmp (const char *s1, const char *s2) {
	return (s1 && s2) ? Q_stricmpn (s1, s2, 99999) : -1;
}


int __cdecl Q_stricmpwild(const char *wild, const char *s)
{
  char charWild;
  int delta;
  char charRef;

  assert( wild );
  assert( s );
  do
  {
    charWild = *wild++;
    if ( charWild == '*' )
    {
      if ( !*wild )
      {
        return 0;
      }
      if ( *s && !Q_stricmpwild(wild - 1, s + 1) )
      {
        return 0;
      }
    }
    else
    {
      charRef = *s++;
      if ( charWild != charRef && charWild != '?' )
      {
        delta = tolower(charWild) - tolower(charRef);
        if ( delta != 0 )
        {
          return 1;
        }
      }
    }
  }
  while ( charWild );
  return 0;
}





char *Q_strlwr( char *s1 ) {
    char	*s;

    s = s1;
	while ( *s ) {
		*s = tolower(*s);
		s++;
	}
    return s1;
}

char *Q_strupr( char *s1 ) {
    char	*s;

    s = s1;
	while ( *s ) {
		*s = toupper(*s);
		s++;
	}
    return s1;
}

/*
=============
Q_bstrcpy

Same like strcpy but it does always a byte wise copying so source and destiantion can overlap
Use is to fix up a problem with Info_SetValueForKey() which happened on some newer machines
=============
*/


void Q_bstrcpy(char* dest, const char* src){

    while(*src)
        *dest++ = *src++;

    *dest = 0;
}




// never goes past bounds or leaves without a terminating 0
void Q_strncat( char *dest, int size, const char *src ) {
	int		l1;

	l1 = strlen( dest );
	if ( l1 >= size ) {
		Com_Error( ERR_FATAL, "Q_strncat: already overflowed" );
	}
	Q_strncpyz( dest + l1, src, size - l1 );
}

// never goes past bounds or leaves without a terminating 0, inserts string at front position
void Q_strfrontcat( char *dest, int size, const char *src ) {
	int		ld;
	int		ls;

	ld = strlen( dest );
	ls = strlen( src );

	if ( ld + ls >= size ) {
		Com_Error( ERR_FATAL, "Q_strpushfront: overflowed" );
	}
	memmove(dest + ls, dest, ld +1);
	memcpy(dest, src, ls);
}

/*
=============
Q_strlcat

Same like strcat but with an additional copylimit parameter
=============
*/
void Q_strlcat( char *dest, size_t size, const char *src, int cpylimit)
{
	int	l1;

	l1 = strlen(dest);
	if ( l1 >= size )
	{
		return;
//		Com_Error( ERR_FATAL, "Q_strlcat: already overflowed" );
	}

	if(cpylimit >= (size - l1) || cpylimit < 0)
	{
		cpylimit = size - l1 - 1;
	}

	memcpy(dest + l1, src, cpylimit);
	dest[l1 + cpylimit] = 0;
}

/*
=============
Q_strrepl
=============
*/
void Q_strnrepl( char *dest, size_t size, const char *src, const char* find, const char* replacement)
{
    char* new;
    *dest = 0;

    int findlen = strlen(find);

    while((new = strstr(src, find)) != NULL)
    {
        Q_strlcat(dest, size, src, new - src);
        Q_strlcat(dest, size, replacement, -1);
        src = &new[findlen];
    }
    Q_strlcat(dest, size, src, -1);
}


/*
* Find the first occurrence of find in s.
*/
const char *Q_stristr( const char *s, const char *find)
{
  char c, sc;
  size_t len;

  if ((c = *find++) != 0)
  {
    if (c >= 'a' && c <= 'z')
    {
      c -= ('a' - 'A');
    }
    len = strlen(find);
    do
    {
      do
      {
        if ((sc = *s++) == 0)
          return NULL;
        if (sc >= 'a' && sc <= 'z')
        {
          sc -= ('a' - 'A');
        }
      } while (sc != c);
    } while (Q_stricmpn(s, find, len) != 0);
    s--;
  }
  return s;
}


int  Q_strichr( const char *s, char find)
{
  char sc;
  int i = 0;

    if (find >= 'a' && find <= 'z')
    {
      find -= ('a' - 'A');
    }

    while(qtrue)
    {
        if ((sc = *s++) == 0)
          return -1;

        if(sc >= 'a' && sc <= 'z')
        {
          sc -= ('a' - 'A');
        }
        if(sc == find)
            return i;

        i++;
    }

    return -1;
}




int Q_PrintStrlen( const char *string ) {
	int			len;
	const char	*p;

	if( !string ) {
		return 0;
	}

	len = 0;
	p = string;
	while( *p ) {
		if( Q_IsColorString( p ) ) {
			p += 2;
			continue;
		}
		p++;
		len++;
	}

	return len;
}


char *Q_CleanStr( char *string ) {
	char*	d;
	char*	s;
	unsigned int	c;

	s = string;
	d = string;
	while ((c = (byte)*s) != 0 ) {
		if ( Q_IsColorString( s ) ) {
			s++;
		}
		else if ( c >= 0x20 ) {
			*d++ = c;
		}
		s++;
	}
	*d = '\0';

	return string;
}

int Q_CountChar(const char *string, char tocount)
{
	int count;

	for(count = 0; *string; string++)
	{
		if(*string == tocount)
			count++;
	}

	return count;
}

int QDECL Com_sprintf(char *dest, int size, const char *fmt, ...)
{
	int		len;
	va_list		argptr;

	va_start (argptr,fmt);
	len = Q_vsnprintf(dest, size, fmt, argptr);
	va_end (argptr);

	if(len >= size)
		Com_Printf(CON_CHANNEL_SYSTEM,"Com_sprintf: Output length %d too short, require %d bytes.\n", size, len + 1);

	return len;
}

int Com_sprintfPos(char *dest, const int destSize, int *destPos, const char *fmt, ...)
{
  char *destMod;
  int destModSize;
  int len;
  va_list va;

  va_start(va, fmt);
  if ( *destPos < destSize - 1 )
  {
    destMod = &dest[*destPos];
    destModSize = destSize - *destPos;
    len = Q_vsnprintf(destMod, destSize - *destPos, fmt, va);
    destMod[destModSize - 1] = 0;
    if ( len != destModSize && len != -1 )
    {
      *destPos += len;
    }
    else
    {
      *destPos = destSize - 1;
    }
    return len;
  }
  return -1;
}


/*
============
va

does a varargs printf into a temp buffer, so I don't need to have
varargs versions of all text functions.
 ============
*/

/***********
 See q_shared.h for details.
 ***********/


char* QDECL va_replacement(char *dest, int size, const char *fmt, ...)
{
	int		len;
	va_list	argptr;

	va_start (argptr,fmt);
	len = Q_vsnprintf(dest, size, fmt, argptr);
	va_end (argptr);

	if(len >= size)
		Com_Printf(CON_CHANNEL_SYSTEM,"Com_sprintf: Output length %d too short, require %d bytes.\n", size, len + 1);

	return dest;
}


/*
============
Com_TruncateLongString

Assumes buffer is atleast TRUNCATE_LENGTH big
============
*/
void Com_TruncateLongString( char *buffer, const char *s )
{
	int length = strlen( s );

	if( length <= TRUNCATE_LENGTH )
		Q_strncpyz( buffer, s, TRUNCATE_LENGTH );
	else
	{
		Q_strncpyz( buffer, s, ( TRUNCATE_LENGTH / 2 ) - 3 );
		Q_strncat( buffer, TRUNCATE_LENGTH, " ... " );
		Q_strncat( buffer, TRUNCATE_LENGTH, s + length - ( TRUNCATE_LENGTH / 2 ) + 3 );
	}
}





/*
=====================================================================

  INFO STRINGS

=====================================================================
*/


/*
==================
Info_Validate

Some characters are illegal in info strings because they
can mess up the server's parsing
==================
*/
qboolean Info_Validate( const char *s ) {
	if ( strchr( s, '\"' ) ) {
		return qfalse;
	}
	if ( strchr( s, ';' ) ) {
		return qfalse;
	}
	return qtrue;
}


/*
===================
Info_RemoveKey
===================
*/
void Info_RemoveKey( char *s, const char *key ) {
	char	*start;
	char	pkey[BIG_INFO_KEY];
	char	value[BIG_INFO_VALUE];
	char	*o;

	if ( strlen( s ) >= BIG_INFO_STRING ) {
		Com_Printf(CON_CHANNEL_SYSTEM,  "Error: Info_RemoveKey: oversize infostring\n" );
	}

	if (strchr (key, '\\')) {
		return;
	}

	while (1)
	{
		start = s;
		if (*s == '\\')
			s++;
		o = pkey;
		while (*s != '\\')
		{
			if (!*s)
				return;
			*o++ = *s++;
		}
		*o = 0;
		s++;

		o = value;
		while (*s != '\\' && *s)
		{
			if (!*s)
				return;
			*o++ = *s++;
		}
		*o = 0;

		if (!strcmp (key, pkey) )
		{
			Q_bstrcpy(start, s);	// remove this part - Bugfix using Q_bstrcpy() instaed strcpy()
			return;
		}

		if (!*s)
			return;
	}

}



/*
===============
Info_ValueForKey

Searches the string for the given
key and returns the associated value, or an empty string.
FIXME: overflow check?
===============
*/
char *Info_ValueForKey( const char *s, const char *key ) {
	char	pkey[BIG_INFO_KEY];
	static	char value[2][MAX_INFO_VALUE];	// use two buffers so compares
						// work without stomping on each other
	static	int	valueindex = 0;
	char	*o;

	if ( !s || !key ) {
		return "";
	}

	valueindex ^= 1;
	if (*s == '\\')
		s++;
	while (1)
	{
		o = pkey;
		while (*s != '\\')
		{
			if (!*s)
				return "";

			*o++ = *s++;

			if(o +1 >= pkey + sizeof(pkey))
			{
				Com_Printf(CON_CHANNEL_SYSTEM,  "Error: Info_ValueForKey: oversize key in infostring\n" );
				return "";
			}
		}
		*o = 0;
		s++;

		o = value[valueindex];

		while (*s != '\\' && *s)
		{
			*o++ = *s++;

			if(o +1 >= value[valueindex] + sizeof(value[0]))
			{
				Com_Printf(CON_CHANNEL_SYSTEM,  "Error: Info_ValueForKey: oversize key in infostring\n" );
				return "";
			}
		}
		*o = 0;

		if (!Q_stricmp (key, pkey) )
			return value[valueindex];

		if (!*s)
			break;
		s++;
	}

	return "";
}


/*
==================
Info_SetValueForKey

Changes or adds a key/value pair
==================
*/
void Info_SetValueForKey( char *s, const char *key, const char *value ) {
	char	newi[MAX_INFO_STRING];

	if ( strlen( s ) >= MAX_INFO_STRING ) {
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Unexpected error - Info_SetValueForKey: oversize infostring\n" );
	}

	if (strchr (key, '\\'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use keys with a \\\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad key: %s value: %s\n", key, value);
		return;
	}

	if (strchr (value, '\\'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use values with a \\\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad value: %s key: %s\n", value, key);
		return;
	}

	if (strchr (key, ';'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use keys with a semicolon\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad key: %s value: %s\n", key, value);
		return;
	}

	if (strchr (value, ';'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use values with a semicolon\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad value: %s key: %s\n", value, key);
		return;
	}

	if (strchr (key, '\"'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use keys with a \"\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad key: %s value: %s\n", key, value);
		return;
	}
	if (strchr (value, '\"'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use values with a \"\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad value: %s key: %s\n", value, key);
		return;
	}


	Info_RemoveKey (s, key);
	if (!value || !strlen(value))
		return;

	Com_sprintf (newi, sizeof(newi), "\\%s\\%s", key, value);

	if (strlen(newi) + strlen(s) > MAX_INFO_STRING)
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Info string length exceeded\n");
		return;
	}

	strcat (newi, s);
	strcpy (s, newi);
}



void BigInfo_SetValueForKey( char *s, const char *key, const char *value ) {
	char	newi[BIG_INFO_STRING];

	if ( strlen( s ) >= BIG_INFO_STRING ) {
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Unexpected error - Info_SetValueForKey: oversize infostring\n" );
	}

	if (strchr (key, '\\'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use keys with a \\\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad key: %s value: %s\n", key, value);
		return;
	}

	if (strchr (value, '\\'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use values with a \\\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad value: %s key: %s\n", value, key);
		return;
	}

	if (strchr (key, ';'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use keys with a semicolon\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad key: %s value: %s\n", key, value);
		return;
	}

	if (strchr (value, ';'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use values with a semicolon\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad value: %s key: %s\n", value, key);
		return;
	}

	if (strchr (key, '\"'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use keys with a \"\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad key: %s value: %s\n", key, value);
		return;
	}
	if (strchr (value, '\"'))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Can't use values with a \"\n");
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Bad value: %s key: %s\n", value, key);
		return;
	}


	Info_RemoveKey (s, key);
	if (!value || !strlen(value))
		return;

	Com_sprintf (newi, sizeof(newi), "\\%s\\%s", key, value);

	if (strlen(newi) + strlen(s) > BIG_INFO_STRING)
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Info string length exceeded\n");
		return;
	}

	strcat (newi, s);
	strcpy (s, newi);
}



void Info_Print( const char *s ) {
	char	key[BIG_INFO_KEY];
	char	value[BIG_INFO_VALUE];
	char	*o;
	int		l;

	if (*s == '\\')
		s++;
	while (*s)
	{
		o = key;
		while (*s && *s != '\\')
			*o++ = *s++;

		l = o - key;
		if (l < 20)
		{
			Com_Memset (o, ' ', 20-l);
			key[20] = 0;
		}
		else
			*o = 0;
		Com_Printf(CON_CHANNEL_SYSTEM,"%s ", key);

		if (!*s)
		{
			Com_Printf(CON_CHANNEL_SYSTEM,"MISSING VALUE\n");
			return;
		}

		o = value;
		s++;
		while (*s && *s != '\\')
			*o++ = *s++;
		*o = 0;

		if (*s)
			s++;
		Com_Printf(CON_CHANNEL_SYSTEM,"%s\n", value);
	}
}


static void Info_EncodeChar(unsigned char chr, unsigned char* encodedchr)
{
	Com_sprintf((char*)encodedchr, 0x7fffffff, "%%%X", (char)chr);
}

static void Info_Encode(const char* inurl, int encodelen, char* outencodedurl, int len)
{
	int i, y;
	unsigned char* url = (unsigned char*)inurl;
	unsigned char* encodedurl = (unsigned char*)outencodedurl;

	for(i = 0, y = 0; y < len -4 && i < encodelen; i++)
	{
		switch(url[i])
		{
			case '\\':
			case '\"':
			case ';':
				Info_EncodeChar(url[i], &encodedurl[y]);
				y += 3;
				break;

			default:
				if(url[i] < 0x20)
				{
					Info_EncodeChar(url[i], &encodedurl[y]);
					y += 3;
				}else{
					encodedurl[y] = url[i];
					++y;
				}
				break;
		}
	}
	encodedurl[y] = '\0';
}

char Info_DecodeChar(unsigned char* encodedchr)
{
	char decoded;
	char encoded[4];

        encoded[0] = encodedchr[0];
        encoded[1] = encodedchr[1];
        encoded[2] = encodedchr[2];
        encoded[3] = encodedchr[3];

        if(encoded[0] != '%'){
            return ' ';
	}

	decoded = strtol(&encoded[1], NULL, 16);
        return decoded;
}

int Info_Decode(const char* inurl, char* outdecodedurl, int buflen)
{
	int i, y, k;

	unsigned char* url = (unsigned char*)inurl;
	unsigned char* decodedurl = (unsigned char*)outdecodedurl;

	for(i = 0, y = 0; url[y] && i < buflen; i++)
	{
		if(url[y] == '%')
		{
			decodedurl[i] = Info_DecodeChar(&url[y]);

			for(k = 0; url[y] && k < 3; ++k)
				++y;
		}else{
			decodedurl[i] = url[y];
			++y;
		}
	}
	return i;
}

void Info_SetEncodedValueForKey( char *s, const char *key, const char *value, int len )
{
    char codedvalue[BIG_INFO_STRING];

    Info_Encode(value, len, codedvalue, sizeof(codedvalue));

    BigInfo_SetValueForKey( s, key, codedvalue );
}

int Info_DecodedValueForKey( const char *s, const char *key, char *out, int outbuflen)
{
    const char* value;

    value = Info_ValueForKey( s, key );
    return Info_Decode(value, out, outbuflen);
}


/*
===============
SV_ExpandNewlines

Converts newlines to "\n" so a line prints nicer
===============
*/
char	*SV_ExpandNewlines( char *in ) {
	static	char	string[1024];
	int		l;

	l = 0;
	while ( *in && l < sizeof(string) - 3 ) {
		if ( *in == '\n' ) {
			string[l++] = '\\';
			string[l++] = 'n';
		} else {
			string[l++] = *in;
		}
		in++;
	}
	string[l] = 0;

	return string;
}





/*
============
Q_strchrrepl
Parses the string for a given char and replace it with a replacement char
============
*/
void Q_strchrrepl(char *string, char torepl, char repl){
    for(;*string != 0x00;string++){
	if(*string == torepl){
	    *string = repl;
	}
    }
}


//============================================================================


/*****************************************************
*** Parsing files ***
*****************************************************/
static qboolean parse_inquotes = qfalse;
static char* parse_lastpos;

void Com_ParseReset(){

    parse_inquotes = qfalse;
    parse_lastpos = NULL;
}

char* Com_ParseGetToken(char* line){

    if(parse_lastpos == line){

        if(parse_inquotes){//In case we are inside quotes step until the end quote forward

            do{
                line++;
            }while(*line != '"' && *line != ';' && *line != '\n' && *line != '\0');

            parse_inquotes = qfalse;
        }

        while(*line != ' '){
            if(*line == '\0' || *line == '\n'){
                parse_inquotes = qfalse;
                parse_lastpos = NULL;
                return NULL;
            }
            line++;
        }


    }

    while(*line == ' ' || *line == ';'){
        if(*line == '\0' || *line == '\n'){
            parse_inquotes = qfalse;
            parse_lastpos = NULL;
            return NULL;
        }
        line++;
    }

    if(*line == '"'){ //Check if the next token is the beginning of a quoted string
        parse_inquotes = qtrue;
        line++;	//Move over the quotes character to the 1st real character
    }


    if(*line == '\0' || *line == '\n'){
        parse_inquotes = qfalse;
        parse_lastpos = NULL;
        return NULL;
    }

    parse_lastpos = line;
    return line;
}


int Com_ParseTokenLength(char* token){
    if(token == NULL) return 0;

    char* pos = token;
    int i = 0;
    if(parse_inquotes){//In case we are inside quotes
        while(*pos != '"' && *pos != ';' && *pos != '\n' && *pos != '\0'){
            pos++;
            i++;
        }

    }else{//Default case

        while(*pos != ' ' && *pos != ';' && *pos != '\n' && *pos != '\0'){
            pos++;
            i++;
        }
    }
    return i;
}



qboolean isNumeric(const char* string, int size){
    const char* ptr;
    int i;

    if(size > 0){ //If we have given a length compare the string limited by the length

        for(i = 0, ptr = string; i < size; i++, ptr++){
            if(i == 0 && *ptr == '-') continue;
            if(*ptr < '0' || *ptr > '9') return qfalse;
        }

    } else { //Search until the 1st space or null otherwise

        for(i = 0, ptr = string; *ptr != ' '; i++, ptr++){
            if(i == 0 && *ptr == '-') continue;
            if(!*ptr && i > 0 && ptr[-1] != '-') return qtrue;
            if(*ptr < '0' || *ptr > '9') return qfalse;
        }
    }

    return qtrue;
}




/*
 =====================================================================

 Functions to operate onto a stack in lifo mode

 =====================================================================
 */

void stack_init(void *array[], size_t size){
    array[0] = (void*)((size_t)array+size );	//Moving the stackpointer in array[0] to top of stack
}

qboolean stack_push(void *array[], int size, void* pointer){
	void** base;

	if(array[0] == &array[1]) return qfalse;	//Stackoverflow
	array[0] -= sizeof(void*);

	base = *array;
	*base = pointer;
	return qtrue;
}

void* stack_pop(void *array[], int size){

    void** base;

    if(array[0] < (void*)((size_t)array+size )){
        base = *array;
        array[0] += sizeof(void*);
        return *base;
    }
    return NULL;	//Stack reached bottom
}


/*
 =====================================================================

 Writing XML STRINGS

 =====================================================================
 */



void XML_AppendToBuffer( xml_t *base, const char* s )
{
    int len = strlen(s);

    if(len + base->bufposition + 1 >= base->buffersize )
    {
        Com_Printf(CON_CHANNEL_SYSTEM,  "Error: XML_AppendToBuffer: Overflow!\n" );
        return;
    }
    Com_Memcpy(base->buffer + base->bufposition, s, len);
    base->bufposition += len;
    base->buffer[base->bufposition] = '\0';
}


/*
 ==================
 XML_Init

 Changes or adds a key/value pair
 ==================
 */

void XML_Init( xml_t *base, char *s, int size, char* encoding) {

	Com_Memset(base,0,sizeof(xml_t));
	char version[1024];

	base->buffer = s;
	base->bufposition = 0;
	base->buffersize = size;
	base->encoding = encoding;
	stack_init(base->stack,sizeof(base->stack));
	if ( 256 > size ) {
		Com_Printf(CON_CHANNEL_SYSTEM,  "Error: XML_Init: too small infostring" );
	}
	Com_sprintf(version, sizeof(version), "<?xml version=\"1.0\" encoding=\"%s\"?>\n\0", base->encoding);
	XML_AppendToBuffer( base, version );
}


/*
 ==================
 XML_Escape
 Changes or adds a key/value pair
 ==================
 */
void XML_Escape( char* buffer, size_t size, const char* string){
	char* basebuf = buffer;

	for(; (buffer - basebuf + 7) < size && *string != 0; string++){

	    switch(*string){

			case '<':
				strcpy(buffer, "&lt;");
				buffer += 4;
				break;
			case '>':
				strcpy(buffer, "&gt;");
				buffer += 4;
				break;
			case '&':
				strcpy(buffer, "&amp;");
				buffer += 5;
				break;
			case '"':
				strcpy(buffer, "&quot;");
				buffer += 6;
				break;
			case '\'':
				strcpy(buffer, "&apos;");
				buffer += 6;
				break;
			default:
				if((byte)*string >= ' '){
					*buffer = *string;
					buffer++;
				}
		}
	}
	*buffer = 0;
}



/*
 ==================
 XML_OpenTag

 Changes or adds a key/value pair
 ==================
 */
qboolean QDECL XML_OpenTag( xml_t *base, char* root, int count,... ) {

	char* key;
	char* value;
	char buffer[8192];
	char smallbuff[512];
	int i;

	buffer[0] = 0;
	if(base->parents*6 +1 >= sizeof(smallbuff))
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"^3Warning: XML_OpenTag would overflow. Too many open tags\n");
		return qfalse;
	}
	Com_Memset(&smallbuff[1],' ',base->parents*6);
	smallbuff[0] = '\n';
	smallbuff[base->parents*6] = 0;
	XML_AppendToBuffer( base, smallbuff );
	Com_sprintf(buffer,sizeof(buffer),"<%s",root);

	if(!stack_push(base->stack,sizeof(base->stack), base->buffer + base->bufposition + 1)){
		Com_Printf(CON_CHANNEL_SYSTEM,"^3Warning: XML_OpenTag called without prior initialization\n");
		return qfalse;
	}

	XML_AppendToBuffer( base, buffer );
	va_list argptr;
	va_start(argptr, count);
	for(i=0;i < count;i++){
	    key = va_arg(argptr, char*);
	    value = va_arg(argptr, char*);
	    XML_Escape(smallbuff,sizeof(smallbuff),value);

		Com_sprintf(buffer,sizeof(buffer)," %s=\"%s\"",key,smallbuff);

	    XML_AppendToBuffer( base, buffer );
	}
	va_end(argptr);
	XML_AppendToBuffer( base, ">" );
	base->parents++;
	base->last = qtrue;
	return qtrue;
}

/*
 ==================
 XML_CloseTag

 Changes or adds a key/value pair
 ==================
 */
void XML_CloseTag(xml_t *base) {

	char buffer[256];
	char outbuffer[256];
	char preoffset[128];
	int i;
	char*	root;
	char*	stringptr = buffer;

	if(base->parents == 0)
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"XML_CloseTag: Invalid close attempt in XML. Attempt to close more elements than you have opened.\n");
		Com_Printf(CON_CHANNEL_SYSTEM,"Printing up to 960 recent characters of XML as debug:\n");
		if(base->bufposition > 960)
		{
			Com_Printf(CON_CHANNEL_SYSTEM,"%s\n", &base->buffer[base->bufposition -960]);
		}else{
			Com_Printf(CON_CHANNEL_SYSTEM,"%s\n", base->buffer);
		}
		Com_PrintError(CON_CHANNEL_SYSTEM,"You have errors in your XML code\n");
		return;
	}
	base->parents--;
	Com_Memset(&preoffset[1],' ',base->parents*6);
	preoffset[base->parents*6] = 0;
	preoffset[(base->parents*6)+1] = 0;

	buffer[0] = '\0';

	root = stack_pop(base->stack,sizeof(base->stack));
	for(i=0 ;*root != ' ' && *root != 0 && *root != '>' && i < sizeof(buffer); stringptr++, root++, i++) *stringptr = *root;
	*stringptr = 0;
	if(base->last){
		Com_sprintf(outbuffer,sizeof(outbuffer),"</%s>",buffer);
	}else{
		Com_sprintf(outbuffer,sizeof(outbuffer),"\n%s</%s>",&preoffset[1],buffer);
	}

	XML_AppendToBuffer( base, outbuffer );
	base->last = qfalse;
}


//====================================================================

/*
==================
Com_CharIsOneOfCharset
==================
*/
static qboolean Com_CharIsOneOfCharset( char c, char *set )
{
	int i;

	for( i = 0; i < strlen( set ); i++ )
	{
		if( set[ i ] == c )
			return qtrue;
	}

	return qfalse;
}

/*
==================
Com_SkipCharset
==================
*/
char *Com_SkipCharset( char *s, char *sep )
{
	char	*p = s;

	while( p )
	{
		if( Com_CharIsOneOfCharset( *p, sep ) )
			p++;
		else
			break;
	}

	return p;
}

/*
==================
Com_SkipTokens
==================
*/
char *Com_SkipTokens( char *s, int numTokens, char *sep )
{
	int		sepCount = 0;
	char	*p = s;

	while( sepCount < numTokens )
	{
		if( Com_CharIsOneOfCharset( *p++, sep ) )
		{
			sepCount++;
			while( Com_CharIsOneOfCharset( *p, sep ) )
				p++;
		}
		else if( *p == '\0' )
			break;
	}

	if( sepCount == numTokens )
		return p;
	else
		return s;
}



char* Q_BitConv(int val){

	int i, j;
	static char buf[40];
	memset(buf,'?',sizeof(buf));

	for(j = 0, i = 38; i >= 0; i--){

		if((i+1) % 5 == 0 && i != 38 && i != 0){
			buf[i] = ' ';
		}else if(val & 1 << j){
			buf[i] = '1';
			j++;
		}else{
			buf[i] = '0';
			j++;
		}
	}
	buf[39] = 0;
	return buf;
}

/*
==================
COM_DefaultExtension
==================
*/
void COM_DefaultExtension( char *path, int maxSize, const char *extension ) {
	char oldPath[MAX_QPATH];
	char    *src;

//
// if path doesn't have a .EXT, append extension
// (extension should include the .)
//
	src = path + strlen( path ) - 1;

	while ( *src != '/' && src != path ) {
		if ( *src == '.' ) {
			return;                 // it has an extension
		}
		src--;
	}

	Q_strncpyz( oldPath, path, sizeof( oldPath ) );
	Com_sprintf( path, maxSize, "%s%s", oldPath, extension );
}

qboolean I_IsEqualUnitWSpace(char *cmp1, char *cmp2)
{

	while ( 1 )
	{
		if ( !(*cmp1) || !(*cmp2) )
			break;

		if ( *cmp1 == ' ' || *cmp2 == ' ' )
			break;

		if ( *cmp1 != *cmp2 )
			return qfalse;

		cmp1++;
		cmp2++;
	}

	if ( *cmp1 && *cmp1 != ' ')
	{
		return qfalse;
	}
	if ( *cmp2 && *cmp2 != ' ')
	{
		return qfalse;
	}

	return 1;
}

unsigned char I_CleanChar(unsigned char in)
{
  if(in == 146)
    return 39;

  return in;
}


/*
=====================================================================

 Functions to verify the variable type of string

=====================================================================
*/



qboolean isFloat(const char* string, int size)
{
    const char* ptr;
    int i;
    qboolean dot = qfalse;
    qboolean sign = qfalse;
    qboolean whitespaceended = qfalse;

    if(size == 0) //If we have given a length compare the whole string
        size = 0x10000;

    for(i = 0, ptr = string; i < size && *ptr != '\0' && *ptr != '\n'; i++, ptr++){

        if(*ptr == ' ')
        {
            if(whitespaceended == qfalse)
                continue;
            else
                return qtrue;
        }
        whitespaceended = qtrue;

        if(*ptr == '-' && sign ==0)
        {
            sign = qtrue;
            continue;
        }
        if(*ptr == '.' && dot == 0)
        {
            dot = qtrue;
            continue;
        }
        if(*ptr < '0' || *ptr > '9') return qfalse;
    }
    return qtrue;
}


qboolean isInteger(const char* string, int size)
{
    const char* ptr;
    int i;
    qboolean sign = qfalse;
    qboolean whitespaceended = qfalse;

    if(size == 0) //If we have given a length compare the whole string
        size = 0x10000;

    for(i = 0, ptr = string; i < size && *ptr != '\0' && *ptr != '\n' && *ptr != '\r'; i++, ptr++){

        if(*ptr == ' ')
        {
            if(whitespaceended == qfalse)
                continue;
            else
                return qtrue;
        }
        whitespaceended = qtrue;

        if(*ptr == '-' && sign ==0)
        {
            sign = qtrue;
            continue;
        }
        if(*ptr < '0' || *ptr > '9')
	{
		return qfalse;
	}
    }
    return qtrue;
}

qboolean isVector(const char* string, int size, int dim)
{
    const char* ptr;
    int i;

    if(size == 0) //If we have given a length compare the whole string
        size = 0x10000;

    for(i = 0, ptr = string; i < size && *ptr != '\0' && *ptr != '\n' && dim > 0; i++, ptr++){

        if(*ptr == ' ')
        {
            continue;
        }
        dim = dim -1;

        if(isFloat(ptr, size -i) == qfalse)
            return qfalse;

        while(*ptr != ' ' && *ptr != '\0' && *ptr != '\n' && i < size)
        {
            ptr++; i++;
        }

        if(*ptr != ' ')
        {
            break;
        }

    }
    if(dim != 0)
        return qfalse;

    return qtrue;
}


qboolean strToVect(const char* string, float *vect, int dim)
{
    const char* ptr;
    int i;

    for(ptr = string, i = 0; *ptr != '\0' && *ptr != '\n' && i < dim; ptr++){

        if(*ptr == ' ')
        {
            continue;
        }

        vect[i] = atof(ptr);

        i++;

        while(*ptr != ' ' && *ptr != '\0' && *ptr != '\n')
        {
            ptr++;
        }


        if(*ptr != ' ')
        {
            break;
        }

    }
    if(i != dim)
        return qfalse;

    return qtrue;
}


int Q_strLF2CRLF(const char* input, char* output, int outputlimit )
{
	int i, y;
	for(i = 0, y = 0; input[i] && y < outputlimit -1; ++i, ++y)
	{
			//turning \n for windows to \r\n
			if(input[i] == '\n')
			{
				output[y] = '\r';
				++y;
			}
			output[y] = input[i];
	}
	output[y] = 0;
	return y;
}



int COM_Compress( char *data_p ) {
	char *datai, *datao;
	int c, size;

	size = 0;
	datai = datao = data_p;
	if ( datai ) {
		while ( ( c = *datai ) != 0 ) {
			if ( c == '\r' || c == '\n' ) {
				*datao = c;
				datao++;
				datai++;
				size++;
				// skip double slash comments
			} else if ( c == '/' && datai[1] == '/' ) {
				while ( *datai && *datai != '\n' ) {
					datai++;
				}
				// skip /* */ comments
			} else if ( c == '/' && datai[1] == '*' ) {
				while ( *datai && ( *datai != '*' || datai[1] != '/' ) )
				{
					datai++;
				}
				if ( *datai ) {
					datai += 2;
				}
			} else {
				*datao = c;
				datao++;
				datai++;
				size++;
			}
		}
	}
	*datao = 0;
	return size;
}

void Com_Memset(void* p, byte v, int len)
{
    memset(p, v, len);
}

void Com_Memcpy(void* d, const void* s, int len)
{
    memcpy(d, s, len);
}


#ifndef BSPC

char *va(const char *format, ...)
{
  struct va_info_t *info;
  int len;
  int index;
  va_list va;

  va_start(va, format);
  info = Sys_GetValue(1);
  index = info->index;
  info->index = (info->index + 1) % MAX_VASTRINGS;
  len = Q_vsnprintf(info->va_string[index], sizeof(info->va_string[0]), format, va);
  info->va_string[index][1023] = 0;
  if ( len < 0 || len >= (unsigned int)sizeof(info->va_string[0]) )
  {
    Com_Error(ERR_DROP, "Attempted to overrun string in call to va(): \x27%s\x27", info->va_string[index]);
  }
  return info->va_string[index];
}

#endif

bool __cdecl Com_IsLegacyXModelName(const char *name)
{
  return !Q_stricmpn(name, "xmodel", 6) && (name[6] == '/' || name[6] == '\\');
}

/*
int __cdecl KeyValueToField(char *pStruct, cspField_t *pField, const char *pszKeyValue, const int iMaxFieldTypes, int (__cdecl *parseSpecialFieldType)(char *, const char *, const int, const int), void (__cdecl *parseStrcpy)(char *, const char *))
{
  char name;
  char dest;

  if ( pField->iFieldType < 15 )
  {
    switch ( pField->iFieldType )
    {
      case 0:
        parseStrcpy(&pStruct[pField->iOffset], pszKeyValue);
        return 1;
      case 1:
        Q_strncpyz(&pStruct[pField->iOffset], pszKeyValue, 1024);
        return 1;
      case 2:
        Q_strncpyz(&pStruct[pField->iOffset], pszKeyValue, 64);
        return 1;
      case 3:
        Q_strncpyz(&pStruct[pField->iOffset], pszKeyValue, 256);
        return 1;
      case 4:
        *(uint32_t *)&pStruct[pField->iOffset] = atoi(pszKeyValue);
        return 1;
      case 5:
        pStruct[pField->iOffset] = atoi(pszKeyValue) != 0;
        return 1;
      case 6:
        *(uint32_t *)&pStruct[pField->iOffset] = atoi(pszKeyValue) != 0;
        return 1;
      case 7:
        *(float *)&pStruct[pField->iOffset] = atof(pszKeyValue);
        return 1;
      case 8:
        *(uint32_t *)&pStruct[pField->iOffset] = (signed int)(atof(pszKeyValue) * 1000.0);
        return 1;
      case 0xA:
        Q_strncpyz(&dest, pszKeyValue, 0x2000);
        *(uint32_t *)&pStruct[pField->iOffset] = R_RegisterModel(&dest);
        if ( *(uint32_t *)&pStruct[pField->iOffset] )
        {
          return 1;
        }
        return 0;
      case 0xB:
      case 0xC:
      case 9:
        return 1;
      case 0xD:
        Q_strncpyz(&name, pszKeyValue, 245);
        *(uint32_t *)&pStruct[pField->iOffset] = PhysPreset_Register(&name);
        break;
      case 0xE:
//        *(uint16_t *)&pStruct[pField->iOffset] = SL_GetLowercaseString(pszKeyValue, 0, 0);
        *(uint16_t *)&pStruct[pField->iOffset] = SL_GetLowercaseString(pszKeyValue, 0);

        break;
      default:
        if ( pField->iFieldType >= 0 )
        {
          assertx(0, "ParseConfigStringToStruct is out of sync with the csParseFieldType_t enum list\n");
        }
        else
        {
          assertx(0, va("Negative field type %i given to ParseConfigStringToStruct\n", pField->iFieldType));
        }
        break;
    }
    return 1;
  }
  if ( iMaxFieldTypes > 0 && pField->iFieldType < iMaxFieldTypes )
  {
    assert(parseSpecialFieldType != NULL);
    if ( !parseSpecialFieldType(pStruct, pszKeyValue, pField->iFieldType, pField->iOffset) )
    {
      return 0;
    }
    return 1;
  }
  assertx(0, va("Bad field type %i\n", pField->iFieldType));
  Com_Error(ERR_DROP, "Bad field type %i\n", pField->iFieldType);
  return 0;
}
*/
int __cdecl KeyValueToField(char *pStruct, cspField_t *pField, const char *pszKeyValue, const int iMaxFieldTypes, int (__cdecl *parseSpecialFieldType)(char *, const char *, const int, const int), void (__cdecl *parseStrcpy)(char *, const char *))
{
  char dest[0x2000];

  if ( pField->iFieldType <= 11 )
  {
    switch ( pField->iFieldType )
    {
      case 0:
        parseStrcpy(&pStruct[pField->iOffset], pszKeyValue);
        return 1;
      case 1:
        Q_strncpyz(&pStruct[pField->iOffset], pszKeyValue, 1024);
        return 1;
      case 2:
        Q_strncpyz(&pStruct[pField->iOffset], pszKeyValue, 64);
        return 1;
      case 3:
        Q_strncpyz(&pStruct[pField->iOffset], pszKeyValue, 256);
        return 1;
      case 4:
        *(uint32_t *)&pStruct[pField->iOffset] = atoi(pszKeyValue);
        return 1;
      case 5:
        *(uint32_t *)&pStruct[pField->iOffset] = atoi(pszKeyValue) != 0;
        return 1;
      case 6:
        *(float *)&pStruct[pField->iOffset] = atof(pszKeyValue);
        return 1;
      case 7:
        *(uint32_t *)&pStruct[pField->iOffset] = (signed int)(atof(pszKeyValue) * 1000.0);
        return 1;
      case 8:
        Q_strncpyz(dest, pszKeyValue, sizeof(dest));
        *(uint32_t *)&pStruct[pField->iOffset] = (uint32_t)FX_Register(dest);
        return 1;
      case 9:
        Q_strncpyz(dest, pszKeyValue, sizeof(dest));
        *(uint32_t *)&pStruct[pField->iOffset] = (uint32_t)R_RegisterModel(dest);
        if ( *(uint32_t *)&pStruct[pField->iOffset] )
        {
          return 1;
        }
        return 0;
      case 10:
        Q_strncpyz(dest, pszKeyValue, sizeof(dest));
        *(uint32_t *)&pStruct[pField->iOffset] = (uint32_t)Material_RegisterHandle(dest, 0);
#ifdef DEDICATEDONLY
		return 1;
#else
        if ( *(uint32_t *)&pStruct[pField->iOffset] || (com_dedicated && com_dedicated->integer))
        {
          return 1;
        }
        return 0;
#endif
      case 11:
        Q_strncpyz(dest, pszKeyValue, sizeof(dest));
        *(uint32_t *)&pStruct[pField->iOffset] = (uint32_t)Com_FindSoundAlias(dest);
        return 1;
      case 12:
        return 1;
      default:
        if ( pField->iFieldType >= 0 )
        {
          assertx(0, "ParseConfigStringToStruct is out of sync with the csParseFieldType_t enum list\n");
        }
        else
        {
          assertx(0, va("Negative field type %i given to ParseConfigStringToStruct\n", pField->iFieldType));
        }
        break;
    }
    return 1;
  }
  if ( iMaxFieldTypes > 0 && pField->iFieldType < iMaxFieldTypes )
  {
    assert(parseSpecialFieldType != NULL);
    if ( !parseSpecialFieldType(pStruct, pszKeyValue, pField->iFieldType, pField->iOffset) )
    {
      return 0;
    }
    return 1;
  }
  assertx(0, va("Bad field type %i\n", pField->iFieldType));
  Com_Error(ERR_DROP, "Bad field type %i\n", pField->iFieldType);
  return 0;
}



bool __cdecl ParseConfigStringToStruct(char *pStruct, cspField_t *pFieldList, const int iNumFields, const char *pszBuffer, const int iMaxFieldTypes, int (__cdecl *parseSpecialFieldType)(char *, const char *, const int, const int), void (__cdecl *parseStrCpy)(char *, const char *))
{
  char *pszKeyValue;
  char error;
  cspField_t *pField;
  int iField;

  error = 0;
  iField = 0;
  pField = pFieldList;
  while ( iField < iNumFields )
  {
    pszKeyValue = Info_ValueForKey(pszBuffer, pField->szName);
    if ( *pszKeyValue )
    {
      error |= KeyValueToField(pStruct, pField, pszKeyValue, iMaxFieldTypes, parseSpecialFieldType, parseStrCpy) == 0;
	}
    ++iField;
    ++pField;
  }
  return iField == iNumFields && !error;
}


const char *__cdecl Com_GetExtensionSubString(const char *filename)
{
  const char *substr;

  assert(filename);

  substr = 0;
  while ( *filename )
  {
    if ( *filename == '.' )
    {
      substr = filename;
    }
    else if ( *filename == '/' || *filename == '\\' )
    {
      substr = 0;
    }
    ++filename;
  }
  if ( !substr )
  {
    substr = filename;
  }
  return substr;
}


void __cdecl Com_StripExtension(const char *in, char *out)
{
  const char *extension;

  extension = Com_GetExtensionSubString(in);
  while ( in != extension )
  {
    *out++ = *in++;
  }
  *out = 0;
}


double __cdecl GetLeanFraction(const float fFrac)
{
  float af;

  af = fabs(fFrac);
  return (2.0 - af) * fFrac;
}

char __cdecl Q_CleanChar(char character)
{
  if ( character == 0x92 )
  {
    return '\'';
  }
  return character;
}


qboolean __cdecl I_iscsym(int c){
    if(c == '_' || Q_isalphanum( c ))
    {
        return qtrue;
    }
    return qfalse;
}


/*
============================================================================

					BYTE ORDER FUNCTIONS

============================================================================
*/

// can't just use function pointers, or dll linkage can
// mess up when qcommon is included in multiple places
static short ( *_BigShort )( short l );
static short ( *_LittleShort )( short l );
static int ( *_BigLong )( int l );
static int ( *_LittleLong )( int l );
static int64_t ( *_BigLong64 )( int64_t l );
static int64_t ( *_LittleLong64 )( int64_t l );
static float ( *_BigFloat )( float l );
static float ( *_LittleFloat )( float l );

short   ShortSwap( short l ) {
	byte b1,b2;

	b1 = l & 255;
	b2 = ( l >> 8 ) & 255;

	return ( b1 << 8 ) + b2;
}

short   ShortNoSwap( short l ) {
	return l;
}

int    LongSwap( int l ) {
	byte b1,b2,b3,b4;

	b1 = l & 255;
	b2 = ( l >> 8 ) & 255;
	b3 = ( l >> 16 ) & 255;
	b4 = ( l >> 24 ) & 255;

	return ( (int)b1 << 24 ) + ( (int)b2 << 16 ) + ( (int)b3 << 8 ) + b4;
}

int LongNoSwap( int l ) {
	return l;
}

int64_t Long64Swap( int64_t llv ) {
	byte result[8];
	byte* ll = (byte*)&llv;

	result[0] = ll[7];
	result[1] = ll[6];
	result[2] = ll[5];
	result[3] = ll[4];
	result[4] = ll[3];
	result[5] = ll[2];
	result[6] = ll[1];
	result[7] = ll[0];

	return *(int64_t*)result;
}

int64_t Long64NoSwap( int64_t ll ) {
	return ll;
}

float FloatSwap( float f ) {
	union
	{
		float f;
		byte b[4];
	} dat1, dat2;


	dat1.f = f;
	dat2.b[0] = dat1.b[3];
	dat2.b[1] = dat1.b[2];
	dat2.b[2] = dat1.b[1];
	dat2.b[3] = dat1.b[0];
	return dat2.f;
}

float FloatNoSwap( float f ) {
	return f;
}

/*
================
Swap_Init
================
*/
void Swap_Init( void ) {
	byte swaptest[2] = {1,0};

// set the byte swapping variables in a portable manner
	if ( *(short *)swaptest == 1 ) {
		_BigShort = ShortSwap;
		_LittleShort = ShortNoSwap;
		_BigLong = LongSwap;
		_LittleLong = LongNoSwap;
		_BigLong64 = Long64Swap;
		_LittleLong64 = Long64NoSwap;
		_BigFloat = FloatSwap;
		_LittleFloat = FloatNoSwap;
	} else
	{
		_BigShort = ShortNoSwap;
		_LittleShort = ShortSwap;
		_BigLong = LongNoSwap;
		_LittleLong = LongSwap;
		_BigLong64 = Long64NoSwap;
		_LittleLong64 = Long64Swap;
		_BigFloat = FloatNoSwap;
		_LittleFloat = FloatSwap;
	}

}

double __cdecl UnGetLeanFraction(const float fFrac)
{

  assert(fFrac >= 0);
  assert(fFrac <= 1.f);
  return 1.0 - sqrt(1.0 - fFrac);
}

