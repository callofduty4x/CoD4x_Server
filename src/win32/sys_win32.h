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

#include "../q_shared.h"
#include "../objfile_parser.h"

//#define WIN32_LEAN_AND_MEAN // Need to test if it works with it :P

#include <windows.h>

typedef struct
{

HINSTANCE reflib_library; // Handle to refresh DLL
qboolean reflib_active;

HWND hWnd;
HINSTANCE hInstance;
qboolean activeApp;
qboolean isMinimized;
OSVERSIONINFO osversion;

// when we get a windows message, we store the time off so keyboard processing
// can know the exact time of an event
unsigned sysMsgTime;
qboolean windowsCreated;
} WinVars_t;

void CON_Show( int visLevel, qboolean quitOnClose );
char** PE32_GetStrTable(void *buff, int len, sharedlib_data_t *text);

extern WinVars_t g_wv;
extern byte cod4_plt[8192];
#define IDI_ICON1                       1

HANDLE Sys_CreateThreadWithHandle(void* (*ThreadMain)(void*), threadid_t *tid, void* arg);
