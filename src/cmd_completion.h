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



#ifndef __CMD_COMPLETION_H__
#define __CMD_COMPLETION_H__

#include "cvar.h"
#include "cmd.h"
/*
==============================================================

Edit fields and command line history/completion

==============================================================
*/
//typedef void (*completionFunc_t)( char *args, int argNum );

#define	MAX_EDIT_LINE	256
typedef struct {
	int		cursor;
	int		scroll;
	int		len;
	char	buffer[MAX_EDIT_LINE];
} field_t;




void Cvar_CommandCompletionPrint( cvar_t const *cvar, void* none);
void Cvar_CommandCompletionFind( cvar_t const *cvar, void* none);
void Cvar_CompleteCvarName( char *args, int argNum );

void Field_Clear( field_t *edit );
void Field_CompleteCommand( char *cmd, qboolean doCommands, qboolean doCvars );
void Field_AutoComplete( field_t *field );

#endif

