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



/*
===============================================================================

OPERATOR CONSOLE ONLY COMMANDS

These commands can only be entered from stdin or by a remote operator datagram
===============================================================================
*/

#include "q_shared.h"
#include "q_platform.h"
#include "qcommon_io.h"
#include "qcommon.h"
#include "cmd.h"
#include "server.h"
#include "g_shared.h"
#include "g_sv_shared.h"
#include "nvconfig.h"
#include "httpftp.h"
#include "qcommon_mem.h"
#include "sv_auth.h"
#include "sys_thread.h"
#include "sys_main.h"
#include "sapi.h"
#include "scr_vm.h"
#include "cscr_memorytree.h"
#include "cscr_variable.h"

#include <string.h>
#include <stdlib.h>
#include <unistd.h>

typedef enum {
    SAY_CHAT,
    SAY_CONSOLE,
    SAY_SCREEN
} consaytype_t;

/*
==================
SV_ConSay
==================
*/
static void SV_ConSay(client_t *cl, consaytype_t contype) {
	char	*p;
	char	text[1024];
	char	cmd_argbuf[MAX_STRING_CHARS];

	// make sure server is running
	if ( !com_sv_running->boolean ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Server is not running.\n" );
		return;
	}

	if ( Cmd_Argc () < 2 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: command text... \n" );
		return;
	}
	*text = 0;
	if(cl){
	    if(contype == SAY_CHAT){
		strcpy (text, sv_contellname->string);
	    }else{
		strcpy (text, "^5PM: ^7");
	    }
	    p = Cmd_Argsv(2, cmd_argbuf, sizeof(cmd_argbuf));
	}else{
	    if(contype == SAY_CHAT){
		strcpy (text, sv_consayname->string);
	    }
	    p = Cmd_Args(cmd_argbuf, sizeof(cmd_argbuf));
	}
	if ( *p == '"' ) {
		p++;
		p[strlen(p)-1] = 0;
	}

	strcat(text, p);

	switch(contype){

	case SAY_CHAT:
		SV_SendServerCommand(cl, "h \"%s\"", text);
	break;
	case SAY_CONSOLE:
		SV_SendServerCommand(cl, "e \"%s\"", text);
	break;
	case SAY_SCREEN:
		SV_SendServerCommand(cl, "c \"%s\"", text);
	break;
	}
}



typedef struct{
	uint64_t steamid;
	client_t *cl;
}clanduid_t;



static void SV_GetPlayerByHandleInternal( const char* s, clanduid_t* cl) {
	client_t	*lastfound;
	int		i, playermatches;
	char		cleanName[64];
  uint64_t steamid;
  qboolean validindividual;

	cl->cl = NULL;

	// make sure server is running
	if ( !com_sv_running->boolean ) {
		return;
	}

  steamid = SV_SApiStringToID(s);
  if(steamid > 0 && SV_SApiSteamIDIndividual(steamid))
  {
    validindividual = qtrue;
  }else{
    validindividual = qfalse;
  }

  if(validindividual){
		cl->steamid = steamid;
  }else{
		cl->cl = NULL;
		// Check whether this is a numeric player handle
		for(i = 0; s[i] >= '0' && s[i] <= '9'; i++);

		if(!s[i])
		{
			int plid = atoi(s);

			// Check for numeric playerid match
			if(plid >= 0 && plid < sv_maxclients->integer)
			{
				cl->cl = &svs.clients[plid];

				if(!cl->cl->state)
					cl->cl = NULL;
			}
		}
		if(!cl->cl){

			if(strlen(s) < 3){ //Don't process too short names
				Com_Printf(CON_CHANNEL_DONT_FILTER, "Player %s is not on the server\n", s );
				cl->cl = NULL;
				return;
			}

			playermatches = 0; //This must be one
			lastfound = NULL;

			// check for a exact name match
			for ( i=0, cl->cl=svs.clients ; i < sv_maxclients->integer ; i++, cl->cl++ ) {
				if ( !cl->cl->state ) {
					continue;
				}
				if ( !Q_stricmp( cl->cl->name, s ) ) {
					lastfound = cl->cl;
					playermatches++;
					continue;
				}

				Q_strncpyz( cleanName, cl->cl->name, sizeof(cleanName) );
				Q_CleanStr( cleanName );
				if ( !Q_stricmp( cleanName, s ) ) {
					lastfound = cl->cl;
					playermatches++;
					continue;
				}
			}

			if(!lastfound){ //No exact playermatch found - Now search for partial name matches
				for ( i=0, cl->cl=svs.clients ; i < sv_maxclients->integer ; i++, cl->cl++ ) {
					if ( !cl->cl->state ) {
						continue;
					}
					if ( Q_stristr( cl->cl->name, s ) ) {
						lastfound = cl->cl;
						playermatches++;
						continue;
					}

					Q_strncpyz( cleanName, cl->cl->name, sizeof(cleanName) );
					Q_CleanStr( cleanName );
					if ( Q_stristr( cleanName, s ) ) {
						lastfound = cl->cl;
						playermatches++;
						continue;
					}
				}
			}

			if(!lastfound){ //Still nothing found!
				Com_Printf(CON_CHANNEL_DONT_FILTER, "Player %s is not on the server\n", s );
				cl->cl = NULL;
				return;
			}else if(playermatches != 1){
				Com_Printf(CON_CHANNEL_DONT_FILTER, "Dup player matches!\n", s );
				cl->cl = NULL;
				return;
			}else{
				cl->cl = lastfound;
			}
		}
    cl->steamid = cl->cl->steamid;
  }

  if(!cl->cl && cl->steamid != 0){ //See whether this player is currently onto server
      for(i = 0, cl->cl=svs.clients; i < sv_maxclients->integer; i++, cl->cl++){
            if(cl->cl->state && (cl->steamid == cl->cl->steamid || cl->steamid == cl->cl->playerid)){
                  break;
            }
      }
      if(i == sv_maxclients->integer)
      {
          cl->cl = NULL;
      }
  }

}


/*
 ==================
 SV_Cmd_GetPlayerByHandle

 Returns the player with player id or name from Cmd_Argv(1)
 ==================
 */


static clanduid_t SV_Cmd_GetPlayerByHandle( void ) {
	clanduid_t	cl;
	char		*s;

	cl.steamid = 0;
	cl.cl = NULL;

	// make sure server is running
	if ( !com_sv_running->boolean ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Server is not running\n");
		return cl;
	}

	if ( Cmd_Argc() < 2 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "No player specified.\n" );
		return cl;
	}

	s = Cmd_Argv(1);

	SV_GetPlayerByHandleInternal(s, &cl);
	return cl;
}

/*
 ==================
 SV_Cmd_GetPlayerByHandle

 Returns the player with player id or name from Cmd_Argv(1)
 ==================
 */


client_t* SV_GetPlayerClByHandle( const char* handle)
{
	clanduid_t	cl;

	SV_GetPlayerByHandleInternal(handle, &cl);
	return cl.cl;
}

const char* SV_GetPlayerNameByHandle( const char* handle)
{
	clanduid_t	cl;

	SV_GetPlayerByHandleInternal(handle, &cl);
	if(cl.cl)
	{
		return cl.cl->name;
	}
	return "";
}

uint64_t SV_GetPlayerSteamIDByHandle( const char* handle)
{
	clanduid_t	cl;

	SV_GetPlayerByHandleInternal(handle, &cl);
	if(cl.cl)
	{
		return cl.cl->steamid;
	}
	uint64_t sid = SV_SApiStringToID(handle);
	if(sid > 0 && SV_SApiSteamIDIndividualSteamOnly(sid))
	{
		return sid;
	}
	return 0;
}

uint64_t SV_GetPlayerIDByHandle( const char* handle)
{
	clanduid_t	cl;

	SV_GetPlayerByHandleInternal(handle, &cl);
	if(cl.cl)
	{
		return cl.cl->playerid;
	}
	return 0;
}

/*
==================
SV_GetPlayerByNum

Returns the player with idnum from Cmd_Argv(1)
==================
*/
static client_t *SV_GetPlayerByNum( void ) {
	client_t	*cl;
	int			i;
	int			idnum;
	char		*s;

	// make sure server is running
	if ( !com_sv_running->boolean ) {
		return NULL;
	}

	if ( Cmd_Argc() < 2 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "No player specified.\n" );
		return NULL;
	}

	s = Cmd_Argv(1);

	for (i = 0; s[i]; i++) {
		if (s[i] < '0' || s[i] > '9') {
			Com_Printf(CON_CHANNEL_DONT_FILTER, "Bad slot number: %s\n", s);
			return NULL;
		}
	}
	idnum = atoi( s );
	if ( idnum < 0 || idnum >= sv_maxclients->integer ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Bad client slot: %i\n", idnum );
		return NULL;
	}

	cl = &svs.clients[idnum];
	if ( !cl->state ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Client %i is not active\n", idnum );
		return NULL;
	}
	return cl;
}


/*
==================
SV_ConSayChat_f
==================
*/

static void SV_ConSayChat_f(void) {
    SV_ConSay(NULL,SAY_CHAT);
}

/*
==================
SV_ConSayConsole_f
==================
*/

static void SV_ConSayConsole_f(void) {
    SV_ConSay(NULL,SAY_CONSOLE);
}

/*
==================
SV_ConSayScreen_f
==================
*/

static void SV_ConSayScreen_f(void) {
    SV_ConSay(NULL,SAY_SCREEN);
}

/*
==================
SV_ConTell
==================
*/

static void SV_ConTell( consaytype_t contype) {

    client_t *cl;

    if ( Cmd_Argc() < 3 ) {
	Com_Printf(CON_CHANNEL_DONT_FILTER, "1. Usage: tellcommand clientnumber text... \n2. Usage: tellcommand \"client by name\" text...\n" );
	return;
    }
    cl = SV_Cmd_GetPlayerByHandle().cl;

    if(cl != NULL){
        SV_ConSay(cl,contype);
    }
}

/*
==================
SV_ConTellScreen_f
==================
*/
static void SV_ConTellScreen_f(void) {
    SV_ConTell(SAY_SCREEN);
}

/*
==================
SV_ConTellConsole_f
==================
*/
static void SV_ConTellConsole_f(void) {
    SV_ConTell(SAY_CONSOLE);
}

/*
==================
SV_ConTellChat_f
==================
*/
static void SV_ConTellChat_f(void) {
    SV_ConTell(SAY_CHAT);
}


/*
===========
SV_DumpUser_f

Examine all a users info strings FIXME: move to game
===========
*/

#define MAX_NICKNAMES 6

static void SV_DumpUser_f( void ) {
	clanduid_t	cl;

	// make sure server is running
	if ( !com_sv_running->boolean ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Server is not running.\n" );
		return;
	}

	if ( Cmd_Argc() != 2 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Usage: dumpuser <userid>\n");
		return;
	}

	cl = SV_Cmd_GetPlayerByHandle();

	Com_Printf(CON_CHANNEL_DONT_FILTER, "\nuserinfo\n" );
	Com_Printf(CON_CHANNEL_DONT_FILTER, "----------------------------------------------------\n" );

	if(cl.cl){

		Info_Print( cl.cl->userinfo );

    char psti[128];
    SV_SApiSteamIDToString(cl.cl->playerid, psti, sizeof(psti));

		Com_Printf(CON_CHANNEL_DONT_FILTER,"PlayerID             %s\n", psti);

		if(cl.cl->steamid > 0)
    {
      char ssti[128];
      SV_SApiSteamIDToString(cl.cl->steamid, ssti, sizeof(ssti));
			Com_Printf(CON_CHANNEL_DONT_FILTER,"PlayerSteamID        %s\n", ssti);
		}else{
			Com_Printf(CON_CHANNEL_DONT_FILTER,"PlayerSteamID        N/A\n");
		}
  } else {
		    Com_Printf(CON_CHANNEL_DONT_FILTER,"Player is not on server.\n");
  }

}


/*
================
SV_MiniStatus_f
================
*/
static void SV_MiniStatus_f( void ) {
	int			i, j, l;
	client_t	*cl;
	gclient_t	*gclient;
	const char	*s;
  char psti[128];
  char ssti[128];
	int		ping;
	qboolean	odd = qfalse;

	// make sure server is running
	if ( !com_sv_running->boolean ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Server is not running.\n" );
		return;
	}

	Com_Printf(CON_CHANNEL_DONT_FILTER,"map: %s\n", sv_mapname->string );

	Com_Printf(CON_CHANNEL_DONT_FILTER,"num score ping playerid            steamid           name                             address                                             FPS XVer\n");

	Com_Printf(CON_CHANNEL_DONT_FILTER,"--- ----- ---- ------------------- ----------------- -------------------------------- --------------------------------------------------- --- ----------- \n");
	for (i=0,cl=svs.clients, gclient = level.clients ; i < sv_maxclients->integer ; i++, cl++, gclient++)
	{
		if (!cl->state)
			continue;

		if(odd)
			Com_Printf(CON_CHANNEL_DONT_FILTER,"^1");
		else
			Com_Printf(CON_CHANNEL_DONT_FILTER,"^7");

		Com_Printf(CON_CHANNEL_DONT_FILTER,"%3i ", i);
		Com_Printf(CON_CHANNEL_DONT_FILTER,"%5i ", gclient->sess.score);
		if (cl->state == CS_CONNECTED)
			Com_Printf(CON_CHANNEL_DONT_FILTER,"CNCT ");
		else if (cl->state == CS_ZOMBIE)
			Com_Printf(CON_CHANNEL_DONT_FILTER,"ZMBI ");
		else if (cl->state == CS_PRIMED)
			Com_Printf(CON_CHANNEL_DONT_FILTER,"PRIM ");
		else
		{
			ping = cl->ping < 9999 ? cl->ping : 9999;
			Com_Printf(CON_CHANNEL_DONT_FILTER,"%4i ", ping);
		}
    SV_SApiSteamIDToString(cl->steamid, ssti, sizeof(ssti));
    SV_SApiSteamIDToString(cl->playerid, psti, sizeof(psti));

    Com_Printf(CON_CHANNEL_DONT_FILTER,"%s", psti );

    l = 20 - strlen(psti);
    j = 0;

    do
    {
      Com_Printf(CON_CHANNEL_DONT_FILTER," ");
      j++;
    } while(j < l);

    Com_Printf(CON_CHANNEL_DONT_FILTER,"%s", ssti );

    l = 18 - strlen(ssti);
    j = 0;

    do
    {
      Com_Printf(CON_CHANNEL_DONT_FILTER," ");
      j++;
    } while(j < l);

		Com_Printf(CON_CHANNEL_DONT_FILTER,"%s", cl->name);

		// TTimo adding a ^7 to reset the color
		// NOTE: colored names in status breaks the padding (WONTFIX)

		if(odd)
			Com_Printf(CON_CHANNEL_DONT_FILTER,"^1");
		else
			Com_Printf(CON_CHANNEL_DONT_FILTER,"^7");

		l = 33 - Q_PrintStrlen(cl->name);
		j = 0;

		do
		{
			Com_Printf(CON_CHANNEL_DONT_FILTER," ");
			j++;
		} while(j < l);
		if(Cmd_GetInvokerPower() > 40)
		{
			s = NET_AdrToConnectionString( &cl->netchan.remoteAddress );
		}else{
			s = NET_AdrMaskToString( &cl->netchan.remoteAddress );
		}
		Com_Printf(CON_CHANNEL_DONT_FILTER,"%s", s);
		l = 52 - strlen(s);
		j = 0;

		do
		{
			Com_Printf(CON_CHANNEL_DONT_FILTER," ");
			j++;
		} while(j < l);

		Com_Printf(CON_CHANNEL_DONT_FILTER,"%3i ", cl->clFPS);

		Com_Printf(CON_CHANNEL_DONT_FILTER,"%s ", cl->xversion);

		switch(cl->steamstatus)
		{
		    case 1:
			Com_Printf(CON_CHANNEL_DONT_FILTER,"sa");
			break;
		    case -1:
			Com_Printf(CON_CHANNEL_DONT_FILTER,"sna");
			break;
		    default:
			Com_Printf(CON_CHANNEL_DONT_FILTER,"sni");
			break;
		}

		odd = ~odd;
		Com_Printf(CON_CHANNEL_DONT_FILTER,"\n");
	}
}



/*
================
SV_Status_f
================
*/
static void SV_Status_f( void ) {
	int			i, j, l;
	client_t	*cl;
	gclient_t	*gclient;
	const char* s;
	int			ping;
	char 		psti[128];
	char 		ssti[128];

	

	// make sure server is running
	if ( !com_sv_running->boolean ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Server is not running.\n" );
		return;
	}

	if(sv_legacymode->boolean)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"map: %s\n", sv_mapname->string );
		Com_Printf(CON_CHANNEL_DONT_FILTER,"num score ping guid                             name            lastmsg address                                              qport rate\n");
		Com_Printf(CON_CHANNEL_DONT_FILTER,"--- ----- ---- -------------------------------- --------------- ------- ---------------------------------------------------- ----- -----\n");
	}
	else
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"hostname: %s\n", sv_hostname->string);
		Com_Printf(CON_CHANNEL_DONT_FILTER,"version : %s\n", com_version->string);
		netadr_t* outadr = NET_GetDefaultCommunicationSocket(NA_IP);
		Com_Printf(CON_CHANNEL_DONT_FILTER,"udp/ip  : %s\n", NET_AdrToString(outadr));
		Com_Printf(CON_CHANNEL_DONT_FILTER,"os      : %s\n", OS_STRING);
		Com_Printf(CON_CHANNEL_DONT_FILTER,"type    : dedicated server\n");
		Com_Printf(CON_CHANNEL_DONT_FILTER,"map     : %s\n", sv_mapname->string);
		Com_Printf(CON_CHANNEL_DONT_FILTER,"\n");

		Com_Printf(CON_CHANNEL_DONT_FILTER,"num score ping playerid            steamid           name                             lastmsg address                                              qport rate\n");
		Com_Printf(CON_CHANNEL_DONT_FILTER,"--- ----- ---- ------------------- ----------------- -------------------------------- ------- ---------------------------------------------------- ----- -----\n");
	}


	for (i=0,cl=svs.clients, gclient = level.clients; i < sv_maxclients->integer ; i++, cl++, gclient++)
	{
		if (!cl->state)
			continue;
		
		Com_Printf(CON_CHANNEL_DONT_FILTER,"%3i ", i);
		Com_Printf(CON_CHANNEL_DONT_FILTER,"%5i ", gclient->sess.score);
		
		if (cl->state == CS_CONNECTED)
			Com_Printf(CON_CHANNEL_DONT_FILTER,"CNCT ");
		else if (cl->state == CS_ZOMBIE)
			Com_Printf(CON_CHANNEL_DONT_FILTER,"ZMBI ");
		else if (cl->state == CS_PRIMED)
			Com_Printf(CON_CHANNEL_DONT_FILTER,"PRIM ");
		else
		{
			ping = cl->ping < 9999 ? cl->ping : 9999;
			Com_Printf(CON_CHANNEL_DONT_FILTER,"%4i ", ping);
		}
/*
    char psti[128];
    SV_SApiSteamIDToString(cl.cl->playerid, psti, sizeof(psti));
*/
		if(sv_legacymode->boolean)
		{
			Com_Printf(CON_CHANNEL_DONT_FILTER,"%s", cl->legacy_pbguid );

			l = 33 - strlen(cl->legacy_pbguid);
			j = 0;

			do
			{
				Com_Printf(CON_CHANNEL_DONT_FILTER," ");
				j++;
			} while(j < l);

			Com_Printf(CON_CHANNEL_DONT_FILTER,"%.15s", cl->name);

			// TTimo adding a ^7 to reset the color
			// NOTE: colored names in status breaks the padding (WONTFIX)
			Com_Printf(CON_CHANNEL_DONT_FILTER,"^7");
			l = 16 - Q_PrintStrlen(cl->name);
			if(l < 1){
				l = 1;
			}
			j = 0;
			do
			{
				Com_Printf(CON_CHANNEL_DONT_FILTER," ");
				j++;
			} while(j < l);
		}
		else
		{
			SV_SApiSteamIDToString(cl->steamid, ssti, sizeof(ssti));
			SV_SApiSteamIDToString(cl->playerid, psti, sizeof(psti));

			Com_Printf(CON_CHANNEL_DONT_FILTER,"%s", psti );

			l = 20 - strlen(psti);
			j = 0;

			do
			{
				Com_Printf(CON_CHANNEL_DONT_FILTER," ");
				j++;
			} while(j < l);

			Com_Printf(CON_CHANNEL_DONT_FILTER,"%s", ssti );

			l = 18 - strlen(ssti);
			j = 0;

			do
			{
				Com_Printf(CON_CHANNEL_DONT_FILTER," ");
				j++;
			} while(j < l);


			Com_Printf(CON_CHANNEL_DONT_FILTER,"%s", cl->name);

			// TTimo adding a ^7 to reset the color
			// NOTE: colored names in status breaks the padding (WONTFIX)
			Com_Printf(CON_CHANNEL_DONT_FILTER,"^7");

			l = 33 - Q_PrintStrlen(cl->name);
			j = 0;

			do
			{
				Com_Printf(CON_CHANNEL_DONT_FILTER," ");
				j++;
			} 
			while(j < l);
		}

		Com_Printf(CON_CHANNEL_DONT_FILTER,"%7i ", svs.time - cl->lastPacketTime );
		/* Length must be: [0000:1111:2222:3333:4444:5555:6666:7777:8888]:65535 = 52 */
		s = NET_AdrToString( &cl->netchan.remoteAddress );
		Com_Printf(CON_CHANNEL_DONT_FILTER,"%s", s);
		l = 52 - strlen(s);
		j = 0;

		do
		{
			Com_Printf(CON_CHANNEL_DONT_FILTER," ");
			j++;
		} while(j < l);

		Com_Printf(CON_CHANNEL_DONT_FILTER," %5i", cl->netchan.qport);
		Com_Printf(CON_CHANNEL_DONT_FILTER," %5i", cl->rate);

		Com_Printf(CON_CHANNEL_DONT_FILTER,"\n");
	}

	Com_Printf(CON_CHANNEL_DONT_FILTER,"\n");

}

/*
============
Cmd_UnbanPlayer_f
============
*/

static void Cmd_UnbanPlayer_f() {

    uint64_t invokerSteamId, steamid;
    baninfo_t baninfo;
    char name[64];

    if ( Cmd_Argc() < 2) {
            Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: unban <id?>\n" );
            return;
    }

    invokerSteamId = Cmd_GetInvokerSteamID();
    if(invokerSteamId == 0)
    {
        Q_strncpyz(baninfo.adminname, "System/Rcon",  sizeof(baninfo.adminname));
        baninfo.adminsteamid = 0;
    }else{
        Q_strncpyz(baninfo.adminname, Cmd_GetInvokerName(name, sizeof(name)), sizeof(baninfo.adminname));
        baninfo.adminsteamid = invokerSteamId;
    }

    //Banning
    Q_strncpyz(baninfo.playername, "Offline Unban", sizeof(baninfo.playername));
    baninfo.steamid = 0;
    baninfo.playerid = 0;
    baninfo.expire = 0;
    baninfo.duration = 0;
    baninfo.created = Com_GetRealtime();
    baninfo.message[0] = 0;

    steamid = SV_Cmd_GetPlayerByHandle().steamid;
    if(steamid > 0)
    {
        baninfo.steamid = steamid;
        baninfo.playerid = steamid;
    }else{
        Q_strncpyz(baninfo.playername, Cmd_Argv(1), sizeof(baninfo.playername));
    }

    memset(&baninfo.adr, 0, sizeof(baninfo.adr));

    SV_RemoveBan(&baninfo);
}

static void Cmd_Undercover_f() {
	int invokerclnum;
	gclient_t* gc;
	// make sure server is running
	if ( !com_sv_running->boolean ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Server is not running.\n" );
		return;
	}

        invokerclnum = Cmd_GetInvokerClnum();
        if(invokerclnum < 64 && invokerclnum >= 0)
        {
		if ( Cmd_Argc() != 1 ) {
			Com_Printf(CON_CHANNEL_DONT_FILTER,"Usage: undercover\n");
			return;
		}
		client_t* cl = &svs.clients[invokerclnum];
		gc = G_GetGClient(invokerclnum);
		if(gc && gc->sess.sessionState == SESS_STATE_PLAYING)
		{
			Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: You can not use the command \"undercover\" when you are alive\n");
			return;
		}

		cl->undercover ^= 1;
        Com_Printf(CON_CHANNEL_DONT_FILTER, "Undercover mode is now turned %s\n", cl->undercover ? "off" : "on");

		Auth_StoreUndercoverStatus(cl);
		return;
        }

	if ( Cmd_Argc() != 3 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Usage: undercover <slot> <0/1>\n");
		return;
	}

	client_t* cl = SV_GetPlayerByNum();
	if(cl == NULL)
		return;

	gc = G_GetGClient(cl - svs.clients);
	if(gc && gc->sess.sessionState == SESS_STATE_PLAYING)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: You can not use the command \"undercover\" when you are alive\n");
		return;
	}
	if(Cmd_Argv(2)[0] == '0')
	{
		cl->undercover = 0;
	}
	else if(Cmd_Argv(2)[0] == '1')
	{
		cl->undercover = 1;
	}
	else
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Usage: undercover <slot> <0/1>\n");
	}

}


char* SV_IsGUID(char* GUID){

	int j, k;

	if(strlen(GUID) == 8){
		k = 8;
	}else if(strlen(GUID) == 32){
		k = 32;
	}else{
		return NULL;
	}



  j = 0;
  while(j < k){
    if(GUID[j] < 0x30 || GUID[j] > 0x66 || (GUID[j] < 0x41 && GUID[j] > 0x39) || (GUID[j] < 0x61 && GUID[j] > 0x46)){
      return NULL;
    }
    j++;
  }
  Q_strlwr(GUID);
  if(k == 8)
    return GUID;
  else
    return &GUID[24];
}


/*
============
Cmd_BanPlayer_f
============
*/

static void Cmd_BanPlayer_f() {

    int i;
    char* guid = NULL;
    clanduid_t cl = { 0 };
    char banreason[256];
    char dropmsg[MAX_STRING_CHARS];
    baninfo_t baninfo;
    char ssti[128];
    char psti[128];
    char name[64];

    if(!Q_stricmp(Cmd_Argv(0), "banUser") || !Q_stricmp(Cmd_Argv(0), "banClient"))
	  {
        if(Cmd_Argc() < 2){
            Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: banUser <user>\n" );
			      Com_Printf(CON_CHANNEL_DONT_FILTER, "Where user is one of the following: online-playername | online-playerslot | playerid\n" );
			      Com_Printf(CON_CHANNEL_DONT_FILTER, "online-playername can be a fraction of the playername. Playerid is in format [U:V:W]\n" );
            return;
        }

	  }else{
	     if ( Cmd_Argc() < 3) {
            Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: permban <user> <Reason for this ban (max 126 chars)>\n" );
			      Com_Printf(CON_CHANNEL_DONT_FILTER, "Where user is one of the following: online-playername | online-playerslot | playerid\n" );
			      Com_Printf(CON_CHANNEL_DONT_FILTER, "online-playername can be a fraction of the playername. Playerid is in format [U:V:W]\n" );
            return;
        }
    }

	cl = SV_Cmd_GetPlayerByHandle();
	if(cl.cl || cl.steamid){
		goto gothandle;
	}

  guid = SV_IsGUID(Cmd_Argv(1));
  if(guid){
    cl.steamid = SV_SApiGUID2PlayerID(guid);
    if(cl.steamid)
    {
      goto gothandle;
    }
  }

	Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: This player can not be banned, no such player\n");
	return;

gothandle:

  banreason[0] = 0;
  if ( Cmd_Argc() > 2) {
      for(i = 2; Cmd_Argc() > i ;i++){
        Q_strncat(banreason,256,Cmd_Argv(i));
        Q_strncat(banreason,256," ");
      }
  }else{
      Q_strncpyz(banreason, "The admin has given no reason", 256);
  }

  if(strlen(banreason) > 126){
      Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: You have exceeded the maximum allowed length of 126 characters for the reason\n");
      return;
  }

  uint64_t invokerSteamId = Cmd_GetInvokerSteamID();
  if(invokerSteamId == 0)
  {
      Q_strncpyz(baninfo.adminname, "System/Rcon",  sizeof(baninfo.adminname));
      baninfo.adminsteamid = 0;
  }else{
      Q_strncpyz(baninfo.adminname, Cmd_GetInvokerName(name, sizeof(name)), sizeof(baninfo.adminname));
      baninfo.adminsteamid = invokerSteamId;
  }
  baninfo.created = Com_GetRealtime();
  baninfo.expire = (time_t)-1;
  baninfo.duration = (time_t)-1;
  Q_strncpyz(baninfo.message, banreason, sizeof(baninfo.message));

	if(cl.cl)
  {

		if(cl.cl->power > Cmd_GetInvokerPower() && Cmd_GetInvokerPower() > 1){
			Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: You cannot ban an admin with higher power!\n");
			return;
		}

		//Banning
    Q_strncpyz(baninfo.playername, cl.cl->name, sizeof(baninfo.playername));
    baninfo.steamid = cl.cl->steamid;
    baninfo.playerid = cl.cl->playerid;
    baninfo.adr = cl.cl->netchan.remoteAddress;

		SV_AddBan(&baninfo);

    SV_SApiSteamIDToString(cl.cl->playerid, psti, sizeof(psti));

		//Messages and kick
		Com_Printf(CON_CHANNEL_DONT_FILTER, "attempting to add Banrecord for player: %s id: %s\n", cl.cl->name, psti);
		SV_PrintAdministrativeLog( "banned player: %s id: %s IP: %s with the following reason: %s", cl.cl->name, psti, NET_AdrToString ( &cl.cl->netchan.remoteAddress ), banreason);

    if(invokerSteamId)
    {
      SV_SApiSteamIDToString(invokerSteamId, ssti, sizeof(ssti));
    }else{
      strcpy(ssti, "System/Rcon");
    }
    Com_sprintf(dropmsg, sizeof(dropmsg), "You have been permanently banned on this server\nYour ID is: %s    Banning admin id is: %s\nReason for this ban:\n%s",
				psti, ssti, banreason);

		SV_DropClient(cl.cl, dropmsg);


	}else{

    Q_strncpyz(baninfo.playername, "Offline Ban", sizeof(baninfo.playername));
    baninfo.steamid = 0;
    baninfo.playerid = cl.steamid;
    memset(&baninfo.adr, 0, sizeof(baninfo.adr));

    SV_SApiSteamIDToString(cl.steamid, psti, sizeof(psti));

		//Banning
		SV_AddBan(&baninfo);
		//Messages
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Banrecord added for id: %s\n", psti);
		SV_PrintAdministrativeLog( "banned player id: %s with the following reason: %s", psti, banreason);
	}
	//InsertPluginEvent
}


/*
============
Cmd_TempBanPlayer_f
============
*/

static void Cmd_TempBanPlayer_f() {

    int i;
    clanduid_t cl = { 0 };
    char banreason[256];
    unsigned int duration = 0;
    char endtime[32];
    char* temp;
    time_t aclock;
    time(&aclock);
    int length;
    char buff[8];
    char *guid = NULL;
    char dropmsg[MAX_STRING_CHARS];
    baninfo_t baninfo;
    char name[64];
    char ssti[128];
    char psti[128];

    if ( Cmd_Argc() < 4) {
  		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: tempban <user> <time> <Reason for this ban (max. 126 chars)>\n" );
  		Com_Printf(CON_CHANNEL_DONT_FILTER, "Where user is one of the following: online-playername | online-playerslot | playerid\n" );
  		Com_Printf(CON_CHANNEL_DONT_FILTER, "Where time is one of the following: ^2XX^7m | ^2XX^7h | ^2XX^7d\n" );
  		Com_Printf(CON_CHANNEL_DONT_FILTER, "Where reason for this ban is contains a description without the letters: \" ; %% / \\ \n" );
  		Com_Printf(CON_CHANNEL_DONT_FILTER, "online-playername can be a fraction of the playername. Playerid is in format [U:V:W]" );
  		Com_Printf(CON_CHANNEL_DONT_FILTER, "XX is an integer representing the time of ban in minutes, hours or days\n" );
  		return;
    }
  	/* Get the handle for this player */
    cl = SV_Cmd_GetPlayerByHandle();
  	if(cl.cl || cl.steamid){
  		goto gothandle;
  	}

    guid = SV_IsGUID(Cmd_Argv(1));
    if(guid){
      cl.steamid = SV_SApiGUID2PlayerID(guid);
      if(cl.steamid)
      {
        goto gothandle;
      }
    }

  	Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: This player can not be banned, no such player\n");
  	return;

gothandle:

	/* Get the time this ban should last */
    length = strlen(Cmd_Argv(2));
    if(length > 7){
        Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: Did not got a valid ban time\n");
        return;
    }

    if(Cmd_Argv(2)[length-1] == 'm'){
        if(isNumeric(Cmd_Argv(2),length-1)){
            Q_strncpyz(buff,Cmd_Argv(2),length);
            duration = atoi(buff);
        }

    }else if(Cmd_Argv(2)[length-1] == 'h'){
        if(isNumeric(Cmd_Argv(2),length-1)){
            Q_strncpyz(buff,Cmd_Argv(2),length);
            duration = (atoi(buff) * 60);
        }
    }else if(Cmd_Argv(2)[length-1] == 'd'){
        if(isNumeric(Cmd_Argv(2),length-1)){
            Q_strncpyz(buff,Cmd_Argv(2),length);
            duration = (atoi(buff) * 24 * 60);
        }
    }
    if(duration < 1){
        Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: Did not got a valid ban time\n");
        return;
    }
    if(duration > 60*24*30){
        Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: Can not issue a temporary ban that lasts longer than 30 days\n");
        return;
    }

  	time_t expire = (aclock+(time_t)(duration*60));
  	temp = ctime(&expire);
  	temp[strlen(temp)-1] = 0;
  	Q_strncpyz(endtime, temp, sizeof(endtime));

    /* Get a valid banreason */
    banreason[0] = 0;
    for(i = 3; Cmd_Argc() > i ;i++){
        Q_strncat(banreason,256,Cmd_Argv(i));
        Q_strncat(banreason,256," ");
    }
    if(strlen(banreason) > 126){
        Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: You have exceeded the maximum allowed length of 126 for the reason\n");
        return;
    }


    uint64_t invokerSteamId = Cmd_GetInvokerSteamID();
    if(invokerSteamId == 0)
    {
      Q_strncpyz(baninfo.adminname, "System/Rcon",  sizeof(baninfo.adminname));
      baninfo.adminsteamid = 0;
    }else{
      Q_strncpyz(baninfo.adminname, Cmd_GetInvokerName(name, sizeof(name)), sizeof(baninfo.adminname));
      baninfo.adminsteamid = invokerSteamId;
    }
    baninfo.created = Com_GetRealtime();
    baninfo.expire = expire;
    baninfo.duration = (time_t)duration;
    Q_strncpyz(baninfo.message, banreason, sizeof(baninfo.message));


	if(cl.cl){

		if(cl.cl->power > Cmd_GetInvokerPower() && Cmd_GetInvokerPower() > 1){
			Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: You cannot tempban an admin with higher power!\n");
			return;
		}

    //Banning
    Q_strncpyz(baninfo.playername, cl.cl->name, sizeof(baninfo.playername));
    baninfo.steamid = cl.cl->steamid;
    baninfo.playerid = cl.cl->playerid;
    baninfo.adr = cl.cl->netchan.remoteAddress;

		SV_AddBan(&baninfo);

    SV_SApiSteamIDToString(cl.cl->playerid, psti, sizeof(psti));

    if(invokerSteamId)
    {
      SV_SApiSteamIDToString(invokerSteamId, ssti, sizeof(ssti));
    }else{
      strcpy(ssti, "System/Rcon");
    }

		Com_Printf(CON_CHANNEL_DONT_FILTER, "Banrecord added for player: %s id: %s\n", cl.cl->name, psti);
		SV_PrintAdministrativeLog( "temporarily banned player: %s id: %s IP: %s until %s with the following reason: %s", cl.cl->name, psti, NET_AdrToString ( &cl.cl->netchan.remoteAddress ), endtime, banreason);
		Com_sprintf(dropmsg, sizeof(dropmsg), "You have been temporarily banned from this server\nYour ban will expire on: %s UTC\nYour id is: %s    Banning admin ID: %s\nReason for this ban:\n%s",
				endtime, psti, ssti, banreason);

		SV_DropClient(cl.cl, dropmsg);
	}else{

    SV_SApiSteamIDToString(cl.steamid, psti, sizeof(psti));
    Q_strncpyz(baninfo.playername, "Offline Ban", sizeof(baninfo.playername));

    baninfo.steamid = 0;
    baninfo.playerid = cl.steamid;

    memset(&baninfo.adr, 0, sizeof(baninfo.adr));

		SV_AddBan(&baninfo);

		Com_Printf(CON_CHANNEL_DONT_FILTER, "Banrecord added for id: %s\n", psti);
		SV_PrintAdministrativeLog( "temporarily banned player id: %s until %s with the following reason: %s", psti, endtime, banreason);
	}
	//InsertPluginEvent
}





/*
============
Cmd_KickPlayer_f
============
*/

static void Cmd_KickPlayer_f()
{
	clanduid_t cl;
	char kickreason[256];
	char dropmsg[MAX_STRING_CHARS];
	char psti[128];
	char ssti[128];
	int i;

	if ( Cmd_Argc() < 2)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage:\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "\tkick <user> <reason>\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "\tkick all <reason>\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Where user is one of the following: online-playername | online-playerslot\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Where reason for this ban is contains a description without the characters: \" ; %% / \\ (max. 126 chars)\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "online-playername can be a fraction of the playername.\n\n" );
		return;
	}
	// Generate kick and drop reason messages.
	kickreason[0] = 0;

	if (Cmd_Argc() > 2)
	{
		for(i = 2; i < Cmd_Argc(); ++i)
		{
			Q_strncat(kickreason, 256, Cmd_Argv(i));
			Q_strncat(kickreason, 256, " ");
		}
	}
	else
	{
		Q_strncpyz(kickreason, "The admin has no reason given", 256);
	}

	if(strlen(kickreason) >= 256 )
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: You have exceeded the maximum allowed length of 126 for the reason\n");
		return;
	}

	if(Cmd_GetInvokerSteamID() != 0)
	{
		SV_SApiSteamIDToString(Cmd_GetInvokerSteamID(), ssti, sizeof(ssti));
		Com_sprintf(dropmsg, sizeof(dropmsg), "Player kicked:\nAdmin ID is: %s\nReason for this kick:\n%s", ssti, kickreason);
	}
	else
	{
		Com_sprintf(dropmsg, sizeof(dropmsg), "Player kicked:\nReason for this kick:\n%s", kickreason);
	}

	// Check if its "kick all" command.
	if(!Q_strncmp(Cmd_Argv(1), "all", 3) && strlen(Cmd_Argv(1)) == 3)
	{
		// Kick all players (when player.power < invoker.power)
		for(i = 0; i < sv_maxclients->integer; ++i)
		{
			client_t* c = &svs.clients[i];
			if(c->state != CS_FREE && c->state != CS_ZOMBIE && c->power < Cmd_GetInvokerPower() && Cmd_GetInvokerPower() > 1)
			{
				SV_SApiSteamIDToString(c->playerid, psti, sizeof(psti));
				Com_Printf(CON_CHANNEL_DONT_FILTER, "Player kicked: %s ^7id: %s\nReason: %s\n", c->name, psti, kickreason);
				SV_PrintAdministrativeLog( "kicked player: %s^7 id: %s with the following reason: %s", c->name, psti, kickreason);

				SV_DropClient(c, dropmsg);
			}

		}
	}
	else // Kick only one player.
	{
		cl = SV_Cmd_GetPlayerByHandle();

		if(!cl.cl)
		{
			Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: This player is not online and can not be kicked\n");
			return;
		}

		if(cl.cl->power > Cmd_GetInvokerPower() && Cmd_GetInvokerPower() > 1)
		{
			Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: You cannot kick an admin with higher power!\n");
			return;
		}

		SV_SApiSteamIDToString(cl.cl->playerid, psti, sizeof(psti));
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Player kicked: %s ^7id: %s\nReason: %s\n", cl.cl->name, psti, kickreason);
		SV_PrintAdministrativeLog( "kicked player: %s^7 id: %s with the following reason: %s", cl.cl->name, psti, kickreason);

		SV_DropClient(cl.cl, dropmsg);
	}
}







/*
==================
SV_Heartbeat_f

Also called by SV_DropClient, SV_DirectConnect, and SV_SpawnServer
==================
*/
void SV_Heartbeat_f( void ) {
	svs.nextHeartbeatTime = 0;
}


/*
============
Cmd_ExecuteTranslatedCommand_f
============
*/

static void Cmd_ExecuteTranslatedCommand_f(){

    int i;
    char outstr[128];
    char *cmdname = Cmd_Argv(0);
    char *cmdstring = NULL;
    char *tmp;
    char ssti[128];


    for(i=0; i < MAX_TRANSCMDS; i++){
        if(!Q_stricmp(cmdname, psvs.translatedCmd[i].cmdname)){
            cmdname = psvs.translatedCmd[i].cmdname;
            cmdstring = psvs.translatedCmd[i].cmdargument;
            break;
        }
    }
    if(!cmdstring) return;

    tmp = outstr;
    i = 1;
    while(*cmdstring){
        if(*cmdstring == '$'){
            if(!Q_strncmp(cmdstring, "$uid", 4)){
              Com_sprintf(tmp, sizeof(outstr) - (tmp - outstr), "0");
              tmp += strlen(tmp);
              cmdstring += 4;
            }else if(!Q_strncmp(cmdstring, "$steamid", 8)){
                if(Cmd_GetInvokerSteamID() != 0)
                {
                  SV_SApiSteamIDToString(Cmd_GetInvokerSteamID(), ssti, sizeof(ssti));
                }else{
                  ssti[0] = '0';
                  ssti[1] = 0;
                }
                Com_sprintf(tmp, sizeof(outstr) - (tmp - outstr), "%s", ssti);
                tmp += strlen(tmp);
                cmdstring += 8;
            }else if(!Q_strncmp(cmdstring, "$clnum", 6)){
                Com_sprintf(tmp, sizeof(outstr) - (tmp - outstr), "%i", Cmd_GetInvokerClnum());
                tmp += strlen(tmp);
                cmdstring += 6;
            }else if(!Q_strncmp(cmdstring, "$pow", 4)){
                Com_sprintf(tmp, sizeof(outstr) - (tmp - outstr), "%i", Cmd_GetInvokerPower());
                tmp += strlen(tmp);
                cmdstring += 4;
            }else if(!Q_strncmp(cmdstring, "$arg", 4)){
                if(!*Cmd_Argv(i)){
                    cmdstring += 4;
                    if(*cmdstring == ':' && *(cmdstring + 1) != ' '){ // Default argument in place!
                        ++cmdstring; // Just advance the pointer and read in the argument as any other part of the string
                    }else{
                        Com_Printf(CON_CHANNEL_DONT_FILTER,"Not enough arguments to this command\n");
                        return;
                    }
                } else{
                    cmdstring += 4;
                    if(*cmdstring == ':') // Skip default arg (if any)
                        while(*cmdstring != ' ' && *cmdstring != ';' && *cmdstring) ++cmdstring;

                    if(strchr(Cmd_Argv(i), ';') || strchr(Cmd_Argv(i), '\n')){
                        return;
                    }
                    Com_sprintf(tmp, sizeof(outstr) - (tmp - outstr), "%s", Cmd_Argv(i));
                    tmp += strlen(tmp);
                   i++;
                }
            }
        }

        *tmp = *cmdstring;
        cmdstring++;
        tmp++;

    }

    *tmp = 0;
    Com_DPrintf(CON_CHANNEL_DONT_FILTER,"String to Execute: %s\n", outstr);
    Cbuf_AddText( outstr);
}



/*
============
Cmd_AddTranslatedCommand_f
============
*/

static void Cmd_AddTranslatedCommand_f() {

    char *cmdname;
    char *string;
    int free;
    int i;

    if ( Cmd_Argc() != 3) {
        Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: addCommand <commandname> <\"string to execute\"> String can contain: $uid $clnum $pow $arg $arg:default\n" );
        return;
    }

    cmdname = Cmd_Argv(1);
    string = Cmd_Argv(2);

    for(i=0, free = -1; i < MAX_TRANSCMDS; i++){
        if(!Q_stricmp(cmdname, psvs.translatedCmd[i].cmdname)){
            Com_Printf(CON_CHANNEL_DONT_FILTER,"This command is already defined\n");
            return;
        }
        if(!*psvs.translatedCmd[i].cmdname){
            free = i;
        }

    }
    if(free == -1){
        Com_Printf(CON_CHANNEL_DONT_FILTER,"Exceeded limit of custom commands\n");
        return;
    }

    Q_strncpyz(psvs.translatedCmd[free].cmdname, cmdname, sizeof(psvs.translatedCmd[free].cmdname));
    Q_strncpyz(psvs.translatedCmd[free].cmdargument, string, sizeof(psvs.translatedCmd[free].cmdargument));

    Cmd_AddPCommand (psvs.translatedCmd[free].cmdname, Cmd_ExecuteTranslatedCommand_f, 100);
    Com_Printf(CON_CHANNEL_DONT_FILTER,"Added custom command: %s -> %s\n", psvs.translatedCmd[free].cmdname, psvs.translatedCmd[free].cmdargument);

}

/*
====================
SV_StopRecording_f

stop recording a demo
====================
*/
static void SV_StopRecord_f( void ) {

	clanduid_t cl;
	int i;

	if ( Cmd_Argc() != 2) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "stoprecord <client>\n" );
		return;
	}

	if(!Q_stricmp(Cmd_Argv( 1 ), "all"))
	{
		for(i = 0, cl.cl = svs.clients; i < sv_maxclients->integer; i++, cl.cl++)
		{
			if(cl.cl->demorecording)
				SV_StopRecord(cl.cl);
		}
		return;
	}


	cl = SV_Cmd_GetPlayerByHandle();
	if(!cl.cl){
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: This player is not online and can not be recorded\n");
		return;
	}
	SV_StopRecord(cl.cl);
}


/*
====================
SV_Record_f

record <demoname>

Begins recording a demo from the current position
====================
*/
//static char demoName[MAX_QPATH];        // compiler bug workaround
static void SV_Record_f( void ) {

	char* s;
	char name[MAX_QPATH];
	clanduid_t cl;
	int i;
  char psti[128];

	if ( Cmd_Argc() > 3 || Cmd_Argc() < 2) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "record <client> <demoname>\n" );
		return;
	}

	if ( Cmd_Argc() == 3 ) {
		s = Cmd_Argv( 2 );
	} else {
		s = NULL;
	}

	if(!Q_stricmp(Cmd_Argv( 1 ), "all"))
	{
		for(i = 0, cl.cl = svs.clients; i < sv_maxclients->integer; i++, cl.cl++)
		{
			if(cl.cl->state == CS_ACTIVE && !cl.cl->demorecording){
        SV_SApiSteamIDTo64String(cl.cl->playerid, psti, sizeof(psti));
        Com_sprintf(name, sizeof(name), "demo_%s_", psti);
				SV_RecordClient(cl.cl, name);
			}
		}
		return;
	}

	cl = SV_Cmd_GetPlayerByHandle();
	if(!cl.cl){
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: This player is not online and can not be recorded\n");
		return;
	}

	if(s){

		SV_RecordClient(cl.cl, s);
	}else{
    SV_SApiSteamIDTo64String(cl.cl->playerid, psti, sizeof(psti));
    Com_sprintf(name, sizeof(name), "demo_%s_", psti);
    SV_RecordClient(cl.cl, name);
  }
}



/*
===========
SV_Serverinfo_f

Examine the serverinfo string
===========
*/
static void SV_Serverinfo_f( void ) {
	Com_Printf(CON_CHANNEL_DONT_FILTER, "Server info settings:\n" );
	Info_Print( Cvar_InfoString( CVAR_SERVERINFO ) );
}


/*
===========
SV_Systeminfo_f

Examine or change the serverinfo string
===========
*/
static void SV_Systeminfo_f( void ) {
	Com_Printf(CON_CHANNEL_DONT_FILTER, "System info settings:\n" );
	Info_Print( Cvar_InfoString( CVAR_SYSTEMINFO ));
}

//===========================================================


/*
=================
SV_KillServer
=================
*/
static void SV_KillServer_f( void ) {
	SV_Shutdown("killserver");
	Com_Restart(  );
}


static void SV_Map_f( void ) {

	const char* map;
	const char* cmd;

	map = Cmd_Argv( 1 );
	if ( !map ) {
		return;
	}

	SV_Map(map);

	// set the cheat value
	// if the level was started with "map <levelname>", then
	// cheats will not be allowed.  If started with "devmap <levelname>"
	// then cheats will be allowed
	cmd = Cmd_Argv( 0 );
	if ( !Q_stricmp( cmd, "devmap" ) ) {

		Cvar_SetBool( sv_cheats, qtrue );
	} else {

		Cvar_SetBool( sv_cheats, qfalse );
	}
}

/*
================
SV_MixMapsInRotation

Input map list: cvar 'sv_mapRotation'
Output map list: cvar 'sv_mapRotationCurrent'
================
*/
static void SV_MixMapsInRotation()
{
	char buffer[CVAR_STRING_SIZE] = {'\0'};
	char mixedList[CVAR_STRING_SIZE] = {'\0'};
	int i;
	int mapCount = 0;
	char* lastGametype = sv_g_gametype->string;

	struct
	{
		char* gametype;
		char* mapname;
	} rotInfo[CVAR_STRING_SIZE / 8] = {{NULL, NULL}}; // Minimum possible correct rotation command: "map mp_z". Len = 8.

	int rotationLen = strlen(sv_mapRotation->string) > CVAR_STRING_SIZE ? CVAR_STRING_SIZE : strlen(sv_mapRotation->string);
	Com_Memcpy(buffer, sv_mapRotation->string, rotationLen);

	char* p = strtok(buffer, " ");
	do
	{
		if(!Q_stricmp(p, "gametype"))
		{
			p = strtok(NULL, " ");
			rotInfo[mapCount].gametype = p;
			lastGametype = p;
			p = strtok(NULL, " ");
		}
		else
			rotInfo[mapCount].gametype = lastGametype;

		if(!Q_stricmp(p, "map"))
		{
			p = strtok(NULL, " ");
			rotInfo[mapCount].mapname = p;
		}

		++mapCount;
		p = strtok(NULL, " ");
	}
	while(p);

	lastGametype = NULL;
	for(i = mapCount; i > 0; --i) // Random here. i isn't in use. mapIndex iterations.
	{
		int ri = ((unsigned int)Com_RandomInt()) % mapCount;

		if(Q_stricmp(rotInfo[ri].gametype, lastGametype)) // Gametype of previous placed map differs from new one? place 'gametype' keyword.
		{
			Q_strncat(mixedList, CVAR_STRING_SIZE, "gametype ");
			Q_strncat(mixedList, CVAR_STRING_SIZE, rotInfo[ri].gametype);
			Q_strncat(mixedList, CVAR_STRING_SIZE, " ");
			lastGametype = rotInfo[ri].gametype;
		}

		Q_strncat(mixedList, CVAR_STRING_SIZE, "map ");
		Q_strncat(mixedList, CVAR_STRING_SIZE, rotInfo[ri].mapname);
		Q_strncat(mixedList, CVAR_STRING_SIZE, " ");

		// SWAP: Copy last rotInfo to picked one.
		rotInfo[ri].gametype = rotInfo[mapCount - 1].gametype;
		rotInfo[ri].mapname = rotInfo[mapCount - 1].mapname;

		--mapCount;

		if(strlen(mixedList) > CVAR_STRING_SIZE - 100) // Exit from safezone. EXTREMELY rare rotation crash: when len(mapname) >= ~90
			break;
	}

	Cvar_SetString(sv_mapRotationCurrent, mixedList);
	Com_Printf(CON_CHANNEL_DONT_FILTER,"Picked random map rotation:\n%s\n", mixedList);
}

/*
================
SV_MapRotate_f

================
*/
static void SV_MapRotate_f( void ) {

	char map[MAX_QPATH];
	char gametype[MAX_QPATH];
    char map_rotationbuf[CVAR_STRING_SIZE];
	char* maplist;
	int len;

	// DHM - Nerve :: Check for invalid gametype
	Com_Printf(CON_CHANNEL_DONT_FILTER,"map_rotate...\n");
	Com_Printf(CON_CHANNEL_DONT_FILTER,"\"sv_mapRotation\" is: \"%s\"\n\n", sv_mapRotation->string);
	Com_Printf(CON_CHANNEL_DONT_FILTER,"\"sv_mapRotationCurrent\" is: \"%s\"\n\n", sv_mapRotationCurrent->string);

    if(sv_mapRotationCurrent->string[0] == '\0') // No maps in current rotation.
	{
		if(sv_randomMapRotation->boolean)
			SV_MixMapsInRotation();
		else
			Cvar_SetString(sv_mapRotationCurrent, sv_mapRotation->string);
	}

	Q_strncpyz(map_rotationbuf, sv_mapRotationCurrent->string, sizeof(map_rotationbuf));
	Com_ParseReset();
	maplist = Com_ParseGetToken(map_rotationbuf);

	if(maplist == NULL){
		if(com_sv_running->boolean){
			Com_PrintError(CON_CHANNEL_DONT_FILTER,"\"sv_mapRotation\" is empty. Restarting current map\n");
			SV_MapRestart( qfalse );
		}else{
			Com_PrintError(CON_CHANNEL_DONT_FILTER,"\"sv_mapRotation\" is empty. Can not start the server\n");
		}
		return;
	}

	while(qtrue)
	{
		if(maplist == NULL)
			break;

		if(!Q_stricmpn(maplist, "gametype ", 9)){

			maplist = Com_ParseGetToken(maplist);
			if(maplist == NULL)
				break;

			len = Com_ParseTokenLength(maplist);
			if(len >= sizeof(gametype)){
				len = sizeof(gametype) -1;
				Com_PrintWarning(CON_CHANNEL_DONT_FILTER,"Oversize gametype name length at: %s\n", maplist);
			}
			Q_strncpyz(gametype, maplist, len+1);
			Cvar_SetString(sv_g_gametype, gametype);
			maplist = Com_ParseGetToken(maplist); //Pop off the gametype argument

		}else if(!Q_stricmpn(maplist, "map ", 4)){

			maplist = Com_ParseGetToken(maplist);
			if(maplist == NULL)
				break;

			len = Com_ParseTokenLength(maplist);
			if(len >= sizeof(map)){
				len = sizeof(map) -1;
				Com_PrintWarning(CON_CHANNEL_DONT_FILTER,"Oversize map name length at: %s\n", maplist);
			}
			Q_strncpyz(map, maplist, len+1);

			maplist = Com_ParseGetToken(maplist); //Pop off the last map-name

			if(maplist == NULL)
				maplist = "";

			Cvar_SetString(sv_mapRotationCurrent, maplist); //Set the cvar with one map less

			if(!SV_Map(map)){ //Load the level
				Com_PrintError(CON_CHANNEL_DONT_FILTER,"Invalid mapname at %s %s\nRestarting current map\n", map, maplist);
				SV_MapRestart( qfalse );
			}
			return;
		}else{
			Com_PrintError(CON_CHANNEL_DONT_FILTER,"Broken maprotation at: %s\n", maplist);
			maplist = Com_ParseGetToken(maplist); //Pop off the last argument
		}
	}


	if(com_sv_running->boolean){
		Com_PrintError(CON_CHANNEL_DONT_FILTER,"\"sv_mapRotation\" is broken at: %s.\nRestarting current map\n");
		SV_MapRestart( qfalse );
	}else{
		Com_PrintError(CON_CHANNEL_DONT_FILTER,"\"sv_mapRotation\" is empty. Can not start the server\n");
	}
}

static void SV_MapRestart_f(void){

	SV_MapRestart(qfalse);

}

static void SV_FastRestart_f(void){

	SV_MapRestart(qtrue);

}


static void SV_SetPerk_f( void ){

    clanduid_t cl;
    unsigned int perkIndex;
    unsigned int clnum;

    cl = SV_Cmd_GetPlayerByHandle();
    if(!cl.cl)
        return;

    if(Cmd_Argc() < 3){
        Com_DPrintf(CON_CHANNEL_DONT_FILTER,"Unknown Perk\n");
        return;
    }
    perkIndex = BG_GetPerkIndexForName(Cmd_Argv(2));
    if(perkIndex > 19){
        Com_DPrintf(CON_CHANNEL_DONT_FILTER,"Unknown Perk: %s\n", Cmd_Argv(2));
        return;
    }

    clnum = cl.cl - svs.clients;

    playerState_t *ps = SV_GameClientNum(clnum);

    ps->perks |= (1 << perkIndex);

    level.clients[clnum].sess.cs.perks |= (1 << perkIndex);

}



void __cdecl SV_StringUsage_f()
{
	MT_DumpTree( );
}

void __cdecl SV_ScriptUsage_f()
{
  Scr_DumpScriptThreads( );
}


/*
static void SV_TestTimeOverrun( void ){

	svs.time = 0x6ffeffff;

}



static void SV_GetCurrentServeTimer(){

	Com_Printf(CON_CHANNEL_DONT_FILTER,"Server Time is : %x\n", svs.time);
}


static void SV_SetGravity_f( void ){

    clanduid_t cl;
    int gravity;
    unsigned int clnum;

    cl = SV_Cmd_GetPlayerByHandle();
    if(!cl.cl)
        return;

    if(Cmd_Argc() < 3){
        Com_Printf(CON_CHANNEL_DONT_FILTER,"Bad args\n");
        return;
    }

    gravity = atoi(Cmd_Argv(2));

    clnum = cl.cl - svs.clients;

    playerState_t *ps = SV_GameClientNum(clnum);

    ps->gravity = gravity;

    Com_Printf(CON_CHANNEL_DONT_FILTER,"Gravity: %i\n", ps->gravity);

}*/
/*
static void SV_SetStance_f( void ){

    clanduid_t cl;
    int gravity;
    unsigned int clnum;

    cl = SV_Cmd_GetPlayerByHandle();
    if(!cl.cl)
        return;

    if(Cmd_Argc() < 3){
        Com_Printf(CON_CHANNEL_DONT_FILTER,"Bad args\n");
        return;
    }

    gravity = atoi(Cmd_Argv(2));

    clnum = cl.cl - svs.clients;

    playerState_t *ps = SV_GameClientNum(clnum);

    ps->stance = gravity;

    Com_Printf(CON_CHANNEL_DONT_FILTER,"Gravity: %i, Stance: %i\n", ps->gravity, ps->stance);

}
*/

static void SV_ShowConfigstring_f()
{
    char buffer[8192];
    int index;

    buffer[0] = 0;

    if ( Cmd_Argc() != 2 ) {
	Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: showconfigstring <index>\n" );
	return;
    }

    index = atoi(Cmd_Argv(1));
    SV_GetConfigstring(index, buffer, sizeof(buffer));
    Com_Printf(CON_CHANNEL_DONT_FILTER,"CS len is %d CS is: %s\n", strlen(buffer), buffer);
}




qboolean SV_RunDownload(const char* url, const char* filename)
{
	ftRequest_t* curfileobj;
	int len, transret;

	curfileobj = FileDownloadRequest(url);
	if(curfileobj == NULL)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Couldn't connect to download-server for downloading. Failed to download %s\n", filename);
		return qfalse;
	}

	do
	{
		transret = FileDownloadSendReceive( curfileobj );
		Sys_SleepUSec(20000);

	} while (transret == 0);

	if(transret < 0)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Downloading of file: \"%s\" has failed\n", filename );
		FileDownloadFreeRequest(curfileobj);
		return qfalse;
	}

	if(curfileobj->code != 200)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Downloading of file: \"%s\" has failed with the following message: %d %s\n", filename, curfileobj->code, curfileobj->status);
		FileDownloadFreeRequest(curfileobj);
		return qfalse;

	}

	len = FS_SV_BaseWriteFile(filename, curfileobj->recvmsg.data + curfileobj->headerLength, curfileobj->contentLength);
	if(len != curfileobj->contentLength){

		len = FS_SV_HomeWriteFile(filename, curfileobj->recvmsg.data + curfileobj->headerLength, curfileobj->contentLength);
		if(len != curfileobj->contentLength)
		{
			Com_PrintError(CON_CHANNEL_DONT_FILTER,"Opening of \"%s\" for writing has failed! Download aborted.\n", filename);
			FileDownloadFreeRequest(curfileobj);
			return qfalse;
		}
	}
	FileDownloadFreeRequest(curfileobj);
	return qtrue;
}

void SV_MapCompletedExec(const char* mapname)
{
	char cmdline[MAX_STRING_CHARS];

	if(!*sv_mapDownloadCompletedCmd->string)
		return;

	if(strstr(sv_mapDownloadCompletedCmd->string, ".."))
	{
		Com_PrintWarning(CON_CHANNEL_DONT_FILTER,"Commandlines containing \"..\" are not allowed");
		return;
	}

	Com_sprintf(cmdline, sizeof(cmdline), "\"%s/apps/%s\" \"%s/usermaps/%s\"", fs_homepath->string, sv_mapDownloadCompletedCmd->string, fs_homepath->string, mapname);

	Sys_DoStartProcess(cmdline);
}

void SV_DownloadMapThread(char *inurl)
{
	int len;

	char url[MAX_STRING_CHARS];
	char dlurl[MAX_STRING_CHARS];
	char *mapname;
	char filename[MAX_OSPATH];
	static qboolean downloadActive = 0;


	Q_strncpyz(url, inurl, sizeof(url));
	Z_Free(inurl);


	Sys_EnterCriticalSection(CRITSECT_DL_MAP);

	if(downloadActive)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"There is already a map download running. Won't download this.\n");
		Sys_LeaveCriticalSection(CRITSECT_DL_MAP);
		return;
	}
	downloadActive = qtrue;

	Sys_LeaveCriticalSection(CRITSECT_DL_MAP);


	len = strlen(url);

	if(url[len -1] == '/')
		url[len -1] = '\0';

	mapname = strrchr(url, '/');

	if(mapname == NULL)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Invalid map download path\n");
		downloadActive = qfalse;
		return;
	}

	mapname++;


	Com_sprintf(filename, sizeof(filename), "usermaps/%s/%s%s", mapname ,mapname, ".ff" );
	Com_sprintf(dlurl, sizeof(dlurl), "%s/%s%s", url, mapname, ".ff");

	Com_Printf(CON_CHANNEL_DONT_FILTER,"Begin downloading of file: \"%s\"\n", filename );

	if(SV_RunDownload(dlurl, filename) == qfalse)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Aborted map download\n");
		downloadActive = qfalse;
		return;
	}
	Com_Printf(CON_CHANNEL_DONT_FILTER,"Received file: %s\n", filename );




	Com_sprintf(filename, sizeof(filename), "usermaps/%s/%s%s", mapname ,mapname, "_load.ff" );
	Com_sprintf(dlurl, sizeof(dlurl), "%s/%s%s", url, mapname, "_load.ff");

	Com_Printf(CON_CHANNEL_DONT_FILTER,"Begin downloading of file: \"%s\"\n", filename );

	if(SV_RunDownload(dlurl, filename) == qfalse)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Aborted map download\n");
		downloadActive = qfalse;
		return;
	}
	Com_Printf(CON_CHANNEL_DONT_FILTER,"Received file: %s\n", filename );



	Com_sprintf(filename, sizeof(filename), "usermaps/%s/%s%s", mapname ,mapname, ".iwd" );
	Com_sprintf(dlurl, sizeof(dlurl), "%s/%s%s", url, mapname, ".iwd");

	Com_Printf(CON_CHANNEL_DONT_FILTER,"Begin downloading of file: \"%s\"\n", filename );

	if(SV_RunDownload(dlurl, filename) == qfalse)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"File %s was not downloaded. This map has maybe no .iwd file\n", filename);
	}else{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Received file: %s\n", filename );
        }
	Com_Printf(CON_CHANNEL_DONT_FILTER,"Download of map \"%s\" has been completed\n", mapname);
	downloadActive = qfalse;

	Sys_SetupThreadCallback(SV_MapCompletedExec, mapname);

}

void SV_DownloadMap_f()
{
	char *url;
	int len;
	char buf[128];

	if ( Cmd_Argc() != 2 )
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: downloadmap <\"url\">\nFor example: downloadmap \"http://somehost/cod4/usermaps/mapname\"\n" );
		return;
    }

	len = strlen(Cmd_Argv(1));

	Cmd_Args(buf, sizeof(buf));

	if(len < 3 || len > MAX_STRING_CHARS)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: downloadmap <\"url\">\n" );
		return;
	}

	url = S_Malloc(len +1);
	if(url == NULL)
	{
		Com_PrintError(CON_CHANNEL_DONT_FILTER,"SV_DownloadMap_f(): Out of memory\n");
		return;
	}

	Q_strncpyz(url, Cmd_Argv(1), len +1);

	if(Sys_CreateCallbackThread(SV_DownloadMapThread, url) == qfalse)
	{
		Com_PrintError(CON_CHANNEL_DONT_FILTER,"SV_DownloadMap_f(): Failed to start download thread\n");
		Z_Free(url);
	}
}

void SV_ChangeGametype_f()
{

    char gametypestring[32];
    char* find;

    if(Cmd_Argc() != 2)
    {
        Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: gametype <gametypename>\n" );
        return;
    }

    Q_strncpyz(gametypestring, Cmd_Argv(1), sizeof(gametypestring));

    if(strchr(gametypestring, ';'))
    {
        return;
    }

    find = strchr(gametypestring, '\n');

    if(find)
    {
        *find = '\0';
    }

    Cvar_Set("g_gametype", gametypestring);
    Cbuf_AddText("map_restart\n");

}

void SV_GetSS_f()
{
    clanduid_t cl;

    if ( Cmd_Argc() < 2) {

		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: getss <user> <filename>\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: getss <user>\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: getss all\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Where user is one of the following: online-playername | online-playerslot\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "online-playername can be a fraction of the playername.\n" );
		return;
    }

    if(Q_stricmp(Cmd_Argv(1), "all") == 0)
    {
        cl.cl = NULL;
    }else{
        cl = SV_Cmd_GetPlayerByHandle();
        if(!cl.cl)
        {
            Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: This player is not online\n");
            return;
        }
    }
    SV_ScreenshotClient(cl.cl, Cmd_Argv(2));
}

void BuildModuleRequests(client_t* cl)
{
	unsigned i;

	if(cl)
	{
		SV_SApiSendModuleRequest(cl);
		return;
	}

	for(i = 0, cl = svs.clients; i < sv_maxclients->integer; ++i, ++cl)
	{
		if( cl->state != CS_ACTIVE ) {
			continue;
		}
		SV_SApiSendModuleRequest(cl);
	}

	Com_Printf(CON_CHANNEL_DONT_FILTER,"Modules for %s requested\n", cl->name);
}

void SV_GetModules_f()
{
    clanduid_t cl;

    if ( Cmd_Argc() < 2) {

		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: getmodules <user> <filename>\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: getmodules <user>\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Usage: getmodules all\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "Where user is one of the following: online-playername | online-playerslot\n" );
		Com_Printf(CON_CHANNEL_DONT_FILTER, "online-playername can be a fraction of the playername.\n" );
		return;
    }

    if(Q_stricmp(Cmd_Argv(1), "all") == 0)
    {
        cl.cl = NULL;
    }else{
        cl = SV_Cmd_GetPlayerByHandle();
        if(!cl.cl)
        {
            Com_Printf(CON_CHANNEL_DONT_FILTER,"Error: This player is not online\n");
            return;
        }
    }

	BuildModuleRequests(cl.cl);
}

void SV_LoadMapFromBsp()
{
    if ( Cmd_Argc() != 2) {
		Com_Printf(CON_CHANNEL_DONT_FILTER, "loadmap <d3dbspfile>\n" );
		return;
    }
    Com_LoadBsp(Cmd_Argv(1));
    CM_LoadMapData_LoadObj(Cmd_Argv(1));


}

void SV_DoHostMigration_f();

void SV_AddOperatorCommands()
{
	//static qboolean	initialized; // Not used?
	//initialized = qtrue;

	//Former safe commands
	Cmd_AddPCommand ("systeminfo", SV_Systeminfo_f, 1);
	Cmd_AddPCommand ("serverinfo", SV_Serverinfo_f, 1);
	Cmd_AddPCommand ("map", SV_Map_f, 60);
	Cmd_AddCommand ("map_rotate", SV_MapRotate_f);
	Cmd_AddCommand ("writenvcfg", NV_WriteConfig);
	Cmd_AddCommand ("status", SV_Status_f);
	Cmd_AddCommand ("addCommand", Cmd_AddTranslatedCommand_f);
	Cmd_AddCommand ("downloadmap", SV_DownloadMap_f);
	Cmd_AddPCommand ("gametype", SV_ChangeGametype_f, 80);


//	Cmd_AddCommand ("loadmap", SV_LoadMapFromBsp);


	//Other commands
	Cmd_AddPCommand ("getmodules", SV_GetModules_f, 45);
	Cmd_AddCommand ("killserver", SV_KillServer_f);
	Cmd_AddCommand ("setPerk", SV_SetPerk_f);
	Cmd_AddPCommand ("map_restart", SV_MapRestart_f, 50);
	Cmd_AddCommand ("fast_restart", SV_FastRestart_f);
	Cmd_AddCommand ("heartbeat", SV_Heartbeat_f);
	Cmd_AddPCommand ("kick", Cmd_KickPlayer_f, 35);
	Cmd_AddCommand ("clientkick", Cmd_KickPlayer_f);
	Cmd_AddCommand ("onlykick", Cmd_KickPlayer_f);
	Cmd_AddPCommand ("unban", Cmd_UnbanPlayer_f, 80);
	Cmd_AddCommand ("unbanUser", Cmd_UnbanPlayer_f);
	Cmd_AddPCommand ("permban", Cmd_BanPlayer_f, 80);
	Cmd_AddPCommand ("tempban", Cmd_TempBanPlayer_f, 50);
//	Cmd_AddCommand ("bpermban", Cmd_BanPlayer_f);
//	Cmd_AddCommand ("btempban", Cmd_TempBanPlayer_f);
	Cmd_AddCommand ("banUser", Cmd_BanPlayer_f);
	Cmd_AddCommand ("banClient", Cmd_BanPlayer_f);
	Cmd_AddPCommand ("ministatus", SV_MiniStatus_f, 1);
	Cmd_AddPCommand ("say", SV_ConSayChat_f, 70);
	Cmd_AddCommand ("consay", SV_ConSayConsole_f);
	Cmd_AddPCommand ("screensay", SV_ConSayScreen_f, 70);
	Cmd_AddPCommand ("tell", SV_ConTellChat_f, 70);
	Cmd_AddCommand ("contell", SV_ConTellConsole_f);
	Cmd_AddPCommand ("screentell", SV_ConTellScreen_f, 70);
	Cmd_AddPCommand ("dumpuser", SV_DumpUser_f, 50);
	Cmd_AddCommand ("stringUsage", SV_StringUsage_f);
	Cmd_AddCommand ("scriptUsage", SV_ScriptUsage_f);
	Cmd_AddPCommand ("undercover", Cmd_Undercover_f, 60);

	Cmd_AddPCommand("stoprecord", SV_StopRecord_f, 70);
	Cmd_AddPCommand("record", SV_Record_f, 50);

	if(Com_IsDeveloper()){
		Cmd_AddCommand ("showconfigstring", SV_ShowConfigstring_f);
		Cmd_AddCommand ("devmap", SV_Map_f);

	}
//	Cmd_AddCommand ("hostmigration", SV_DoHostMigration_f);
}


/*
============
SV_Cmd_ArgvBuffer

The interpreted versions use this because
they can't have pointers returned to them
============
*/
void	SV_Cmd_ArgvBuffer( int arg, char *buffer, int bufferLength ) {
	Q_strncpyz( buffer, SV_Cmd_Argv(arg), bufferLength );
}
