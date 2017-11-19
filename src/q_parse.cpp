/*
===========================================================================
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


// q_parse.c -- support for parsing text files
//Requires Thread and Critical section stuff
//#include "q_splineshared.h"  //DAJ
#include "q_shared.h"
#include "qcommon.h"
#include "sys_thread.h"

#include <stdarg.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

/*
============================================================================

PARSING

============================================================================
*/

// multiple character punctuation tokens
static const char *punctuation[] = {
	"+=", "-=",  "*=",  "/=", "&=", "|=", "++", "--",
	"&&", "||",  "<=",  ">=", "==", "!=",
	NULL
};

char toastPopupTitle[1] = { "" };

#define MAX_PARSE_INFO  16

struct ParseThreadInfo
{
  parseInfo_t parseInfo[MAX_PARSE_INFO];
  int parseInfoNum;
  const char *tokenPos;
  const char *prevTokenPos;
  char line[1024];
};

struct com_parse_mark_t
{
  int lines;
  const char *text;
  int ungetToken;
  int backup_lines;
  const char *backup_text;
};


ParseThreadInfo g_parse[4];

ParseThreadInfo *__cdecl Com_GetParseThreadInfo()
{
  if ( Sys_IsMainThread() )
  {
    return  &g_parse[0];
  }
  else if ( Sys_IsRenderThread() )
  {
    return &g_parse[1];
  }
  else if ( Sys_IsServerThread() )
  {
    return &g_parse[2];
  }
  else if ( Sys_IsDatabaseThread() )
  {
    return &g_parse[3];
  }
  assertx(0, "No parse context for current thread.");
  return 0;
}

extern "C"{

void __cdecl Com_InitParseInfo(parseInfo_t *pi)
{
  pi->lines = 1;
  pi->ungetToken = 0;
  pi->spaceDelimited = 1;
  pi->keepStringQuotes = 0;
  pi->csv = 0;
  pi->negativeNumbers = 0;
  pi->errorPrefix = toastPopupTitle;
  pi->warningPrefix = toastPopupTitle;
  pi->backup_lines = 0;
  pi->backup_text = 0;
}

void __cdecl Com_InitParse()
{
  unsigned int i, j;

  for ( i = 0; i < sizeof(g_parse)/sizeof(g_parse[0]); ++i )
  {
    for(j = 0; j < MAX_PARSE_INFO; ++j)
    {
        Com_InitParseInfo(&g_parse[i].parseInfo[j]);
    }
  }
}


/*
===================
Com_BeginParseSession
===================
*/
//Function calling this must not return until parse session is done!
void Com_BeginParseSession( const char *filename ) {
	ParseThreadInfo *parse;
	parseInfo_t  *pi;
	int i;

	parse = Com_GetParseThreadInfo();

	parse->parseInfoNum++;

	if ( parse->parseInfoNum >= MAX_PARSE_INFO )
	{
    		Com_Printf(CON_CHANNEL_PARSERSCRIPT, "Already parsing:\n");
	        for ( i = 0; i < parse->parseInfoNum; ++i ){
        		Com_Printf(CON_CHANNEL_PARSERSCRIPT, "%i. %s\n", i, parse->parseInfo[i].parseFile);
		}
		Com_Error( ERR_FATAL, "Com_BeginParseSession: session overflow @%s", filename);
	}
	
	pi = &parse->parseInfo[parse->parseInfoNum];
	Com_InitParseInfo(pi);
	pi->parseFile = filename;
}

/*
===================
Com_EndParseSession
===================
*/
void Com_EndParseSession( void ) {
	ParseThreadInfo *parse;
	
	parse = Com_GetParseThreadInfo();

	if ( parse->parseInfoNum <= 0 ) {
		Com_Error( ERR_FATAL, "Com_EndParseSession: session underflow" );
	}
	parse->parseInfoNum--;
}

void __cdecl Com_ResetParseSessions()
{
  Com_GetParseThreadInfo()->parseInfoNum = 0;
}

void __cdecl Com_SetSpaceDelimited(int spaceDelimited)
{
  ParseThreadInfo *parse;

  parse = Com_GetParseThreadInfo();
  parse->parseInfo[parse->parseInfoNum].spaceDelimited = spaceDelimited != 0;
}

void __cdecl Com_SetKeepStringQuotes(int keepStringQuotes)
{
  ParseThreadInfo *parse;

  parse = Com_GetParseThreadInfo();
  parse->parseInfo[parse->parseInfoNum].keepStringQuotes = keepStringQuotes != 0;
}

void __cdecl Com_SetCSV(int csv)
{
  ParseThreadInfo *parse;

  parse = Com_GetParseThreadInfo();
  parse->parseInfo[parse->parseInfoNum].csv = csv != 0;
}


void __cdecl Com_SetParseNegativeNumbers(int negativeNumbers)
{
  ParseThreadInfo *parse;

  parse = Com_GetParseThreadInfo();
  parse->parseInfo[parse->parseInfoNum].negativeNumbers = negativeNumbers != 0;
}


/*
===================
Com_GetCurrentParseLine
===================
*/
int Com_GetCurrentParseLine( void ) {
	ParseThreadInfo *parse;
	parseInfo_t  *pi;

	parse = Com_GetParseThreadInfo();

	pi = &parse->parseInfo[parse->parseInfoNum];

	return pi->lines;
}


void __cdecl Com_SetScriptErrorPrefix(const char *prefix)
{
  parseInfo_t *pi;
  ParseThreadInfo *parse;

  parse = Com_GetParseThreadInfo();
  pi = &parse->parseInfo[parse->parseInfoNum];

  assert(prefix != NULL);
  assertx(parse->parseInfoNum > 0, "parse->parseInfoNum = %i", parse->parseInfoNum);

  pi->errorPrefix = prefix;
}

const char *__cdecl Com_GetScriptErrorPrefix()
{
  parseInfo_t *pi;
  ParseThreadInfo *parse;

  parse = Com_GetParseThreadInfo();
  pi = &parse->parseInfo[parse->parseInfoNum];

  assertx(parse->parseInfoNum > 0, "parse->parseInfoNum = %i", parse->parseInfoNum);

  return pi->errorPrefix;
}


void __cdecl Com_SetScriptWarningPrefix(const char *prefix)
{
  parseInfo_t *pi;
  ParseThreadInfo *parse;

  parse = Com_GetParseThreadInfo();
  pi = &parse->parseInfo[parse->parseInfoNum];

  assert(prefix != NULL);
  assertx(parse->parseInfoNum > 0, "parse->parseInfoNum = %i", parse->parseInfoNum);

  pi->warningPrefix = prefix;
}

const char *__cdecl Com_GetScriptWarningPrefix()
{
  parseInfo_t *pi;
  ParseThreadInfo *parse;

  parse = Com_GetParseThreadInfo();
  pi = &parse->parseInfo[parse->parseInfoNum];

  assertx(parse->parseInfoNum > 0, "parse->parseInfoNum = %i", parse->parseInfoNum);

  return pi->warningPrefix;
}

void Com_ScriptErrorDrop( const char *msg, ... ) {
	va_list argptr;
	char string[32000];
	ParseThreadInfo *parse;
	parseInfo_t  *pi;

	parse = Com_GetParseThreadInfo();
	pi = &parse->parseInfo[parse->parseInfoNum];

	va_start( argptr, msg );
	vsprintf( string, msg,argptr );
	va_end( argptr );



	if ( parse->parseInfoNum )
	{
		pi = &parse->parseInfo[parse->parseInfoNum];
		Com_Error( ERR_DROP, "%sFile %s, line %i: %s", pi->errorPrefix, pi->parseFile, pi->lines, string );
	}else{
		Com_Error( ERR_DROP, "Script error: %s", string );
	}
}


/*
===================
Com_ScriptError

Prints the script name and line number in the message
===================
*/
void Com_ScriptError( const char *msg, ... ) {
	va_list argptr;
	char string[32000];
	ParseThreadInfo *parse;
	parseInfo_t  *pi;

	parse = Com_GetParseThreadInfo();
	pi = &parse->parseInfo[parse->parseInfoNum];

	va_start( argptr, msg );
	vsprintf( string, msg,argptr );
	va_end( argptr );

	if ( parse->parseInfoNum )
	{
		pi = &parse->parseInfo[parse->parseInfoNum];
		Com_PrintError(CON_CHANNEL_PARSERSCRIPT,"%sFile %s, line %i: %s", pi->errorPrefix, pi->parseFile, pi->lines, string);
	}else{
		Com_PrintError(CON_CHANNEL_PARSERSCRIPT, "%s", string);
	}
}


void Com_ScriptWarning( const char *msg, ... ) {
	va_list argptr;
	char string[32000];
	ParseThreadInfo *parse;
	parseInfo_t  *pi;

	parse = Com_GetParseThreadInfo();
	pi = &parse->parseInfo[parse->parseInfoNum];

	va_start( argptr, msg );
	vsprintf( string, msg,argptr );
	va_end( argptr );

	if ( parse->parseInfoNum )
	{
		pi = &parse->parseInfo[parse->parseInfoNum];
		Com_PrintWarning(CON_CHANNEL_PARSERSCRIPT,"%sFile %s, line %i: %s", pi->warningPrefix, pi->parseFile, pi->lines, string);
	}else{
		Com_PrintWarning(CON_CHANNEL_PARSERSCRIPT, "%s", string);
	}
}


/*
===================
Com_UngetToken

Calling this will make the next Com_Parse return
the current token instead of advancing the pointer
===================
*/
void Com_UngetToken( void ) {
	parseInfo_t *pi;
	ParseThreadInfo *parse;

	parse = Com_GetParseThreadInfo();
	pi = &parse->parseInfo[parse->parseInfoNum];

	if ( pi->ungetToken ) {
		Com_ScriptError( "UngetToken called twice" );
	}
	pi->ungetToken = qtrue;
	parse->tokenPos = parse->prevTokenPos;
}

void __cdecl Com_ParseSetMark(const char *(*text), com_parse_mark_t *mark)
{
  ParseThreadInfo *parse;
  parseInfo_t *pi;

  parse = Com_GetParseThreadInfo();
  pi = &parse->parseInfo[parse->parseInfoNum];

  assert(text != NULL);
  assert(mark != NULL);

  mark->lines = pi->lines;
  mark->text = *text;
  mark->ungetToken = pi->ungetToken;
  mark->backup_lines = pi->backup_lines;
  mark->backup_text = pi->backup_text;
}

void __cdecl Com_ParseReturnToMark(const char *(*text), com_parse_mark_t *mark)
{
  ParseThreadInfo *parse;
  parseInfo_t *pi;

  parse = Com_GetParseThreadInfo();
  pi = &parse->parseInfo[parse->parseInfoNum];

  assert(text != NULL);
  assert(mark != NULL);

  pi->lines = mark->lines;
  *text = mark->text;
  pi->ungetToken = mark->ungetToken != 0;
  pi->backup_lines = mark->backup_lines;
  pi->backup_text = mark->backup_text;
}


int Com_Compress( char *data_p ) {
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

const char *__cdecl Com_GetLastTokenPos()
{
  return Com_GetParseThreadInfo()->tokenPos;
}



static const char *SkipWhitespace( const char(*data), int *newLines ) {
	int c;

	*newLines = 0;

	while ( ( c = *data ) <= ' ' ) {
		if ( !c ) {
			return NULL;
		}
		if ( c == '\n' ) {
			++(*newLines);
		}
		data++;
	}

	return data;
}



parseInfo_t *__cdecl Com_ParseCSV(const char **data_p, int allowLineBreaks)
{
  const char *data;
  unsigned int len;
  parseInfo_t *pi;
  ParseThreadInfo *parse;

  parse = Com_GetParseThreadInfo();
  pi = &parse->parseInfo[parse->parseInfoNum];
  data = *data_p;
  len = 0;
  pi->token[0] = 0;
  if ( allowLineBreaks )
  {
    while ( *data == '\r' || *data == '\n' )
    {
      ++data;
    }
  }
  else if ( *data == '\r' || *data == '\n' )
  {
    return pi;
  }
  parse->prevTokenPos = parse->tokenPos;
  parse->tokenPos = data;
  while ( *data && *data != ',' && *data != '\n' )
  {
    if ( *data == '\r' )
    {
      ++data;
    }
    else if ( *data == '"' )
    {
      ++data;
      while ( 1 )
      {
        while ( *data != '"' )
        {
          if ( len < MAX_TOKEN_CHARS - 1 )
          {
            pi->token[len++] = *data;
          }
          ++data;
        }
        if ( data[1] != '"' )
        {
          break;
        }
        if ( len < MAX_TOKEN_CHARS - 1 )
        {
          pi->token[len++] = '"';
        }
        data += 2;
      }
      ++data;
    }
    else
    {
      if ( len < MAX_TOKEN_CHARS - 1 )
      {
        pi->token[len++] = *data;
      }
      ++data;
    }
  }
  if ( *data && *data != '\n' )
  {
    ++data;
  }
  if ( *data || len )
  {
    *data_p = data;
  }
  else
  {
    *data_p = 0;
  }
  pi->token[len] = 0;
  return pi;
}



/*
==============
Com_ParseExt

Parse a token out of a string
Will never return NULL, just empty strings.
An empty string will only be returned at end of file.

If "allowLineBreaks" is qtrue then an empty
string will be returned if the next token is
a newline.
==============
*/
parseInfo_t *Com_ParseExt( const char *( *data_p ), qboolean allowLineBreaks ) {
	int c = 0, len;
	int newLines = 0;
	const char *data;
	const char **punc;
	parseInfo_t *pi;
	ParseThreadInfo *parse;

	parse = Com_GetParseThreadInfo();
	pi = &parse->parseInfo[parse->parseInfoNum];


	if ( !data_p ) {
		Com_Error( ERR_FATAL, "Com_ParseExt: NULL data_p" );
	}
	
	data = *data_p;
	len = 0;
	pi->token[0] = 0;
	pi->tokenType = PARSE_TOKEN_UNKNOWN;
	// make sure incoming data is valid
	if ( !data ) {
		*data_p = NULL;
		return pi;
	}
	pi->backup_lines = pi->lines;
	pi->backup_text = *data_p;
	if ( pi->csv ){
		return Com_ParseCSV(data_p, allowLineBreaks);
	}

	// skip any leading whitespace
	while ( 1 ) {
		// skip whitespace
		data = SkipWhitespace( data, &newLines );
		if ( !data ) {
			*data_p = NULL;
			return pi;
		}
		if ( newLines > 0 && !allowLineBreaks ) {
			return pi;
		}
		pi->lines += newLines;
		c = *data;

		// skip double slash comments
		if ( c == '/' && data[1] == '/' ) {
			while ( *data && *data != '\n' ) {
				data++;
			}
			continue;
		}

		// skip /* */ comments
		if ( c == '/' && data[1] == '*' ) {
			while ( *data && ( *data != '*' || data[1] != '/' ) ) {
				if ( *data == '\n' ) {
					pi->lines++;
				}
				data++;
			}
			if ( *data ) {
				data += 2;
			}
			continue;
		}

		// a real token to parse
		break;
	}

	parse->prevTokenPos = parse->tokenPos;
	parse->tokenPos = data;

	// handle quoted strings
	if ( c == '\"' ) {
		if ( pi->keepStringQuotes ){
			pi->token[len] = '"';
			++len;
		}
		data++;
		while ( 1 ) {
			c = *data++;
			if ( ( c == '\\' ) && ( *data == '\"' ) ) {
				// allow quoted strings to use \" to indicate the " character
				data++;
			} else if ( c == '\"' || !c ) {

				if ( pi->keepStringQuotes ){
					pi->token[len] = '"';
					++len;
				}
				pi->tokenType = PARSE_TOKEN_STRING;
				pi->token[len] = 0;
				*data_p = ( char * ) data;
				return pi;
			} else if ( *data == '\n' ) {
				pi->lines++;
			}
			if ( len < MAX_TOKEN_CHARS - 1 ) {
				pi->token[len] = c;
				len++;
			}
		}
	}


	if ( c == -1 )
	{
		++data;
		while ( 1 )
		{
			c = *data++;
			if ( c == -1 || !c ){
				break;
			}
			if ( len < MAX_TOKEN_CHARS - 1 )
			{
				pi->token[len] = c;
				++len;
			}
		}
		pi->token[len] = 0;
		*data_p = data;
		pi->tokenType = PARSE_TOKEN_HASH;
		return pi;
	}


	if ( pi->spaceDelimited )
	{
		do
		{
			if ( len < MAX_TOKEN_CHARS - 1 )
			{
				pi->token[len] = c;
				++len;
			}
			c = *++data;
		}
		while ( *data > ' ' );
		if ( len >= MAX_TOKEN_CHARS )
		{
			len = 0;
		}
		pi->token[len] = 0;
		*data_p = data;
		return pi;
	}

	// check for a number
	// is this parsing of negative numbers going to cause expression problems
	if ( ( c >= '0' && c <= '9' ) || (pi->negativeNumbers && c == '-' && data[ 1 ] >= '0' && data[ 1 ] <= '9' ) ||
		 ( c == '.' && data[ 1 ] >= '0' && data[ 1 ] <= '9' ) )
	{
		do  {

			if ( len < MAX_TOKEN_CHARS - 1 ) {
				pi->token[len] = c;
				len++;
			}
			data++;

			c = *data;
		} while ( ( c >= '0' && c <= '9' ) || c == '.' );

		// parse the exponent
		if ( c == 'e' || c == 'E' ) {
			if ( len < MAX_TOKEN_CHARS - 1 ) {
				pi->token[len] = c;
				len++;
			}
			data++;
			c = *data;

			if ( c == '-' || c == '+' ) {
				if ( len < MAX_TOKEN_CHARS - 1 ) {
					pi->token[len] = c;
					len++;
				}
				data++;
				c = *data;
			}

			do  {
				if ( len < MAX_TOKEN_CHARS - 1 ) {
					pi->token[len] = c;
					len++;
				}
				data++;

				c = *data;
			} while ( c >= '0' && c <= '9' );
		}

		if ( len >= MAX_TOKEN_CHARS ) {
			len = 0;
		}
		pi->token[len] = 0;
		pi->tokenType = PARSE_TOKEN_NUMBER;
		*data_p = ( char * ) data;
		return pi;
	}

	// check for a regular word
	// we still allow forward and back slashes in name tokens for pathnames
	// and also colons for drive letters
	if ( ( c >= 'a' && c <= 'z' ) || ( c >= 'A' && c <= 'Z' ) || c == '_' || c == '/' || c == '\\' ) {
		do  {
			if ( len < MAX_TOKEN_CHARS - 1 ) {
				pi->token[len] = c;
				len++;
			}
			data++;

			c = *data;
		} while ( ( c >= 'a' && c <= 'z' ) || ( c >= 'A' && c <= 'Z' ) || c == '_'
				  || ( c >= '0' && c <= '9' )/* || c == '/' || c == '\\' || c == ':' || c == '.' */);

		if ( len >= MAX_TOKEN_CHARS ) {
			len = 0;
		}
		pi->token[len] = 0;
		pi->tokenType = PARSE_TOKEN_NAME;
		*data_p = ( char * ) data;
		return pi;
	}

	pi->tokenType = PARSE_TOKEN_PUNCTUATION;
	// check for multi-character punctuation token
	for ( punc = punctuation ; *punc ; punc++ ) {
		int l;
		int j;

		l = strlen( *punc );
		for ( j = 0 ; j < l ; j++ ) {
			if ( data[j] != ( *punc )[j] ) {
				break;
			}
		}
		if ( j == l ) {
			// a valid multi-character punctuation
			memcpy( pi->token, *punc, l );
			pi->token[l] = 0;
			data += l;
			*data_p = (char *)data;
			return pi;
		}
	}

	// single character punctuation
	pi->token[0] = *data;
	pi->token[1] = 0;
	data++;
	*data_p = (char *)data;

	return pi;
}

/*
===================
Com_Parse
===================
*/
parseInfo_t *Com_Parse( const char *( *data_p ) ) {

  ParseThreadInfo *parse;
  parseInfo_t *pi;

  parse = Com_GetParseThreadInfo();
  pi = &parse->parseInfo[parse->parseInfoNum];
  if ( pi->ungetToken )
  {
    pi->ungetToken = 0;
    *data_p = pi->backup_text;
    pi->lines = pi->backup_lines;
  }
  return Com_ParseExt(data_p, qtrue);

}

/*
===================
Com_ParseOnLine
===================
*/
parseInfo_t *Com_ParseOnLine( const char *( *data_p ) ) {

  ParseThreadInfo *parse;
  parseInfo_t *pi;

  parse = Com_GetParseThreadInfo();
  pi = &parse->parseInfo[parse->parseInfoNum];
  if ( pi->ungetToken )
  {
    pi->ungetToken = 0;
    if ( !pi->spaceDelimited )
    {
      return pi;
    }
    *data_p = pi->backup_text;
    pi->lines = pi->backup_lines;
  }
  return Com_ParseExt(data_p, qfalse);

}

ParseTokenType __cdecl Com_GetTokenType()
{
  ParseThreadInfo *parse;

  parse = Com_GetParseThreadInfo();
  return parse->parseInfo[parse->parseInfoNum].tokenType;
}




/*
==================
Com_MatchToken
==================
*/
void Com_MatchToken( const char *( *buf_p ), const char *match, qboolean warning ) {
	parseInfo_t *token;

	token = Com_Parse( buf_p );
	if ( strcmp( token->token, match ) ) {
		if ( warning ) {
			Com_ScriptError( "MatchToken: %s != (want)%s", token->token, match );
		} else {
			Com_ScriptErrorDrop( "MatchToken: %s != (want)%s", token->token, match );
		}
	}
}


/*
=================
Com_SkipBracedSection

The next token should be an open brace.
Skips until a matching close brace is found.
Internal brace depths are properly skipped.
=================
*/
qboolean Com_SkipBracedSection( const char *( *program ), unsigned int startDepth, const int iMaxNesting ) {
	parseInfo_t *token;
	int depth;
	qboolean bNestingExceeded = qfalse;

	depth = startDepth;
	do {
		token = Com_Parse( program );
		if ( token->token[1] == 0 ) {
			if ( token->token[0] == '{' ) {
				if ( depth == iMaxNesting )
				{
					bNestingExceeded = qtrue;
				}
				else
				{
					++depth;
				}
			} else if ( token->token[0] == '}' ) {
				depth--;
			}
		}
	} while ( depth && *program );
	return bNestingExceeded;
}

/*
=================
Com_SkipRestOfLine
=================
*/
void Com_SkipRestOfLine( const char *( *data ) ) {
	const char  *p;
	int c;
	ParseThreadInfo *parse;

	parse = Com_GetParseThreadInfo();

	p = *data;
	while ( ( c = *p++ ) != 0 ) {
		if ( c == '\n' ) {
			++parse->parseInfo[parse->parseInfoNum].lines;
			break;
		}
	}

	*data = p;
}

/*
====================
Com_ParseRestOfLine
====================
*/
const char *Com_ParseRestOfLine( const char *( *data_p ) ) {
	parseInfo_t *token;
	char *line;

	line = Com_GetParseThreadInfo()->line;
	*line = 0;

	line[0] = 0;
	while ( 1 ) {
		token = Com_ParseOnLine( data_p );
		if ( !token->token[0] ) {
			break;
		}
		if ( line[0] ) {
			Q_strncat( line, MAX_TOKEN_CHARS, " " );
		}
		Q_strncat( line, MAX_TOKEN_CHARS, token->token );
	}

	return line;
}



int __cdecl Com_GetArgCountOnLine(const char *(*data_p))
{
  com_parse_mark_t mark;
  parseInfo_t *token;
  int count;

  Com_ParseSetMark(data_p, &mark);
  for ( count = 0; ; ++count )
  {
    token = Com_ParseOnLine(data_p);
    if ( !(token->token[0]) )
    {
      break;
    }
  }
  Com_ParseReturnToMark(data_p, &mark);
  return count;
}


float Com_ParseFloat( const char *( *buf_p ) ) {
	parseInfo_t *token;

	token = Com_Parse( buf_p );
	return atof( token->token );
}

float Com_ParseFloatOnLine( const char *( *buf_p ) ) {
	parseInfo_t *token;

	token = Com_ParseOnLine( buf_p );
	return atof( token->token );
}


int Com_ParseInt( const char *( *buf_p ) ) {
	parseInfo_t *token;

	token = Com_Parse( buf_p );
	return atoi( token->token );
}


void Com_Parse1DMatrix( const char *( *buf_p ), int x, float *m ) {
	parseInfo_t *token;
	int i;

	Com_MatchToken( buf_p, "(", qfalse );

	for ( i = 0 ; i < x ; i++ ) {
		token = Com_Parse( buf_p );
		m[i] = atof( token->token );
	}

	Com_MatchToken( buf_p, ")", qfalse );
}

void Com_Parse2DMatrix( const char *( *buf_p ), int y, int x, float *m ) {
	int i;

	Com_MatchToken( buf_p, "(", qfalse );

	for ( i = 0 ; i < y ; i++ ) {
		Com_Parse1DMatrix( buf_p, x, m + i * x );
	}

	Com_MatchToken( buf_p, ")", qfalse );
}

void Com_Parse3DMatrix( const char *( *buf_p ), int z, int y, int x, float *m ) {
	int i;

	Com_MatchToken( buf_p, "(", qfalse );

	for ( i = 0 ; i < z ; i++ ) {
		Com_Parse2DMatrix( buf_p, y, x, m + i * x * y );
	}

	Com_MatchToken( buf_p, ")", qfalse );
}

}