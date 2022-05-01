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
#include "qcommon_io.h"
#include "qcommon.h"
#include "filesystem.h"
#include "cvar.h"
#include "sys_net.h"
#include "sys_main.h"
#include "server.h"
#include "cmd.h"
#include "plugin_handler.h"

#include <stdlib.h>
#include <string.h>
#include <time.h>

#define MAX_IPBANS 32
//Don't ban IPs for more than MAX_IPBAN_MINUTES minutes as they can be shared (Carrier-grade NAT)
#define MAX_DEFAULT_IPBAN_MINUTES 240
#define DEFAULT_APPEAL_MINHOURS 4

cvar_t *ipbantime;
cvar_t *sv_banappealurl;
cvar_t *sv_banappealminhours;


typedef struct {	//It is only for timelimited tempbans to prevent happy reconnecting and sitting in server for 2 minutes until player is detected or keep to advertise with playernick while reconnecting
    netadr_t	remote;
    char	banmsg[256];
    unsigned int	timeout;
    int		expire;
    int		systime;
}ipBanList_t;

ipBanList_t ipBans[MAX_IPBANS];


const char* SV_WriteBanTimelimit(int timeleftsecs, char *outbuffer, int outbufferlen)
{
  if(timeleftsecs == -1)
  {
        Com_sprintf(outbuffer, outbufferlen, "This is a permanent ban.\n");
        return outbuffer;

  }else{

      int remaining = (int)(timeleftsecs + 60); //in seconds (+60 for fixing up a display error when only some seconds are remaining)
      int d = remaining/(60*60*24);
      remaining = remaining%(60*60*24);
      int h = remaining/(60*60);
      remaining = remaining%(60*60);
      int m = remaining/60;

      Com_sprintf(outbuffer, outbufferlen, "This is a temporary ban and will expire in\n %i days %i hours %i minutes\n", d, h, m);
      return outbuffer;
  }
}


char* SV_PlayerBannedByip(netadr_t *netadr, char* message, int len){	//Gets called in SV_DirectConnect
    ipBanList_t *this;
    int i;
    char outbuffer[512];
    int timeleftsecs;

    message[0] = 0;

    for(this = &ipBans[0], i = 0; i < MAX_IPBANS; this++, i++)
    {

        if(NET_CompareBaseAdr(netadr, &this->remote)){

            timeleftsecs = this->timeout - Com_GetRealtime();
            if(timeleftsecs > 1)
            {
              Com_sprintf(message, len, "%s\n%s\n", this->banmsg, SV_WriteBanTimelimit(timeleftsecs, outbuffer, sizeof(outbuffer)));
              return message;
            }
        }
    }
    return NULL;
}




//duration is in minutes
void SV_PlayerAddBanByip(netadr_t *remote, char *message, int expire){		//Gets called by future implemented ban-commands and if a prior ban got enforced again

    ipBanList_t *list;
    int i;
    int oldest =	0;
    unsigned int oldestTime = 0xFFFFFFFF;
    int duration;

    if(!remote)
    {
        Com_PrintError(CON_CHANNEL_SERVER,"SV_PlayerAddBanByip: IP address is NULL\n");
        return;

    }

    if(!ipbantime || ipbantime->integer == 0)
        return;

    for(list = &ipBans[0], i = 0; i < MAX_IPBANS; list++, i++){	//At first check whether we have already an entry for this player
        if(NET_CompareBaseAdr(remote, &list->remote)){
              break;
        }
    		if (list->systime < oldestTime) {
    			oldestTime = list->systime;
    			oldest = i;
    		}
    }

    if(i == MAX_IPBANS){
	 list = &ipBans[oldest];
    }
    list->remote = *remote;

    Q_strncpyz(list->banmsg, message, sizeof(list->banmsg));

    list->expire = expire;

    duration = expire - Com_GetRealtime();
    if(duration > ipbantime->integer*60 || expire == -1)
        duration = ipbantime->integer*60;	//Don't ban IPs for more than MAX_IPBAN_MINUTES minutes as they can be shared (Carrier-grade NAT)

    list->systime = Sys_Milliseconds();

    list->timeout = Com_GetRealtime() + duration;

}


void SV_RemoveBanByip(netadr_t *remote)
{
    ipBanList_t *thisipban;
    int i;

    if(remote != NULL && remote->type != NA_BAD)
    {
        for(thisipban = ipBans, i = 0; i < MAX_IPBANS; thisipban++, i++)
        {
            if(NET_CompareBaseAdr(remote, &thisipban->remote))
            {
                Com_Memset(thisipban,0,sizeof(ipBanList_t));
                return;
            }
        }

    }
}


char* SV_PlayerIsBanned(uint64_t playerid, uint64_t steamid, netadr_t *addr, const char* name, char* message, int len)
{

  baninfo_t baninfo;

  //Banning
  Q_strncpyz(baninfo.playername, name, sizeof(baninfo.playername));
  baninfo.steamid = steamid;
  baninfo.playerid = playerid;
  if(addr)
  {
    baninfo.adr = *addr;
  }else{
    Com_Memset(&baninfo.adr, 0, sizeof(baninfo.adr));
  }
//  return SV_PlayerIsBannedInInternalList(&baninfo, message, len);
  message[0] = 0;

  //Iterate plugins while message is ""
  PHandler_Event(PLUGINS_ONPLAYERGETBANSTATUS, &baninfo, message, len);
  if(message[0])
  {
    return message;
  }
  return NULL;
}

void SV_InitBanlist()
{
    ipbantime = Cvar_RegisterInt("banlist_maxipbantime", MAX_DEFAULT_IPBAN_MINUTES, 0, 20160, 0, "Limit of minutes to keep a ban against an ip-address up");
    sv_banappealurl = Cvar_RegisterString("banlist_appealurl", "", 0, "Showing the url for ban appeal");
    sv_banappealminhours = Cvar_RegisterInt("banlist_appealminhours", DEFAULT_APPEAL_MINHOURS, 0, 336, 0, "How much hours have to be left for showing an appeal url");

}

void SV_AddBan(baninfo_t* baninfo)
{
  time_t aclock;
  time(&aclock);
  baninfo->created = aclock;
  PHandler_Event(PLUGINS_ONPLAYERADDBAN, baninfo);
}

void SV_AddBanForClient(client_t* cl, int bantime, const char* banreason)
{
  time_t aclock;
  time(&aclock);
  baninfo_t baninfo;

  uint64_t invokersteamid = Cmd_GetInvokerSteamID();
  if(invokersteamid == 0)
  {
    Q_strncpyz(baninfo.adminname, "System/Rcon",  sizeof(baninfo.adminname));
    baninfo.adminsteamid = 0;
  }else{
    Cmd_GetInvokerName(baninfo.adminname, sizeof(baninfo.adminname));
    baninfo.adminsteamid = invokersteamid;
  }

  baninfo.created = aclock;
  baninfo.duration = bantime;

  if(bantime < 0)
  {
    baninfo.expire = (time_t)-1;
  }else{
    baninfo.expire = baninfo.created + 60 * baninfo.duration;
  }
  Q_strncpyz(baninfo.message, banreason, sizeof(baninfo.message));

  //Banning
  Q_strncpyz(baninfo.playername, cl->name, sizeof(baninfo.playername));
  baninfo.steamid = cl->steamid;
  baninfo.playerid = cl->playerid;
  baninfo.adr = cl->netchan.remoteAddress;
  SV_AddBan(&baninfo);
}
//SV_AddBanForSteamIDGUID()
void SV_AddBanForPlayer(uint64_t steamid, uint64_t playerid, const char* name, int bantime, const char* banreason)
{
  time_t aclock;
  time(&aclock);
  baninfo_t baninfo;

  uint64_t invokersteamid = Cmd_GetInvokerSteamID();
  if(invokersteamid == 0)
  {
    Q_strncpyz(baninfo.adminname, "System/Rcon",  sizeof(baninfo.adminname));
    baninfo.adminsteamid = 0;
  }else{
    Cmd_GetInvokerName(baninfo.adminname, sizeof(baninfo.adminname));
    baninfo.adminsteamid = invokersteamid;
  }

  baninfo.created = aclock;
  baninfo.duration = bantime;

  if(bantime < 0)
  {
    baninfo.expire = (time_t)-1;
  }else{
    baninfo.expire = baninfo.created + 60 * baninfo.duration;
  }
  Q_strncpyz(baninfo.message, banreason, sizeof(baninfo.message));

  if(name == NULL){
    name = "N/A";
  }

  //Banning
  Q_strncpyz(baninfo.playername, name, sizeof(baninfo.playername));
  baninfo.steamid = steamid;
  baninfo.playerid = playerid;
  memset(&baninfo.adr, 0, sizeof(baninfo.adr));

  SV_AddBan(&baninfo);
}


void SV_RemoveBan(baninfo_t* baninfo)
{
  PHandler_Event(PLUGINS_ONPLAYERREMOVEBAN, baninfo);
}

const char* SV_FormatBanMessage(int timeleftsecs, char *outbuffer, int outbufferlen, const char* reasonfmt, ...)
{
  va_list		argptr;
  char appeal[256];
  char reason[512];
  appeal[0] = 0;

	va_start (argptr,reasonfmt);
	Q_vsnprintf (reason, sizeof(reason), reasonfmt, argptr);
	va_end (argptr);

  if(sv_banappealminhours && sv_banappealurl && sv_banappealurl->string[0])
  {
    if(sv_banappealminhours->integer <= timeleftsecs * 60 * 60 || timeleftsecs == -1)
    {
        Com_sprintf(appeal, sizeof(appeal), "%s\n", sv_banappealurl->string);
    }
  }

  Com_sprintf(outbuffer, outbufferlen, "You have been banned from this server with the following reason: %s\n%s", reason, appeal);
  return outbuffer;
}
