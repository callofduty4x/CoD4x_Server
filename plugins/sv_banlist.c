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

#define BANLIST_DEFAULT_SIZE sizeof(banList_t)*128
#define MAX_IPBANS 32
//Don't ban IPs for more than MAX_IPBAN_MINUTES minutes as they can be shared (Carrier-grade NAT)
#define MAX_DEFAULT_IPBAN_MINUTES 240
#define DEFAULT_APPEAL_MINHOURS 4

cvar_t *banlistfile;
cvar_t *ipbantime;
cvar_t *sv_banappealurl;
cvar_t *sv_banappealminhours;
static int current_banlist_size;
static int current_banindex;


typedef struct {	//It is only for timelimited tempbans to prevent happy reconnecting and sitting in server for 2 minutes until player is detected or keep to advertise with playernick while reconnecting
    netadr_t	remote;
    char	banmsg[128];
    int		uid;	//Needed to delete or update bans
    char	guid[9];
    unsigned int	timeout;
    int		expire;
    int		systime;
    int		adminuid;
}ipBanList_t;

#define BANLIST_PBGUID_LENGTH 9

typedef struct banList_s {
    time_t	expire;
    time_t	created;
    int		playeruid;
    int		adminuid;
    char	pbguid[BANLIST_PBGUID_LENGTH];
    char	reason[128];
    char	playername[MAX_NAME_LENGTH];
}banList_t;

banList_t *banlist;
ipBanList_t ipBans[MAX_IPBANS];


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
            Com_PrintError("Could not allocate enougth memory to extend the size of banlist. Failed to add new bans\n");
            return qfalse;
        }
    }
    return qtrue;
}



qboolean SV_ParseBanlist(char* line, time_t aclock, int linenumber){
    banList_t *this;
    int playeruid = 0;
    int adminuid = 0;
    time_t expire = 0;
    time_t create = 0;
    char reason[128];
    char guid[9];
    guid[8] = 0;
    char playername[MAX_NAME_LENGTH];
    int i;
    char *tmp;

    playeruid = atoi(Info_ValueForKey(line, "uid"));
    adminuid = atoi(Info_ValueForKey(line, "auid"));
    expire = atoi(Info_ValueForKey(line, "exp"));
    tmp = Info_ValueForKey(line, "create");
    if(tmp && tmp[0])
    {
        create = atoi(tmp);
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

    if(playeruid){
        for(i = 0; i < current_banindex; this++, i++){
            if(this->playeruid == playeruid){
                Com_Printf("Error: This player with UID: %i is already banned on this server (line: %d)\n",playeruid, linenumber);
                return qfalse;
            }
        }
    }else if(guid[7]){
        for(i = 0; i < current_banindex; this++, i++){
            if(!Q_stricmp(this->pbguid, guid)){
                Com_Printf("Error: This player with GUID: %s is already banned on this server (line: %d)\n",guid, linenumber);
                return qfalse;
            }
        }
    }else{
        Com_Printf("Error: This player has no uid/guid (line: %d)\n",linenumber);
        return qfalse; //Bad entry: No Id
    }

    if(!SV_OversizeBanlistAlign())
        return qfalse;

    this = &banlist[current_banindex];

    this->playeruid = playeruid;
    this->adminuid = adminuid;
    this->expire = expire;
    this->created = create;
    Q_strncpyz(this->reason, reason, sizeof(this->reason));
    Q_strncpyz(this->pbguid, guid, sizeof(this->pbguid));
    Q_strncpyz(this->playername, playername, sizeof(this->playername));

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

    FS_SV_FOpenFileRead(banlistfile->string,&file);
    if(!file){
        Com_DPrintf("SV_ReadBanlist: Can not open %s for reading\n",banlistfile->string);
        return;
    }

    for(i = 0, error = 0 ;error < 32 ;i++){

        read = FS_ReadLine(buf,sizeof(buf),file);
        if(read == 0){
            Com_Printf("%i lines parsed from %s, %i errors occured\n",i,banlistfile->string,error);
            FS_FCloseFile(file);
            return;
        }
        if(read == -1){
            Com_Printf("Can not read from %s\n",banlistfile->string);
            FS_FCloseFile(file);
            return;
        }
        if(!*buf || *buf == '/' || *buf == '\n'){
            continue;
        }
        if(!SV_ParseBanlist(buf, aclock, i+1)) error++; //Executes the function given as argument in execute
    }
    Com_PrintWarning("More than 32 errors occured by reading from %s\n",banlistfile->string);
    FS_FCloseFile(file);
}


void SV_WriteBanlist(){

    banList_t *this;
    time_t aclock;
    time(&aclock);
    fileHandle_t file;
    char infostring[1024];
    int i;
	mvabuf;

    file = FS_SV_FOpenFileWrite(va("%s.tmp", banlistfile->string));
    if(!file){
        Com_PrintError("SV_WriteBanlist: Can not open %s for writing\n",banlistfile->string);
        return;
    }

    this = banlist;
    if(!this)
        return;

    for(i = 0 ; i < current_banindex; this++, i++){

        if(this->expire == (time_t)-1 || this->expire > aclock){

            *infostring = 0;
            if(this->playeruid == 0 && !this->pbguid[7])
            {
                continue;
            }

            if(this->playeruid > 0){
                Info_SetValueForKey(infostring, "uid", va("%i", this->playeruid));
            }
            if(this->pbguid[7]){
                Info_SetValueForKey(infostring, "guid", this->pbguid);
            }

            Info_SetValueForKey(infostring, "nick", this->playername);
            Info_SetValueForKey(infostring, "rsn", this->reason);
            Info_SetValueForKey(infostring, "exp", va("%i", this->expire));
            Info_SetValueForKey(infostring, "create", va("%i", this->created));
            Info_SetValueForKey(infostring, "auid", va("%i", this->adminuid));
            Q_strcat(infostring, sizeof(infostring), "\\\n");
            FS_Write(infostring,strlen(infostring),file);
        }
    }
    FS_FCloseFile(file);
    FS_SV_HomeCopyFile(va("%s.tmp", banlistfile->string) ,banlistfile->string);
//    FS_SV_Rename(va("%s.tmp", banlist->string),banlist->string);
}


char* SV_PlayerBannedByip(netadr_t *netadr, char* message, int len){	//Gets called in SV_DirectConnect
    ipBanList_t *this;
    int i;

    char appealmsg[512];
    char uidguidmsg[64];

    appealmsg[0] = '\0';

    if(sv_banappealurl && sv_banappealurl->string[0])
    {
        Com_sprintf(appealmsg, sizeof(appealmsg), "You can appeal this ban online at: %s", sv_banappealurl->string);
    }

    for(this = &ipBans[0], i = 0; i < MAX_IPBANS; this++, i++){

        if(NET_CompareBaseAdr(netadr, &this->remote)){

            if(Com_GetRealtime() < this->timeout)
            {
                if(this->uid > 0)
                {
                    Com_sprintf(uidguidmsg, sizeof(uidguidmsg), "Your UID is: %i", this->uid);
                }else{
                    Com_sprintf(uidguidmsg, sizeof(uidguidmsg), "Your GUID is: %s", this->guid);
                }

                if(this->expire == -1){
		Com_sprintf(message, len, "Enforcing prior ban\nYou have been permanently banned from this server\nYou will be never allowed to join this gameserver again\n %s    Banning admin UID is: %i\nReason for this ban:\n%s\n%s\n",
                    uidguidmsg,this->adminuid,this->banmsg, appealmsg);
					return message;

                }else{

                    int remaining = (int)(this->expire - Com_GetRealtime()) +1; //in seconds (+1 for fixing up a display error when only some seconds are remaining)
                    int srem = remaining;
                    int d = remaining/(60*60*24);
                    remaining = remaining%(60*60*24);
                    int h = remaining/(60*60);
                    remaining = remaining%(60*60);
                    int m = remaining/60;

                    if(sv_banappealminhours && srem < sv_banappealminhours->integer * 60*60)
                    {
                        appealmsg[0] = '\0';
                    }

                    Com_sprintf(message, len, "Enforcing prior kick/ban\nYou have been temporarily banned from this server\nYour ban will expire in\n %i days %i hours %i minutes\n %s    Banning admin UID is: %i\nReason for this ban:\n%s\n%s\n",
                    d,h,m,uidguidmsg,this->adminuid,this->banmsg, appealmsg);
					return message;
                }


            }
        }
    }
    return NULL;
}




//duration is in minutes
void SV_PlayerAddBanByip(netadr_t *remote, char *reason, int uid, char* guid, int adminuid, int expire){		//Gets called by future implemented ban-commands and if a prior ban got enforced again

    ipBanList_t *list;
    int i;
    int oldest =	0;
    unsigned int oldestTime = 0xFFFFFFFF;
    int duration;

    if(!remote)
    {
        Com_PrintError("SV_PlayerAddBanByip: IP address is NULL\n");
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

    Q_strncpyz(list->banmsg, reason, sizeof(list->banmsg));

    if(guid && strlen(guid) == 32)
        guid += 24;

    if(guid && strlen(guid) == 8)
    {

        Q_strncpyz(list->guid, guid, sizeof(list->guid));

    }

    list->expire = expire;
    list->uid = uid;
    list->adminuid = adminuid;

    duration = expire - Com_GetRealtime();
    if(duration > ipbantime->integer*60 || expire == -1)
        duration = ipbantime->integer*60;	//Don't ban IPs for more than MAX_IPBAN_MINUTES minutes as they can be shared (Carrier-grade NAT)

    list->systime = Sys_Milliseconds();

    list->timeout = Com_GetRealtime() + duration;

}


void SV_RemoveBanByip(netadr_t *remote, int uid, char* guid)
{
    ipBanList_t *thisipban;
    int i;

    if(uid > 0)
    {

        for(thisipban = ipBans, i = 0; i < MAX_IPBANS; thisipban++, i++)
        {
            if(uid == thisipban->uid)
            {
                Com_Memset(thisipban,0,sizeof(ipBanList_t));
                return;
            }
        }
    }

    if(guid && strlen(guid) == 32)
        guid += 24;

    if(guid && strlen(guid) == 8)
    {

        for(thisipban = ipBans, i = 0; i < MAX_IPBANS; thisipban++, i++)
        {
            if(!Q_stricmp(guid, thisipban->guid))
            {
                Com_Memset(thisipban,0,sizeof(ipBanList_t));
                return;
            }
        }

    }

    if(remote != NULL)
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

char* SV_PlayerIsBannedInInternalList(baninfo_t* baninfo, char* message, int len)
{
  banList_t *this;
  int i;
  char appealmsg[512];
  qboolean checklocalbanlist;

  if(baninfo->pbguid && strcmp(baninfo->pbguid, "[I:0:0]") == 0)
  {
	  return NULL;
  }

  this = banlist;
  if(!this)
        return NULL;

  appealmsg[0] = '\0';

  if(sv_banappealurl && sv_banappealurl->string[0])
  {
    Com_sprintf(appealmsg, sizeof(appealmsg), "You can appeal this ban online at: %s", sv_banappealurl->string);
  }

#if 0
/* This will come back at a later time */
  if(uid > 0){
    for(i = 0 ; i < current_banindex; this++, i++){

        if(this->playeruid == uid){

            if(this->expire == (time_t)-1){
                SV_PlayerAddBanByip(addr, this->reason, this->playeruid, pbguid, this->adminuid, -1);
                Com_sprintf(message, len, "\nEnforcing prior ban\nYou have been permanently banned from this server\n\n Your UID is: %i    Banning admin UID is: %i\nReason for this ban:\n%s\n%s\n",
                this->playeruid,this->adminuid,this->reason, appealmsg);
				return message;
            }

            if(this->expire > Com_GetRealtime()){

		int remaining = (int)(this->expire - Com_GetRealtime());
                int srem = remaining;
                SV_PlayerAddBanByip(addr, this->reason, this->playeruid, pbguid, this->adminuid, this->expire);
		int d = remaining/(60*60*24);
		remaining = remaining%(60*60*24);
		int h = remaining/(60*60);
		remaining = remaining%(60*60);
		int m = remaining/60;

                if(sv_banappealminhours && srem < sv_banappealminhours->integer * 60*60)
                {
                    appealmsg[0] = '\0';
                }

                Com_sprintf(message, len, "\nEnforcing prior kick/ban\nYou have been temporarily banned from this server.\nYour ban will exipire in\n %i days %i hours %i minutes\n Your UID is: %i    Banning admin UID is: %i\nReason for this ban:\n%s\n%s\n",
                d,h,m,this->playeruid,this->adminuid,this->reason, appealmsg);
				return message;
            }
        }
    }

  }else
#endif
	if(baninfo->pbguid != NULL && strlen(baninfo->pbguid) == 32){


    for(i = 0 ; i < current_banindex; this++, i++){

        if(!Q_strncmp(this->pbguid, &baninfo->pbguid[24], 8))
        {

            Q_strncpyz(baninfo->message, this->reason, sizeof(baninfo->message));
            Q_strncpyz(baninfo->playername, this->playername, sizeof(baninfo->playername));
            baninfo->adminuid = this->adminuid;
            baninfo->uid = this->playeruid;
            baninfo->adminsteamid = 0;
            baninfo->steamid = 0;
            baninfo->adminname[0] = 0;
            baninfo->created = this->created;
            baninfo->expire = this->expire;
            Com_Memset(&baninfo->adr, 0 , sizeof(baninfo->adr));

            if(this->expire == (time_t)-1){
                baninfo->duration = (time_t)-1;
                Com_sprintf(message, len, "You have been permanently banned from this server.\nYou will be never allowed to join this gameserver again\n Your GUID is: %s\nReason for this ban:\n%s\n%s\n",
                this->pbguid, this->reason, appealmsg);
				        return message;
            }

            if(this->expire > Com_GetRealtime()){

            		int remaining = (int)(this->expire - Com_GetRealtime());
            		int srem = remaining;
            		int d = remaining/(60*60*24);
            		remaining = remaining%(60*60*24);
            		int h = remaining/(60*60);
            		remaining = remaining%(60*60);
            		int m = remaining/60;

                if(sv_banappealminhours && srem < sv_banappealminhours->integer * 60*60)
                {
                    appealmsg[0] = '\0';
                }
                baninfo->duration = (time_t)m;
                Com_sprintf(message, len, "You have been temporarily banned from this server.\nYour ban will exipire in\n %i days %i hours %i minutes\n Your GUID is: %s\nReason for this ban:\n%s\n%s\n",
                d,h,m, this->pbguid, this->reason, appealmsg);
				        return message;
            }

        }
    }
  }
  return NULL;

}

char* SV_PlayerIsBanned(int uid, char* pbguid, netadr_t *addr, char* message, int len)
{

/*
  if(message[0])
  {
    return message;
  }
  checklocalbanlist = qtrue;


  if(checklocalbanlist == qfalse){
    return NULL;
  }
*/

  baninfo_t baninfo;
  //Banning
  Q_strncpyz(baninfo.playername, "", sizeof(baninfo.playername));
  baninfo.steamid = 0;
  baninfo.uid = uid;
  Q_strncpyz(baninfo.pbguid, pbguid, sizeof(baninfo.pbguid));
  baninfo.adr = *addr;

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





void SV_InitBanlist(){

    Com_Memset(ipBans,0,sizeof(ipBans));
    banlistfile = Cvar_RegisterString("banlist_filename", "banlist.dat", CVAR_INIT, "Name of the file which holds the banlist");
    ipbantime = Cvar_RegisterInt("banlist_maxipbantime", MAX_DEFAULT_IPBAN_MINUTES, 0, 20160, 0, "Limit of minutes to keep a ban against an ip-address up");
    sv_banappealurl = Cvar_RegisterString("banlist_appealurl", "", 0, "Showing the url for ban appeal");
    sv_banappealminhours = Cvar_RegisterInt("banlist_appealminhours", DEFAULT_APPEAL_MINHOURS, 0, 336, 0, "How much hours have to be left for showing an appeal url");
    current_banlist_size = BANLIST_DEFAULT_SIZE;
    current_banindex = 0;
    banlist = realloc(NULL, current_banlist_size);//Test for NULL ?
    if(banlist){
        SV_LoadBanlist();
    }else{
        Com_PrintError("Failed to allocate memory for the banlist. Banlist is disabled\n");
    }
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




qboolean SV_AddBanToInternalList(int uid, int auid, char* guid, char* name, time_t expire, char* banreason)
{

    time_t aclock;

    if(!SV_OversizeBanlistAlign())
        return qfalse;

    time(&aclock);

    banList_t *this;
    int i;

    this = banlist;
    if(!this)
        return qfalse;

    int type;
#if 0
    /* Same as above - later */
    if(uid > 0){
        type = 0;
    }else
#endif
if(guid && strlen(guid) == 8){
        type = 1;
    }else{
        return qfalse;
    }

    if(!SV_ReloadBanlist())
        return qfalse;

    for(i = 0 ; i < current_banindex; this++, i++){
        switch(type)
        {
            case 0:
                if(uid != this->playeruid)
                    continue;

            break;
            case 1:
                if(Q_stricmp(guid, this->pbguid))
                    continue;
        }
        break;
    }
    if(i == current_banindex){
        current_banindex++; //Rise the array index

    }else{
        if(type == 0){
            Com_Printf( "Modifying banrecord for player uid: %i\n", uid);
            SV_PrintAdministrativeLog( "modified banrecord of player uid: %i:", uid);
        }else{
            Com_Printf( "Modifying banrecord for player guid: %s\n", guid);
            SV_PrintAdministrativeLog( "modified banrecord of player guid: %s:", guid);
        }
    }

    this->playeruid = uid;
    this->adminuid = auid;
    this->expire = expire;
    this->created = aclock;

    if(banreason)
        Q_strncpyz(this->reason, banreason, sizeof(this->reason));
    else
        *this->reason = 0;

    if(guid && type)
        Q_strncpyz(this->pbguid, guid, sizeof(this->pbguid));
    else
        *this->pbguid = 0;

    if(name)
        Q_strncpyz(this->playername, name, sizeof(this->playername));
    else
        *this->playername = 0;

    SV_WriteBanlist();
    return qtrue;
}

void SV_AddBan(baninfo_t* baninfo)
{
  time_t aclock;
  time(&aclock);
  baninfo->created = aclock;
  PHandler_Event(PLUGINS_ONPLAYERADDBAN, baninfo);
  //return SV_AddBanToInternalList(baninfo->uid, baninfo->adminuid, baninfo->pbguid, baninfo->playername, baninfo->expire, baninfo->message);
}

void SV_AddBanForClient(client_t* cl, int bantime, const char* banreason)
{
  time_t aclock;
  time(&aclock);
  baninfo_t baninfo;

  int invokerUid = Cmd_GetInvokerUID();
  if(invokerUid == 0)
  {
    Q_strncpyz(baninfo.adminname, "System/Rcon",  sizeof(baninfo.adminname));
    baninfo.adminsteamid = 0;
    baninfo.adminuid = 0;
  }else{
    Cmd_GetInvokerName(baninfo.adminname, sizeof(baninfo.adminname));
    baninfo.adminsteamid = Cmd_GetInvokerSteamID();
    baninfo.adminuid = invokerUid;
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
  baninfo.uid = cl->uid;
  Q_strncpyz(baninfo.pbguid, cl->pbguid, sizeof(baninfo.pbguid));
  baninfo.adr = cl->netchan.remoteAddress;
  SV_AddBan(&baninfo);
}

void SV_AddBanForUIDGUID(unsigned int uid, const char* guid, const char* name, int bantime, const char* banreason)
{
  time_t aclock;
  time(&aclock);
  baninfo_t baninfo;

  int invokerUid = Cmd_GetInvokerUID();
  if(invokerUid == 0)
  {
    Q_strncpyz(baninfo.adminname, "System/Rcon",  sizeof(baninfo.adminname));
    baninfo.adminsteamid = 0;
    baninfo.adminuid = 0;
  }else{
    Cmd_GetInvokerName(baninfo.adminname, sizeof(baninfo.adminname));
    baninfo.adminsteamid = Cmd_GetInvokerSteamID();
    baninfo.adminuid = invokerUid;
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

  if(guid == NULL)
  {
    guid = "";
  }
  if(name == NULL){
    name = "N/A";
  }

  //Banning
  Q_strncpyz(baninfo.playername, name, sizeof(baninfo.playername));
  baninfo.steamid = 0;
  baninfo.uid = uid;
  Q_strncpyz(baninfo.pbguid, guid, sizeof(baninfo.pbguid));
  memset(&baninfo.adr, 0, sizeof(baninfo.adr));

  SV_AddBan(&baninfo);
}


qboolean SV_RemoveBanFromInternalList(int uid, char* guid, char* name){

    banList_t *this;
    int i;
    int type;
    qboolean succ = qfalse;
    char* printguid;
    char* banreason;
    char* printnick;

    if(uid > 0){
        type = 0;
    }else if(strlen(guid) == 8){
        type = 1;
    }else if(strlen(name) > 2){
        type = 2;
    }else{
        return qfalse;
    }

    this = banlist;
    if(!this)
        return qfalse;

    if(!SV_ReloadBanlist())
        return qfalse;

    for(i = 0 ; i < current_banindex; this++, i++)
    {
        switch(type)
        {
                case 0:
                    if(uid != this->playeruid)
                        continue;

                    break;
                case 1:
                    if(Q_stricmp(guid, this->pbguid))
                        continue;

                    break;
                case 2:
                    if(Q_stricmp(name, this->playername))
                        continue;
        }

        this->expire = (time_t) 0;
        SV_RemoveBanByip(NULL, this->playeruid, this->pbguid);
        succ = qtrue;

        if(!*this->pbguid){
            printguid = "N/A";
        }else{
            printguid = this->pbguid;
        }

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

        Com_Printf("Removing ban for Nick: %s, UID: %i, GUID: %s, Banreason: %s\n", printnick, this->playeruid, printguid, banreason);
        SV_PrintAdministrativeLog("Removing ban for Nick: %s, UID: %i, GUID: %s, Banreason: %s\n", printnick, this->playeruid, printguid, banreason);
    }
    if(succ)
        SV_WriteBanlist();

    return succ;
}

void SV_RemoveBan(baninfo_t* baninfo)
{

  PHandler_Event(PLUGINS_ONPLAYERREMOVEBAN, baninfo);
/*
  if(baninfo->pbguid[0])
  {
    SV_RemoveBanFromInternalList(0, baninfo->pbguid, NULL);
  }else if(baninfo->uid > 0){
    SV_RemoveBanFromInternalList(baninfo->uid, NULL, NULL);
  }else{
    SV_RemoveBanFromInternalList(0, NULL, baninfo->playername);
  }
*/
}

void SV_DumpBanlist(){

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
            if(this->pbguid[0] == '\0' && this->playeruid == 0)
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

            Com_Printf("%i uid: %i; nick: %s; guid: %s; adminuid: %i; expire: %s; reason: %s\n", i, this->playeruid, this->playername, this->pbguid, this->adminuid, timestr, this->reason);
        }
    }
    Com_Printf("%i Active bans\n", k);
}
