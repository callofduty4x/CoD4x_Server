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

#ifndef __HL2RCON_H__
#define __HL2RCON_H__

/*
========================================================================

Source Rcon facility

========================================================================
*/

#define MAX_RCONUSERS 8
#define MAX_RCONLOGINS 64

typedef struct{
	netadr_t remote;
	int lastpacketid;
	qboolean streamlog;
	qboolean streamchat;
	qboolean streamgamelog;
	qboolean streamevents;
	uint64_t steamid;
	char rconUsername[32];
}rconUser_t;

typedef struct{
	rconUser_t activeRconUsers[MAX_RCONUSERS];
	//For redirect
	int redirectUser;
	qboolean writeerror;
}sourceRcon_t;

typedef enum{
    SERVERDATA_RESPONSE_VALUE = 0,
    SERVERDATA_EXECCOMMAND = 2,
    SERVERDATA_AUTH_RESPONSE = 2,
    SERVERDATA_AUTH = 3,

    SERVERDATA_TURNONSTREAM = 64,
    SERVERDATA_GAMELOG = 65,
    SERVERDATA_CONLOG = 66,
    SERVERDATA_CHAT = 67,
    SERVERDATA_GETSTATUS = 68,
    SERVERDATA_STATUSRESPONSE = 69,
    SERVERDATA_SAY = 70,
    SERVERDATA_EVENT = 71
}sourceRconCommands_t;

typedef enum{
    RCONEVENT_PLAYERENTERGAME = 0,
    RCONEVENT_PLAYERLEAVE = 1,
    RCONEVENT_LEVELSTART = 2,
    RCONEVENT_PLAYERENTERTEAM = 3
}sourceRconEvents_t;


void HL2Rcon_SetSourceRconAdmin_f( void );
void HL2Rcon_UnsetSourceRconAdmin_f( void );
void HL2Rcon_ListSourceRconAdmins_f( void );
void HL2Rcon_ChangeSourceRconAdminPassword( const char* password );
qboolean HL2Rcon_AddSourceRconAdminToList(const char* username, const char* password, const char* salt, int power);
void HL2Rcon_ClearSourceRconAdminList( void );
void HL2Rcon_SourceRconDisconnect(netadr_t *from, int connectionId);
void HL2Rcon_SourceRconSendConsole( const char* data, int msglen);
void HL2Rcon_SourceRconSendChat( const char* data, int clientnum, int type);

void HL2Rcon_SourceRconSendDataToEachClient( const byte* data, int msglen, int type);
void HL2Rcon_SourceRconFlushRedirect(char* outputbuf, qboolean lastcommand);
int HL2Rcon_SourceRconEvent(netadr_t *from, msg_t *msg, int connectionId);
void HL2Rcon_AddSourceAdminCommands();
void HL2Rcon_SourceRconSendGameLog( const char* data, int msglen);
void HL2Rcon_SourceRconSendChatToEachClient( const char *text, rconUser_t *self, int cid, qboolean onlyme);
void HL2Rcon_EventClientEnterTeam(int cid, int team);
void HL2Rcon_EventClientEnterWorld(int cid);
void HL2Rcon_EventClientLeave(int cid);
void HL2Rcon_EventLevelStart();
void HL2Rcon_Init();
qboolean HL2Rcon_InfoAddAdmin(const char* line);
void HL2Rcon_WriteAdminConfig(char* buffer, int size);

#endif
