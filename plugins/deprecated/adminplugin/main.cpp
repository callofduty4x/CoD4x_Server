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



class AdminCmds
{
  public:
    static void Kick(const char* cmdname);
    static void TempBan(const char* cmdname);
    static void PlayerList(const char* cmdname);
    static void SM_Chat(const char* line, int clnum);
    static void SM_PSay(const char* msg, int source);
};

typedef struct chatcmdlist_s {
    const char *name;
    const char *shortname;
    void (*far)();
}chatcmdlist_t;


chatcmdlist_t chatcmds[] = {
  {"kick", "k", AdminCmds::Kick},
  {"tempban", "tb", AdminCmds::Kick},
  {"list", "l", AdminCmds::PlayerList}
};

typedef struct
{
  char showbanlistmessage[1024];
}parameters_t;
static parameters_t paramters;

static int serverport;

void AdminCmds::Kick(const char* cmdname)
{

}

void AdminCmds::TempBan(const char* cmdname)
{

}

void AdminCmds::PlayerList(const char* cmdname)
{

}

void AdminCmds::SM_Chat(const char* line, int clnum)
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

//For using chat with @@ prefix
void AdminCmds::SM_PSay(const char* msg, int source)
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

void ParseChatCmd(const char* message, int slot)
{
  const char* cmd;
  unsigned int i;

  Cmd_TokenizeString(message);
  cmd = Cmd_Argv(0);
  
  //Compare with long commands
  for(i = 0; i < sizeof(chatcmds) / sizeof(chatcmdlist_t); ++i)
  {
    if(Q_stricmp(cmd, chatcmds[i].name) == 0)
    {
      chatcmds[i].far(chatcmds[i].name);
      return;
    }
  }
  //Maybe it is a short command
  for(i = 0; i < sizeof(chatcmds) / sizeof(chatcmdlist_t); ++i)
  {
    if(Q_stricmp(cmd, chatcmds[i].shortname) == 0)
    {
      chatcmds[i].far(chatcmds[i].name);
      return;
    }
  }

}


PCL void OnMessageSent(char* message, int slot, qboolean* show, int mode)
{
    const char* rawmsg;
    int numat = 1;
    //Is it a command?
    if(message[0] == '!' || (message[0] == 0x15 && message[1] == '!'))
    {
      if(message[0] == 0x15)
          rawmsg = message +2;
      else
          rawmsg = message +1;

      ParseChatCmd(rawmsg, slot);
      *show = qfalse;
      return;
    }
    //Is it also not private chat?
    if(message[0] != '@' && (message[0] != 0x15 || message[1] != '@'))
    {
      return;
    }
    *show = qfalse;
    //It is private chat!
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
	    AdminCmds::SM_Chat(rawmsg, slot);
    }else if(numat == 2){
	    AdminCmds::SM_PSay(rawmsg, slot);
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
#ifndef strtok_r
static char* strtok_r(char *str, const char *delim, char **nextp)
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

    char portstr[6];

    serverport = Plugin_Cvar_VariableIntegerValue("net_port");

    Com_sprintf(portstr, sizeof(portstr), "%hu", serverport);

    Plugin_Printf("Sourcebans plugin is ready to work\n");
    return 0;
}




PCL void OnFrame()
{

}



PCL void OnClientEnterWorld(client_t* client)
{
  if(client->steamidPending == 0)
  {
    return;
  }
  //SendPermissionQuery(client->steamidPending);
}

PCL void OnPlayerRemoveBan(baninfo_t* pb)
{
  //SendBanUnbanPlayer(pb);
}

PCL void OnPlayerAddBan(baninfo_t* pb)
{
  //SendBanUnbanPlayer(pb);
}
