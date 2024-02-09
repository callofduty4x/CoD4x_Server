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
#include <fcntl.h>
#include <sys/time.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

#ifndef ENABLE_VIRTUAL_TERMINAL_PROCESSING
#define ENABLE_VIRTUAL_TERMINAL_PROCESSING 0x0004
#endif

// TTY console routines.
// NOTE: if the user is editing a line when something gets printed to the early
// console then it won't look good so we provide CON_Hide and CON_Show to be
// called before and after a stdout or stderr output
static cvar_t* com_ansiColor;

// General flag to tell about tty console mode
static qboolean ttycon_on = qfalse;
static qboolean stdin_active = qtrue;
static int ttycon_hide = 0;

// Some key codes that the terminal may be using, initialised on start up
static field_t TTY_con;
HANDLE hStdout = NULL;
HANDLE hStdin = NULL;
DWORD stdoutOriginalMode = 0;
DWORD stdinOriginalMode = 0;
DWORD stdinConsoleMode = 0;

// This is somewhat of aduplicate of the graphical console history
// But it's safer more modular to have our own here
#define CON_HISTORY 32
static field_t ttyEditLines[CON_HISTORY];
static int hist_current = -1, hist_count = 0;

void Field_AutoComplete(field_t *field);
field_t *Hist_Prev(void);

#ifndef MAXPRINTMSG
#define MAXPRINTMSG 1024
#endif

/**
 * @brief Output a backspace.
 * @remarks it seems on some terminals just sending '\b' is not enough so instead wesend "\b \b".
 * @todo - FIXME there may be a way to find out if '\b' alone would work though.
 */
static void CON_Back(void)
{
	char key;

	key = '\b';
	write(STDOUT_FILENO, &key, 1);
	key = ' ';
	write(STDOUT_FILENO, &key, 1);
	key = '\b';
	write(STDOUT_FILENO, &key, 1);
}

/**
 * @brief Console move back.
 */
static void CON_MoveBack(void)
{
	write(STDOUT_FILENO, "\033[D", 3);
}

/**
 * @brief Console move forward.
 */
static void CON_MoveForward(void)
{
	write(STDOUT_FILENO, "\033[C", 3);
}

/**
 * @brief History add.
 * @param field - The history field.
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
		// Don't add duplicate entries to history (same as HISTCONTROL = ignoredups in bash)
		// Reinit
		hist_current = -1;
		return;
	}
	// Make some room
	for (i = CON_HISTORY - 1; i > 0; i--)
		ttyEditLines[i] = ttyEditLines[i - 1];
	ttyEditLines[0] = *field;
	if (hist_count < CON_HISTORY)
		hist_count++;

	// Reinit
	hist_current = -1;
}

/**
 * @brief History prev.
 * @return field_t*
 */
field_t *Hist_Prev(void)
{
	int hist_prev;
	assert(hist_count <= CON_HISTORY);
	assert(hist_count >= 0);
	assert(hist_current >= -1);
	assert(hist_current <= hist_count);

	hist_prev = hist_current + 1;
	if (hist_prev >= hist_count)
		return NULL;
	hist_current++;
	return &(ttyEditLines[hist_current]);
}

/**
 * @brief History next.
 * @return field_t*
 */
field_t *Hist_Next(void)
{
	assert(hist_count <= CON_HISTORY);
	assert(hist_count >= 0);
	assert(hist_current >= -1);
	assert(hist_current <= hist_count);

	if (hist_current >= 0)
		hist_current--;
	if (hist_current == -1)
		return NULL;
	return &(ttyEditLines[hist_current]);
}

/**
 * @brief Create console.
 */
void CON_Init(void)
{
	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);
	hStdin = GetStdHandle(STD_INPUT_HANDLE);
    GetConsoleMode(hStdout, &stdoutOriginalMode);
    GetConsoleMode(hStdin, &stdinOriginalMode);

	// Detect ansi support
	qboolean ansiSupport = !!(stdoutOriginalMode & ENABLE_VIRTUAL_TERMINAL_PROCESSING);

    // Disable line buffering and echoing of input characters
    stdinConsoleMode = stdinOriginalMode & ~(ENABLE_ECHO_INPUT | ENABLE_LINE_INPUT);
    SetConsoleMode(hStdin, stdinConsoleMode);

	Field_Clear(&TTY_con);
	ttycon_on = qtrue;

	com_ansiColor = Cvar_RegisterBool("ttycon_ansiColor", ansiSupport, CVAR_ARCHIVE, "Use ansi colors for sysconsole output");
}

/**
 * @brief Shutdown console.
 */
void CON_Shutdown(void)
{
	if (ttycon_on)
		CON_Back();
	// Restore blocking to stdin reads
	SetConsoleMode(hStdin, stdinOriginalMode);
}

/**
 * @brief Console show.
 */
void CON_Show(void)
{
	if (ttycon_on)
	{
		int i;
		assert(ttycon_hide > 0);
		ttycon_hide--;

		if (ttycon_hide == 0)
		{
			write(STDOUT_FILENO, "]", 1);
			for (i = 0; i < TTY_con.len; i++)
				write(STDOUT_FILENO, TTY_con.buffer + i, 1);
			for (i = 0; i < TTY_con.len - TTY_con.cursor; ++i)
				CON_MoveBack();
		}
	}
}

/**
 * @brief Clear the display of the line currently edited bring cursor back to beginning of line.
 */
static void CON_Hide(void)
{
	if (ttycon_on)
	{
		int i;

		if (ttycon_hide)
		{
			ttycon_hide++;
			return;
		}
		for (i = TTY_con.cursor; i < TTY_con.len; ++i)
			CON_MoveForward();
		for (i = 0; i < TTY_con.len; i++)
			CON_Back();

		CON_Back();
		ttycon_hide++;
	}
}

/**
 * @brief Console input.
 * @return char*
 */
char *CON_Input(void)
{
	// We use this when sending back commands
	static char text[MAX_EDIT_LINE];
	field_t *history;

	if (ttycon_on)
	{
		DWORD numEventsRead;
		DWORD lpNumberOfEvents;
		INPUT_RECORD inputRecord;

		GetNumberOfConsoleInputEvents(hStdin, &lpNumberOfEvents);
		if (!lpNumberOfEvents)
			return NULL;

		ReadConsoleInput(hStdin, &inputRecord, 1, &numEventsRead);
		if (inputRecord.EventType != KEY_EVENT || !inputRecord.Event.KeyEvent.bKeyDown)
			return NULL;

		WORD event = inputRecord.Event.KeyEvent.wVirtualKeyCode;
		char key = inputRecord.Event.KeyEvent.uChar.AsciiChar;

		// We have something, backspace ?
		// NOTE: TTimo testing a lot of values .. seems it's the only way to get it to work everywhere
		if (event == VK_BACK || event == VK_DELETE)
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
		// Delete word
		if (event == VK_ESCAPE)
		{
			CON_Hide();
			bool trailing_spaces = TTY_con.cursor > 0 && TTY_con.buffer[TTY_con.cursor - 1] == ' ';
			while (TTY_con.len > 0 && TTY_con.cursor > 0)
			{
				if (TTY_con.buffer[TTY_con.cursor - 1] == ' ')
				{
					if (!trailing_spaces)
						break;
				}
				else
					trailing_spaces = false;
				memmove(TTY_con.buffer + TTY_con.cursor - 1, TTY_con.buffer + TTY_con.cursor, TTY_con.len - TTY_con.cursor + 2);
				TTY_con.len--;
				TTY_con.cursor--;
			}
			CON_Show();
			return NULL;
		}
		if (event == VK_RETURN)
		{
			// Push it in history
			TTY_con.cursor = TTY_con.len;
			Hist_Add(&TTY_con);
			Q_strncpyz(text, TTY_con.buffer, sizeof(text));
			Field_Clear(&TTY_con);
			write(STDOUT_FILENO, "\n]", 2);
			return text;
		}
		if (event == VK_TAB)
		{
			CON_Hide();
			Field_AutoComplete(&TTY_con);
			CON_Show();
			return NULL;
		}
		if (event == VK_UP)
		{
			history = Hist_Prev();
			if (history)
			{
				CON_Hide();
				TTY_con = *history;
				CON_Show();
			}
			return NULL;
		}
		if (event == VK_DOWN)
		{
			history = Hist_Next();
			CON_Hide();
			if (history)
				TTY_con = *history;
			else
				Field_Clear(&TTY_con);
			CON_Show();
			return NULL;
		}
		if (event == VK_LEFT)
		{
			if (TTY_con.cursor > 0)
			{
				TTY_con.cursor--;
				CON_MoveBack();
			}
			return NULL;
		}
		if (event == VK_RIGHT)
		{
			if (TTY_con.cursor < TTY_con.len)
			{
				TTY_con.cursor++;
				CON_MoveForward();
			}
			return NULL;
		}
		if (!key || TTY_con.len >= sizeof(text) - 1)
			return NULL;

		// Push regular character
		CON_Hide();
		memmove(TTY_con.buffer + TTY_con.cursor + 1, TTY_con.buffer + TTY_con.cursor, TTY_con.len - TTY_con.cursor + 1);
		TTY_con.buffer[TTY_con.cursor] = key;
		TTY_con.len++;
		TTY_con.cursor++;
		CON_Show();
		return NULL;
	}
	else if (stdin_active)
	{
		int len;
		fd_set fdset;
		struct timeval timeout;

		FD_ZERO(&fdset);
		FD_SET(STDIN_FILENO, &fdset);
		timeout.tv_sec = 0;
		timeout.tv_usec = 0;
		if (select(STDIN_FILENO + 1, &fdset, NULL, NULL, &timeout) == -1 || !FD_ISSET(STDIN_FILENO, &fdset))
			return NULL;

		len = read(STDIN_FILENO, text, sizeof(text));
		if (len == 0)
		{
			// EOF
			stdin_active = qfalse;
			return NULL;
		}
		if (len < 1)
			return NULL;

		// Rip off the /n and terminate
		text[len-1] = 0;
		return text;
	}
	return NULL;
}

/**
 * @brief Transform Q3 colour codes to ANSI escape sequences.
 * @param msg - The message to transform.
 */
void Sys_AnsiColorPrint(const char *msg)
{
	static char buffer[MAXPRINTMSG];
	int length = 0;

	static int q3ToAnsi[8] = {
		30, // COLOR_BLACK
		31, // COLOR_RED
		32, // COLOR_GREEN
		33, // COLOR_YELLOW
		34, // COLOR_BLUE
		36, // COLOR_CYAN
		35, // COLOR_MAGENTA
		0   // COLOR_WHITE
	};

	while (*msg)
	{
		if (Q_IsColorString(msg) || *msg == '\n')
		{
			// First empty the buffer
			if (length > 0)
			{
				buffer[length] = '\0';
				fputs(buffer, stderr);
				length = 0;
			}
			if (*msg == '\n')
			{
				// Issue a reset and then the newline
				fputs("\033[0m\n", stderr);
				msg++;
			}
			else
			{
				// Print the color code
				Com_sprintf(buffer, sizeof(buffer), "\033[1;%dm", q3ToAnsi[ColorIndex(*(msg + 1))]);
				fputs(buffer, stderr);
				msg += 2;
			}
		}
		else
		{
			if (length >= MAXPRINTMSG - 1)
				break;

			buffer[length] = *msg;
			length++;
			msg++;
		}
	}
	// Empty anything still left in the buffer
	if (length > 0)
	{
		buffer[length] = '\0';
		fputs(buffer, stderr);
	}
}

/**
 * @brief Print to the console.
 * @param msg - The message.
 */
void CON_Print(const char *msg)
{
	CON_Hide();

	if (com_ansiColor && com_ansiColor->integer)
		Sys_AnsiColorPrint(msg);
	else
		fputs(msg, stderr);

	CON_Show();
}
