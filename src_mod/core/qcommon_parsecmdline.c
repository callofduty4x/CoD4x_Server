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



#include <string.h>
#include "cmd.h"
#include "cvar.h"

/*
========================================================================

Command line parsing

========================================================================
*/



#define		MAX_CONSOLE_LINES	32
int		com_numConsoleLines;
char		*com_consoleLines[MAX_CONSOLE_LINES];


/*
===============
Com_StartupVariable

Searches for command line parameters that are set commands.
If match is not NULL, only that cvar will be looked for.
That is necessary because cddir and basedir need to be set
before the filesystem is started, but all other sets should
be after execing the config and default.
===============
*/
void Com_StartupVariable( const char *match ) {
	int		i;
	for (i=0 ; i < com_numConsoleLines ; i++) {
		Cmd_TokenizeString( com_consoleLines[i] );

		if(!match || !strcmp(Cmd_Argv(1), match))
		{
			if ( !strcmp( Cmd_Argv(0), "set" )){
				Cvar_Set_f();
				Cmd_EndTokenizedString();
				continue;
			}else if( !strcmp( Cmd_Argv(0), "seta" ) ) {
				Cvar_SetA_f();
			}
		}
		Cmd_EndTokenizedString();
	}
}

/*
=================
Com_AddStartupCommands

Adds command line parameters as script statements
Commands are seperated by + signs

Returns qtrue if any late commands were added, which
will keep the demoloop from immediately starting
=================
*/
qboolean Com_AddStartupCommands( void ) {
	int		i;
	qboolean	added;
	char		buf[1024];
	added = qfalse;
	// quote every token, so args with semicolons can work
	for (i=0 ; i < com_numConsoleLines ; i++) {
		if ( !com_consoleLines[i] || !com_consoleLines[i][0] ) {
			continue;
		}

		// set commands already added with Com_StartupVariable
		if ( !Q_stricmpn( com_consoleLines[i], "set", 3 )) {
			continue;
		}

		added = qtrue;
		Com_sprintf(buf,sizeof(buf),"%s\n",com_consoleLines[i]);
		Cbuf_ExecuteText( EXEC_APPEND, buf);
	}

	return added;
}

/*
==================
Com_ParseCommandLine

Break it up into multiple console lines
==================
*/
void Com_ParseCommandLine( char *commandLine ) {

    com_consoleLines[0] = commandLine;
    com_numConsoleLines = 1;
	char* line;
	int numQuotes, i;

    while ( *commandLine ) {
		
		// look for a + seperating character
        // if commandLine came from a file, we might have real line seperators
        if ( (*commandLine == '+') || *commandLine == '\n'  || *commandLine == '\r' ) {
            if ( com_numConsoleLines == MAX_CONSOLE_LINES ) {
                return;
            }
			if(*(commandLine +1) != '\n')
			{
				com_consoleLines[com_numConsoleLines] = commandLine + 1;
				com_numConsoleLines = (com_numConsoleLines)+1;
			}
            *commandLine = 0;
        }
        commandLine++;
    }
	
	for (i = 0; i < com_numConsoleLines; i++)
	{
		line = com_consoleLines[i];
		/* Remove trailling spaces and / or bad quotes */
		while ( (*line == ' ' || *line == '\"') && *line != '\0') {
			line++;
		}
		
		memmove(com_consoleLines[i], line, strlen(line) +1);

		numQuotes = 0;

		/* Now verify quotes */
		while (*line)
		{

			while (*line != '\"' && *line != '\0')
			{
				line ++;
			}
			if(*line == '\"' && *(line -1) != ' ')
				break;
			
			if(*line == '\"')
				numQuotes++;

			if(*line != '\0')
			{
				line ++;
			}

			while (*line != '\"' && *line != '\0')
			{
				line ++;
			}
			if(*line == '\"' && *(line +1) != ' ' && *(line +1) != '\0'  )
				break;
			
			if(*line == '\"')
				numQuotes++;

			if(*line != '\0')
			{
				line ++;
			}
		}
		
		/* if we have bad quotes or an odd number of quotes we replace them all with ' ' */
		if(*line != '\0' || numQuotes & 1)
		{
			line = com_consoleLines[i];
			while (*line != '\0')
			{
				if(*line == '\"')
				{
					*line = ' ';
					
				}
				line++;
			}
		}
		
	}
}


/*
===================
Com_SafeMode

Check for "safe" on the command line, which will
skip loading of wolfconfig.cfg
===================
*/
qboolean Com_SafeMode( void ) {
	int i;

	for ( i = 0 ; i < com_numConsoleLines ; i++ ) {
		Cmd_TokenizeString( com_consoleLines[i] );
		if ( !Q_stricmp( Cmd_Argv( 0 ), "safe" ) || !Q_stricmp( Cmd_Argv( 0 ), "cvar_restart" ) ) {
			com_consoleLines[i][0] = 0;
			Cmd_EndTokenizedString( );
			return qtrue;
		}
		Cmd_EndTokenizedString( );
	}
	return qfalse;
}

