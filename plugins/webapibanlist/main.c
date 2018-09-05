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




/*
#include "qcommon_io.h"
#include "qcommon.h"
#include "filesystem.h"
#include "cvar.h"
#include "sys_net.h"
#include "sys_main.h"
#include "server.h"
#include "cmd.h"
#include "plugin_handler.h"
*/
#include "../pinc.h"
#include "q_shared.h"

#include <stdlib.h>
#include <string.h>
#include <time.h>

#define MAX_NAME_LENGTH 33
#define UPDATE_INTERVAL 120 //2 minutes
#define MAX_CACHED_ENTRIES 24

typedef struct banList_s {
    unsigned int lastqueried; //Last time requested info for this player. Used for sorting for oldest
    unsigned int lastupdated; //Last time we have received info about this player from network
    unsigned int lastqueryattempt;
    time_t	expire;
    time_t	created;
    uint64_t steamid;
    uint64_t playerid;
    uint64_t adminsteamid;
    char	reason[512];
    char	playername[MAX_NAME_LENGTH];
    netadr_t remote;
}banList_t;

/*** Shared used objects. Access only inside critical sections ****/
banList_t cachedBanlist[MAX_CACHED_ENTRIES];
qboolean cacheupdated;
/******************************************************************/

typedef struct
{
  char showbanlistmessage[1024];
}parameters_t;
parameters_t paramters;

cvar_t* identkey;
cvar_t *banlisthandlerurl;
int serverport;

void ListCachedBans_f();
void SV_DumpBanlist_f()
{
    Plugin_Printf("%s\n", paramters.showbanlistmessage);
}

/*

PCL void OnPlayerAddBan(baninfo_t* baninfo)
{
  time_t aclock;
  time(&aclock);
  baninfo->created = aclock;
  SV_AddBanToInternalList(baninfo->uid, baninfo->adminuid, baninfo->pbguid, baninfo->playername, &baninfo->adr, baninfo->expire, baninfo->message);
}


PCL void OnPlayerRemoveBan(baninfo_t* baninfo)
{
  if(baninfo->pbguid[0])
  {
    SV_RemoveBanFromInternalList(0, baninfo->pbguid, NULL);
  }else if(baninfo->uid > 0){
    SV_RemoveBanFromInternalList(baninfo->uid, NULL, NULL);
  }else{
    SV_RemoveBanFromInternalList(0, NULL, baninfo->playername);
  }
}
*/

PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 1;
    info->pluginVersion.minor = 0;	// Plugin version
    strncpy(info->fullName,"Webserver powered banlist plugin by Fraggy", sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"Plugin to work as banlist.",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to manage a banlist over a webapi so players can be banned from multiple gameservers and ban managed from webservers.",sizeof(info->longDescription));
}


int HTTP_DoBlockingQuery(const char *url, char* data, int *len)
{
    int stringlen = strlen(data);
    int outlen;
    int code;

    if(stringlen > *len)
    {
      stringlen = *len;
    }

    ftRequest_t* r = Plugin_HTTP_Request(url, "POST", (byte*)data, stringlen, "Content-Type: application/x-www-form-urlencoded; charset=utf-8\r\n");
    if(r == NULL)
    {
      return 0;
    }

    if(r->code != 200)
    {
      code = r->code;
      Plugin_HTTP_FreeObj(r);
      return code;
    }

    outlen = r->contentLength;
    if(outlen >= *len)
    {
      outlen = *len;
    }

    memcpy(data, r->extrecvmsg->data + r->headerLength, outlen);
    code = r->code;
    Plugin_HTTP_FreeObj(r);
    return code;
}

PCL int OnInit(){	// Funciton called on server initiation

    char data[8192];
    char portstr[6];
    int len, code;
    httpPostVals_t values;

    identkey = Plugin_Cvar_RegisterString("webbanapi_identkey", "", 0, "Key used to authenticate on web banlist api interface");
    serverport = Plugin_Cvar_VariableIntegerValue("net_port");
    banlisthandlerurl = Plugin_Cvar_RegisterString("webbanapi_url", "", 0, "URL of the banlist handler");

    if(banlisthandlerurl->string[0] == 0)
    {
      Plugin_PrintError("Init failure. Cvar webbanapi_url is not set\n");
      return -1;
    }
    data[0] = 0;

    Com_sprintf(portstr, sizeof(portstr), "%hu", serverport);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "command", "HELO");
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "identkey", identkey->string);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "serverport", portstr);
    len = sizeof(data);
    code = HTTP_DoBlockingQuery(banlisthandlerurl->string, data, &len);
    if(code != 200)
    {
      Plugin_PrintError("Init failure. Server returned code %u and message %s\n", code, data);
      return -1;
    }
    Plugin_HTTP_ParseFormDataBody(data, &values);
    const char *status = Plugin_HTTP_GetFormDataItem(&values, "status");
    if(Q_stricmp(status, "okay"))
    {
      Plugin_PrintError("Init failure. WebAPI backend said: %s\n", status);
      return -1;
    }
    Q_strncpyz(paramters.showbanlistmessage, Plugin_HTTP_GetFormDataItem(&values, "showbanlistmessage"), sizeof(paramters.showbanlistmessage));
    Plugin_Printf("Web banlist plugin is ready to work\n");
    Plugin_AddCommand("dumpbanlist", SV_DumpBanlist_f, 30);
    Plugin_AddCommand("dumpbanlistcache", ListCachedBans_f, 100);
    return 0;
}


void ListCachedBans_f() //Debug function to test banlist cache
{
  int i;
  char pid[128];
  char aid[128];

  Plugin_EnterCriticalSection();
  Plugin_Printf("------------------------------------------------\n");
  for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
  {
      int timeleft;

      if(cachedBanlist[i].expire == -1)
      {
        timeleft = -1;
      }else{
        timeleft = cachedBanlist[i].expire - Plugin_GetRealtime();
        if(timeleft < 1)
        {
            continue;
        }
      }

      Plugin_SteamIDToString(cachedBanlist[i].playerid, pid, sizeof(pid));
      Plugin_SteamIDToString(cachedBanlist[i].adminsteamid, aid, sizeof(aid));
      Plugin_Printf("%d %s %s %d %s\n", i, pid, aid, timeleft, cachedBanlist[i].reason);
  }
  Plugin_LeaveCriticalSection();
}



banList_t* CheckForCachedBans(baninfo_t* baninfo) //Will also check for just received bans after querying as the ban info does receive in an independed worker thread
{
  int i;
  char banmsg[512];
  char timelimitmsg[512];
  char pid[128];
  char aid[128];

  Plugin_EnterCriticalSection();

  for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
  {
    if((baninfo->playerid && cachedBanlist[i].playerid == baninfo->playerid) || (baninfo->adr.type >= NA_IP && Plugin_NET_CompareBaseAdr(&baninfo->adr, &cachedBanlist[i].remote)))
    {

      int timeleft;

      if(cachedBanlist[i].expire == -1)
      {
        timeleft = -1;
      }else{
        timeleft = cachedBanlist[i].expire - Plugin_GetRealtime();
        if(timeleft < 1)
        {
            continue;
        }
      }
      //populate the struct
      Q_strncpyz(baninfo->playername, cachedBanlist[i].playername, sizeof(baninfo->playername));
      baninfo->expire = cachedBanlist[i].expire;
      baninfo->created = cachedBanlist[i].created;
      baninfo->steamid = cachedBanlist[i].steamid;
      baninfo->expire = cachedBanlist[i].expire;
      baninfo->playerid = cachedBanlist[i].playerid;
      baninfo->adr = cachedBanlist[i].remote;

      Plugin_SteamIDToString(cachedBanlist[i].playerid, pid, sizeof(pid));
      Plugin_SteamIDToString(cachedBanlist[i].adminsteamid, aid, sizeof(aid));

      Plugin_WriteBanTimelimit(timeleft, timelimitmsg, sizeof(timelimitmsg));
      Com_sprintf(banmsg, sizeof(banmsg), "%s\nYour ID is: %s\nBanning admin ID is: %s\n", cachedBanlist[i].reason, pid, aid);

      Com_sprintf(baninfo->message, sizeof(baninfo->message), "%s%s", banmsg, timelimitmsg);
      cachedBanlist[i].lastqueried = Plugin_GetRealtime();

      break;
    }

  }
  Plugin_LeaveCriticalSection();

  if(i == MAX_CACHED_ENTRIES)
  {
    return NULL;
  }
  return &cachedBanlist[i];
}

//query: guid;
void* QueryThreadForPlayer(void* q)
{
  char querystring[8192];
  httpPostVals_t values;
  char tmp[1024];
  int attempts;
  int code;
  int len = sizeof(querystring);
  baninfo_t *baninfo = (baninfo_t*)q;
  banList_t b;
  int i, oldest;
  unsigned int oldestTime;

  //Buid the query string
  querystring[0] = 0;
  if(baninfo->playerid > 0)
  {
    Com_sprintf(tmp, sizeof(tmp), "%llu", baninfo->playerid);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "playerid", tmp);
  }
  if(baninfo->steamid > 0)
  {
    Com_sprintf(tmp, sizeof(tmp), "%llu", baninfo->steamid);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "steamid", tmp);
  }
  if(baninfo->playername[0])
  {
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "playername", baninfo->playername);
  }
  if(baninfo->adr.type >= NA_IP)
  {
    //Plugin_NET_AdrToStringShort is not thread safe. Need own function.
    Plugin_NET_AdrToStringShortMT(&baninfo->adr ,tmp, sizeof(tmp));
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "address", tmp);
  }

  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "identkey", identkey->string);

  Com_sprintf(tmp, sizeof(tmp), "%u", serverport);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "serverport", tmp);

  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "command", "queryplayer");

  //3 attempts to get data
  attempts = 0;
  do
  {
    code = HTTP_DoBlockingQuery(banlisthandlerurl->string, querystring, &len);
    ++attempts;
  }while(code == 0 && attempts < 3);

  if(code != 200)
  {
    Plugin_Printf("WebbanlistAPI: server returned code %d\n", code);
  }else{
  //  Plugin_Printf("WebbanlistAPI: server returned %s\n", querystring);

    Plugin_HTTP_ParseFormDataBody(querystring, &values);
    const char* status = Plugin_HTTP_GetFormDataItem(&values, "status");
    if(Q_stricmp(status, "active"))
    {
      return NULL;
    }
    uint64_t playerid = Plugin_StringToSteamID( Plugin_HTTP_GetFormDataItem(&values, "playerid"));
    uint64_t steamid = Plugin_StringToSteamID( Plugin_HTTP_GetFormDataItem(&values, "steamid"));
    uint64_t adminsteamid = Plugin_StringToSteamID( Plugin_HTTP_GetFormDataItem(&values, "adminsteamid"));
    const char* message = Plugin_HTTP_GetFormDataItem(&values, "message");
    time_t	expire = atoi(Plugin_HTTP_GetFormDataItem(&values, "expire"));
    time_t	created = atoi(Plugin_HTTP_GetFormDataItem(&values, "created"));
    const char* playername = Plugin_HTTP_GetFormDataItem(&values, "nick");
    //const char* addressstr = Plugin_HTTP_GetFormDataItem(&values, "address");

    memset(&b, 0, sizeof(b));

    b.expire = expire;
    b.created = created;
    b.steamid = steamid;
    b.adminsteamid = adminsteamid;
    b.playerid = playerid;
    Q_strncpyz(b.reason, message, sizeof(b.reason));
    Q_strncpyz(b.playername, playername, sizeof(b.playername));
    b.lastqueried = Plugin_GetServerTime();
    b.lastupdated = Plugin_GetServerTime();



    Plugin_EnterCriticalSection();

    for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
    {
      if((b.playerid && cachedBanlist[i].playerid == b.playerid) || (b.remote.type >= NA_IP && Plugin_NET_CompareBaseAdr(&b.remote, &cachedBanlist[i].remote)))
      {
          break;
      }
    }

    oldestTime = 0xffffffff;
    oldest = 0;
    if(i == MAX_CACHED_ENTRIES)
    {
      for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
      {
        if(cachedBanlist[i].lastqueried <= oldestTime)
        {
          oldestTime = cachedBanlist[i].lastqueried;
          oldest = i;
        }

      }
      i = oldest;

    }

    if(oldestTime == 0xffffffff)
    {
      b.lastqueryattempt = cachedBanlist[i].lastqueryattempt;
    }

    memcpy(&cachedBanlist[i], &b, sizeof(cachedBanlist[i]));
    char pid[128];
    Plugin_SteamIDToString(cachedBanlist[i].playerid, pid, sizeof(pid));

    cacheupdated = qtrue;

    Plugin_LeaveCriticalSection();
  }
  free(baninfo);
  return NULL;
}

//query: guid;
void* BanUnbanPlayerThread(void* q)
{
  char querystring[8192];
  httpPostVals_t values;
  char tmp[1024];
  int attempts;
  int i;
  int code;
  int len = sizeof(querystring);
  baninfo_t *baninfo = (baninfo_t*)q;
  char sid[128];
  char pid[128];


  //Buid the query string
  querystring[0] = 0;
  if(baninfo->playerid)
  {
    Com_sprintf(tmp, sizeof(tmp), "%llu", baninfo->playerid);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "playerid", tmp);
  }
  if(baninfo->steamid > 0)
  {
    Com_sprintf(tmp, sizeof(tmp), "%llu", baninfo->steamid);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "steamid", tmp);
  }

  Com_sprintf(tmp, sizeof(tmp), "%llu", baninfo->adminsteamid);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "adminsteamid", tmp);

  if(baninfo->playername[0])
  {
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "playername", baninfo->playername);
  }
  if(baninfo->message[0])
  {
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "reason", baninfo->message);
  }
  if(baninfo->adr.type >= NA_IP)
  {
    //Plugin_NET_AdrToStringShort is not thread safe. Need own function.
    Plugin_NET_AdrToStringShortMT(&baninfo->adr ,tmp, sizeof(tmp));
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "address", tmp);
  }

  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "identkey", identkey->string);

  Com_sprintf(tmp, sizeof(tmp), "%u", serverport);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "serverport", tmp);

  Com_sprintf(tmp, sizeof(tmp), "%d", baninfo->duration);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "timeleft", tmp);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "command", "modifyban");

  //3 attempts to put data
  attempts = 0;
  do
  {
    code = HTTP_DoBlockingQuery(banlisthandlerurl->string, querystring, &len);
    ++attempts;
  }while(code == 0 && attempts < 3);

  if(code != 200)
  {
    Plugin_Printf("WebbanlistAPI: server returned code %d\n", code);
  }else{
    Plugin_HTTP_ParseFormDataBody(querystring, &values);
    const char* status = Plugin_HTTP_GetFormDataItem(&values, "status");
    const char* message = Plugin_HTTP_GetFormDataItem(&values, "message");
    if(!Q_stricmpn(status, "success", 7))
    {
      //Action completed
      uint64_t playerid = Plugin_StringToSteamID(Plugin_HTTP_GetFormDataItem(&values, "playerid"));
      uint64_t steamid = Plugin_StringToSteamID( Plugin_HTTP_GetFormDataItem(&values, "steamid"));
      const char* playername = Plugin_HTTP_GetFormDataItem(&values, "nick");

      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }else{
        Plugin_Printf("Player ");
        if(playername[0])
        {
          Plugin_Printf("%s ", playername);
        }
        if(playerid)
        {
          Plugin_SteamIDToString(playerid, pid, sizeof(pid));
          Plugin_Printf("with id %s ", pid);
        }
        if(steamid > 0)
        {
          Plugin_SteamIDToString(steamid, sid, sizeof(sid));
          Plugin_Printf("with steamid %s ", sid);
        }
        if(!Q_stricmp(status +7, "_ban"))
        {
          Plugin_Printf("got banned.\n");
        }else{
          Plugin_Printf("got unbanned.\n");
          Plugin_EnterCriticalSection();
          for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
          {
            if((playerid && cachedBanlist[i].playerid == playerid) || (steamid > 0 && steamid == cachedBanlist[i].steamid))
            {
                memset(&cachedBanlist[i], 0, sizeof(cachedBanlist[i]));
            }
          }
          Plugin_LeaveCriticalSection();
        }
      }

    }else if(!Q_stricmp(status, "permission")){
      //Insifficient permissions
      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }else{
        Plugin_Printf("You are not allowed to ban or unban this player\n");
      }
    }else if(!Q_stricmp(status, "notfound")){
      //Not found
      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }else{
        Plugin_Printf("The requested player was not found with the information provided\n");
      }
    }else{
      //unknown return code
      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }else{
        Plugin_Printf("Ban API received unknown status message %s\n", status);
      }
    }
  }

  Plugin_Free(baninfo);
  return NULL;
}


void SendQueryForPlayer(baninfo_t *baninfo)
{
  baninfo_t *baninfoT = malloc(sizeof(baninfo_t));
  if(baninfoT == NULL)
  {
    return;
  }

  memcpy(baninfoT, baninfo, sizeof(baninfo_t));

  if(Plugin_CreateNewThread(QueryThreadForPlayer, NULL, (void*)baninfoT) == qfalse)
  {
      //On error
      free(baninfoT);
  }

}



PCL void OnPlayerGetBanStatus(baninfo_t* baninfo, char* message, int len)
{
  banList_t* l;

  l = CheckForCachedBans(baninfo);
  if(l == NULL)
  {
    //Send a query
    SendQueryForPlayer(baninfo);
    return;
  }
  if(l->lastupdated + UPDATE_INTERVAL < Plugin_GetRealtime())
  {
    //Send a query
    SendQueryForPlayer(baninfo);
  }
  //deal with that player here
  Q_strncpyz(message, baninfo->message, len);
}

PCL void OnFrame()
{
  int i;
  baninfo_t baninfo;
  banList_t* l;

  if(cacheupdated == qfalse)
  {
      return;
  }

  Plugin_EnterCriticalSection();

  for(i = 0; i < MAX_CLIENTS; ++i)
  {
    client_t* cl = Plugin_GetClientForClientNum(i);
    if(!cl || cl->state < CS_CONNECTED)
    {
      continue;
    }
    baninfo.playerid = cl->playerid;
    baninfo.steamid = cl->steamidPending;
    baninfo.adr = cl->netchan.remoteAddress;
    l = CheckForCachedBans(&baninfo);
    if(l == NULL)
    {
      continue;
    }
    Plugin_DropClient(i, baninfo.message);
  }
  cacheupdated = qfalse;
  Plugin_LeaveCriticalSection();

}


void SendBanUnbanPlayer(baninfo_t *baninfo)
{
  baninfo_t *baninfoT = malloc(sizeof(baninfo_t));
  if(baninfoT == NULL)
  {
    return;
  }

  memcpy(baninfoT, baninfo, sizeof(baninfo_t));

  if(Plugin_CreateNewThread(BanUnbanPlayerThread, NULL, (void*)baninfoT) == qfalse)
  {
      //On error
      free(baninfoT);
  }

}

PCL void OnPlayerRemoveBan(baninfo_t* pb)
{
  SendBanUnbanPlayer(pb);
}

PCL void OnPlayerAddBan(baninfo_t* pb)
{
  SendBanUnbanPlayer(pb);
}
