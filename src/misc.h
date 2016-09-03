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



#ifndef __MISC_H__
#define __MISC_H__

#include "q_shared.h"
#include "player.h"

#define STRBUFFBASEPTR_ADDR 0x897d780


void __cdecl Swap_Init(void);
void __cdecl CSS_InitConstantConfigStrings(void);
void __cdecl Con_InitChannels(void);
void __cdecl SEH_UpdateLanguageInfo(void);
void __cdecl SetAnimCheck(int);
qboolean __cdecl BG_IsWeaponValid( playerState_t *ps, unsigned int index);
qboolean __cdecl SEH_StringEd_GetString( const char* input );

void __cdecl SL_Init(void);
void __cdecl SL_RemoveRefToString( unsigned int );
char* SL_ConvertToString(unsigned int index);
int SL_FindString(const char *string);
unsigned int SL_FindLowercaseString(const char *upperstring);
int __cdecl SL_GetStringOfSize(const char *string, int, unsigned int len);
unsigned int __cdecl SL_GetLowercaseString(const char *str, int type);
unsigned int __cdecl SL_GetString(const char *str, int type);
int REGPARM(2) FindStringOfSize(const char *string, unsigned int size);
void AddRedirectLocations(void);
qboolean __cdecl Com_LoadDvarsFromBuffer(const char **inputbuf, unsigned int length, const char *data_p, const char *filename);

#endif

/*
void __cdecl HECmd_SetText)( scr_entref_t );
tHECmd_SetText HECmd_SetText = (tHECmd_SetText)(0x808f7f6);
*/

