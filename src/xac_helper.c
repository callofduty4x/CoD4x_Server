#define __STDC_FORMAT_MACROS
#define __IN_EXTXACHLPMODULE__

#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <inttypes.h>
#include "q_shared.h"
#include "q_platform.h"
#include "g_shared.h"
#include "server.h"
#include "xac_helper.h"
#include "sys_main.h"
#include "cmd.h"
#include "sec_crypto.h"
#include "g_sv_shared.h"

static int (*Init)(imports_t* sapi_imports, exports_t* exports);



/*
=============
Com_Printf

Both client and server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL XACHLP_Printf( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	va_start (argptr,fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( CON_CHANNEL_STEAM, msg, MSG_DEFAULT);
}


/*
=============
Com_PrintWarning

Server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL XACHLP_PrintWarning( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	memcpy(msg,"^3Warning: ", 12);

	va_start (argptr,fmt);
	Q_vsnprintf (&msg[11], (sizeof(msg)-12), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( CON_CHANNEL_STEAM, msg, MSG_WARNING);
}


/*
=============
Com_PrintError

Server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
void QDECL XACHLP_PrintError( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	memcpy(msg,"^1Error: ", 10);

	va_start (argptr,fmt);
	Q_vsnprintf (&msg[9], (sizeof(msg)-10), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( CON_CHANNEL_STEAM, msg, MSG_ERROR);
}

/*
================
Com_DPrintf

A Com_Printf that only shows up if the "developer" cvar is set
================
*/
void QDECL XACHLP_DPrintf( const char *fmt, ...) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];
		
	if ( !Com_IsDeveloper() ) {
		return;			// don't confuse non-developers with techie stuff...
	}
	
	msg[0] = '^';
	msg[1] = '2';

	va_start (argptr,fmt);	
	Q_vsnprintf (&msg[2], (sizeof(msg)-3), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( CON_CHANNEL_STEAM, msg, MSG_DEFAULT);
}

void XACHLP_EnterWorldLock(unsigned int client, qboolean status)
{
	if(client >= sv_maxclients->integer)
	{
		return;
	}
	svs.clients[client].lockedout = status;
}

void XACHLP_DropClientNoNotify(unsigned int drop, const char *reason)
{
	if(drop >= sv_maxclients->integer)
	{
		return;
	}
	SV_DropClientNoNotify(&svs.clients[drop], reason);
}

void XACHLP_DropClient(unsigned int drop, const char *reason)
{
	if(drop >= sv_maxclients->integer)
	{
		return;
	}
	SV_DelayDropClient(&svs.clients[drop], reason);
}

void XACHLP_SendReliableServerCommand(unsigned int client, msg_t *msg)
{
	if(client >= sv_maxclients->integer)
	{
		return;
	}
	SV_SendReliableServerCommand(&svs.clients[client], msg);
}

void XACHLP_AddBanForClient(unsigned int cl, int bantime, const char* banreason)
{
	if(cl >= sv_maxclients->integer)
	{
		return;
	}
	SV_AddBanForClient(&svs.clients[cl], bantime, banreason);
}

void XACHLP_ScreenshotArrived(unsigned int cl, const char* filename)
{
	if(cl >= sv_maxclients->integer)
	{
		return;
	}
	SV_ScreenshotArrived(&svs.clients[cl], filename);
}

void XACHLP_ModuleArrived(unsigned int cl, const char* filename, long checksum)
{
	if(cl >= sv_maxclients->integer)
	{
		return;
	}
	SV_ModuleArrived(&svs.clients[cl], filename, checksum);
}

void XACHLP_GetEmuClientData(unsigned int clnum, struct clientEmu_t *emu)
{
	if(clnum >= sv_maxclients->integer)
	{
		memset(emu, 0, sizeof(struct clientEmu_t));
		return;
	}
	client_t* cl = &svs.clients[clnum];
	
	emu->challenge = cl->challenge;
	emu->playerid = cl->playerid;
	emu->steamid = cl->steamid;
	emu->clanid = cl->clanid;
	emu->steamidPending = cl->steamidPending;
	emu->clanidPending = cl->clanidPending;
	emu->steamstatus = cl->steamstatus;
	emu->name = cl->name;
	emu->maxnamelen = sizeof(cl->name);
	emu->isBot = cl->netchan.remoteAddress.type == NA_BOT;
	emu->inLevel = cl->state == CS_ACTIVE;
	emu->isConnected = cl->state >= CS_CONNECTED;
	emu->isMember = cl->isMember;
	emu->hasValidPassword = cl->hasValidPassword;
	emu->clantag = cl->clantag;
	emu->maxclantaglen = sizeof(cl->clantag);
	emu->legacy_pbguid = cl->legacy_pbguid;
	emu->maxguidlen = sizeof(cl->legacy_pbguid);
}

void XACHLP_SetEmuClientData(unsigned int clnum, struct clientEmu_t *emu)
{
	if(clnum >= sv_maxclients->integer)
	{
		return;
	}
	client_t* cl = &svs.clients[clnum];

	cl->challenge = emu->challenge;
	cl->playerid = emu->playerid;
	cl->steamid = emu->steamid;
	cl->clanid = emu->clanid;
	cl->steamidPending = emu->steamidPending;
	cl->clanidPending = emu->clanidPending;
	cl->steamstatus = emu->steamstatus;
	cl->isMember = emu->isMember;
	cl->hasValidPassword = emu->hasValidPassword;

}

void XACHLP_GetGameClientData(unsigned int clnum, struct gclientEmu_t *emu)
{
	if(clnum >= sv_maxclients->integer)
	{
		memset(emu, 0, sizeof(struct gclientEmu_t));
		return;
	}
	struct gentity_s* ent = SV_GentityNum(clnum);
	if(ent->client == NULL)
	{
		memset(emu, 0, sizeof(struct gclientEmu_t));
		return;	
	}
	emu->buttons = ent->client->buttons;
	VectorCopy(ent->client->ps.origin, emu->origin);
	VectorCopy(ent->client->ps.viewangles, emu->viewangles);
}

void XACHLP_SendClientGameState(unsigned int clnum)
{
	if(clnum >= sv_maxclients->integer)
	{
		return;
	}
	client_t* cl = &svs.clients[clnum];
	if(cl->state < CS_PRIMED)
	{
		return;
	}
	SV_SendClientGameState(cl);

}

exports_t xac_imp;


void SV_GetSS_f();

void SV_TryLoadXAC()
{
	return;
//	char errormsg[1024];
	void* hmodule;
	static imports_t exports;
	
	exports.Com_Printf = XACHLP_Printf;
	exports.Com_DPrintf = XACHLP_DPrintf;
	exports.Com_PrintError = XACHLP_PrintError;
	exports.Com_PrintWarning = XACHLP_PrintWarning;
	exports.Com_Quit_f = Com_Quit_f;
	exports.Com_Error = Com_Error;
	exports.Cvar_VariableIntegerValue = Cvar_VariableIntegerValue;
	exports.Cvar_VariableStringBuffer = Cvar_VariableStringBuffer;
	exports.XACHLP_DropClientNoNotify = XACHLP_DropClientNoNotify;
	exports.XACHLP_DropClient = XACHLP_DropClient;
	exports.XACHLP_SendReliableServerCommand = XACHLP_SendReliableServerCommand;
	exports.XACHLP_AddBanForClient = XACHLP_AddBanForClient;
	exports.XACHLP_ScreenshotArrived = XACHLP_ScreenshotArrived;
	exports.XACHLP_ModuleArrived = XACHLP_ModuleArrived;
	exports.FS_SV_HomeWriteFile = FS_SV_HomeWriteFile;
	exports.Sys_Milliseconds = Sys_Milliseconds;
	exports.Cvar_RegisterEnum = Cvar_RegisterEnum;
	exports.Cvar_RegisterString = Cvar_RegisterString;
	exports.Cvar_RegisterBool = Cvar_RegisterBool;
	exports.Cvar_SetString = Cvar_SetString;
	exports.SetClientData = XACHLP_SetEmuClientData;
	exports.GetClientData = XACHLP_GetEmuClientData;
	exports.GetGameClientData = XACHLP_GetGameClientData;
	exports.SetConfigstring = SV_SetConfigstring;
	exports.EnterWorldLock = XACHLP_EnterWorldLock;
	exports.SendClientGameState = XACHLP_SendClientGameState;

	memset(&xac_imp, 0, sizeof(xac_imp));

	hmodule = Sys_LoadLibrary("xac_server" DLL_EXT);
	if(hmodule == NULL)
	{
//		Sys_LoadLibraryError(errormsg, sizeof(errormsg));
//		XACHLP_PrintError("xac_server" DLL_EXT " not found or it was not possible to load. Error is: %s.\n", errormsg);
		return;
	}
	Init = Sys_GetProcedure("XAC_Main");
	if(Init == NULL)
	{
		Sys_CloseLibrary(hmodule);
		XACHLP_PrintError("XAC_Main entrypoint not found.\n");
		return;
	}
	Init(&exports, &xac_imp);
}

void SV_InitXAC()
{
    if(xac_imp.InitXAC)
        xac_imp.InitXAC();
}


void SV_PassNETMessageXAC(client_t* client, msg_t* msg)
{
    if(xac_imp.PassClientMessage)
        xac_imp.PassClientMessage(client - svs.clients, msg);
}

void SV_ConnectXAC(client_t* client)
{
    if(xac_imp.Connect)
        xac_imp.Connect(client - svs.clients);
}

void SV_DisconnectXAC(client_t* client)
{
    if(xac_imp.Disconnect)
        xac_imp.Disconnect(client - svs.clients);	
}

void SV_RunFrameXAC()
{
	if(xac_imp.RunFrame)
		xac_imp.RunFrame();
}

