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



#include "sv_auth.h"
#include "q_shared.h"
#include "qcommon.h"
#include "qcommon_io.h"
#include "cmd.h"
#include "nvconfig.h"
#include "msg.h"
#include "sys_net.h"
#include "server.h"
#include "net_game_conf.h"
#include "punkbuster.h"
#include "net_game.h"
#include "g_sv_shared.h"
#include "sec_crypto.h"
#include "sapi.h"

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
/*
========================================================================

Temporary solution for admin authorization due to 3xP clan stealing CD-Keys

========================================================================
*/


authData_t auth_admins;

#define AUTH_DEFAULT_POWER 1


const char* Auth_FindSessionID(const char* sessionid)
{
	int i;
	authData_admin_t *user;

	if(strlen(sessionid) != 64)
	{
		return NULL;
	}

	for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++){

		if(!Q_stricmp(user->sessionid, sessionid))
		{
			return user->username;
		}
	}
	return NULL;

}

const char* Auth_GetSessionId(const char* username, const char *password)
{
	int handle;
	byte buff[129];
	unsigned long size;
	handle = Auth_Authorize(username, password);
	if(handle < 0)
	{
		return NULL;
	}
	size = sizeof(auth_admins.admins[handle].sessionid);
	Com_RandomBytes(buff, sizeof(buff));
	Sec_HashMemory( SEC_HASH_SHA256, buff, sizeof(buff), auth_admins.admins[handle].sessionid, &size, qfalse );
	return auth_admins.admins[handle].sessionid;
}

authData_admin_t* Auth_GetByUsername(const char* username)
{
	int i;
	authData_admin_t *user;

    for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++){
			if(*user->username && !Q_stricmp(user->username, username))
			{
				return user;
			}
    }
    return NULL;
}

void Auth_WipeSessionId(const char* username)
{
	authData_admin_t *user;
	int i, id;
	id = -1;

	for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++)
	{
		if(*user->username && !Q_stricmp(user->username,username))
		{
			id = i;
			break;
		}
	}

	if(id < 0)
	{
		return;
	}

	auth_admins.admins[id].sessionid[0] = '\0';
	return;
}



int Auth_Authorize(const char *login, const char *password){
    int i;
    unsigned long sizeofhash;
    char hstring[256];
    char sha256[129];
    authData_admin_t *user;
    int id = -1;

    for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++){
			if(*user->username && !Q_stricmp(user->username,login))
			{
				id = i;
				break;
			}
    }
    if(id < 0){
			return id;
    }
    user = &auth_admins.admins[id];

    Com_sprintf(hstring, sizeof(hstring), "%s.%s", password, user->salt);

    sizeofhash = sizeof(sha256);

    if(!Sec_HashMemory(SEC_HASH_SHA256, hstring, strlen(hstring), sha256, &sizeofhash, qfalse))
    {
        return -1;
    }

    if(Q_strncmp(user->sha256, sha256, 128))
    {
			return -1;
    }
    return id;
}


uint64_t Auth_GetSteamID(const char *name){
  int i;
  authData_admin_t *user;
  uint64_t id = 0;


	id = SV_SApiStringToID(name);

	if(id > 0 && SV_SApiSteamIDIndividualSteamOnly(id))
	{
		for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++){
			if(user->steamid == id)
			{
				return user->steamid;
			}
		}
		return 0;
	}

  for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++){
		if(*user->username && !Q_stricmp(user->username,name))
			id = user->steamid;
  }
  return id;
}


/*
 ============
 SV_SetAdmin_f
 ============
 */

static void Auth_SetAdmin_f() {

    int power, i;
		uint64_t steamid;
	const char *name;
	char stdname[32];
	authData_admin_t* free = NULL;
	authData_admin_t* user;

    power = atoi(Cmd_Argv(2));

    if ( Cmd_Argc() != 3 || power < 1 || power > 100) {
        Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: AdminAddAdmin <user> <power>\n" );
        Com_Printf(CON_CHANNEL_DONT_FILTER, "Where user is one of the following: online-playername | online-playerslot | SteamId\n" );
	Com_Printf(CON_CHANNEL_DONT_FILTER, "Where power is one of the following: Any number between 1 and 100\n" );
	Com_Printf(CON_CHANNEL_DONT_FILTER, "online-playername can be a fraction of the playername.\n" );
        Com_Printf(CON_CHANNEL_DONT_FILTER, "Note: This command can also be used to change the power of an admin\n" );
	Com_Printf(CON_CHANNEL_DONT_FILTER,"^1IMPORTANT: ^7This command is for the high privileged admin only\n");
	Com_Printf(CON_CHANNEL_DONT_FILTER,"Don't create non admin accounts (VIP) with a level of 10 or more points\n");
	return;
    }

    name = SV_GetPlayerNameByHandle(Cmd_Argv(1));
	steamid = SV_GetPlayerSteamIDByHandle(Cmd_Argv(1));
	if(steamid == 0)
	{

		Com_Printf(CON_CHANNEL_DONT_FILTER,"No such player with a valid SteamID found.\n");
		return;
	}
    if(Cmd_GetInvokerSteamID() == 0 && Cmd_GetInvokerSteamID() == steamid)
    {
    //If you attempt to manipulate your own power we don't let you :)
        Com_PrintError(CON_CHANNEL_DONT_FILTER,"Modifiying your own powerpoints is forbidden :)\n");
        Com_Printf(CON_CHANNEL_DONT_FILTER,"You should be able to use Rcon if you are permitted to do this.\n");
        return;
    }

    if(Cmd_GetInvokerPower() != 100 && power >= Cmd_GetInvokerPower())
    {
    //If you attempt to set an admin equal or above your own power we don't let you :)
        Com_PrintError(CON_CHANNEL_DONT_FILTER,"Creating an admin which has more or equal to your own powerpoints is forbidden :)\n");
        Com_Printf(CON_CHANNEL_DONT_FILTER,"You should be able to use Rcon if you are permitted to do this.\n");
        return;
    }
	NV_ProcessBegin();
	for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++){

		if(user->steamid == steamid )
		{
			user->power = power;
			if(name && strlen(name) > 2)
			{
					Q_strncpyz(user->username, name, sizeof(user->username));
			}
			char ssti[128];
			SV_SApiSteamIDToString(user->steamid, ssti, sizeof(ssti));
			Com_Printf(CON_CHANNEL_DONT_FILTER,"Updated an admin with name %s, SteamId %s and power %d\n", user->username, ssti, user->power);
			NV_ProcessEnd();
			return;
		}

		if(!free && !*user->username )
		{
			free = user;
		}
	}

	if(!free){
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Too many registered admins. Limit is: %d\n", MAX_AUTH_ADMINS);
		return;
	}

	if(name && strlen(name) > 2)
	{
		Q_strncpyz(free->username, name, sizeof(free->username));
	}else{
		SV_SApiSteamIDToString(steamid, stdname, sizeof(stdname));
		Q_strncpyz(free->username, stdname, sizeof(free->username));
	}

	free->sha256[0] = '\0';
	free->salt[0] = '\0';
	free->power = power;
	free->steamid = steamid;
	char ssti[128];
	SV_SApiSteamIDToString(free->steamid, ssti, sizeof(ssti));
	Com_Printf(CON_CHANNEL_DONT_FILTER,"Added a new admin with name %s, SteamId %s and power %d\n", free->username, ssti, free->power);
	NV_ProcessEnd();
}



void Auth_UnsetAdmin_f( void ){

	int i;
	uint64_t id;
	authData_admin_t* user;

	if(Cmd_Argc() != 2){
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Usage: AdminRemoveAdmin <user>\n");
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Where user is one of the following: name of admin | steamid\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Name has to be the full known admin name.\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Note: Use the command \"AdminListAdmins\" to get a list of known admins\n");
		Com_Printf(CON_CHANNEL_DONT_FILTER,"^1IMPORTANT: ^7This command is for the high privileged badmin only\n");
		return;
	}

	id = Auth_GetSteamID(Cmd_Argv(1));
  if(id == 0){
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Admin %s not found.\n", Cmd_Argv(1));
		return;
  }

	NV_ProcessBegin();

	for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++){

		if(user->steamid == id)
		{
			Com_Printf(CON_CHANNEL_DONT_FILTER,"Removed %s from the list of admins\n", user->username);
			Com_Memset(user, 0, sizeof(authData_admin_t));
			NV_ProcessEnd();
			return;
		}
	}
	Com_Printf(CON_CHANNEL_DONT_FILTER,"Admin %s not found. This should not happen\n", Cmd_Argv(1));
	NV_ProcessEnd();
}


void Auth_ListAdmins_f( void ){
	char ssti[128];
	int i;
	authData_admin_t* user;

	Com_Printf(CON_CHANNEL_DONT_FILTER,"------- Admins: -------\n");
	for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++){
		if(*user->username)
		{
			SV_SApiSteamIDToString(user->steamid, ssti, sizeof(ssti));
			Com_Printf(CON_CHANNEL_DONT_FILTER,"  %2d:   Name: %s, Power: %d, SteamId: %s\n", i+1, user->username, user->power, ssti);
		}
	}
	Com_Printf(CON_CHANNEL_DONT_FILTER,"---------------------------------\n");
}

authData_admin_t* Auth_GetAdminFromIndex( int index )
{

	if(index >= MAX_AUTH_ADMINS)
	{
		return NULL;
	}
	return &auth_admins.admins[index];

}


void Auth_ChangeAdminPassword( uint64_t steamid, const char* password ){

	char sha256[129];
	byte buff[129];
	char salt[65];
	unsigned long size;
	char pwsalt[1024];
	authData_admin_t *user, *user2;
	int i;

	if(!password || strlen(password) < 6){
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: the new password must have at least 6 characters\n");
		return;
	}

	NV_ProcessBegin();

	for(i = 0, user2 = auth_admins.admins, user = NULL; i < MAX_AUTH_ADMINS; i++, user2++){
		if(*user2->username && user2->steamid == steamid){
		    user = user2;
		}
	}
	if(user == NULL){
			char ssti[128];
			SV_SApiSteamIDToString(steamid, ssti, sizeof(ssti));
	    Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: unknown admin %s!\n", ssti);
	    NV_ProcessEnd();
	    return;
	}


	Com_RandomBytes(buff, sizeof(buff));


	size = sizeof(salt);
	if(!Sec_HashMemory(SEC_HASH_SHA256,buff,sizeof(buff),salt,&size,qfalse))
	{
	    Com_PrintError(CON_CHANNEL_DONT_FILTER,"Auth_ChangeAdminPassword: Internal SHA error\n");
	}

	Com_sprintf(pwsalt, sizeof(pwsalt), "%s.%s", password, salt);

	size = sizeof(sha256);
	if(!Sec_HashMemory(SEC_HASH_SHA256, pwsalt, strlen(pwsalt), sha256, &size, qfalse))
	{
	    Com_PrintError(CON_CHANNEL_DONT_FILTER,"Auth_ChangeAdminPassword: Internal SHA error\n");
	}

	Q_strncpyz(user->sha256, sha256, sizeof(user->sha256));
	Q_strncpyz(user->salt, (char *)salt, sizeof(user->salt));

	NV_ProcessEnd();

	Com_Printf(CON_CHANNEL_DONT_FILTER,"Password changed\n");
}


void Auth_ChangePasswordByMasterAdmin_f()
{
    uint64_t id;

    if(Cmd_Argc()!= 3){
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Usage: AdminChangePassword <user> <newPassword>\n");
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Where user is one of the following: name of admin | steamid\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Name has to be the full known admin name.\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Note: Use the command \"AdminListAdmins\" to get a list of known admins\n");
		Com_Printf(CON_CHANNEL_DONT_FILTER,"^1IMPORTANT: ^7This command is for the high privileged badmin only\n");
		return;
    }

    id = Auth_GetSteamID(Cmd_Argv(1));
    if(id == 0){
			Com_Printf(CON_CHANNEL_DONT_FILTER,"Admin %s not found.\n",Cmd_Argv(1));
			return;
    }
    Auth_ChangeAdminPassword( id, Cmd_Argv(2) );
}

void Auth_ChangeOwnPassword_f()
{
	const char* name;
	const char* password;
	uint64_t steamid;
	int id;


	if(Cmd_Argc()!= 3){
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Usage: ChangePassword <oldPassword> <newPassword>\n");
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Use this command to change your current password to a new one\n");
		return;
    }

	steamid = Cmd_GetInvokerSteamID();

	if(steamid < 1)
    {
        Com_Printf(CON_CHANNEL_DONT_FILTER,"This command can not be used from this place\nYou have no account it seems\n");
		return;
    }

	password = Cmd_Argv(1);
	name = Auth_GetNameBySteamID(steamid);

	if(name == NULL)
	{
        Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: No such name has been found. It seems like you aren't an admin.\n");
		return;
	}
	id = Auth_Authorize(name, password);
	if(id < 0 || id > MAX_AUTH_ADMINS)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: Your old password doesn't match\n");
		return;
	}
	Auth_ChangeAdminPassword( steamid, Cmd_Argv(2) );

}

void Auth_ClearAdminList( )
{
    Com_Memset(auth_admins.admins, 0, sizeof(auth_admins.admins));
}

qboolean Auth_AddAdminToList(const char* username, const char* password, const char* salt, int power, uint64_t steamid, qboolean undercover){

	authData_admin_t* user;
	authData_admin_t* free = NULL;
	int i;

	if(steamid == 0 || !username || !*username || power < 0 || power > 100 /*!password || strlen(password) < 6 || !salt || strlen(salt) != 64*/)
		return qfalse;

	for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++){

		if(user->steamid == steamid)
		{
			user->undercover = undercover;
			if(username[0])
			{
					Q_strncpyz(user->username, username, sizeof(user->username));
			}

			if(salt && salt[0] && password && password[0])
			{
				Q_strncpyz(user->sha256, password, sizeof(user->sha256));
				Q_strncpyz(user->salt, salt, sizeof(user->salt));
			}

			if(power > 0 && power > user->power)
			{
				user->power = power;
			}
			return qtrue;
		}
		if(!Q_stricmp(user->username, username)){
			return qfalse;
		}

		if(!free && user->steamid == 0){
			free = user;
			break; // We don't need to go to the end if we have already found an empty spot
		}
	}
	if(!free)
		return qfalse;

	Q_strncpyz(free->username, username, sizeof(free->username));
	Q_strncpyz(free->sha256, password, sizeof(free->sha256));
	Q_strncpyz(free->salt, salt, sizeof(free->salt));
	free->steamid = steamid;
	if(power > 0)
	{
		free->power = power;
	}
	free->undercover = undercover;
	return qtrue;
}
/*
static void Auth_Login_f(){

    client_t *invoker;
    int clientNum;
		uint64_t steamid;


    if(Cmd_Argc() != 3){
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Usage: %s <loginname> <password>\n",Cmd_Argv(0));
		return;
    }

    clientNum = Cmd_GetInvokerClnum();
    if(clientNum < 0)
    {
        Com_Printf(CON_CHANNEL_DONT_FILTER,"This command can only be used from the ingame adminsystem\n");
		return;
    }
    if(clientNum < 0 || clientNum > 63){
		Com_Error(ERR_FATAL,"Auth_Login_f: index out of bounds.\n");
		return;
    }

    if(Cmd_GetInvokerSteamID() > 0)
    {
        Com_Printf(CON_CHANNEL_DONT_FILTER,"You have already an user id. You can not use this command (twice)\n");
        return;
    }

    invoker = &svs.clients[clientNum];

    steamid = Auth_Authorize(Cmd_Argv(1),Cmd_Argv(2));
    if(steamid < 0 || steamid > MAX_AUTH_ADMINS){
		//Com_PrintLogFile("Failed login attempt from slot %d with login %s. Client dropped.",clientNum,Cmd_Argv(1));
		SV_DropClient(invoker,"Incorrect login credentials.\n");
		return;
    }

    invoker->steamid = auth_admins.admins[id].steamid;
    invoker->power = auth_admins.admins[id].power;
    Com_Printf(CON_CHANNEL_DONT_FILTER,"^2Successfully authorized. SteamID: %llu, name: %s, power: %d\n",
			   auth_admins.admins[id].steamid, auth_admins.admins[id].username, invoker->power);
}
*/


/*
============
Auth_SetCommandPower_f
Changes minimum-PowerLevel of a command
============
*/

static void Auth_SetCommandPower_f() {

    const char* command;
    int power;


    if ( Cmd_Argc() != 3 || atoi(Cmd_Argv(2)) < 1 || atoi(Cmd_Argv(2)) > 100) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: AdminChangeCommandPower <command> <minpower>\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Where power is one of the following: Any number between 1 and 100\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Where command is any command you can invoke from console / rcon but no cvars\n" );
		return;
    }

    NV_ProcessBegin();

    command = Cmd_Argv(1);
    power = atoi(Cmd_Argv(2));

    if(Cmd_SetPower(command, power))
    {
        Com_Printf(CON_CHANNEL_DONT_FILTER,"changed required power of cmd: %s to new power: %i\n", command, power);
    }else{
        Com_Printf(CON_CHANNEL_DONT_FILTER,"Failed to change power of cmd: %s Maybe this is not a valid command.\n", command);
    }
    NV_ProcessEnd();

}




void Auth_Init()
{

	static qboolean	initialized;

	if ( initialized ) {
		return;
	}
	initialized = qtrue;

	Auth_ClearAdminList();

	Cmd_AddPCommand("AdminRemoveAdmin", Auth_UnsetAdmin_f, 95);
	Cmd_AddPCommand("AdminAddAdmin", Auth_SetAdmin_f, 95);
	Cmd_AddPCommand("AdminListAdmins", Auth_ListAdmins_f, 80);
	Cmd_AddPCommand("AdminChangePassword", Auth_ChangePasswordByMasterAdmin_f, 95);
	Cmd_AddPCommand("AdminChangeCommandPower", Auth_SetCommandPower_f, 98);
	Cmd_AddPCommand("ChangePassword", Auth_ChangeOwnPassword_f, 10);
}


void Auth_WriteAdminConfig(char* buffer, int size)
{
    char infostring[MAX_INFO_STRING];
    int i;
    authData_admin_t *admin;
	mvabuf;


    Q_strncat(buffer, size, "\n//Admins authorization data\n");

    for ( admin = auth_admins.admins, i = 0; i < MAX_AUTH_ADMINS ; admin++, i++ ){

        *infostring = 0;

	if(!*admin->username)
		continue;

        Info_SetValueForKey(infostring, "type", "authAdmin");
        Info_SetValueForKey(infostring, "power", va("%i", admin->power));
        Info_SetValueForKey(infostring, "password", admin->sha256);
        Info_SetValueForKey(infostring, "salt", admin->salt);
        Info_SetValueForKey(infostring, "username", admin->username);
        Info_SetValueForKey(infostring, "undercover", va("%i", admin->undercover));
				Info_SetValueForKey(infostring, "steamid", va("%llu", admin->steamid));
				Q_strncat(buffer, size, infostring);
        Q_strncat(buffer, size, "\\\n");
    }
}

qboolean Auth_InfoAddAdmin(const char* line)
{
        char password[65];
        char salt[65];
        char username[32];
        int power;
        int uid;
				uint64_t steamid;
        qboolean undercover;

        power = atoi(Info_ValueForKey(line, "power"));
        undercover = atoi(Info_ValueForKey(line, "undercov"));
        Q_strncpyz(password, Info_ValueForKey(line, "password") , sizeof(password));
        Q_strncpyz(salt, Info_ValueForKey(line, "salt") , sizeof(salt));
        Q_strncpyz(username, Info_ValueForKey(line, "username") , sizeof(username));
				steamid = strtoull( Info_ValueForKey(line, "steamid"), NULL, 10);
				if(steamid == 0)
				{
					uid = atoi(Info_ValueForKey(line, "uid"));
					if(uid < 1)
					{
						return qfalse;
					}
					uint64_t universe = 1;
					uint64_t accounttype = 1;
					uint64_t instance = 1;
					steamid = ((uint64_t)universe << 56) | ((uint64_t)accounttype << 52) | ((uint64_t)instance << 32) | uid;
				}
        if(!Auth_AddAdminToList(username, password, salt, power, steamid, undercover)){
            Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: duplicated username or bad power or too many admins\n");
            return qfalse;
        }
        return qtrue;
}

void Auth_UpdateName(uint64_t steamid, const char* name)
{
	if(steamid == 0 || name == NULL || name[0] == 0)
	{
		return;
	}

	int i;
	authData_admin_t *user;

	for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++)
	{
		if(user->steamid == steamid)
		{
			Q_strncpyz(user->username, name, sizeof(user->username));
			break;
		}
	}
}

/*
 ============
 SV_RemoteCmdGetClPower
 ============
 */

int Auth_GetClPowerBySteamID(uint64_t steamid){

	int i;
	authData_admin_t *user;

	if(steamid == 0) return 1;

	for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++)
	{
		if(user->steamid == steamid)
		{
			return user->power;
		}
	}
	return 1;
}

void Auth_ApplyUndercoverStatus(client_t* cl)
{
	int i;
	authData_admin_t *user;

	if(cl == NULL || cl->steamid == 0)
	{
		return;
	}

	for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++)
	{
		if(user->steamid == cl->steamid)
		{
			cl->undercover = user->undercover;
		}
	}
}


void Auth_StoreUndercoverStatus(client_t* cl)
{
	int i;
	authData_admin_t *user;

	if(cl == NULL || cl->steamid == 0)
	{
		return;
	}

	for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++)
	{
		if(user->steamid == cl->steamid)
		{
			user->undercover = cl->undercover;
		}
	}
}


/*
 ============
 SV_RemoteCmdGetClPower
 ============
 */

int Auth_GetClPower(client_t* cl){

	if(cl->power > 1) return cl->power;
	if(cl->steamid == 0) return 1;

	return Auth_GetClPowerBySteamID(cl->steamid);
}

/*
 ============
Auth_GetNameBySteamID
 ============
 */

const char* Auth_GetNameBySteamID(uint64_t steamid){

	int i;
	authData_admin_t *user;

	if(steamid == 0) return NULL;

	for(i = 0, user = auth_admins.admins; i < MAX_AUTH_ADMINS; i++, user++)
	{
		if(user->steamid == steamid)
		{
			return user->username;
		}
	}
	return NULL;
}

/*
void Auth_ClearAdminList()
{

    adminPower_t *admin, **this;

    for ( this = &adminpower, admin = *this; admin ; admin = *this ){
        *this = admin->next;
        Z_Free(admin);
    }

}


qboolean SV_RemoteCmdAddAdmin(int uid, char* guid, int power)
{
	adminPower_t *admin;

	if(uid < 1){
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: Invalid uid\n");
		return qfalse;
	}

	if(power < 1 || power > 100){
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: Invalid powerlevel(%i). Powerlevel can not be less than 1 or greater than 100.\n");
		return qfalse;
	}

	admin = S_Malloc(sizeof(adminPower_t));

	if(admin)
	{
		admin->uid = uid;
		admin->power = power;
		admin->next = adminpower;
		adminpower = admin;
		return qtrue;

	}else{
		return qfalse;
	}
}
*/

qboolean Auth_CanPlayerUseCommand(unsigned int clnum, const char* cmd)
{
	client_t* cl;
	int i;
	if(clnum >= 64)
	{
		return qfalse;
	}
	cl = &svs.clients[clnum];

	for(i = 0; i <  sizeof(cl->commandWhitelist) / sizeof(cl->commandWhitelist[0]); ++i)
	{
		if(cl->commandWhitelist[i] && Q_stricmp(cl->commandWhitelist[i], cmd) == 0)
		{
			return qtrue;
		}
	}
	return qfalse;
}

void Auth_AddCommandForClientToWhitelist(int clnum, const char* cmd)
{
	char *parsecmd = &svs.commandWhitelistBuf[0];
	char *endptr = parsecmd + sizeof(svs.commandWhitelistBuf);
	int i;
	client_t* client;

	if(clnum >= 64)
	{
		return;
	}

	client = &svs.clients[clnum];

	while(parsecmd[0])
	{
		if(Q_stricmp(parsecmd, cmd) == 0)
		{
			break;
		}

		do
		{
			parsecmd++;
		}while(parsecmd[0]);
		parsecmd++;
	}
	if(parsecmd[0] == 0)
	{
		Q_strncpyz(parsecmd, cmd, endptr - parsecmd);
	}

	if(Q_stricmp(parsecmd, cmd))
	{
		return; //Error. Buffer overflowed
	}

	for(i = 0; i < sizeof(client->commandWhitelist) / sizeof(client->commandWhitelist[0]); ++i)
	{
		if(client->commandWhitelist[i] == NULL)
		{
			client->commandWhitelist[i] = parsecmd;
			break;
		}
		if(Q_stricmp(client->commandWhitelist[i], cmd) == 0){
			break; //already inserted
		}
	}


}
