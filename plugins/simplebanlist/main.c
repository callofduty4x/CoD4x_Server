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

#include "../pinc.h"
#include <wchar.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "q_shared.h"

#define MAX_NAME_LENGTH 33
#define BANLIST_DEFAULT_SIZE sizeof(banList_t)*128

cvar_t *banlistfile;

static int current_banlist_size;
static int current_banindex;

typedef struct banList_s {
    time_t	expire;
    time_t	created;
    uint64_t	playerid;
    uint64_t	adminsteamid;
    char	reason[128];
    char	playername[MAX_NAME_LENGTH];
    netadr_t remote;
}banList_t;

banList_t *banlist;

qboolean SV_OversizeBanlistAlign(){

    banList_t *new_blist;
    int newSize;

    if(current_banlist_size <= (current_banindex + 1) * sizeof(banList_t)){//Memory extension
        newSize = current_banlist_size + current_banlist_size / 4;
        new_blist = realloc(banlist, newSize);
        if(new_blist){
            banlist = new_blist;
            current_banlist_size = newSize;

        }else{
            Plugin_PrintError("Could not allocate enougth memory to extend the size of banlist. Failed to add new bans\n");
            return qfalse;
        }
    }
    return qtrue;
}

qboolean SV_ParseBanlist(char* line, time_t aclock, int linenumber){
    banList_t *this;
    uint64_t playerid = 0;
    uint64_t adminsteamid = 0;
    time_t expire = 0;
    time_t create = 0;
    char reason[128];
    char playername[MAX_NAME_LENGTH];
    int i;
    char *tmp;
    netadr_t adr;

    playerid = Plugin_StringToSteamID(Info_ValueForKey(line, "playerid"));
    adminsteamid = Plugin_StringToSteamID(Info_ValueForKey(line, "asteamid"));
    expire = atoi(Info_ValueForKey(line, "exp"));
    create = atoi(Info_ValueForKey(line, "create"));

    tmp = Info_ValueForKey(line, "netadr");
    if(tmp && tmp[0])
    {
        Plugin_NET_StringToAdr(tmp, &adr, NA_UNSPEC);
    }else{
        memset(&adr, 0, NA_BAD);
    }

    Q_strncpyz(reason, Info_ValueForKey(line, "rsn"), sizeof(reason));
    Q_strncpyz(playername, Info_ValueForKey(line, "nick"), sizeof(playername));


    if(expire < aclock && expire != (time_t)-1)
    {
            return qtrue;
    }
    this = banlist;
    if(!this)
        return qfalse;

    if(playerid){
        for(i = 0; i < current_banindex; this++, i++){
            if(this->playerid == playerid){
                Plugin_SteamIDToString(playerid, tmp, sizeof(tmp));
                Plugin_Printf("Error: This player with playerid: %s is already banned on this server (line: %d)\n", tmp, linenumber);
                return qfalse;
            }
        }
    }else{
        Plugin_Printf("Error: This player has no id (line: %d)\n",linenumber);
        return qfalse; //Bad entry: No Id
    }

    if(!SV_OversizeBanlistAlign())
        return qfalse;

    this = &banlist[current_banindex];

    this->playerid = playerid;
    this->adminsteamid = adminsteamid;
    this->expire = expire;
    this->created = create;
    Q_strncpyz(this->reason, reason, sizeof(this->reason));
    Q_strncpyz(this->playername, playername, sizeof(this->playername));
    this->remote = adr;

    current_banindex++; //Rise the array index
    return qtrue;
}


void SV_LoadBanlist(){
    time_t aclock;
    time(&aclock);
    char buf[256];
    buf[0] = 0;
    fileHandle_t file;
    int read;
    int error;
    int i;

    Plugin_FS_SV_FOpenFileRead(banlistfile->string,&file);
    if(!file){
        Plugin_DPrintf("SV_ReadBanlist: Can not open %s for reading\n",banlistfile->string);
        return;
    }

    for(i = 0, error = 0 ;error < 32 ;i++){

        read = Plugin_FS_ReadLine(buf,sizeof(buf),file);
        if(read == 0){
            Plugin_Printf("%i lines parsed from %s, %i errors occured\n",i,banlistfile->string,error);
            Plugin_FS_FCloseFile(file);
            return;
        }
        if(read == -1){
            Plugin_Printf("Can not read from %s\n",banlistfile->string);
            Plugin_FS_FCloseFile(file);
            return;
        }
        if(!*buf || *buf == '/' || *buf == '\n'){
            continue;
        }
        if(!SV_ParseBanlist(buf, aclock, i+1)) error++; //Executes the function given as argument in execute

    }
    Plugin_PrintWarning("More than 32 errors occured by reading from %s\n",banlistfile->string);
    Plugin_FS_FCloseFile(file);
}


void SV_WriteBanlist(){

    banList_t *this;
    time_t aclock;
    time(&aclock);
    fileHandle_t file;
    char infostring[1024];
    char buf[1024];
    int i;


    file = Plugin_FS_SV_FOpenFileWrite(va("%s.tmp", banlistfile->string));
    if(!file){
        Plugin_PrintError("SV_WriteBanlist: Can not open %s for writing\n",banlistfile->string);
        return;
    }

    this = banlist;
    if(!this)
        return;

    for(i = 0 ; i < current_banindex; this++, i++){

        if(this->expire == (time_t)-1 || this->expire > aclock){

            *infostring = 0;
            if(this->playerid == 0)
            {
                continue;
            }
            Plugin_SteamIDToString(this->playerid, buf, sizeof(buf));
            Info_SetValueForKey(infostring, "playerid", buf);
            Plugin_SteamIDToString(this->adminsteamid, buf, sizeof(buf));
            Info_SetValueForKey(infostring, "asteamid", buf);
            Info_SetValueForKey(infostring, "nick", this->playername);
            Info_SetValueForKey(infostring, "rsn", this->reason);
            Info_SetValueForKey(infostring, "exp", va("%i", (int)this->expire));
            Info_SetValueForKey(infostring, "create", va("%i", (int)this->created));
            if(this->remote.type > NA_BAD)
            {
              Info_SetValueForKey(infostring, "netadr", Plugin_NET_AdrToStringShortMT(&this->remote, buf, sizeof(buf)));
            }
            Q_strcat(infostring, sizeof(infostring), "\\\n");
            Plugin_FS_Write(infostring,strlen(infostring),file);
        }
    }
    Plugin_FS_FCloseFile(file);
    Plugin_FS_SV_HomeCopyFile(va("%s.tmp", banlistfile->string) ,banlistfile->string);
//    FS_SV_Rename(va("%s.tmp", banlist->string),banlist->string);
}



PCL void OnPlayerGetBanStatus(baninfo_t* baninfo, char* message, int len)
{
  banList_t *this;
  int i;
  char banmsg[512];
  char timelimitmsg[512];
  char pid[128];
  char aid[128];

  if(message[0])
  {
    //some plugin returned already a banned player info
    return;
  }

  if(baninfo->playerid == 0)
  {
	  return;
  }

  this = banlist;
  if(!this){
        return;
  }

    for(i = 0 ; i < current_banindex; this++, i++){
        if(this->playerid == baninfo->playerid)
        {
            Q_strncpyz(baninfo->message, this->reason, sizeof(baninfo->message));
            Q_strncpyz(baninfo->playername, this->playername, sizeof(baninfo->playername));
            baninfo->adminsteamid = this->adminsteamid;
            baninfo->playerid = this->playerid;
            baninfo->steamid = 0;
            baninfo->adminname[0] = 0;
            baninfo->created = this->created;
            baninfo->expire = this->expire;
            Com_Memset(&baninfo->adr, 0 , sizeof(baninfo->adr));

            int timeleft;

            if(this->expire == -1)
            {
              timeleft = -1;
            }else{
              timeleft = this->expire - Plugin_GetRealtime();
              if(timeleft < 1)
              {
                  return;
              }
            }
            Plugin_WriteBanTimelimit(timeleft, timelimitmsg, sizeof(timelimitmsg));
            if(this->adminsteamid == 0)
            {
              Q_strncpyz(aid, "System/Rcon", sizeof(aid));
            }else{
              Plugin_SteamIDToString(this->adminsteamid, aid, sizeof(aid));
            }
            Plugin_SteamIDToString(this->playerid, pid, sizeof(pid));
            Plugin_FormatBanMessage(timeleft, banmsg, sizeof(banmsg), "%s\nYour ID is: %s\nBanning admin ID is: \n%s\n", this->reason, pid, aid);
            Com_sprintf(message, len, "%s%s", banmsg, timelimitmsg);
            Q_strncpyz(baninfo->message, message, sizeof(baninfo->message));
            return;
        }
    }

  return;

}


void SV_DumpBanlist_f(){

    banList_t *this;
    time_t aclock;
    time(&aclock);
    int i, k;
    char *timestr;
    char pid[128];
    char aid[128];

    this = banlist;
    if(!this)
        return;

    for(i = 0, k = 0; i < current_banindex; this++, i++){

        if(this->expire == (time_t)-1 || this->expire > aclock){
            if(this->playerid == 0)
            {
                continue;
            }
            k++;

            if(this->expire == (time_t)-1){
                timestr = "Never";
            }else{
                timestr = ctime(&this->expire);
                timestr[strlen(timestr) -1] = 0;
            }
            Plugin_SteamIDToString(this->playerid, pid, sizeof(pid));
            Plugin_SteamIDToString(this->adminsteamid, aid, sizeof(aid));
            Plugin_Printf("%i playerid: %s; nick: %s; adminsteamid: %s; expire: %s; reason: %s\n", i, pid, this->playername, aid, timestr, this->reason);
        }
    }
    Plugin_Printf("%i Active bans\n", k);
}



int SV_InitBanlist(){

    banlistfile = Plugin_Cvar_RegisterString("banlist_filename", "banlist_v2.dat", CVAR_INIT, "Name of the file which holds the banlist");
    current_banlist_size = BANLIST_DEFAULT_SIZE;
    current_banindex = 0;
    banlist = realloc(NULL, current_banlist_size);//Test for NULL ?
    if(banlist){
        SV_LoadBanlist();
    }else{
        Plugin_PrintError("Failed to allocate memory for the banlist. Banlist is disabled\n");
        return -1;
    }
    Plugin_AddCommand("dumpbanlist", SV_DumpBanlist_f, 30);
    return 0;
}

qboolean  SV_ReloadBanlist(){

    banList_t *this;

    this = banlist;
    if(!this)
        return qfalse;

    Com_Memset(this, 0, current_banlist_size);
    current_banindex = 0; //Reset the index!

    SV_LoadBanlist();

    this = banlist;
    if(!this)
        return qfalse;

    else
        return qtrue;
}




qboolean SV_AddBanToInternalList(uint64_t playerid, uint64_t adminsteamid, char* name, netadr_t* adr, time_t expire, char* banreason)
{
    char pid[128];
    time_t aclock;

    if(!SV_OversizeBanlistAlign())
        return qfalse;

    time(&aclock);

    banList_t *this;
    int i;

    this = banlist;
    if(!this)
        return qfalse;

    if(playerid == 0)
    {
        return qfalse;
    }

    if(!SV_ReloadBanlist())
        return qfalse;

    for(i = 0 ; i < current_banindex; this++, i++){
        if(playerid == this->playerid)
            break;
    }
    if(i == current_banindex)
    {
        current_banindex++; //Rise the array index
    }else{
      Plugin_SteamIDToString(playerid, pid, sizeof(pid));
      Plugin_Printf( "Modifying banrecord for player id: %s\n", pid);
      Plugin_PrintAdministrativeLog( "modified banrecord of player id: %s:", pid);
    }

    this->playerid = playerid;
    this->adminsteamid = adminsteamid;
    this->expire = expire;
    this->created = aclock;
    if(adr && adr->type != NA_BAD)
    {
      this->remote = *adr;
    }else{
      memset(&this->remote, 0, sizeof(netadr_t));
    }
    if(banreason)
        Q_strncpyz(this->reason, banreason, sizeof(this->reason));
    else
        *this->reason = 0;

    if(name)
        Q_strncpyz(this->playername, name, sizeof(this->playername));
    else
        *this->playername = 0;

    SV_WriteBanlist();
    return qtrue;
}


PCL void OnPlayerAddBan(baninfo_t* baninfo)
{
  time_t aclock;
  time(&aclock);
  baninfo->created = aclock;
  SV_AddBanToInternalList(baninfo->playerid, baninfo->adminsteamid, baninfo->playername, &baninfo->adr, baninfo->expire, baninfo->message);
}


qboolean SV_RemoveBanFromInternalList(uint64_t playerid, char* name){

    banList_t *this;
    int i;
    qboolean succ = qfalse;
    char* banreason;
    char* printnick;
    char pid[128];

    if(name == NULL)
    {
      name = "";
    }

    if(playerid == 0 && name[0] == 0)
    {
      return qfalse;
    }

    this = banlist;
    if(!this)
        return qfalse;

    if(!SV_ReloadBanlist())
        return qfalse;

    for(i = 0 ; i < current_banindex; this++, i++)
    {
        if(playerid)
        {
          if(playerid != this->playerid)
          {
            continue;
          }
        }else if(name[0]){
          if(Q_stricmp(name, this->playername))
          {
            continue;
          }
        }else{
          continue;
        }

        this->expire = (time_t) 0;
        Plugin_RemoveBanByip(&this->remote);
        succ = qtrue;

        if(!*this->reason){
            banreason = "N/A";
        }else{
            banreason = this->reason;
        }

        if(!*this->playername){
            printnick = "N/A";
        }else{
            printnick = this->playername;
        }
        Plugin_SteamIDToString(this->playerid, pid, sizeof(pid));
        Plugin_Printf("Removing ban for Nick: %s, PlayerID: %s, Banreason: %s\n", printnick, pid, banreason);
        Plugin_PrintAdministrativeLog("Removing ban for Nick: %s, PlayerID: %s, Banreason: %s\n", printnick, pid, banreason);
    }
    if(succ)
        SV_WriteBanlist();

    return succ;
}


PCL void OnPlayerRemoveBan(baninfo_t* baninfo)
{
  if(baninfo->playerid)
  {
    SV_RemoveBanFromInternalList(baninfo->playerid, NULL);
  }else{
    SV_RemoveBanFromInternalList(0, baninfo->playername);
  }
}


PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 1;
    info->pluginVersion.minor = 0;	// Plugin version
    strncpy(info->fullName,"Simple banlist plugin by Fraggy", sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"Plugin to work as banlist.",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to manage a very simple banlist so players can be banned from game.",sizeof(info->longDescription));
}

PCL int OnInit(){	// Funciton called on server initiation
    return SV_InitBanlist();
}
