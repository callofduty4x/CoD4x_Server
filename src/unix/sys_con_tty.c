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


#include "../sys_main.h"
#include "../q_shared.h"
#include "../cmd_completion.h"
#include "../qcommon_io.h"
#include "../cvar.h"


#include <unistd.h>
#include <signal.h>
#include <termios.h>
#include <fcntl.h>
#include <sys/time.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>


/*
=============================================================
tty console routines

NOTE: if the user is editing a line when something gets printed to the early
console then it won't look good so we provide CON_Hide and CON_Show to be
called before and after a stdout or stderr output
=============================================================
*/

extern cvar_t* com_ansiColor;

static qboolean stdin_active;
// general flag to tell about tty console mode
static qboolean ttycon_on = qfalse;
static int ttycon_hide = 0;

// some key codes that the terminal may be using, initialised on start up
static int TTY_erase;
static int TTY_werase;
static int TTY_eof;

static struct termios TTY_tc;

static field_t TTY_con;

// This is somewhat of aduplicate of the graphical console history
// but it's safer more modular to have our own here
#define CON_HISTORY 32
static field_t ttyEditLines[ CON_HISTORY ];
static int hist_current = -1, hist_count = 0;

void Field_AutoComplete( field_t *field );
field_t *Hist_Prev( void );


#ifndef MAXPRINTMSG
#define MAXPRINTMSG 1024
#endif


/*
==================
CON_FlushIn

Flush stdin, I suspect some terminals are sending a LOT of shit
FIXME relevant?
==================
*/
static void CON_FlushIn( void )
{
	char key;
	while (read(STDIN_FILENO, &key, 1)!=-1);
}

/*
==================
CON_Back

Output a backspace

NOTE: it seems on some terminals just sending '\b' is not enough so instead we
send "\b \b"
(FIXME there may be a way to find out if '\b' alone would work though)
==================
*/
static void CON_Back( void )
{
	char key;

	key = '\b';
	write(STDOUT_FILENO, &key, 1);
	key = ' ';
	write(STDOUT_FILENO, &key, 1);
	key = '\b';
	write(STDOUT_FILENO, &key, 1);
}

static void CON_MoveBack( void )
{
	write(STDOUT_FILENO, "\033[D", 3);
}

static void CON_MoveForward( void )
{
	write(STDOUT_FILENO, "\033[C", 3);
}

/*
==================
CON_Hide

Clear the display of the line currently edited
bring cursor back to beginning of line
==================
*/
static void CON_Hide( void )
{
	if( ttycon_on )
	{
		int i;
		if (ttycon_hide)
		{
			ttycon_hide++;
			return;
		}
		for (i = TTY_con.cursor; i < TTY_con.len;++i)
		{
			CON_MoveForward();
		}
		for (i=0; i<TTY_con.len; i++)
		{
			CON_Back();
		}
		CON_Back(); // Delete "]"
		ttycon_hide++;
	}
}

/*
==================
CON_Show

Show the current line
FIXME need to position the cursor if needed?
==================
*/
static void CON_Show( void )
{
	if( ttycon_on )
	{
		int i;

		assert(ttycon_hide>0);
		ttycon_hide--;
		if (ttycon_hide == 0)
		{
			write(STDOUT_FILENO, "]", 1);
			for (i=0; i<TTY_con.len; i++)
			{
				write(STDOUT_FILENO, TTY_con.buffer+i, 1);
			}
			for (i = 0; i < TTY_con.len - TTY_con.cursor; ++i)
			{
				CON_MoveBack();
			}
		}
	}
}

/*
==================
CON_Shutdown

Never exit without calling this, or your terminal will be left in a pretty bad state
==================
*/
void CON_Shutdown( void )
{
	if (ttycon_on)
	{
		CON_Back(); // Delete "]"
		tcsetattr (STDIN_FILENO, TCSADRAIN, &TTY_tc);
	}

	// Restore blocking to stdin reads
	fcntl(STDIN_FILENO, F_SETFL, fcntl(STDIN_FILENO, F_GETFL, 0) & ~O_NONBLOCK);
}

/*
==================
Hist_Add
==================
*/
void Hist_Add(field_t *field)
{
	int i;
	assert(hist_count <= CON_HISTORY);
	assert(hist_count >= 0);
	assert(hist_current >= -1);
	assert(hist_current <= hist_count);
	if ((hist_count > 0 && strcmp(field->buffer, ttyEditLines[0].buffer) == 0) || field->len == 0)
	{
		// Don't add duplicate entries to history (same as HISTCONTROL=ignoredups in bash)
		hist_current = -1; // re-init
		return;
	}
	// make some room
	for (i=CON_HISTORY-1; i>0; i--)
	{
		ttyEditLines[i] = ttyEditLines[i-1];
	}
	ttyEditLines[0] = *field;
	if (hist_count<CON_HISTORY)
	{
		hist_count++;
	}
	hist_current = -1; // re-init
}

/*
==================
Hist_Prev
==================
*/
field_t *Hist_Prev( void )
{
	int hist_prev;
	assert(hist_count <= CON_HISTORY);
	assert(hist_count >= 0);
	assert(hist_current >= -1);
	assert(hist_current <= hist_count);
	hist_prev = hist_current + 1;
	if (hist_prev >= hist_count)
	{
		return NULL;
	}
	hist_current++;
	return &(ttyEditLines[hist_current]);
}

/*
==================
Hist_Next
==================
*/
field_t *Hist_Next( void )
{
	assert(hist_count <= CON_HISTORY);
	assert(hist_count >= 0);
	assert(hist_current >= -1);
	assert(hist_current <= hist_count);
	if (hist_current >= 0)
	{
		hist_current--;
	}
	if (hist_current == -1)
	{
		return NULL;
	}
	return &(ttyEditLines[hist_current]);
}


/*
==================
CON_SigCont
Reinitialize console input after receiving SIGCONT, as on Linux the terminal seems to lose all
set attributes if user did CTRL+Z and then does fg again.
==================
*/

void CON_Init(void);


void CON_SigCont(int signum)
{
	CON_Init();
}

#ifndef _isatty
#define _isatty isatty
#endif

/*
==================
CON_Init

Initialize the console input (tty mode if possible)
==================
*/
void CON_Init( void )
{
	struct termios tc;
	qboolean stdinIsATTY;
	const char* term = getenv( "TERM" );

	// If the process is backgrounded (running non interactively)
	// then SIGTTIN or SIGTOU is emitted, if not caught, turns into a SIGSTP
	signal(SIGTTIN, SIG_IGN);
	signal(SIGTTOU, SIG_IGN);

	// If SIGCONT is received, reinitialize console
	signal(SIGCONT, CON_SigCont);

	// Make stdin reads non-blocking
	fcntl(STDIN_FILENO, F_SETFL, fcntl(STDIN_FILENO, F_GETFL, 0) | O_NONBLOCK );

	stdinIsATTY = _isatty( STDIN_FILENO ) && !( term && ( !strcmp( term, "raw" ) || !strcmp( term, "dumb" ) ) );

	if (!stdinIsATTY)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"tty console mode disabled\n");
		ttycon_on = qfalse;
		stdin_active = qtrue;
		return;
	}

	Field_Clear(&TTY_con);
	tcgetattr (STDIN_FILENO, &TTY_tc);
	TTY_erase = TTY_tc.c_cc[VERASE];
	TTY_werase = TTY_tc.c_cc[VWERASE];
	TTY_eof = TTY_tc.c_cc[VEOF];
	tc = TTY_tc;

	/*
	ECHO: don't echo input characters
	ICANON: enable canonical mode.  This  enables  the  special
	characters  EOF,  EOL,  EOL2, ERASE, KILL, REPRINT,
	STATUS, and WERASE, and buffers by lines.
	ISIG: when any of the characters  INTR,  QUIT,  SUSP,  or
	DSUSP are received, generate the corresponding sig�
	nal
	*/
	tc.c_lflag &= ~(ECHO | ICANON);

	/*
	ISTRIP strip off bit 8
	INPCK enable input parity checking
	*/
	tc.c_iflag &= ~(ISTRIP | INPCK);
	tc.c_cc[VMIN] = 1;
	tc.c_cc[VTIME] = 0;
	tcsetattr (STDIN_FILENO, TCSADRAIN, &tc);
	ttycon_on = qtrue;

	com_ansiColor = Cvar_RegisterBool("ttycon_ansiColor", qtrue, CVAR_ARCHIVE, "Use ansi colors for sysconsole output");
}



/*
==================
CON_Input
==================
*/
char *CON_Input( void )
{
	// we use this when sending back commands
	static char text[MAX_EDIT_LINE];
	int avail;
	char key;
	field_t *history;

	if(ttycon_on)
	{
		avail = read(STDIN_FILENO, &key, 1);
		if (avail != -1)
		{
			// we have something
			// backspace?
			// NOTE TTimo testing a lot of values .. seems it's the only way to get it to work everywhere
			if ((key == TTY_erase) || (key == 127) || (key == 8))
			{
				if (TTY_con.len > 0 && TTY_con.cursor > 0)
				{
					CON_Hide();
					memmove(TTY_con.buffer + TTY_con.cursor - 1, TTY_con.buffer + TTY_con.cursor, TTY_con.len - TTY_con.cursor + 2);
					TTY_con.len--;
					TTY_con.cursor--;
					CON_Show();
				}
				return NULL;
			}
			if (key == TTY_werase || key == 23) // delete word
			{
				CON_Hide();
				bool trailing_spaces = TTY_con.cursor > 0 && TTY_con.buffer[TTY_con.cursor - 1] == ' ';
				while (TTY_con.len > 0 && TTY_con.cursor > 0)
				{
					if (TTY_con.buffer[TTY_con.cursor - 1] == ' ')
					{
						if (!trailing_spaces)
						{
							break;
						}
					}
					else
					{
						trailing_spaces = false;
					}
					memmove(TTY_con.buffer + TTY_con.cursor - 1, TTY_con.buffer + TTY_con.cursor, TTY_con.len - TTY_con.cursor + 2);
					TTY_con.len--;
					TTY_con.cursor--;
				}
				CON_Show();
				return NULL;
			}
			// check if this is a control char
			if ((key) && (key) < ' ')
			{
				if (key == '\n')
				{
					TTY_con.cursor = TTY_con.len;
					// push it in history
					Hist_Add(&TTY_con);
					Q_strncpyz(text, TTY_con.buffer, sizeof(text));
					Field_Clear(&TTY_con);
					key = '\n';
					write(STDOUT_FILENO, &key, 1);
					write(STDOUT_FILENO, "]", 1);
					return text;
				}
				if (key == '\t')
				{
					CON_Hide();
					Field_AutoComplete( &TTY_con );
					CON_Show();
					return NULL;
				}
				avail = read(STDIN_FILENO, &key, 1);
				if (avail != -1)
				{
					// VT 100 keys
					if (key == '[' || key == 'O')
					{
						avail = read(STDIN_FILENO, &key, 1);
						if (avail != -1)
						{
							switch (key)
							{
								case 'A':
									history = Hist_Prev();
									if (history)
									{
										CON_Hide();
										TTY_con = *history;
										CON_Show();
									}
									CON_FlushIn();
									return NULL;
									break;
								case 'B':
									history = Hist_Next();
									CON_Hide();
									if (history)
									{
										TTY_con = *history;
									} else
									{
										Field_Clear(&TTY_con);
									}
									CON_Show();
									CON_FlushIn();
									return NULL;
									break;
								case 'C':
									if (TTY_con.cursor < TTY_con.len) {
										TTY_con.cursor++;
										CON_MoveForward();
									}
									return NULL;
								case 'D':
									if (TTY_con.cursor > 0) {
										TTY_con.cursor--;
										CON_MoveBack();
									}
									return NULL;
							}
						}
					}
				}
				Com_DPrintf(CON_CHANNEL_SYSTEM,"droping ISCTL sequence: %d, TTY_erase: %d\n", key, TTY_erase);
				CON_FlushIn();
				return NULL;
			}
			if (TTY_con.len >= sizeof(text) - 1)
				return NULL;
			// push regular character
			CON_Hide();
			memmove(TTY_con.buffer + TTY_con.cursor + 1, TTY_con.buffer + TTY_con.cursor, TTY_con.len - TTY_con.cursor + 1);
			TTY_con.buffer[TTY_con.cursor] = key;
			TTY_con.len++;
			TTY_con.cursor++;
			CON_Show();
		}

		return NULL;
	}
	else if (stdin_active)
	{
		int     len;
		fd_set  fdset;
		struct timeval timeout;

		FD_ZERO(&fdset);
		FD_SET(STDIN_FILENO, &fdset); // stdin
		timeout.tv_sec = 0;
		timeout.tv_usec = 0;
		if(select (STDIN_FILENO + 1, &fdset, NULL, NULL, &timeout) == -1 || !FD_ISSET(STDIN_FILENO, &fdset))
			return NULL;

		len = read(STDIN_FILENO, text, sizeof(text));
		if (len == 0)
		{ // eof!
			stdin_active = qfalse;
			return NULL;
		}

		if (len < 1)
			return NULL;
		text[len-1] = 0;    // rip off the /n and terminate

		return text;
	}
	return NULL;
}


/*
=================
Sys_AnsiColorPrint

Transform Q3 colour codes to ANSI escape sequences
=================
*/
void Sys_AnsiColorPrint( const char *msg )
{
	static char buffer[ MAXPRINTMSG ];
	int         length = 0;
	static int  q3ToAnsi[ 8 ] =
	{
		30, // COLOR_BLACK
		31, // COLOR_RED
		32, // COLOR_GREEN
		33, // COLOR_YELLOW
		34, // COLOR_BLUE
		36, // COLOR_CYAN
		35, // COLOR_MAGENTA
		0   // COLOR_WHITE
	};

	while( *msg )
	{
		if( Q_IsColorString( msg ) || *msg == '\n' )
		{
			// First empty the buffer
			if( length > 0 )
			{
				buffer[ length ] = '\0';
				fputs( buffer, stderr );
				length = 0;
			}

			if( *msg == '\n' )
			{
				// Issue a reset and then the newline
				fputs( "\033[0m\n", stderr );
				msg++;
			}
			else
			{
				// Print the color code
				Com_sprintf( buffer, sizeof( buffer ), "\033[1;%dm",
						q3ToAnsi[ ColorIndex( *( msg + 1 ) ) ] );
				fputs( buffer, stderr );
				msg += 2;
			}
		}
		else
		{
			if( length >= MAXPRINTMSG - 1 )
				break;

			buffer[ length ] = *msg;
			length++;
			msg++;
		}
	}

	// Empty anything still left in the buffer
	if( length > 0 )
	{
		buffer[ length ] = '\0';
		fputs( buffer, stderr );
	}
}



/*
==================
CON_Print
==================
*/
void CON_Print( const char *msg )
{
	CON_Hide( );

	if( com_ansiColor && com_ansiColor->integer )
		Sys_AnsiColorPrint( msg );
	else
		fputs( msg, stderr );

	CON_Show( );
}

//============================================================================
//============================================================================

