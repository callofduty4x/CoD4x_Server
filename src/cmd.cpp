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



#include <string.h>

#include "cmd.h"
#include "cvar.h"
#include "qcommon_io.h"
#include "qcommon_mem.h"
#include "qcommon.h"
#include "filesystem.h"
#include "server.h"
#include "punkbuster.h"
#include "sys_thread.h"
#include "sv_auth.h"

/*
=============================================================================

						COMMAND BUFFER

=============================================================================
*/

#define	MAX_CMD_BUFFER	1024
#define	MAX_CMD_LINE	8192

typedef struct {
	byte	*data;
	int		maxsize;
	int		cursize;
} cmd_t;

int		cmd_wait;
cmd_t		cmd_text;
byte		cmd_text_buf[MAX_CMD_BUFFER];


/*
============
Cbuf_Init
============
*/
void Cbuf_Init (void)
{
	cmd_text.data = cmd_text_buf;
	cmd_text.maxsize = MAX_CMD_BUFFER;
	cmd_text.cursize = 0;


}

/*
============
Cbuf_AddText

Adds command text at the end of the buffer, does NOT add a final \n
============
*/
void Cbuf_AddText( const char *text ) {
	int		len;
	byte*		new_buf;
	len = strlen (text) +1;

	Sys_EnterCriticalSection(CRITSECT_CBUF);

	if ( len + cmd_text.cursize > cmd_text.maxsize ) {

		if(cmd_text.data == cmd_text_buf)
		{
			new_buf = realloc(NULL, len + cmd_text.cursize);
			if(new_buf != NULL)
			{
				Com_Memcpy(new_buf, cmd_text_buf, len + cmd_text.cursize);
			}
		}else{
			new_buf = realloc(cmd_text.data, len + cmd_text.cursize);
		}

		if(new_buf == NULL)
		{
			Com_PrintError(CON_CHANNEL_SYSTEM, "Cbuf_AddText overflowed ; realloc failed\n" );
			Sys_LeaveCriticalSection(CRITSECT_CBUF);
			return;
		}
		cmd_text.data = new_buf;
		cmd_text.maxsize = len + cmd_text.cursize;
	}

	Com_Memcpy(&cmd_text.data[cmd_text.cursize], text, len -1);
	cmd_text.cursize += len -1;

	Sys_LeaveCriticalSection(CRITSECT_CBUF);

}

/*
============
Cbuf_InsertText

Adds command text immediately after the current command
Adds a \n to the text
============
*/
void Cbuf_InsertText( const char *text ) {
	int		len;
	int		i;
	byte*		new_buf;

	len = strlen( text ) + 1;

	Sys_EnterCriticalSection(CRITSECT_CBUF);


	if ( len + cmd_text.cursize > cmd_text.maxsize ) {

		if(cmd_text.data == cmd_text_buf)
		{
			new_buf = realloc(NULL, len + cmd_text.cursize);
			if(new_buf != NULL)
			{
				Com_Memcpy(new_buf, cmd_text_buf, len + cmd_text.cursize);
			}
		}else{
			new_buf = realloc(cmd_text.data, len + cmd_text.cursize);
		}

		if(new_buf == NULL)
		{
			Com_PrintError(CON_CHANNEL_SYSTEM, "Cbuf_InsertText overflowed ; realloc failed\n" );

			Sys_LeaveCriticalSection(CRITSECT_CBUF);
			return;
		}
		cmd_text.data = new_buf;
		cmd_text.maxsize = len + cmd_text.cursize;
	}

	// move the existing command text
	for ( i = cmd_text.cursize - 1 ; i >= 0 ; i-- ) {
		cmd_text.data[ i + len ] = cmd_text.data[ i ];
	}

	// copy the new text in
	Com_Memcpy( cmd_text.data, text, len - 1 );

	// add a \n
	cmd_text.data[ len - 1 ] = '\n';

	cmd_text.cursize += len;

	Sys_LeaveCriticalSection(CRITSECT_CBUF);
}

/*
============
Cbuf_ExecuteText
============
*/
void Cbuf_ExecuteText (int exec_when, const char *text)
{
	switch (exec_when)
	{
	case EXEC_NOW:

		Sys_EnterCriticalSection(CRITSECT_CBUF);

		if (text && strlen(text) > 0) {
			Com_DPrintf(CON_CHANNEL_SYSTEM, S_COLOR_YELLOW "EXEC_NOW %s\n", text);
			Cmd_ExecuteString (text);
		} else {
			Cbuf_Execute();
			Com_DPrintf(CON_CHANNEL_SYSTEM, S_COLOR_YELLOW "EXEC_NOW %s\n", cmd_text.data);
		}

		Sys_LeaveCriticalSection(CRITSECT_CBUF);

		break;
	case EXEC_INSERT:
		Cbuf_InsertText (text);
		break;
	case EXEC_APPEND:
		Cbuf_AddText (text);
		break;
	default:
		Com_Error (ERR_FATAL, "Cbuf_ExecuteText: bad exec_when");
	}
}



/*
============
Cbuf_Execute
============
*/
void Cbuf_Execute (void)
{
	int		i;
	char	*text;
	char	line[MAX_CMD_LINE];
	int		quotes;

	// This will keep // style comments all on one line by not breaking on
	// a semicolon.  It will keep /* ... */ style comments all on one line by not
	// breaking it for semicolon or newline.
	qboolean in_star_comment = qfalse;
	qboolean in_slash_comment = qfalse;
	while (cmd_text.cursize)
	{
		if ( cmd_wait > 0 ) {
			// skip out while text still remains in buffer, leaving it
			// for next frame
			cmd_wait--;
			break;
		}

		// find a \n or ; line break or comment: // or /* */
		text = (char *)cmd_text.data;

		quotes = 0;
		for (i=0 ; i< cmd_text.cursize ; i++)
		{
			if (text[i] == '"')
				quotes++;

			if ( !(quotes&1)) {
				if (i < cmd_text.cursize - 1) {
					if (! in_star_comment && text[i] == '/' && text[i+1] == '/')
						in_slash_comment = qtrue;
					else if (! in_slash_comment && text[i] == '/' && text[i+1] == '*')
						in_star_comment = qtrue;
					else if (in_star_comment && text[i] == '*' && text[i+1] == '/') {
						in_star_comment = qfalse;
						// If we are in a star comment, then the part after it is valid
						// Note: This will cause it to NUL out the terminating '/'
						// but ExecuteString doesn't require it anyway.
						i++;
						break;
					}
				}
				if (! in_slash_comment && ! in_star_comment && text[i] == ';')
					break;
			}
			if (! in_star_comment && (text[i] == '\n' || text[i] == '\r')) {
				in_slash_comment = qfalse;
				break;
			}
		}

		if( i >= (MAX_CMD_LINE - 1)) {
			i = MAX_CMD_LINE - 1;
		}

		Com_Memcpy (line, text, i);
		line[i] = 0;

// delete the text from the command buffer and move remaining commands down
// this is necessary because commands (exec) can insert data at the
// beginning of the text buffer

		if (i == cmd_text.cursize)
			cmd_text.cursize = 0;
		else
		{
			i++;
			cmd_text.cursize -= i;
			memmove (text, text+i, cmd_text.cursize);
		}

// execute the command line

		Cmd_ExecuteString (line);
	}

	if( cmd_text.cursize == 0 && cmd_text.data != cmd_text_buf)
	{
		free(cmd_text.data);
		cmd_text.data = cmd_text_buf;
		cmd_text.maxsize = MAX_CMD_BUFFER;
	}
}


void __cdecl Cbuf_Execute_WrapperIW(int arg1, int arg2)
{
	Cbuf_Execute();
}
/*
==============================================================================

								COMMANDS

==============================================================================
*/

typedef struct cmd_function_s
{
	struct cmd_function_s	*next;
	const char		*name;
	const char		*helptext;
	int			minPower;
	completionFunc_t	complete;
	xcommand_t function;
} cmd_function_t;


static cmd_function_t *cmd_functions;


/*
============
Cmd_AddCommand
============
*/
qboolean Cmd_AddCommandGeneric( const char *cmd_name, const char* helptext, xcommand_t function, qboolean warn, int power ) {

	cmd_function_t  *cmd;

	// fail if the command already exists
	for ( cmd = cmd_functions ; cmd ; cmd = cmd->next ) {
		if ( !strcmp( cmd_name, cmd->name )) {
			// allow completion-only commands to be silently doubled
			if ( function != NULL && warn) {
				Com_PrintWarning(CON_CHANNEL_SYSTEM, "Cmd_AddCommand: %s already defined\n", cmd_name );
			}
			return qfalse;
		}
	}
	// use a small malloc to avoid zone fragmentation
	if(helptext != NULL)
	{
		cmd = S_Malloc( sizeof( cmd_function_t ) + strlen(cmd_name) + 1 + strlen(helptext) + 1);
		strcpy((char*)(cmd +1) + strlen(cmd_name) +1, helptext);
		cmd->helptext = (char*)(cmd +1) + strlen(cmd_name) +1;
	}else{
		cmd = S_Malloc( sizeof( cmd_function_t ) + strlen(cmd_name) + 1);
	}
	strcpy((char*)(cmd +1), cmd_name);
	cmd->name = (char*)(cmd +1);
	cmd->function = function;
	cmd->minPower = power;
	cmd->next = cmd_functions;
	cmd_functions = cmd;
	return qtrue;
}

qboolean Cmd_AddPCommand( const char *cmd_name, xcommand_t function, int power )
{
    return Cmd_AddCommandGeneric( cmd_name, NULL, function, qtrue, power);
}

qboolean Cmd_AddCommand( const char *cmd_name, xcommand_t function )
{
    return Cmd_AddCommandGeneric( cmd_name, NULL, function, qtrue, 100);
}

qboolean Cmd_AddHCommand( const char *cmd_name, const char* helptext, xcommand_t function, int power )
{
    return Cmd_AddCommandGeneric( cmd_name, NULL, function, qtrue, power );
}


/*
============
Cmd_RemoveCommand
============
*/
qboolean Cmd_RemoveCommand( const char *cmd_name ) {
	cmd_function_t  *cmd, **back;

	back = &cmd_functions;
	while ( 1 ) {
		cmd = *back;
		if ( !cmd ) {
			// command wasn't active
			return qfalse;
		}
		if ( !strcmp( cmd_name, cmd->name ) ) {
			*back = cmd->next;
			Z_Free( cmd );
			return qtrue;
		}
		back = &cmd->next;
	}
	return qfalse;
}


void Cmd_Exec_f( void ) {
	char *f;
	char filename[MAX_QPATH];

	if ( Cmd_Argc() != 2 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "exec <filename> : execute a script file\n" );
		return;
	}

	Q_strncpyz( filename, Cmd_Argv( 1 ), sizeof( filename ) );
	COM_DefaultExtension( filename, sizeof( filename ), ".cfg" );
	FS_ReadFile( filename, (void **)&f );
	if ( !f ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "couldn't exec %s\n",Cmd_Argv( 1 ) );
		return;
	}
	Com_Printf(CON_CHANNEL_DONT_FILTER, "execing %s\n",Cmd_Argv( 1 ) );

	Cbuf_InsertText( f );

	FS_FreeFile( f );
}

/*
===============
Cmd_Vstr_f

Inserts the current value of a variable as command text
===============
*/
void Cmd_Vstr_f( void ) {
	const char	*v;
	char	buf[MAX_CMD_LINE];
	char c_str[1024];

	if (Cmd_Argc () != 2) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"vstr <variablename> : execute a variable command\n");
		return;
	}

	v = Cvar_VariableStringBuffer( Cmd_Argv( 1 ), c_str, sizeof(c_str) );
	Com_sprintf(buf, sizeof(buf), "%s", v);
	Cbuf_InsertText( buf );
}


/*
===============
Cmd_Echo_f

Just prints the rest of the line to the console
===============
*/
void Cmd_Echo_f (void)
{
	char buf[MAX_STRING_CHARS];

	Com_Printf(CON_CHANNEL_DONT_FILTER,"%s\n", Cmd_Args(buf, sizeof(buf)));
}

/*
============
Cmd_Wait_f

Causes execution of the remainder of the command buffer to be delayed until
next frame.  This allows commands like:
bind g "cmd use rocket ; +attack ; wait ; -attack ; cmd use blaster"
============
*/
void Cmd_Wait_f( void ) {
	if ( Cmd_Argc() == 2 ) {
		cmd_wait = atoi( Cmd_Argv( 1 ) );
		if ( cmd_wait < 0 )
			cmd_wait = 1; // ignore the argument
	} else {
		cmd_wait = 1;
	}
}



qboolean Cmd_SetPower(const char *cmd_name, int power)
{
	if(!Q_stricmp(cmd_name, "ministatus") && power > 1)
	{
		//Ignoring modification. Has to be available to the usual player like pb_plist
		return qtrue;
	}


    cmd_function_t *cmd;
    if(!cmd_name) return qfalse;

    for(cmd = cmd_functions ; cmd ; cmd = cmd->next){
        if(!Q_stricmp(cmd_name, cmd->name)){
            if(cmd->minPower != power){
                cmd->minPower = power;
            }
            return qtrue;
        }
    }
    return qfalse;
}

int	Cmd_GetPower(const char* cmd_name)
{

    cmd_function_t *cmd;
    for(cmd = cmd_functions ; cmd ; cmd = cmd->next){
        if(!Q_stricmp(cmd_name,cmd->name)){

                if(!cmd->minPower) return 100;
                else return cmd->minPower;
        }
    }
    return -1; //Don't exist
}

void Cmd_ResetPower()
{
    cmd_function_t *cmd;
    //Init the permission table with default values
    for(cmd = cmd_functions ; cmd ; cmd = cmd->next) cmd->minPower = 100;
}


#define MAX_TOKENIZE_STRINGS 32

typedef struct{
	int currentString; //Count of parsed strings

	int cmd_argc; //Number of all parsed tokens in all strings combined
	int cmd_argcList[MAX_TOKENIZE_STRINGS]; //Number of parsed tokens in each string

	char *cmd_argv[MAX_STRING_TOKENS]; // points into cmd_tokenized. cmd_argc must point into the free space of cmd_tokenized
	char cmd_tokenized[BIG_INFO_STRING + MAX_STRING_TOKENS]; // will have 0 bytes inserted
}cmdTokenizer_t;

static cmdTokenizer_t tokenStrings;
static cmdTokenizer_t sv_tokenStrings;



/*
============
Cmd_Argc	Returns count of commandline arguments
============
*/
int	Cmd_Argc( void ) {

	if(tokenStrings.currentString == 0)
		return 0;

	return tokenStrings.cmd_argcList[tokenStrings.currentString -1];
}

int	SV_Cmd_Argc( void ) {

	if(sv_tokenStrings.currentString == 0)
		return 0;

	return sv_tokenStrings.cmd_argcList[sv_tokenStrings.currentString -1];
}

/*
============
Cmd_Argv	Returns commandline argument by number
============
*/

char	*Cmd_Argv( int arg ) {

	int cmd_argc;
	int final_argc;

	cmd_argc = Cmd_Argc();

	if(cmd_argc == 0)
	    return "";

	if(cmd_argc - arg <= 0)
            return "";

        final_argc = tokenStrings.cmd_argc - cmd_argc + arg;

	if(tokenStrings.cmd_argv[final_argc] == NULL)
	    return "";

	return tokenStrings.cmd_argv[final_argc];
}


char	*SV_Cmd_Argv( int arg ) {

	int cmd_argc;
	int final_argc;

	cmd_argc = SV_Cmd_Argc();

	if(cmd_argc == 0)
	    return "";

	if(cmd_argc - arg <= 0)
            return "";

        final_argc = sv_tokenStrings.cmd_argc - cmd_argc + arg;

	if(sv_tokenStrings.cmd_argv[final_argc] == NULL)
	    return "";

	return sv_tokenStrings.cmd_argv[final_argc];
}


/*
============
Cmd_ArgvBuffer

The interpreted versions use this because
they can't have pointers returned to them
============
*/
void	Cmd_ArgvBuffer( int arg, char *buffer, int bufferLength ) {
	Q_strncpyz( buffer, Cmd_Argv(arg), bufferLength );
}



/*
============
Cmd_Args

Returns a single string containing argv(1) to argv(argc()-1)
============
*/

char	*Cmd_Args( char* buff, int bufsize ) {

	int		i;
	int		cmd_argc = Cmd_Argc();

	buff[0] = 0;
	for ( i = 1 ; i < cmd_argc ; i++ ) {
		Q_strncat( buff, bufsize, Cmd_Argv(i) );
		if ( i != cmd_argc-1 ) {
			Q_strncat( buff, bufsize, " " );
		}
	}

	return buff;
}


/*
============
Cmd_Argvs

Returns a single string containing argv(int arg) to argv(argc()-arg)
============
*/

char	*Cmd_Argsv( int arg, char* buff, int bufsize ) {

	int		i;
	int		cmd_argc = Cmd_Argc();
	buff[0] = 0;
	for ( i = arg ; i < cmd_argc ; i++ ) {
		Q_strncat( buff, bufsize, Cmd_Argv(i) );
		if ( i != cmd_argc-1 ) {
			Q_strncat( buff, bufsize, " " );
		}
	}

	return buff;
}

char	*SV_Cmd_Argsv( int arg, char* buff, int bufsize ) {

	int		i;
	int		cmd_argc = SV_Cmd_Argc();
	buff[0] = 0;
	for ( i = arg ; i < cmd_argc ; i++ ) {
		Q_strncat( buff, bufsize, SV_Cmd_Argv(i) );
		if ( i != cmd_argc-1 ) {
			Q_strncat( buff, bufsize, " " );
		}
	}

	return buff;
}


typedef struct{
	int cmd_argc;
	int availableBuf;
	char* cmd_tokenized;
	char** cmd_argv;
}cmdTokenizeParams_t;



void Cmd_EndTokenizedString( )
{
    if(tokenStrings.currentString <= 0)
    {
        Com_Error(ERR_FATAL, "Cmd_EndTokenizedString( ): Attempt to free more tokenized strings than tokenized");
        return;
    }
    --tokenStrings.currentString;

    if(tokenStrings.currentString < MAX_TOKENIZE_STRINGS)
    {
        tokenStrings.cmd_argc -= tokenStrings.cmd_argcList[tokenStrings.currentString];
    }
}

void SV_Cmd_EndTokenizedString( )
{
    if(sv_tokenStrings.currentString <= 0)
    {
        Com_Error(ERR_FATAL, "Cmd_EndTokenizedString( ): Attempt to free more tokenized strings than tokenized");
        return;
    }
    --sv_tokenStrings.currentString;

    if(sv_tokenStrings.currentString < MAX_TOKENIZE_STRINGS)
    {
        sv_tokenStrings.cmd_argc -= sv_tokenStrings.cmd_argcList[sv_tokenStrings.currentString];
    }
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
// NOTE TTimo define that to track tokenization issues
//#define TKN_DBG
static void Cmd_TokenizeStringInternal( const char *text_in, qboolean ignoreQuotes, cmdTokenizeParams_t* param) {
	const char	*text;
	char		*textOut;

#ifdef TKN_DBG
  // FIXME TTimo blunt hook to try to find the tokenization of userinfo
  Com_DPrintf(CON_CHANNEL_SYSTEM,"Cmd_TokenizeString: %s\n", text_in);
#endif

	if ( !text_in ) {
		return;
	}

	text = text_in;
	textOut = param->cmd_tokenized;

	while ( 1 ) {
		if ( param->cmd_argc == MAX_STRING_TOKENS ) {
			Com_PrintError(CON_CHANNEL_SYSTEM,"Cmd_TokenizeString(): MAX_STRING_TOKENS exceeded\n");
			return;			// this is usually something malicious
		}

		while ( 1 ) {
			// skip whitespace
			while ( *text != '\0' && (byte)*text <= ' ' ) {
				text++;
			}
			if ( *text == '\0' ) {
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
				if ( *text == '\0') {
					return;		// all tokens parsed
				}
				text += 2;
			} else {
				break;			// we are ready to parse a token
			}
		}

		// handle quoted strings
    // NOTE TTimo this doesn't handle \" escaping
		if ( !ignoreQuotes && *text == '"' ) {
			param->cmd_argv[param->cmd_argc] = textOut;
			text++;
			while ( *text != '\0' && *text != '"' && param->availableBuf > 1) {
				*textOut++ = *text++;
				--param->availableBuf;
			}
			*textOut++ = 0;
			--param->availableBuf;
			if(param->availableBuf < 2)
			{
				Com_PrintError(CON_CHANNEL_SYSTEM,"Cmd_TokenizeString(): length of tokenize buffer exceeded\n");
				return;
			}
			param->cmd_argc++;
			param->cmd_argv[param->cmd_argc] = textOut;
			if ( *text == '\0') {
				return;		// all tokens parsed
			}
			text++;
			continue;
		}

		// regular token
		param->cmd_argv[param->cmd_argc] = textOut;


		// skip until whitespace, quote, or command
		while ( (byte)*text > ' ' && param->availableBuf > 1) {
			if ( !ignoreQuotes && text[0] == '"' ) {
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
			--param->availableBuf;
		}

		*textOut++ = 0;
		--param->availableBuf;

		if(param->availableBuf < 2)
		{
			Com_PrintError(CON_CHANNEL_SYSTEM,"Cmd_TokenizeString(): length of tokenize buffer exceeded\n");
			return;
		}

		param->cmd_argc++;
		param->cmd_argv[param->cmd_argc] = textOut;

		if ( *text == '\0') {
			return;		// all tokens parsed
		}
	}

}


/*
============
Cmd_TokenizeString
============
*/
static void Cmd_TokenizeString2( const char *text_in, qboolean ignore_quotes ) {

	cmdTokenizeParams_t param;
	int oldargc;
	int occupiedBuf;

	oldargc = tokenStrings.cmd_argc;

	if(tokenStrings.currentString < MAX_TOKENIZE_STRINGS)
	{

		param.cmd_argc = tokenStrings.cmd_argc;
		param.cmd_argv = tokenStrings.cmd_argv;

		if(tokenStrings.currentString > 0)
		{
			if(tokenStrings.cmd_argv[tokenStrings.cmd_argc] == NULL)
			{
				Com_Error(ERR_FATAL, "Cmd_TokenizeString( ): Free string is a NULL pointer...");
			}
			param.cmd_tokenized = tokenStrings.cmd_argv[tokenStrings.cmd_argc];
		}else{
			param.cmd_tokenized = tokenStrings.cmd_tokenized;
		}

		occupiedBuf = param.cmd_tokenized - tokenStrings.cmd_tokenized;
		param.availableBuf = sizeof(tokenStrings.cmd_tokenized) - occupiedBuf;

		Cmd_TokenizeStringInternal( text_in, ignore_quotes, &param );

		tokenStrings.cmd_argcList[tokenStrings.currentString] = param.cmd_argc - oldargc;
		tokenStrings.cmd_argc = param.cmd_argc;
		tokenStrings.currentString++;
	}else{
		Com_PrintError(CON_CHANNEL_SYSTEM,"Cmd_TokenizeString(): MAX_TOKENIZE_STRINGS exceeded\n");
	}
}


/*
============
SV_Cmd_TokenizeString
============
*/
static void SV_Cmd_TokenizeString2( const char *text_in, qboolean ignore_quotes ) {

	cmdTokenizeParams_t param;
	int oldargc;
	int occupiedBuf;

	oldargc = sv_tokenStrings.cmd_argc;

	if(sv_tokenStrings.currentString < MAX_TOKENIZE_STRINGS)
	{

		param.cmd_argc = sv_tokenStrings.cmd_argc;
		param.cmd_argv = sv_tokenStrings.cmd_argv;

		if(sv_tokenStrings.currentString > 0)
		{
			if(sv_tokenStrings.cmd_argv[sv_tokenStrings.cmd_argc] == NULL)
			{
				Com_Error(ERR_FATAL, "Cmd_TokenizeString( ): Free string is a NULL pointer...");
			}
			param.cmd_tokenized = sv_tokenStrings.cmd_argv[sv_tokenStrings.cmd_argc];
		}else{
			param.cmd_tokenized = sv_tokenStrings.cmd_tokenized;
		}

		occupiedBuf = param.cmd_tokenized - sv_tokenStrings.cmd_tokenized;
		param.availableBuf = sizeof(sv_tokenStrings.cmd_tokenized) - occupiedBuf;

		Cmd_TokenizeStringInternal( text_in, ignore_quotes, &param );

		sv_tokenStrings.cmd_argcList[sv_tokenStrings.currentString] = param.cmd_argc - oldargc;
		sv_tokenStrings.cmd_argc = param.cmd_argc;
		sv_tokenStrings.currentString++;
	}else{
		Com_PrintError(CON_CHANNEL_SYSTEM,"Cmd_TokenizeString(): MAX_TOKENIZE_STRINGS exceeded\n");
	}
}

/*
============
Cmd_TokenizeStringIgnoreQuotes
============
*/
void Cmd_TokenizeStringIgnoreQuotes( const char *text_in ) {
	Cmd_TokenizeString2( text_in, qtrue );
}


/*
============
Cmd_TokenizeString
============
*/
void Cmd_TokenizeString( const char *text_in ) {
	Cmd_TokenizeString2( text_in, qfalse);
}


/*
============
SV_Cmd_TokenizeString
============
*/
void SV_Cmd_TokenizeString( const char *text_in ) {
	SV_Cmd_TokenizeString2( text_in, qfalse);
}


/*
===========================================
command line completion
===========================================
*/

/*
============
Cmd_CommandCompletion
============
*/
void	Cmd_CommandCompletion( void(*callback)(const char *s) , const char* completionstr) {

	cmd_function_t	*cmd;


#ifdef PUNKBUSTER
	char pbcmd[256];

	if(!Q_stricmpn( completionstr, "pb_", 3))
	{
		Q_strncpyz(pbcmd, completionstr, sizeof(pbcmd) );
		PbServerCompleteCommand( pbcmd, sizeof(pbcmd) );
		if(Q_stricmp( completionstr, pbcmd))
		{
			callback( pbcmd );
		}
		return;
	}
#endif
	for (cmd=cmd_functions ; cmd ; cmd=cmd->next) {
		callback( cmd->name );
	}
}

/*
============
Cmd_CompleteArgument
============
*/
void Cmd_CompleteArgument( const char *command, char *args, int argNum ) {
	cmd_function_t	*cmd;

	for( cmd = cmd_functions; cmd; cmd = cmd->next ) {
		if( !Q_stricmp( command, cmd->name ) && cmd->complete ) {
			cmd->complete( args, argNum );
		}
	}
}



/*
============
Cmd_SetCommandCompletionFunc
============
*/
void Cmd_SetCommandCompletionFunc( const char *command, completionFunc_t complete ) {
	cmd_function_t	*cmd;

	for( cmd = cmd_functions; cmd; cmd = cmd->next ) {
		if( !Q_stricmp( command, cmd->name ) ) {
			cmd->complete = complete;
		}
	}
}


qboolean Cmd_InfoSetPower( const char *infostring )
{
        int power;
        char cmdname[40];

        power = atoi(Info_ValueForKey(infostring, "power"));
        Q_strncpyz(cmdname, Info_ValueForKey(infostring, "cmd"), sizeof(cmdname));

        if(!Cmd_SetPower(cmdname, power)){
            Com_DPrintf(CON_CHANNEL_SYSTEM,"Warning: Commandname %s is not known yet\n", cmdname);
            return qfalse;
        }
        return qtrue;

}


void Cmd_WritePowerConfig(char* buffer, int size)
{
    char infostring[MAX_INFO_STRING];
	mvabuf;

    Q_strncat(buffer, size,"\n//Minimum power settings\n");
    cmd_function_t *cmd;
    for ( cmd = cmd_functions ; cmd ; cmd = cmd->next ){
        *infostring = 0;
        Info_SetValueForKey(infostring, "type", "cmdMinPower");
        Info_SetValueForKey(infostring, "cmd", cmd->name);
        Info_SetValueForKey(infostring, "power", va("%i",cmd->minPower));
        Q_strncat(buffer, size, infostring);
        Q_strncat(buffer, size, "\\\n");
    }
}

/*
============
Cmd_ListPower_f
============
*/

static void Cmd_ListPower_f() {

	cmd_function_t  *cmd;
	int i, hidden, j, l;
	char            *match;

	if ( Cmd_Argc() > 1 ) {
		match = Cmd_Argv( 1 );
	} else {
		match = NULL;
	}

	i = 0;
	hidden = 0;
	for ( cmd = cmd_functions ; cmd ; cmd = cmd->next ) {
		if ( (match && !Com_Filter( match, (char*)cmd->name, qfalse ))) {
			continue;
		}
		if(cmd->minPower == 100 || cmd->minPower == 0){
			hidden++;
			continue;
		}
		Com_Printf(CON_CHANNEL_DONT_FILTER,"%s", cmd->name );

		l = 24 - strlen(cmd->name);
		j = 0;

		do
		{
			Com_Printf(CON_CHANNEL_DONT_FILTER," ");
			j++;
		} while(j < l);

		Com_Printf(CON_CHANNEL_DONT_FILTER, "%d\n", cmd->minPower );
		i++;
	}
	Com_Printf(CON_CHANNEL_DONT_FILTER, "\n%i commands with specified power settings are shown\n", i );
	Com_Printf(CON_CHANNEL_DONT_FILTER, "%i commands are hidden because the required power level for those commands is set to 100 or 0\n", hidden );
	Com_Printf(CON_CHANNEL_DONT_FILTER, "Type cmdlist to get a complete list of all commands\n");
}






/*
============
Cmd_ExecuteString

A complete command line has been parsed, so try to execute it
============
*/
void	Cmd_ExecuteString( const char *text )
{
	cmd_function_t	*cmd, **prev;
	char arg0[MAX_TOKEN_CHARS];

	// execute the command line
	Cmd_TokenizeString( text );
	if ( !Cmd_Argc() ) {
		Cmd_EndTokenizedString( );
		return;		// no tokens
	}

	Q_strncpyz(arg0, Cmd_Argv(0), sizeof(arg0));

	//Legacy fallback
	if(!Q_stricmpn(arg0, "dvar", 4))
	{
		arg0[0] = 'c';
	}else if(!Q_stricmpn(arg0, "auth", 4)){
		if(!Q_stricmp(arg0, "authChangePassword"))
		{
			Q_strncpyz(arg0, "changePassword", sizeof(arg0));
			Com_PrintWarning(CON_CHANNEL_SYSTEM,"\"authchangePassword\" is deprecated and will be removed soon. Use \"changePassword\" instead\n");
		}
		else if(!Q_stricmp(arg0, "authSetAdmin"))
		{
			Q_strncpyz(arg0, "AdminAddAdminWithPassword", sizeof(arg0));
			Com_PrintWarning(CON_CHANNEL_SYSTEM,"\"authSetAdmin\" is deprecated and will be removed soon. Use \"AdminAddAdminWithPassword\" instead\n");
		}
		else if(!Q_stricmp(arg0, "authUnsetAdmin"))
		{
			Q_strncpyz(arg0, "AdminRemoveAdmin", sizeof(arg0));
			Com_PrintWarning(CON_CHANNEL_SYSTEM,"\"authUnsetAdmin\" is deprecated and will be removed soon. Use \"AdminRemoveAdmin\" instead\n");
		}
		else if(!Q_stricmp(arg0, "authListAdmins"))
		{
			Q_strncpyz(arg0, "adminListAdmins", sizeof(arg0));
			Com_PrintWarning(CON_CHANNEL_SYSTEM,"\"authListAdmins\" is deprecated and will be removed soon. Use \"adminListAdmins\" instead\n");
		}
	}else if(!Q_stricmp(arg0, "cmdpowerlist")){
		Q_strncpyz(arg0, "AdminListCommands", sizeof(arg0));
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"\"cmdpowerlist\" is deprecated and will be removed soon. Use \"AdminListCommands\" instead\n");
	}else if(!Q_stricmp(arg0, "setCmdMinPower")){
		Q_strncpyz(arg0, "AdminChangeCommandPower", sizeof(arg0));
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"\"setCmdMinPower\" is deprecated and will be removed soon. Use \"AdminChangeCommandPower\" instead\n");
	}else if(!Q_stricmp(arg0, "kickid")){
		Q_strncpyz(arg0, "kick", sizeof(arg0));
	}
	// check registered command functions
	for ( prev = &cmd_functions ; *prev ; prev = &cmd->next ) {
		cmd = *prev;
		if ( !Q_stricmp( arg0, cmd->name ) ) {
			// rearrange the links so that the command will be
			// near the head of the list next time it is used
			*prev = cmd->next;
			cmd->next = cmd_functions;
			cmd_functions = cmd;

			// perform the action
			if ( !cmd->function ) {
				// let the cgame or game handle it
				break;
			} else {
				cmd->function ();
			}
			Cmd_EndTokenizedString( );
			return;
		}
	}

	// check cvars
	if ( Cvar_Command() ) {
		Cmd_EndTokenizedString( );
		return;
	}

	// check server game commands
	if ( com_sv_running && com_sv_running->boolean && SV_GameCommand() ) {
		Cmd_EndTokenizedString( );
		return;
	}

	Cmd_EndTokenizedString( );

	if(!Q_stricmpn(arg0, "bind", 4))
		return;

	if(!Q_stricmpn(arg0, "unbindall", 9))
		return;

	if(!Q_stricmpn(arg0, "con_showchannel", 15))
		return;

	Com_Printf(CON_CHANNEL_SYSTEM,"Bad command or cvar: %s\n", arg0);
}

void Cmd_ExecuteSingleCommand(int arg1, int arg2, const char* text)
{
	Cmd_ExecuteString(text);
}

/*
============
Cmd_List_f
============
*/
static void Cmd_List_f( void ) {
	cmd_function_t  *cmd;
	int i;
	char            *match;

	if ( Cmd_Argc() > 1 ) {
		match = Cmd_Argv( 1 );
	} else {
		match = NULL;
	}

	i = 0;
	for ( cmd = cmd_functions ; cmd ; cmd = cmd->next ) {
		if ( (match && !Com_Filter( match, (char*)cmd->name, qfalse ))
		|| Cmd_GetInvokerPower() < cmd->minPower || ((cmd->minPower == 0) && Cmd_GetInvokerPower() != 100))
		{
			if(!Auth_CanPlayerUseCommand(Cmd_GetInvokerClnum(), (char*)cmd->name))
			{
				continue;
			}
		}
		Com_Printf(CON_CHANNEL_DONT_FILTER, "%s\n", cmd->name );
		i++;
	}
	Com_Printf(CON_CHANNEL_DONT_FILTER, "%i commands\n", i );
}


/*
============
Cmd_Help_f
============
*/
/*
static void Cmd_Help_f( void ) {
	cmd_function_t  *cmd;
	char            *cmdname;

	if ( Cmd_Argc() > 1 )
	{
		cmdname = Cmd_Argv( 1 );
	}else{
		Com_Printf(CON_CHANNEL_SYSTEM,"Displaying common help here\n\n");
		return;
	}

	for ( cmd = cmd_functions ; cmd ; cmd = cmd->next ) {
		if ( Q_stricmp( cmdname, cmd->name ) != 0)
		{
			continue;
		}
		if(cmd->helptext == NULL)
		{
			Com_Printf(CON_CHANNEL_SYSTEM,"For command %s is no help available\n", cmd->name);
			return;
		}
		Com_Printf(CON_CHANNEL_SYSTEM,"Help for %s:\n", cmd->name);
		Com_Printf(CON_CHANNEL_SYSTEM,"-------------------------------------\n");
		Com_Printf(CON_CHANNEL_SYSTEM,"%s\n", cmd->helptext);
		Com_Printf(CON_CHANNEL_SYSTEM,"-------------------------------------\n");
		return;
	}
	Com_Printf(CON_CHANNEL_SYSTEM, "Help: Couldn't find command: %s\n", cmdname );
}
*/

/*
==================
Cmd_CompleteCfgName
==================
*/
/*
void Cmd_CompleteCfgName( char *args, int argNum ) {
	if( argNum == 2 ) {
		Field_CompleteFilename( "", "cfg", qfalse, qtrue );
	}
}
*/

/*
 ============================================
 For holding the state of powers
 ============================================
 */

typedef struct{
	int		currentCmdPower;			//used to set an execution permissionlevel - Default is 100 but if users execute commands it will be the users level
	int		clientnum;				//Clientnum will be -1 if rcon is used
	qboolean	authserver;
	uint64_t	steamid;
	char	name[33];
}cmdInvoker_t;

static cmdInvoker_t cmdInvoker;


int Cmd_GetInvokerClnum()
{
    return cmdInvoker.clientnum;
}


int Cmd_GetInvokerPower()
{
    return cmdInvoker.currentCmdPower;
}

uint64_t Cmd_GetInvokerSteamID()
{
	return cmdInvoker.steamid;
}

const char* Cmd_GetInvokerName(char *buf, int len)
{
	Q_strncpyz(buf, cmdInvoker.name, len);
	return buf;
}


void Cmd_SetCurrentInvokerInfo(int power, int client, uint64_t steamid, const char* name)
{
    cmdInvoker.currentCmdPower = power;
    cmdInvoker.clientnum = client;
		if(name == NULL)
		{
			name = "NoName";
		}
		Q_strncpyz(cmdInvoker.name, name, sizeof(cmdInvoker.name));
		cmdInvoker.steamid = steamid;
}


void Cmd_ResetInvokerInfo()
{
    cmdInvoker.currentCmdPower = 100;
    cmdInvoker.clientnum = -1;
		cmdInvoker.steamid = 0;
		Q_strncpyz(cmdInvoker.name, "System/Rcon", sizeof(cmdInvoker.name));
}

void Cmd_Init( void ) {

	Cmd_AddPCommand( "cmdlist", Cmd_List_f, 1);
	Cmd_AddPCommand( "AdminListCommands", Cmd_ListPower_f, 95);
	Cmd_AddPCommand( "exec",Cmd_Exec_f, 98 );
	Cmd_AddCommand( "vstr",Cmd_Vstr_f );
	Cmd_AddCommand( "echo",Cmd_Echo_f );
	Cmd_AddCommand( "wait", Cmd_Wait_f );
	Cmd_ResetInvokerInfo();
	//Cmd_AddCommand( "help", Cmd_Help_f ); Not ready yet
}

