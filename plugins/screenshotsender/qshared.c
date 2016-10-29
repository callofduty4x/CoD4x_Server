/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm of the CoD4X-Team
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
#include <wchar.h>

#include "../pinc.h"
#include "q_shared.h"


short   ShortSwap (short l)
{
	byte    b1,b2;

	b1 = l&255;
	b2 = (l>>8)&255;

	return (b1<<8) + b2;
}

short	ShortNoSwap (short l)
{
	return l;
}

int    LongSwap (int l)
{
	byte    b1,b2,b3,b4;

	b1 = l&255;
	b2 = (l>>8)&255;
	b3 = (l>>16)&255;
	b4 = (l>>24)&255;

	return ((int)b1<<24) + ((int)b2<<16) + ((int)b3<<8) + b4;
}

int	LongNoSwap (int l)
{
	return l;
}

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




#ifdef _MSC_VER
/*
=============
Q_vsnprintf

Special wrapper function for Microsoft's broken _vsnprintf() function.
MinGW comes with its own snprintf() which is not broken.
=============
*/

int Q_vsnprintf(char *str, size_t size, const char *format, va_list ap)
{
	int retval;

	retval = _vsnprintf(str, size, format, ap);

	if(retval < 0 || retval == size)
	{
		// Microsoft doesn't adhere to the C99 standard of vsnprintf,
		// which states that the return value must be the number of
		// bytes written if the output string had sufficient length.
		//
		// Obviously we cannot determine that value from Microsoft's
		// implementation, so we have no choice but to return size.

		str[size - 1] = '\0';
		return size;
	}

	return retval;
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
	    Plugin_Error( P_ERROR_DISABLE, "Q_strncpyz: NULL dest" );
			return;
	}
	if ( !src ) {
		Plugin_Error( P_ERROR_DISABLE, "Q_strncpyz: NULL src" );
		return;
	}
	if ( destsize < 1 ) {
		Plugin_Error(P_ERROR_DISABLE,"Q_strncpyz: destsize < 1" );
		return;
	}

	strncpy( dest, src, destsize-1 );
  dest[destsize-1] = 0;
}

/*
=============
Q_strncpyzUni

Safe strncpy that ensures a trailing zero
=============
*/

void Q_strncpyzUni( wchar_t *dest, const wchar_t *src, int destsize ) {

	int numchars = destsize / sizeof(wchar_t);

	if (!dest ) {
	    Plugin_Error( P_ERROR_DISABLE, "Q_strncpyzUni: NULL dest" );
			return;
	}
	if ( !src ) {
		Plugin_Error( P_ERROR_DISABLE, "Q_strncpyUniz: NULL src" );
		return;
	}
	if ( numchars < 1 ) {
		Plugin_Error(P_ERROR_DISABLE,"Q_strncpyzUni: destsize < 1 wchar" );
		return;
	}

	wcsncpy( dest, src, numchars);
	dest[numchars -1] = 0;
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

char *Q_CleanStr( char *string ) {
	char*	d;
	char*	s;
	int		c;

	s = string;
	d = string;
	while ((c = *s) != 0 ) {
		if ( Q_IsColorString( s ) ) {
			s++;
		}
		else if ( c >= 0x20 && c <= 0xFE ) {
			*d++ = c;
		}
		s++;
	}
	*d = '\0';

	return string;
}


/*
=============
Q_bstrcpy

Same like strcpy but it does always a byte wise copying so source and destiantion can overlap
Use is to fix up a problem with Info_SetValueForKey() which happened on some newer machines
=============
*/


void Q_bstrcpy(char* dest, char* src){

    while(*src)
        *dest++ = *src++;

    *dest = 0;
}




// never goes past bounds or leaves without a terminating 0
void Q_strcat( char *dest, int size, const char *src ) {
	int		l1;

	l1 = strlen( dest );
	if ( l1 >= size ) {
		Plugin_Error( P_ERROR_DISABLE, "Q_strcat: already overflowed" );
		return;
	}
	Q_strncpyz( dest + l1, src, size - l1 );
}

// never goes past bounds or leaves without a terminating 0
void Q_strcatUni( wchar_t *dest, int size, const wchar_t *src ) {
	int		l1;
	int		numChar;

	numChar = size / sizeof(wchar_t);

	l1 = wcslen( dest );
	if ( l1 >= numChar ) {
		Plugin_Error( P_ERROR_DISABLE, "Q_strcatUni: already overflowed" );
		return;
	}
	Q_strncpyzUni( dest + l1, src, size - sizeof(wchar_t) * l1 );
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
//		Plugin_Error( P_ERROR_DISABLE, "Q_strlcat: already overflowed" );
	}

	if(cpylimit >= (size - l1) || cpylimit < 0)
	{
		cpylimit = size - l1 -1;
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



int QDECL Com_sprintf(char *dest, int size, const char *fmt, ...)
{
	int		len;
	va_list		argptr;

	va_start (argptr,fmt);
	len = Q_vsnprintf(dest, size, fmt, argptr);
	va_end (argptr);

	if(len >= size)
		Plugin_Printf("Com_sprintf: Output length %d too short, require %d bytes.\n", size, len + 1);

	return len;
}


int QDECL Com_sprintfUni(wchar_t *dest, size_t size, const wchar_t *fmt, ...)
{

	int			len, numchar;
	va_list		argptr;

	numchar = size / sizeof(wchar_t);

	va_start (argptr,fmt);
#ifdef _WIN32
	len = vsnwprintf (dest, numchar, fmt, argptr );
#else
	len = vswprintf (dest, numchar, fmt, argptr );
#endif
	va_end (argptr);

	if(len < 0 || len >= numchar)
		Plugin_Printf("Com_sprintfUni: Output length %d too short\n", size);

	return len;
}

int Q_StrToWStr(wchar_t* dest, const char* src, size_t len)
{
	int i;

	if(len < 2)
	{
		return 0;
	}

	int numchar = len / sizeof(wchar_t);

	for(i = 0; i < numchar; ++i)
	{
		dest[i] = btowc(src[i]);

		if(src[i] == '\0')
		{
			break;
		}
	}
	dest[numchar -1] = L'\0';
	return i;
}
/*
============
va

does a varargs printf into a temp buffer, so I don't need to have
varargs versions of all text functions.
============
*/
char	* QDECL va( char *format, ... ) {
	va_list		argptr;
	static char string[2][32000]; // in case va is called by nested functions
	static int	index = 0;
	char		*buf;

	buf = string[index & 1];
	index++;

	va_start (argptr, format);
	Q_vsnprintf (buf, sizeof(*string), format, argptr);
	va_end (argptr);

	return buf;
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

/*
============
Q_strchrreplUni
Parses the string for a given char and replace it with a replacement char
============
*/
void Q_strchrreplUni(wchar_t *string, wchar_t torepl, wchar_t repl){
    for( ; *string != L'\0'; string++){
		if(*string == torepl){
			*string = repl;
		}
    }
}



const char* Com_GetFilenameSubString(const char* arg)
{
  char* stub;
  int i;

  stub = (char*)arg;

  for ( i = 0; arg[i]; ++i )
  {
    if ( arg[i] == '/' || arg[i] == '\\' )
	{
		stub = (char*)&arg[i];
	}
  }
  return stub;
}

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
	char	pkey[MAX_INFO_KEY];
	char	value[MAX_INFO_VALUE];
	char	*o;

	if ( strlen( s ) >= MAX_INFO_STRING ) {
		Plugin_Printf(  "Error: Info_RemoveKey: oversize infostring" );
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
	char	pkey[MAX_INFO_KEY];
	static	char value[2][MAX_INFO_VALUE];	// use two buffers so compares
						// work without stomping on each other
	static	int	valueindex = 0;
	char	*o;

	if ( !s || !key ) {
		return "";
	}

	if ( strlen( s ) >= MAX_INFO_STRING ) {
		Plugin_Printf(  "Error: Info_ValueForKey: oversize infostring" );
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
		}
		*o = 0;
		s++;

		o = value[valueindex];

		while (*s != '\\' && *s)
		{
			*o++ = *s++;
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
		Plugin_PrintWarning("Unexpected error - Info_SetValueForKey: oversize infostring" );
	}

	if (strchr (key, '\\'))
	{
		Plugin_PrintWarning ("Can't use keys with a \\\n");
		Plugin_DPrintf("Bad key: %s value: %s\n", key, value);
		return;
	}

	if (strchr (value, '\\'))
	{
		Plugin_PrintWarning ("Can't use values with a \\\n");
		Plugin_DPrintf("Bad value: %s key: %s\n", value, key);
		return;
	}

	if (strchr (key, ';'))
	{
		Plugin_PrintWarning ("Can't use keys with a semicolon\n");
		Plugin_DPrintf("Bad key: %s value: %s\n", key, value);
		return;
	}

	if (strchr (value, ';'))
	{
		Plugin_PrintWarning ("Can't use values with a semicolon\n");
		Plugin_DPrintf("Bad value: %s key: %s\n", value, key);
		return;
	}

	if (strchr (key, '\"'))
	{
		Plugin_PrintWarning ("Can't use keys with a \"\n");
		Plugin_DPrintf("Bad key: %s value: %s\n", key, value);
		return;
	}
	if (strchr (value, '\"'))
	{
		Plugin_PrintWarning ("Can't use values with a \"\n");
		Plugin_DPrintf("Bad value: %s key: %s\n", value, key);
		return;
	}


	Info_RemoveKey (s, key);
	if (!value || !strlen(value))
		return;

	Com_sprintf (newi, sizeof(newi), "\\%s\\%s", key, value);

	if (strlen(newi) + strlen(s) > MAX_INFO_STRING)
	{
		Plugin_PrintWarning ("Info string length exceeded\n");
		return;
	}

	strcat (newi, s);
	strcpy (s, newi);
}




static	int			cmd_argc;
static	char		*cmd_argv[MAX_STRING_TOKENS];		// points into cmd_tokenized
static	char		cmd_tokenized[MAX_STRING_CHARS+MAX_STRING_TOKENS];	// will have 0 bytes inserted

/*
============
Cmd_Argc
============
*/
int		Cmd_Argc( void ) {
	return cmd_argc;
}

/*
============
Cmd_Argv
============
*/
char	*Cmd_Argv( int arg ) {
	if ( (unsigned)arg >= cmd_argc ) {
		return "";
	}
	return cmd_argv[arg];
}

/*
============
Cmd_ArgvBuffer

The interpreted versions use this because
they can't have pointers returned to them
============
*/
void	Cmd_ArgvBuffer( int arg, char *buffer, int bufferLength ) {
	Q_strncpyz( buffer, Cmd_Argv( arg ), bufferLength );
}


/*
============
Cmd_Args

Returns a single string containing argv(1) to argv(argc()-1)
============
*/
char	*Cmd_Args( void ) {
	static	char		cmd_args[MAX_STRING_CHARS];
	int		i;

	cmd_args[0] = 0;
	for ( i = 1 ; i < cmd_argc ; i++ ) {
		strcat( cmd_args, cmd_argv[i] );
		if ( i != cmd_argc ) {
			strcat( cmd_args, " " );
		}
	}

	return cmd_args;
}


/*
============
Cmd_ArgsBuffer

The interpreted versions use this because
they can't have pointers returned to them
============
*/
void	Cmd_ArgsBuffer( char *buffer, int bufferLength ) {
	Q_strncpyz( buffer, Cmd_Args(), bufferLength );
}


/*
============
Cmd_TokenizeString

Parses the given string into command line tokens.
The text is copied to a seperate buffer and 0 characters
are inserted in the apropriate place, The argv array
will point into this temporary buffer.
============
*/
void Cmd_TokenizeString( const char *text_in ) {
	const char	*text;
	char	*textOut;

	// clear previous args
	cmd_argc = 0;

	if ( !text_in ) {
		return;
	}

	text = text_in;
	textOut = cmd_tokenized;

	while ( 1 ) {
		if ( cmd_argc == MAX_STRING_TOKENS ) {
			return;			// this is usually something malicious
		}

		while ( 1 ) {
			// skip whitespace
			while ( *text && *text <= ' ' ) {
				text++;
			}
			if ( !*text ) {
				return;			// all tokens parsed
			}

			// skip // comments
			if ( text[0] == '/' && text[1] == '/' ) {
				return;			// all tokens parsed
			}

			// skip /* */ comments
			if ( text[0] == '/' && text[1] =='*' ) {
				while ( *text && ( text[0] != '*' || text[1] != '/' ) ) {
					text++;
				}
				if ( !*text ) {
					return;		// all tokens parsed
				}
				text += 2;
			} else {
				break;			// we are ready to parse a token
			}
		}

		// handle quoted strings
		if ( *text == '"' ) {
			cmd_argv[cmd_argc] = textOut;
			cmd_argc++;
			text++;
			while ( *text && *text != '"' ) {
				*textOut++ = *text++;
			}
			*textOut++ = 0;
			if ( !*text ) {
				return;		// all tokens parsed
			}
			text++;
			continue;
		}

		// regular token
		cmd_argv[cmd_argc] = textOut;
		cmd_argc++;

		// skip until whitespace, quote, or command
		while ( *text > ' ' ) {
			if ( text[0] == '"' ) {
				break;
			}

			if ( text[0] == '/' && text[1] == '/' ) {
				break;
			}

			// skip /* */ comments
			if ( text[0] == '/' && text[1] =='*' ) {
				break;
			}

			*textOut++ = *text++;
		}

		*textOut++ = 0;

		if ( !*text ) {
			return;		// all tokens parsed
		}
	}
	
}

