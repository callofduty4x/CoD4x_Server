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
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "../pinc.h"
#include "q_shared.h"


#define MAX_NAME_LENGTH 33
#define UPDATE_INTERVAL 120 //2 minutes
#define MAX_CACHED_ENTRIES 64

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

typedef struct{
  char cmdlist[384];
  uint64_t steamid;
}permissionList_t;

/*** Shared used objects. Access only inside critical sections ****/
static banList_t cachedBanlist[MAX_CACHED_ENTRIES];
static permissionList_t cachedPermissionlist[MAX_CACHED_ENTRIES];
static qboolean cacheupdated; //Parsing the cache if true and check players on server against it
/******************************************************************/

typedef struct
{
  char showbanlistmessage[1024];
}parameters_t;
static parameters_t paramters;

static cvar_t* identkey;
static cvar_t *banlisthandlerurl;
static int serverport;

static void ClearCachedBan(baninfo_t* baninfo);
static void ListCachedBans_f();

static void SV_DumpBanlist_f()
{
    Plugin_Printf("%s\n", paramters.showbanlistmessage);
}

void SM_Chat(const char* line, int clnum)
{
  char chattername[256];
  char cleanname[256];
  int i;

  if(line[0] == 0)
  {
    return;
  }

  if ( clnum >= 0 )
  {
    Q_strncpyz(cleanname, Plugin_GetPlayerName(clnum), sizeof(cleanname));
    Q_CleanStr(cleanname);
    if(Plugin_CanPlayerUseCommand(clnum, "sm_chat"))
    {
        Com_sprintf(chattername, sizeof(chattername), "^3%s", cleanname);
    }else{
        Com_sprintf(chattername, sizeof(chattername), "^2%s", cleanname);
    }
  }else{
    Q_strncpyz(chattername, "^1Console", sizeof(chattername));
  }

  for ( i = 0; i < Plugin_GetSlotCount(); ++i )
  {
    if ( Plugin_CanPlayerUseCommand(i, "sm_chat") || i == clnum)
    {
      Plugin_ChatPrintf(i, "^3[^0AdminChat^3]^7 (%s^7): %s", chattername, line);
    }
  }
}

void SM_Chat_f()
{
  char line[256];

  if ( Plugin_Cmd_Argc() < 2 )
  {
    Plugin_Printf("Usage: sm_chat <Message>\nSends your message to all connected admins\n");
    return;
  }

  Plugin_Cmd_Args(line, sizeof(line));

  int invoker = Plugin_Cmd_GetInvokerSlot();

  SM_Chat(line, invoker);
}

//For using chat with @@ prefix
static void SM_PSay(const char* msg, int source)
{
  int i;
  char message[1024];
  char cleannames[128];
  char cleannamed[128];

  Cmd_TokenizeString(msg);

  if(Cmd_Argc() < 2)
  {
    Plugin_ChatPrintf(source, "Usage: @@player message");
    return;
  }

  client_t* cl = Plugin_SV_Cmd_GetPlayerClByHandle(Cmd_Argv(0));

  if(cl == NULL)
  {
    Plugin_ChatPrintf(source, "No player for %s found", Cmd_Argv(0));
    return;
  }
  if(cl->state < CS_ACTIVE)
  {
    Plugin_ChatPrintf(source, "Player %s is not in active", cl->name);
    return;
  }

  message[0] = '\0';
  for(i = 1; i < Cmd_Argc(); ++i)
  {
    Q_strcat(message, sizeof(message), Cmd_Argv(i));
    Q_strcat(message, sizeof(message), " ");
  }

  int destination = NUMFORCLIENT(cl);

  if(source == destination)
  {
      Plugin_ChatPrintf(source, "Why would you send a message to yourself?");
      return;
  }

  Q_strncpyz(cleannames, Plugin_GetPlayerName(source), sizeof(cleannames));
  Q_strncpyz(cleannamed, cl->name, sizeof(cleannamed));

  Q_CleanStr(cleannames);
  Q_CleanStr(cleannamed);

  Plugin_ChatPrintf(source, "^7%s ^1>> ^7%s: %s", cleannames, cleannamed, message);
  Plugin_ChatPrintf(destination, "^7%s ^1>> ^7%s: %s", cleannames, cleannamed, message);
}

//For invoking command sm_psay
static void SM_PSay_f()
{
  int i;
  char message[1024];

  if(Plugin_Cmd_Argc() < 3)
  {
    Plugin_Printf("Usage: sm_psay <name> <message>\n");
    return;
  }

  const char* name = Plugin_Cmd_Argv(1);
  message[0] = '\0';

  for(i = 2; i < Plugin_Cmd_Argc(); ++i)
  {
    Q_strcat(message, sizeof(message), Plugin_Cmd_Argv(i));
  }

  for(i = 0; i < Plugin_GetSlotCount(); ++i)
  {
    client_t* cl = Plugin_GetClientForClientNum(i);
    if(!cl || cl->state < CS_ACTIVE)
    {
      continue;
    }
    if(strcmp(cl->name, name) == 0)
    {
        Plugin_ChatPrintf(i, "^2Admin{SB} to ^7%s^2: ^7%s", name, message);
    }
  }

}



PCL void OnMessageSent(char* message, int slot, qboolean* show, int mode)
{
    const char* rawmsg;
    int numat = 1;

    if(message[0] != '@' && (message[0] != 0x15 || message[1] != '@') )
    {
        return;
    }
    *show = qfalse;

    if(message[0] == 0x15)
        rawmsg = message +2;
    else
        rawmsg = message +1;

    if(rawmsg[0] == '@')
    {
        ++rawmsg;
        ++numat;
    }
    if(rawmsg[0] == '@')
    {
        ++rawmsg;
        ++numat;
    }

    if(numat == 1)
    {
	SM_Chat(rawmsg, slot);
    }else if(numat == 2){
	SM_PSay(rawmsg, slot);
    }
}



/*
 * public domain strtok_r() by Charlie Gordon
 *
 *   from comp.lang.c  9/14/2007
 *
 *      http://groups.google.com/group/comp.lang.c/msg/2ab1ecbb86646684
 *
 *     (Declaration that it's public domain):
 *      http://groups.google.com/group/comp.lang.c/msg/7c7b39328fefab9c
 */
#ifndef strtok_rc
static char* strtok_rc(char *str, const char *delim, char **nextp)
{
    char *ret;

    if (str == NULL)
    {
        str = *nextp;
    }

    str += strspn(str, delim);

    if (*str == '\0')
    {
        return NULL;
    }

    ret = str;

    str += strcspn(str, delim);

    if (*str)
    {
        *str++ = '\0';
    }

    *nextp = str;

    return ret;
}
#endif
PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 1;
    info->pluginVersion.minor = 0;	// Plugin version
    strncpy(info->fullName,"SourceBans plugin by Ninja", sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"Plugin to work as banlist powered by Sourcebans.",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to manage a banlist on a modified version of the Sourcebans backend so players can be banned from multiple gameservers at once and bans can be easy managed from Sourcebans.",sizeof(info->longDescription));
}


static int HTTP_DoBlockingQuery(const char *url, char* data, int *len)
{
    int stringlen = strlen(data);
    int outlen;
    int code;

    if(stringlen > *len)
    {
      stringlen = *len;
    }
    ftRequest_t* r = Plugin_HTTP_Request(url, "POST", (byte*)data, stringlen, "Content-Type: application/x-www-form-urlencoded\r\n");

    if(r == NULL)
    {
      return 0;
    }

    if(r->code != 200 && r->contentLength <= 0)
    {
      data[0] = 0;
      code = r->code;
      Plugin_HTTP_FreeObj(r);
      return code;
    }

    outlen = r->contentLength;
    if(outlen >= (*len -1))
    {
      outlen = (*len -1);
    }
    *len = outlen;
    memcpy(data, r->extrecvmsg->data + r->headerLength, outlen);
    data[outlen] = 0;
    code = r->code;
    Plugin_HTTP_FreeObj(r);
    return code;
}

PCL int OnInit(){	// Funciton called on server initiation

    char data[8192];
    char portstr[6];
    char sbuf[256];
    int len, code;
    httpPostVals_t values;

    identkey = Plugin_Cvar_RegisterString("sourcebans_identkey", "", 0, "Key used to authenticate on sourcebans serverexec script");
    serverport = Plugin_Cvar_VariableIntegerValue("net_port");
    banlisthandlerurl = Plugin_Cvar_RegisterString("sourcebans_url", "", 0, "URL of the Sourcebans serverexec script");

    if(banlisthandlerurl->string[0] == 0 || identkey->string[0] == 0)
    {
      Plugin_PrintError("Init failure. Cvar sourcebans_url or sourcebans_identkey is not set\n");
      return -1;
    }
    data[0] = 0;

    Com_sprintf(portstr, sizeof(portstr), "%hu", serverport);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "command", "HELO");
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "identkey", identkey->string);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "adminsteamid", "0");
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "serverport", portstr);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "gamename", "Call of Duty 4 - Modern Warfare X18");
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "gamedir", "cod4");
    
    Plugin_Cvar_VariableStringBuffer("rcon_password", sbuf, sizeof(sbuf));
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "rcon", sbuf);

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
      Plugin_PrintError("Init failure. Sourcebans backend script said: %s\n", status);
      return -1;
    }
    Q_strncpyz(paramters.showbanlistmessage, Plugin_HTTP_GetFormDataItem(&values, "showbanlistmessage"), sizeof(paramters.showbanlistmessage));
    Plugin_Printf("Sourcebans plugin is ready to work\n");
    Plugin_AddCommand("dumpbanlist", SV_DumpBanlist_f, 30);
    Plugin_AddCommand("dumpbanlistcache", ListCachedBans_f, 100);
    Plugin_AddCommand("sm_psay", SM_PSay_f, 100);
    Plugin_AddCommand("sm_chat", SM_Chat_f, 30);

    return 0;
}


static void ListCachedBans_f() //Debug function to test banlist cache
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

static void ClearCachedBan(baninfo_t* baninfo)
{
  int i;

  Plugin_EnterCriticalSection();

  for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
  {
    if((baninfo->playerid && cachedBanlist[i].playerid == baninfo->playerid) || (baninfo->adr.type >= NA_IP && Plugin_NET_CompareBaseAdr(&baninfo->adr, &cachedBanlist[i].remote)))
    {

        memset(&cachedBanlist[i], 0, sizeof(cachedBanlist[i]));
    }
  }
  Plugin_LeaveCriticalSection();
}


static banList_t* CheckForCachedBans(baninfo_t* baninfo) //Will also check for just received bans after querying as the ban info does receive in an independed worker thread
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
static void* QueryThreadForPlayer(void* q)
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

  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "adminsteamid", "0");

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
//    Plugin_Printf("WebbanlistAPI: server returned %s\n", querystring);

    Plugin_HTTP_ParseFormDataBody(querystring, &values);
    const char* status = Plugin_HTTP_GetFormDataItem(&values, "status");
    if(!Q_stricmpn(status, "Ban Not Found", 13))
    {
        ClearCachedBan(baninfo);
        free(baninfo);
        return NULL;
    }
    if(!Q_stricmp(status, "mute"))
    {
        for(i = 0; i < MAX_CLIENTS; ++i)
        {
            client_t* cl = Plugin_GetClientForClientNum(i);
            if(!cl)
            {
                continue;
            }
            if(cl->state >= CS_CONNECTED && cl->playerid == baninfo->playerid)
            {
                cl->mutelevel = 1; //Only voice - !!!Race condition!!!
            }
        }
        ClearCachedBan(baninfo);
        free(baninfo);
        return NULL;
    }
    if(!Q_stricmp(status, "chat"))
    {
        for(i = 0; i < MAX_CLIENTS; ++i)
        {
            client_t* cl = Plugin_GetClientForClientNum(i);
            if(!cl)
            {
                continue;
            }
            if(cl->state >= CS_CONNECTED && cl->playerid == baninfo->playerid)
            {
                cl->mutelevel = 2; //Voice and chat - !!!Race condition!!!
            }
        }
        ClearCachedBan(baninfo);
        free(baninfo);
        return NULL;
    }
    if(Q_stricmp(status, "active"))//If full ban active don't return here
    {
      free(baninfo);
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

    cacheupdated = qtrue;

    Plugin_LeaveCriticalSection();
  }
  free(baninfo);
  return NULL;
}

//query: guid;
static void* BanUnbanPlayerThread(void* q)
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

  free(baninfo);
  return NULL;
}


static void SendQueryForPlayer(baninfo_t *baninfo)
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


//query: steamid;
static void* GetPlayerPermissionsThread(void* q)
{
  char querystring[8192];
  httpPostVals_t values;
  char tmp[1024];
  int attempts;
  int code;
  int len = sizeof(querystring);
  uint64_t steamid = *(uint64_t*)q;

  free(q);

  //Buid the query string
  querystring[0] = 0;
  Com_sprintf(tmp, sizeof(tmp), "%llu", steamid);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "steamid", tmp);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "adminsteamid", tmp);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "identkey", identkey->string);
  Com_sprintf(tmp, sizeof(tmp), "%u", serverport);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "serverport", tmp);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "gamename", "Call of Duty 4 - Modern Warfare X18");
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "gamedir", "cod4");
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "command", "querypermissions");

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
      uint64_t steamid = Plugin_StringToSteamID( Plugin_HTTP_GetFormDataItem(&values, "steamid"));
      const char* commandlist = Plugin_HTTP_GetFormDataItem(&values, "cmdlist");

      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }

      if(steamid != 0)
      {
        int i;
        Plugin_EnterCriticalSection();
        for(i = 0; i < MAX_CLIENTS; ++i)
        {
          client_t* cl = Plugin_GetClientForClientNum(i);
          if(cl && cl->state >= CS_PRIMED && cl->steamid == steamid)
          {
            break;
          }
        }
        if(i != MAX_CLIENTS)
        {
          strncpy(cachedPermissionlist[i].cmdlist, commandlist, sizeof(cachedPermissionlist[i].cmdlist));
          cachedPermissionlist[i].steamid = steamid;
        }
        cacheupdated = qtrue;
        Plugin_LeaveCriticalSection();
      }

    }else if(!Q_stricmp(status, "permission")){
      //Insifficient permissions
      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }else{
        Plugin_Printf("You are not allowed to query player's permissions\n");
      }
    }else if(!Q_stricmp(status, "notfound")){
      //Default case: Not found
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
  return NULL;
}


static void SendPermissionQuery(uint64_t steamid)
{
  uint64_t *steamidT = malloc(sizeof(uint64_t));
  if(steamidT == NULL)
  {
    return;
  }

  *steamidT = steamid;

  if(Plugin_CreateNewThread(GetPlayerPermissionsThread, NULL, (void*)steamidT) == qfalse)
  {
      //On error
      free(steamidT);
  }

}

PCL void OnPlayerGetBanStatus(baninfo_t* baninfo, char* message, int len)
{
  banList_t* l;
  //Send a query
  SendQueryForPlayer(baninfo);

  l = CheckForCachedBans(baninfo);
  if(l == NULL)
  {
    return;
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
    if(cl->state > CS_CONNECTED && cl->steamid)
    {
        if(cachedPermissionlist[i].steamid == cl->steamid)
        {
            char* state, *token;
            char buf[1024];
            strncpy(buf, cachedPermissionlist[i].cmdlist, sizeof(buf));
            state = buf;
            while((token = strtok_rc(state, ";", &state)))
            {
              Plugin_AddCommandForClientToWhitelist(i, token);
              Plugin_DPrintf("adding %s\n", token);
            }
        }
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


static void SendBanUnbanPlayer(baninfo_t *baninfo)
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

PCL void OnClientEnterWorld(client_t* client)
{
  if(client->steamidPending == 0)
  {
    return;
  }
  SendPermissionQuery(client->steamidPending);
}

PCL void OnPlayerRemoveBan(baninfo_t* pb)
{
  SendBanUnbanPlayer(pb);
}

PCL void OnPlayerAddBan(baninfo_t* pb)
{
  SendBanUnbanPlayer(pb);
}
