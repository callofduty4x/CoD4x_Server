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

#pragma once

#include "qshared.hpp"

struct gentity_s;
struct client_t;

void Init_CallVote();
void Cmd_CallVote_f(gentity_s*ent);
void G_ChatRedirect(char* msg, int client, int mode);
void G_AddChatRedirect(void (*rd_dest)( const char *, int, int));
void G_SayTo(gentity_s*ent, gentity_s*other, int mode, int color, const char *teamname, const char *name, const char *message);
void G_ShowMotd(unsigned int clnum);
qboolean Cmd_FollowClient_f(gentity_s* ent, int clientnum);
void ClientCleanName(const char* in, char* out, int outSize, qboolean allowcolor); 
void ClientCommand(int);
void G_DestroyAdsForPlayer(client_t* cl);
void G_AddRule(const char* newtext);
void G_AddAdvert(const char* newtext);
void G_InitMotd();
void G_ClearAllMessages();

extern "C"
{
    void CCDECL ClientUserinfoChanged( int clientNum );
    int CCDECL G_LocalizedStringIndex( const char* );
    void CCDECL Jump_ClampVelocity(playerState_t* ps, vec3_t vec);
    qboolean CCDECL Jump_IsPlayerAboveMax(playerState_t* ps);
    qboolean CCDECL Jump_GetStepHeight(playerState_t* ps, const vec3_t vec1, float* val2);
    float CCDECL Jump_CalcHeight(playerState_t* ps);
}; //extern "C"

