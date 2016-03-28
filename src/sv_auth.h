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



#include "q_shared.h"
#include "sys_net.h"
#include "msg.h"
#include "server.h"

#ifndef __SV_AUTH_H__
#define __SV_AUTH_H__


#define MAX_AUTH_ADMINS 512


typedef struct{
	char username[32];
	char salt[129];
	char sha256[65];
	char sessionid[65];
	int power;
	uint64_t steamid;
	qboolean undercover;
}authData_admin_t; // size: 32 + 129 + 65 = 289 B

typedef struct{
	authData_admin_t admins[MAX_AUTH_ADMINS];
}authData_t; // size: MAX_AUTH_ADMINS * 289 = 512 * 289 = 147.968 ~= 148kB


void Auth_ChangeAdminPassword( uint64_t steamid, const char* password );
int Auth_Authorize(const char *login, const char *password);
void Auth_WipeSessionId(const char *username);

qboolean Auth_AddAdminToList(const char* username, const char* password, const char* salt, int power, uint64_t steamid, qboolean undercover);
void Auth_ClearAdminList( void );

void Auth_Init();
uint64_t Auth_GetSteamID(const char *name);
const char* Auth_GetNameBySteamID(uint64_t steamid);
int Auth_GetClPowerBySteamID(uint64_t steamid);
int Auth_GetClPower(client_t* cl);
uint64_t Auth_GetSteamIDByUID(int uid);
authData_admin_t* Auth_GetAdminFromIndex( int index );
void Auth_UpdateSteamID(uint64_t steamid);
void Auth_UpdateName(uint64_t uid, const char* name);

qboolean Auth_InfoAddAdmin(const char* line);
void Auth_WriteAdminConfig(char* buffer, int size);

const char* Auth_FindSessionID(const char* sessionid);
const char* Auth_GetSessionId(const char* username, const char *password);
void Auth_ApplyUndercoverStatus(client_t* cl);
void Auth_StoreUndercoverStatus(client_t* cl);
qboolean Auth_CanPlayerUseCommand(unsigned int clnum, const char* cmd);
void Auth_AddCommandForClientToWhitelist(int clnum, const char* cmd);
#endif
