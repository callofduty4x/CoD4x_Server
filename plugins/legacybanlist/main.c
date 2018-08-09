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
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "../pinc.h"
#include "q_shared.h"

#define MAX_NAME_LENGTH 33
#define BANLIST_DEFAULT_SIZE sizeof(banList_t)*128

static void Cmd_UnbanPlayer_f();

cvar_t *banlistfile;

static int current_banlist_size;
static int current_banindex;

typedef struct banList_s {
    time_t	expire;
    time_t	created;
    char	reason[128];
    char	playername[MAX_NAME_LENGTH];
    char guid[9];
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

qboolean SV_ParseBanlistLegacy(char* line, time_t aclock, int linenumber){
    banList_t *this;
    time_t expire = 0;
    time_t create = 0;
    char reason[128];
    char guid[9];
    guid[8] = 0;
    char playername[MAX_NAME_LENGTH];
    int i;
    char *tmp;
    netadr_t adr;

    expire = atoi(Info_ValueForKey(line, "exp"));
    tmp = Info_ValueForKey(line, "create");
    if(tmp && tmp[0])
    {
        create = atoi(tmp);
    }
    tmp = Info_ValueForKey(line, "netadr");
    if(tmp && tmp[0])
    {
        Plugin_NET_StringToAdr(tmp, &adr, NA_UNSPEC);
    }else{
        memset(&adr, 0, NA_BAD);
    }
    Q_strncpyz(reason, Info_ValueForKey(line, "rsn"), sizeof(reason));
    Q_strncpyz(guid, Info_ValueForKey(line, "guid"), sizeof(guid));
    Q_strncpyz(playername, Info_ValueForKey(line, "nick"), sizeof(playername));


    if(expire < aclock && expire != (time_t)-1)
    {
      return qtrue;
    }
    this = banlist;
    if(!this)
        return qfalse;

    if(guid[7]){
        for(i = 0; i < current_banindex; this++, i++){
            if(Q_stricmpn(this->guid, guid, 8) == 0){
                Plugin_Printf("Error: This player with GUID: %s is already banned on this server (line: %d)\n",guid, linenumber);
                return qfalse;
            }
        }
    }else{
        Plugin_Printf("Error: This player has no guid (line: %d)\n",linenumber);
        return qfalse; //Bad entry: No Id
    }

    if(!SV_OversizeBanlistAlign())
        return qfalse;

    this = &banlist[current_banindex];

    Q_strncpyz(this->guid, guid, sizeof(this->guid));
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
        if(!SV_ParseBanlistLegacy(buf, aclock, i+1)) error++; //Executes the function given as argument in execute
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
            if(this->guid[0] == 0)
            {
                continue;
            }
            Info_SetValueForKey(infostring, "guid", this->guid);
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
}



PCL void OnPlayerGetBanStatus(baninfo_t* baninfo, char* message, int len)
{
  banList_t *this;
  int i;
  char banmsg[512];
  char timelimitmsg[512];
  client_t* cl;
  const char* pbguid;

  if(message[0])
  {
    //some plugin returned already a banned player info
    return;
  }

  if(baninfo->playerid == 0)
  {
	  return;
  }

  //Find the client
  for(i = 0; i < MAX_CLIENTS; ++i)
  {
    cl = Plugin_GetClientForClientNum(i);
    if(cl && baninfo->playerid == cl->playerid)
    {
      break;
    }
  }
  if(i == MAX_CLIENTS)
  {
    return;
  }

  pbguid = cl->legacy_pbguid;

  this = banlist;
  if(!this)
  {
        return;
  }

    for(i = 0 ; i < current_banindex; this++, i++){
        if(Q_stricmpn(this->guid, pbguid +24, 8) == 0)
        {
            Q_strncpyz(baninfo->message, this->reason, sizeof(baninfo->message));
            Q_strncpyz(baninfo->playername, this->playername, sizeof(baninfo->playername));
            baninfo->adminsteamid = 0;
            baninfo->playerid = 0;
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
            Plugin_FormatBanMessage(timeleft, banmsg, sizeof(banmsg), "%s\nYour PBGUID is: %s\n", this->reason, this->guid);
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

    this = banlist;
    if(!this)
        return;

    for(i = 0, k = 0; i < current_banindex; this++, i++){

        if(this->expire == (time_t)-1 || this->expire > aclock){
            if(this->guid[0] == 0)
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
            Plugin_Printf("%i guid8: %s; nick: %s; expire: %s; reason: %s\n", i, this->guid, this->playername, timestr, this->reason);
        }
    }
    Plugin_Printf("%i Active bans\n", k);
}



static int SV_InitBanlist(){

    banlistfile = Plugin_Cvar_RegisterString("legacybanlist_filename", "banlist.dat", CVAR_INIT, "Name of the file which holds the legacy banlist");
    current_banlist_size = BANLIST_DEFAULT_SIZE;
    current_banindex = 0;
    banlist = realloc(NULL, current_banlist_size);//Test for NULL ?
    if(banlist){
        SV_LoadBanlist();
    }else{
        Plugin_PrintError("Failed to allocate memory for the banlist. Banlist is disabled\n");
        return -1;
    }
    Plugin_AddCommand("dumplegacybanlist", SV_DumpBanlist_f, 30);
    Plugin_AddCommand("unbanlegacy", Cmd_UnbanPlayer_f, 60);
    return 0;
}

static qboolean  SV_ReloadBanlist(){

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



static qboolean SV_RemoveBanFromInternalList(char* guid, char* name)
{

    banList_t *this;
    int i;
    qboolean succ = qfalse;
    char* banreason;
    char* printnick;


    if(name == NULL)
    {
      name = "";
    }
    if(guid == NULL)
    {
        guid = "";
    }

    if(guid[0] == 0 && name[0] == 0)
    {
      return qfalse;
    }

    if(guid[0] && strlen(guid) == 32)
    {
      guid += 24;
    }

    if(guid[0] && strlen(guid) != 8)
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
        if(guid[0])
        {
          if(Q_stricmpn(guid, this->guid, 8))
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
        Plugin_Printf("Removing ban for Nick: %s, GUID: %s, Banreason: %s\n", printnick, guid, banreason);
        Plugin_PrintAdministrativeLog("Removing ban for Nick: %s, UID: %s, Banreason: %s\n", printnick, guid, banreason);
    }
    if(succ)
        SV_WriteBanlist();

    return succ;
}


/*
============
Cmd_UnbanPlayer_f
============
*/

static char* IsGUID(char* GUID){

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

static void Cmd_UnbanPlayer_f() {
    char* name;

    if ( Plugin_Cmd_Argc() != 2) {
            Plugin_Printf( "Usage: unban <guid/name>\n" );
    }

    char* handle = Plugin_Cmd_Argv(1);

    char* guid = IsGUID(handle);
    if(guid)
    {
      name = NULL;
    }else{
      name = handle;
    }
    if(!SV_RemoveBanFromInternalList(guid, name))
    {
      Plugin_Printf("No such ban: %s\n", handle);
    }
}

PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 2;
    info->pluginVersion.minor = 0;	// Plugin version
    strncpy(info->fullName,"Simple legacy banlist plugin by Fraggy", sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"Plugin to work as banlist for old guid based bans.",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to load the legacy guid based banlist so old bans can still be enforced. Not for banning of new players",sizeof(info->longDescription));
}

PCL int OnInit(){	// Funciton called on server initiation
    return SV_InitBanlist();
}
