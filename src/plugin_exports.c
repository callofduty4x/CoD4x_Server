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



#include "plugin_handler.h"
#include "sys_main.h"
#include "sys_thread.h"
#include "httpftp.h"
#include "sapi.h"
#include "g_shared.h"
/*=========================================*
 *                                         *
 *        Plugin Handler's exports         *
 *                                         *
 *   Functions in this file are available  *
 *           for use in plugins.           *
 *                                         *
 *=========================================*/

P_P_F void *Plugin_Malloc(size_t size)
{
    volatile int pID;
    //Identify the calling plugin
    pID = PHandler_CallerID();
    if(pID<0){
        Com_Printf(CON_CHANNEL_PLUGINS,"Plugins: Error! Tried allocating memory for unknown plugin!\n");
        return NULL;
    }
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_Printf(CON_CHANNEL_PLUGINS,"^1WARNING^7: Tried allocating memory for a disabled plugin!\n");

    }
    return PHandler_Malloc(pID,size);

}
P_P_F void Plugin_Free(void *ptr)
{
    //Identify the calling plugin
    volatile int pID = PHandler_CallerID();
    if(pID<0){
        Com_Printf(CON_CHANNEL_PLUGINS,"Plugins: Error! Tried freeing memory for unknown plugin!\n");
        return;
    }
    PHandler_Free(pID,ptr);
}
P_P_F void Plugin_Error(int code, const char *fmt, ...)
{
    va_list argptr;
    char msg[1024];

    volatile int pID = PHandler_CallerID();

    if(pID<0){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin Error called from unknown plugin!\n");
        return;
    }

    va_start (argptr,fmt);
    Q_vsnprintf(msg, sizeof(msg), fmt, argptr);
    va_end (argptr);

    PHandler_Error(pID,code,msg);
}
P_P_F int Plugin_ClientToSlot(client_t *client)
{
    return client-svs.clients;
}

P_P_F clientScoreboard_t Plugin_GetClientScoreboard(int clientNum)
{
    clientScoreboard_t score;
    score.kills = level.clients[clientNum].sess.kills;
    score.deaths = level.clients[clientNum].sess.deaths;
    score.assists = level.clients[clientNum].sess.assists;
    score.score = level.clients[clientNum].sess.score;

    return score;
}
P_P_F uint64_t Plugin_Cmd_GetSteamID()
{
    return Cmd_GetInvokerSteamID();
}
P_P_F int Plugin_Cmd_GetInvokerSlot()
{
    return Cmd_GetInvokerClnum();
}
P_P_F int Plugin_GetPlayerUid(int slot)
{
    Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_GetPlayerUID: This command is in CoD4X18+ deprecated. 0 returned\n");
    return 0;
}
P_P_F int Plugin_GetSlotCount()
{
    return sv_maxclients->integer;
}
P_P_F qboolean Plugin_IsSvRunning()
{
    if(com_sv_running)
        return com_sv_running->boolean;
    else
        return qfalse;
}
P_P_F char *Plugin_GetPlayerName(int slot)
{
    return svs.clients[slot].name;
}
P_P_F void Plugin_AddCommand(char *name, xcommand_t xcommand, int power)
{
    volatile int pID;
    pID = PHandler_CallerID();
    if(pID>=MAX_PLUGINS){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Tried adding a command for a plugin with non existent pID. pID supplied: %d.\n",pID);
        return;
    }else if(pID<0){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_AddCommand called from not within a plugin or from a disabled plugin!\n");
        return;
    }
    if(!pluginFunctions.plugins[pID].loaded){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Tried adding a command for not loaded plugin! PID: %d.\n",pID);
    }
    Com_DPrintf(CON_CHANNEL_PLUGINS,"Adding a plugin command for plugin %d, command name: %s.\n",pID,name);
    Cmd_AddCommand(name,PHandler_CmdExecute_f);
    Cmd_SetPower(name, power);
    pluginFunctions.plugins[pID].cmd[pluginFunctions.plugins[pID].cmds].xcommand = xcommand;
    strcpy(pluginFunctions.plugins[pID].cmd[pluginFunctions.plugins[pID].cmds++].name,name);
    Com_DPrintf(CON_CHANNEL_PLUGINS,"Command added.\n");
   // pluginFunctions.plugins[pID].


}

P_P_F void Plugin_RemoveCommand(char *name)
{
//    int i;
    volatile int pID;
    pID = PHandler_CallerID();
    if(pID>=MAX_PLUGINS){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Tried removing a command for a plugin with non existent pID. pID supplied: %d.\n",pID);
        return;
    }else if(pID<0){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_RemoveCommand called from not within a plugin or from a disabled plugin!\n");
        return;
    }
    if(!pluginFunctions.plugins[pID].loaded){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Tried removing a command for not loaded plugin! PID: %d.\n",pID);
    }
    Com_DPrintf(CON_CHANNEL_PLUGINS,"Remove a plugin command for plugin %d, command name: %s.\n",pID,name);
    Cmd_RemoveCommand( name );

  /* Leaving the command in list. Is not that good but will not make much trouble.
  for(i=0; i < )
    pluginFunctions.plugins[pID].cmd[pluginFunctions.plugins[pID].cmds].xcommand = xcommand;
    strcpy(pluginFunctions.plugins[pID].cmd[pluginFunctions.plugins[pID].cmds++].name,name);
    */Com_DPrintf(CON_CHANNEL_PLUGINS,"Command removed.\n");
   // pluginFunctions.plugins[pID].
}


P_P_F qboolean Plugin_TcpConnectMT( int pID, int connection, const char* remote)
{
    if(pID<0){
        Com_Printf(CON_CHANNEL_PLUGINS,"Plugins: Error! Tried open a TCP-Connection for unknown plugin!\n");
        return qfalse;
    }
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_Printf(CON_CHANNEL_PLUGINS,"^1WARNING^7: Tried open a TCP-Connection for a disabled plugin!\n");
        return qfalse;
    }
    if(connection >= PLUGIN_MAX_SOCKETS || connection < 0){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_TcpConnect: Second argument can only be a value inside the range: 0...%d plugin ID: #%d\n", PLUGIN_MAX_SOCKETS);
        return qfalse;
    }
    return PHandler_TcpConnect(pID, remote, connection);

}

P_P_F qboolean Plugin_TcpConnect( int connection, const char* remote)
{
    int pID;
    //Identify the calling plugin
    pID = PHandler_CallerID();
    return Plugin_TcpConnectMT(pID, connection, remote);
}


P_P_F int Plugin_TcpGetDataMT(int pID, int connection, void* buf, int size)
{
    if(pID<0 || pID >= MAX_PLUGINS){
        Com_Printf(CON_CHANNEL_PLUGINS,"Plugin_TcpGetData: Error! Tried get TCP data for unknown plugin!\n");
        return -1;
    }
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_Printf(CON_CHANNEL_PLUGINS,"^1WARNING^7: Plugin_TcpGetData: Tried get TCP data for a disabled plugin!\n");
        return -1;
    }
    if(connection >= PLUGIN_MAX_SOCKETS || connection < 0){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_TcpGetData: First argument can only be a value inside the range: 0...%d plugin ID: #%d\n", PLUGIN_MAX_SOCKETS, pID);
        return -1;
    }
    if(buf == NULL){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_TcpGetData: Third argument can not be a NULL-Pointer for plugin ID: #%d\n", pID);
        return -1;
    }

    return PHandler_TcpGetData(pID, connection, buf, size);
}

P_P_F int Plugin_TcpGetData(int connection, void* buf, int size)
{
    int pID;
    //Identify the calling plugin
    pID = PHandler_CallerID();
    return Plugin_TcpGetDataMT(pID, connection, buf, size);
}


P_P_F qboolean Plugin_TcpSendDataMT(int pID, int connection, void* data, int len)
{
    if(pID<0 || pID >= MAX_PLUGINS){
        Com_Printf(CON_CHANNEL_PLUGINS,"Plugin_TcpSendData: Error! Tried get TCP data for unknown plugin!\n");
        return qfalse;
    }
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_Printf(CON_CHANNEL_PLUGINS,"^1WARNING^7: Plugin_TcpSendData: Tried get TCP data for a disabled plugin!\n");
        return qfalse;
    }
    if(connection >= PLUGIN_MAX_SOCKETS || connection < 0){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_TcpSendData: Second argument can only be a value inside the range: 0...%d plugin ID: #%d\n", PLUGIN_MAX_SOCKETS, pID);
        return qfalse;
    }
    if(data == NULL){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_TcpSendData: Second argument can not be a NULL-Pointer for plugin ID: #%d\n", pID);
        return qfalse;
    }

    return PHandler_TcpSendData(pID, connection, data, len);
}

P_P_F qboolean Plugin_TcpSendData(int connection, void* data, int len)
{
    int pID;
    //Identify the calling plugin
    pID = PHandler_CallerID();
    return Plugin_TcpSendDataMT(pID, connection, data, len);
}

P_P_F void Plugin_TcpCloseConnectionMT(int pID, int connection)
{
    //Identify the calling plugin
    if(pID<0 || pID >= MAX_PLUGINS){
        Com_Printf(CON_CHANNEL_PLUGINS,"Plugin_TcpCloseConnection: Error! Tried get close a connection for unknown plugin!\n");
        return;
    }
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_Printf(CON_CHANNEL_PLUGINS,"^1WARNING^7: Plugin_TcpCloseConnection: Tried to close a connection for a disabled plugin!\n");
        return;
    }
    if(connection >= PLUGIN_MAX_SOCKETS || connection < 0){
        Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_TcpCloseConnection: Second argument can only be a value inside the range: 0...%d plugin ID: #%d\n", PLUGIN_MAX_SOCKETS, pID);
        return;
    }
    PHandler_TcpCloseConnection(pID, connection);
}

P_P_F void Plugin_TcpCloseConnection(int connection)
{
    int pID;
    //Identify the calling plugin
    pID = PHandler_CallerID();
    Plugin_TcpCloseConnectionMT(pID, connection);
}


P_P_F qboolean Plugin_UdpSendData(netadr_t* to, void* data, int len)
{
    int pID;

    if(to == NULL){
        pID = PHandler_CallerID();
        Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_UdpSendData: First argument can not be a NULL-Pointer for plugin ID: #%d\n", pID);
        return qfalse;
    }

    if(data == NULL){
        pID = PHandler_CallerID();
        Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_UdpSendData: First argument can not be a NULL-Pointer for plugin ID: #%d\n", pID);
        return qfalse;
    }

    netadr_t* defif;
    defif = NET_GetDefaultCommunicationSocket(to->type);
    to->sock = defif ? defif->sock : 0;

    return Sys_SendPacket( len, data, to);
}

P_P_F void Plugin_ServerPacketEvent(netadr_t* to, void* data, int len)
{
    msg_t msg;
    msg.data = data;
    msg.cursize = len;
    msg.maxsize = len;
    msg.bit = 0;
    msg.overflowed = qfalse;
    msg.readonly = qtrue;
    msg.splitData = NULL;
    msg.splitSize = 0;
    SV_PacketEvent( to, &msg );
}

P_P_F uint64_t Plugin_GetPlayerSteamID(unsigned int clientslot)
{
    client_t *cl;
    int PID = PHandler_CallerID();
    mvabuf;

    if(clientslot > sv_maxclients->integer)
    {
        PHandler_Error(PID,P_ERROR_DISABLE, va("Plugin tried to get SteamID for bad client: %d\n", clientslot));
    }
    cl = &svs.clients[clientslot];
    return cl->steamid;
}


P_P_F uint64_t Plugin_GetPlayerID(unsigned int clientslot)
{
    client_t *cl;
    int PID = PHandler_CallerID();
	  mvabuf;

    if(clientslot > sv_maxclients->integer)
    {
        PHandler_Error(PID,P_ERROR_DISABLE, va("Plugin tried to get PlayerID for bad client: %d\n", clientslot));
    }
    cl = &svs.clients[clientslot];
    return cl->playerid;
}

P_P_F void Plugin_SetPlayerGUID(unsigned int clientslot, const char* guid)
{
  Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_SetPlayerGUID: This command is in CoD4X18+ deprecated. Nothing is set\n");
}

P_P_F void Plugin_SetPlayerUID(unsigned int clientslot, unsigned int uid)
{
	  Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_SetPlayerUID: This command is in CoD4X18+ deprecated. Nothing is set\n");
    return;
}

P_P_F unsigned int Plugin_GetPlayerUID(unsigned int clientslot)
{
  Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_GetPlayerUID: This command is in CoD4X18+ deprecated. 0 returned\n");
  return 0;
}

P_P_F const char* Plugin_GetPlayerGUID(unsigned int clientslot)
{
    Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_GetPlayerGUID: This command is in CoD4X18+ deprecated. No results\n");
    return "";
}

P_P_F void Plugin_SetPlayerNoPB(unsigned int clientslot)
{
  Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_SetPlayerNoPB: This command is in CoD4X18+ deprecated. Nothing is set\n");
  return;
}

P_P_F int Plugin_DoesServerUseUids(void)
{
    Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_DoesServerUseUids: This command is in CoD4X18+ deprecated.\n");
    return 0;
}

P_P_F void Plugin_SetServerToUseUids(int useuids)
{
  Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_SetServerToUseUids: This command is in CoD4X18+ deprecated.\n");
  return;
}

P_P_F int Plugin_GetLevelTime(void)
{
    return level.time;
}

P_P_F int Plugin_GetServerTime(void)
{
    return svs.time;
}

P_P_F void Plugin_ScrAddFunction(char *name, xfunction_t function)
{
    int PID = PHandler_CallerID();

    PHandler_ScrAddFunction(name, function, qfalse, PID);
}

P_P_F void Plugin_ScrAddMethod(char *name, xfunction_t function)
{
    int PID = PHandler_CallerID();

    PHandler_ScrAddMethod(name, function, qfalse, PID);
}

P_P_F void Plugin_ScrReplaceFunction(char *name, xfunction_t function)
{
    int PID = PHandler_CallerID();

    PHandler_ScrAddFunction(name, function, qtrue, PID);
}

P_P_F void Plugin_ScrReplaceMethod(char *name, xfunction_t function)
{
    int PID = PHandler_CallerID();

    PHandler_ScrAddMethod(name, function, qtrue, PID);
}


P_P_F void Plugin_ChatPrintf(int slot, const char *fmt, ... )
{
    //int ebp,*ptr;
    char str[256];
    client_t *cl;
    va_list vl;

    if(slot < 0)
        cl = NULL;
    else if( slot < sv_maxclients->integer)
        cl = &svs.clients[slot];
    else
        return;

    va_start(vl,fmt);
    Q_vsnprintf(str, sizeof(str), fmt,vl);
    va_end(vl);
    SV_SendServerCommand(cl, "h \"%s\"", str);
}

P_P_F void Plugin_BoldPrintf(int slot, const char *fmt, ... )
{
    char str[256];
    client_t *cl;
    va_list vl;

    if(slot < 0)
        cl = NULL;
    else if( slot < sv_maxclients->integer)
        cl = &svs.clients[slot];
    else
        return;

    va_start(vl,fmt);
    Q_vsnprintf(str, sizeof(str), fmt, vl);
    va_end(vl);
    SV_SendServerCommand(cl, "c \"%s\"", str);
}


P_P_F int Plugin_Cvar_GetInteger(void *cvar)
{
    cvar_t* var = cvar;
    int PID = PHandler_CallerID();
    int v;
    if(var == NULL)
    {
        PHandler_Error(PID, P_ERROR_DISABLE, "Plugin to get Cvar of NULL-Pointer\n");
        return 0;
    }
    Sys_EnterCriticalSection(CRITSECT_CVAR);
    if(var->type != CVAR_INT)
    {
        PHandler_Error(PID, P_ERROR_DISABLE, "Plugin tried to get Cvar of different type\n");
        Sys_LeaveCriticalSection(CRITSECT_CVAR);
        return 0;
    }
    v = var->integer;
    Sys_LeaveCriticalSection(CRITSECT_CVAR);

    return v;
}

P_P_F qboolean Plugin_Cvar_GetBoolean(void *cvar)
{
    cvar_t* var = cvar;
    qboolean b;
    int PID = PHandler_CallerID();

    if(var == NULL)
    {
        PHandler_Error(PID, P_ERROR_DISABLE, "Plugin to get Cvar of NULL-Pointer\n");
        return 0;
    }

    Sys_EnterCriticalSection(CRITSECT_CVAR);
    if(var->type != CVAR_BOOL)
    {
        PHandler_Error(PID, P_ERROR_DISABLE, "Plugin tried to get Cvar of different type\n");
        Sys_LeaveCriticalSection(CRITSECT_CVAR);
        return 0;
    }
    b = var->boolean;
    Sys_LeaveCriticalSection(CRITSECT_CVAR);
    return b;
}

P_P_F float Plugin_Cvar_GetValue(void *cvar)
{
    cvar_t* var = cvar;
    float v;
    int PID = PHandler_CallerID();

    if(var == NULL)
    {
        PHandler_Error(PID, P_ERROR_DISABLE, "Plugin to get Cvar of NULL-Pointer\n");
        return 0;
    }

    Sys_EnterCriticalSection(CRITSECT_CVAR);

    if(var->type != CVAR_FLOAT)
    {
        PHandler_Error(PID, P_ERROR_DISABLE, "Plugin tried to get Cvar of different type\n");
        Sys_LeaveCriticalSection(CRITSECT_CVAR);
        return 0;
    }
    v = var->value;
    Sys_LeaveCriticalSection(CRITSECT_CVAR);
    return v;
}

P_P_F const char* Plugin_Cvar_GetString(void *cvar, char* buf, int sizebuf)
{
    cvar_t* var = cvar;
    int PID = PHandler_CallerID();

    if(var == NULL)
    {
        PHandler_Error(PID, P_ERROR_DISABLE, "Plugin to get Cvar of NULL-Pointer\n");
        return 0;
    }

    Sys_EnterCriticalSection(CRITSECT_CVAR);

    if(var->type != CVAR_STRING)
    {
        PHandler_Error(PID, P_ERROR_DISABLE, "Plugin tried to get Cvar of different type\n");
        Sys_LeaveCriticalSection(CRITSECT_CVAR);
        return 0;
    }
    Q_strncpyz(buf, var->string, sizebuf);
    Sys_LeaveCriticalSection(CRITSECT_CVAR);
    return buf;
}

P_P_F void Plugin_DropClient( unsigned int clientnum, const char *reason )
{
    if(clientnum > sv_maxclients->integer)
		return;

	SV_DropClient(&svs.clients[clientnum], reason);
}



P_P_F void Plugin_BanClient( unsigned int clientnum, int duration, int invokerid, char *banreason )
{

  client_t *cl;
	time_t expire;
	char* temp;
  time_t aclock;
  char endtime[32];
  char dropmsg[MAX_STRING_CHARS];
  char banmsg[MAX_STRING_CHARS];
  char timelimitmsg[MAX_STRING_CHARS];
  baninfo_t baninfo;
  char playeridstring[128];

	if(clientnum > sv_maxclients->integer)
		return;

	cl = &svs.clients[clientnum];

	time(&aclock);

	if(duration == -1)
	{
		expire = duration;
		Q_strncpyz(endtime, "never", sizeof(endtime));
	}
	else
	{
		expire = (aclock+(time_t)(duration*60));
		temp = ctime(&expire);
		temp[strlen(temp)-1] = 0;
		Q_strncpyz(endtime, temp, sizeof(endtime));

	}

	if(banreason == NULL)
	{
		banreason = "N/A";
	}

  uint64_t invokersteamid = Cmd_GetInvokerSteamID();
  if(invokersteamid == 0)
  {
      Q_strncpyz(baninfo.adminname, "A Plugin",  sizeof(baninfo.adminname));
      baninfo.adminsteamid = 0;
  }else{
      Cmd_GetInvokerName(baninfo.adminname, sizeof(baninfo.adminname));
      baninfo.adminsteamid = invokersteamid;
  }

  baninfo.expire = (time_t)expire;
  baninfo.duration = (time_t)duration;
  Q_strncpyz(baninfo.message, banreason, sizeof(baninfo.message));

  //Banning
  Q_strncpyz(baninfo.playername, cl->name, sizeof(baninfo.playername));
  baninfo.steamid = cl->steamid;
  baninfo.playerid = cl->playerid;
  baninfo.adr = cl->netchan.remoteAddress;

	SV_AddBan(&baninfo);
  SV_SApiSteamIDToString(cl->playerid, playeridstring, sizeof(playeridstring));
	Com_Printf(CON_CHANNEL_PLUGINS,"Banrecord added for player: %s id: %s\n", cl->name, playeridstring);
	SV_PrintAdministrativeLog( "Banned player: %s id: %s until %s with the following reason: %s", cl->name, playeridstring, endtime, banreason);

  SV_WriteBanTimelimit(duration * 60, timelimitmsg, sizeof(timelimitmsg));
  SV_FormatBanMessage(duration * 60, banmsg, sizeof(banmsg), "%s\nYour ID is: %s\nBanning admin UID is: \n%i\n", banreason, playeridstring, invokerid);

  Com_sprintf(dropmsg, sizeof(dropmsg), "%s%s", banmsg, timelimitmsg);

  SV_PlayerAddBanByip(&cl->netchan.remoteAddress, banmsg, expire);

	SV_DropClient(cl, dropmsg);
}

P_P_F gentity_t* Plugin_GetGentityForEntityNum(int entnum)
{
    if((unsigned int)entnum > MAX_GENTITIES)
    {
        return NULL;
    }
    return &g_entities[entnum];
}

P_P_F client_t* Plugin_GetClientForClientNum(int clientnum)
{
    if((unsigned int)clientnum > sv_maxclients->integer)
    {
        return NULL;
    }
    return &svs.clients[clientnum];
}

P_P_F int Plugin_GetClientNumForClient(client_t* client)
{
    return client - svs.clients;
}

P_P_F int Plugin_FS_SV_WriteFile( const char *qpath, const void *buffer, int size)
{
    return FS_SV_HomeWriteFile( qpath, buffer, size);
}

P_P_F int Plugin_HTTP_SendReceiveData(ftRequest_t* request)
{
  return HTTP_SendReceiveData(request);
}

P_P_F ftRequest_t* Plugin_HTTP_MakeHttpRequest(const char* url, const char* method, byte* requestpayload, int payloadlen, const char* additionalheaderlines)
{
  ftRequest_t* curfileobj;
  msg_t msgdata;
  msg_t *msg;

  if(method == NULL)
  {
      method = "GET";
  }

  if(requestpayload == NULL || payloadlen < 1)
  {
    msg = NULL;
  }else{
    MSG_InitReadOnly(&msgdata, requestpayload, payloadlen );
    msg = &msgdata;
  }

  curfileobj = HTTPRequest(url, method, msg, additionalheaderlines);

  if(curfileobj == NULL)
  {
    Com_Printf(CON_CHANNEL_PLUGINS,"Couldn't connect to server.\n");
    return qfalse;
  }

  return curfileobj;
}

/* blocking */
P_P_F ftRequest_t* Plugin_HTTP_Request(const char* url, const char* method, byte* requestpayload, int payloadlen, const char* additionalheaderlines)
{
  ftRequest_t* curfileobj;
  int transret;
  msg_t msgdata;
  msg_t *msg;

  if(method == NULL)
  {
      method = "GET";
  }

  if(requestpayload == NULL || payloadlen < 1)
  {
    msg = NULL;
  }else{
    MSG_InitReadOnly(&msgdata, requestpayload, payloadlen );
    msg = &msgdata;
  }

  curfileobj = HTTPRequest(url, method, msg, additionalheaderlines);

  if(curfileobj == NULL)
  {
    Com_Printf(CON_CHANNEL_PLUGINS,"Couldn't connect to server.\n");
    return qfalse;
  }

  do
  {
    transret = FileDownloadSendReceive( curfileobj );
    Sys_SleepUSec(20000);
  } while (transret == 0);

  if(transret < 0)
  {
    Com_Printf(CON_CHANNEL_PLUGINS,"Receiving data has failed\n");
    FileDownloadFreeRequest(curfileobj);
    return qfalse;
  }
  return curfileobj;
}

/* blocking */
P_P_F ftRequest_t* Plugin_HTTP_GET(const char* url)
{
  return Plugin_HTTP_Request(url, "GET", NULL, 0, NULL);
}

P_P_F void Plugin_HTTP_FreeObj(ftRequest_t* request)
{
  FileDownloadFreeRequest(request);
}

int mutex_depth = 0;
qboolean enable_threaddebug = qfalse;

P_P_F void Plugin_EnterCriticalSection()
{
  mvabuf;

  if(enable_threaddebug)
  {
  	Sys_Print(va("^6Plugin_EnterCriticalSection for thread: %d Section: [PLUGIN] Depth: %d\n", Sys_GetCurrentThreadId(), mutex_depth) );
  }
  mutex_depth ++;
/*	if(Com_InError() && section != CRITSECT_COM_ERROR && Sys_IsMainThread() == qtrue)
	{
		Com_Error(0, "Error Cleanup");
	}
*/
	Sys_EnterCriticalSectionInternal(CRITSECT_PLUGIN);

  if(enable_threaddebug)
  {
		Sys_Print(va("^6Section [PLUGIN] Locked for thread: %d\n", Sys_GetCurrentThreadId()) );
  }

}

P_P_F void Plugin_LeaveCriticalSection()
{
  mvabuf;

  if(enable_threaddebug)
  {
  	Sys_Print(va("^6Plugin_LeaveCriticalSection for Thread: %d\n", Sys_GetCurrentThreadId()));
  }
  mutex_depth--;

	Sys_LeaveCriticalSectionInternal(CRITSECT_PLUGIN);
}

P_P_F qboolean Plugin_CreateNewThread(void* (*ThreadMain)(void*), threadid_t *tid, void* arg)
{
  mvabuf;
  threadid_t threadId = -1;
  qboolean r;

  if(enable_threaddebug)
  {
    Sys_Print("^6Plugin_CreateNewThread: Creating a new thread\n");
  }

  r = Sys_CreateNewThread(ThreadMain, &threadId, arg);

  if(enable_threaddebug)
  {
    Sys_Print(va("^6Plugin_CreateNewThread: Created a new thread with thread id %d\n", threadId));
  }
  if(tid)
  {
    *tid = threadId;
  }
  return r;
}

P_P_F void Plugin_ExitThread(int code)
{
  mvabuf;
  if(enable_threaddebug)
  {
    Sys_Print(va("^6Plugin_ExitThread: Exit thread %d\n", Sys_GetCurrentThreadId()));
  }
  Sys_ExitThread(code);

}

P_P_F void Plugin_EnableThreadDebug()
{
    enable_threaddebug = qtrue;
}

P_P_F void Plugin_DisableThreadDebug()
{
    enable_threaddebug = qfalse;
}


void Plugin_RunThreadCallbacks()
{
	int i, j;
	plugin_thread_callback_t* tcb;
  for(j = 0; j < MAX_PLUGINS; ++j)
  {
    if(pluginFunctions.plugins[j].loaded == qfalse || pluginFunctions.plugins[j].enabled == qfalse)
    {
      continue;
    }

  	for ( tcb = pluginFunctions.plugins[j].thread_callbacks, i = 0; i < MAX_PLUGINCALLBACKS ; i++)
    {
  		if(tcb->lock == qfalse || tcb->isActive == qfalse)
      {
  			continue;
  		}

  		if(tcb->callbackMain != NULL)
  			tcb->callbackMain(tcb->callback_args[0], tcb->callback_args[1], tcb->callback_args[2], tcb->callback_args[3],
  											 tcb->callback_args[4], tcb->callback_args[5], tcb->callback_args[6], tcb->callback_args[7]);

  		Com_Memset(tcb, 0, sizeof(plugin_thread_callback_t));

  	}
  }
}



void* Plugin_CbThreadStub(void* arg)
{
  mvabuf;

  if(enable_threaddebug)
  {
  	Sys_Print( va("^6Created new Thread: %d\n", Sys_GetCurrentThreadId()) );
  }

	plugin_thread_callback_t *tcb = arg;

	tcb->threadMain(tcb->thread_args[0], tcb->thread_args[1], tcb->thread_args[2], tcb->thread_args[3],
					tcb->thread_args[4], tcb->thread_args[5], tcb->thread_args[6], tcb->thread_args[7]); //real main-thread
	tcb->isActive = qtrue;
	return NULL;
}

P_P_F qboolean Plugin_SetupThreadCallback(void* callbackMain,...)
{
	plugin_thread_callback_t* tcb;
	int i;
	va_list		argptr;

  volatile int pID = PHandler_CallerID();

	if(Sys_IsMainThread() == qtrue)
	{
		Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_SetupThreadCallback: Can not call this function from the main-thread!\n");
		return qfalse;
	}

  if(pluginFunctions.plugins[pID].loaded == qfalse || pluginFunctions.plugins[pID].enabled == qfalse)
  {
    Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_SetupThreadCallback: called from disabled or unknown plugin!\n");
    return qfalse;
  }

	for ( tcb = pluginFunctions.plugins[pID].thread_callbacks, i = 0; i < MAX_PLUGINCALLBACKS ; i++, tcb++) {
		if(Sys_ThreadisSame(tcb->tid))
		{
			break;
		}
	}
	if(i == MAX_PLUGINCALLBACKS)
	{
		Com_PrintError(CON_CHANNEL_PLUGINS,"Couldn't find this thread\n");
		return qfalse;
	}

	va_start(argptr, callbackMain);

	for(i = 0; i < MAX_PLUGINCALLBACKARGS; i++)
		tcb->callback_args[i] = va_arg(argptr, void*);

	va_end(argptr);

	tcb->callbackMain = callbackMain;
	return qtrue;

}

P_P_F qboolean Plugin_CreateCallbackThread(void* threadMain,...)
{
  volatile int pID = PHandler_CallerID();
	plugin_thread_callback_t* tcb;

	int i;
	va_list		argptr;
	qboolean	success;

	if(Sys_IsMainThread() == qfalse)
	{
		Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_CreateCallbackThread: Can only call this function from the main-thread!\n");
		return qfalse;
	}

  if(pluginFunctions.plugins[pID].loaded == qfalse || pluginFunctions.plugins[pID].enabled == qfalse)
  {
    Com_PrintError(CON_CHANNEL_PLUGINS,"Plugin_CreateCallbackThread: called from disabled or unknown plugin!\n");
    return qfalse;
  }

	for ( tcb = pluginFunctions.plugins[pID].thread_callbacks, i = 0; i < MAX_PLUGINCALLBACKS ; i++, tcb++)
  {
		if(tcb->threadMain == NULL)
		{
			break;
		}
	}
	if(i == MAX_PLUGINCALLBACKS)
	{
		Com_PrintError(CON_CHANNEL_PLUGINS,"Couldn't create a callback-thread. Max handles exceeded\n");
		return qfalse;
	}

	va_start(argptr, threadMain);

	for(i = 0; i < MAX_PLUGINCALLBACKARGS; i++)
		tcb->thread_args[i] = va_arg(argptr, void*);

	va_end(argptr);

	tcb->lock = qtrue;
	tcb->isActive = qfalse;
	tcb->threadMain = threadMain;
	tcb->callbackMain = NULL;
	success = Sys_CreateNewThread(Plugin_CbThreadStub, &tcb->tid, tcb);
	if(success == qfalse)
		tcb->isActive = qtrue;
	return success;
}


P_P_F int Plugin_GetPluginID() //Only from mainthread callable
{
    int PID = PHandler_CallerID();
    return PID;
}

/*
=============
Com_Printf

Both client and server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
P_P_F void Plugin_Printf( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	va_start (argptr,fmt);
	Q_vsnprintf (msg, sizeof(msg), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( CON_CHANNEL_PLUGINS, msg, MSG_DEFAULT);
}


/*
=============
Com_PrintWarning

Server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
P_P_F void Plugin_PrintWarning( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	memcpy(msg,"^3Warning: ", 11);

	va_start (argptr,fmt);
	Q_vsnprintf (&msg[11], (sizeof(msg)-12), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( CON_CHANNEL_PLUGINS, msg, MSG_WARNING);
}


/*
=============
Com_PrintError

Server can use this, and it will output
to the apropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
=============
*/
P_P_F void Plugin_PrintError( const char *fmt, ... ) {
	va_list		argptr;
	char		msg[MAXPRINTMSG];

	memcpy(msg,"^1Error: ", 10);

	va_start (argptr,fmt);
	Q_vsnprintf (&msg[9], (sizeof(msg)-10), fmt, argptr);
	va_end (argptr);

        Com_PrintMessage( CON_CHANNEL_PLUGINS, msg, MSG_ERROR);
}

/*
================
Com_DPrintf

A Com_Printf that only shows up if the "developer" cvar is set
================
*/
P_P_F void Plugin_DPrintf( const char *fmt, ...) {
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

        Com_PrintMessage( CON_CHANNEL_PLUGINS, msg, MSG_DEFAULT);
}


P_P_F level_locals_t* Plugin_GetLevelBase( )
{
    return &level;
}
