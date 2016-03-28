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


#include "q_shared.h"
#include "qcommon_io.h"
#include "qcommon_mem.h"
#include "qcommon.h"
#include "huffman.h"
#include "msg.h"
#include "server.h"
#include "net_game_conf.h"
#include "misc.h"
#include "g_sv_shared.h"
#include "plugin_handler.h"
#include "q_platform.h"
#include "sys_main.h"
#include "punkbuster.h"
#include "scr_vm.h"
#include "cmd.h"
#include "sys_thread.h"
#include "hl2rcon.h"
#include "sv_auth.h"

#include "sapi.h"


#include <stdint.h>
#include <stdarg.h>
#include <string.h>


static void SV_CloseDownload( client_t *cl );

/*
=================
SV_GetChallenge

A "getchallenge" OOB command has been received
Returns a challenge number that can be used
in a subsequent connectResponse command.
We do this to prevent denial of service attacks that
flood the server with invalid connection IPs.  With a
challenge, they must give a valid IP address.

If we are authorizing, a challenge request will cause a packet
to be sent to the authorize server.

When an authorizeip is returned, a challenge response will be
sent to that ip.

ioquake3: we added a possibility for clients to add a challenge
to their packets, to make it more difficult for malicious servers
to hi-jack client connections.
Also, the auth stuff is completely disabled for com_standalone games
as well as IPv6 connections, since there is no way to use the
v4-only auth server for these new types of connections.
=================
*/

__optimize3 __regparm1 void SV_GetChallenge(netadr_t *from)
{
	int	clientChallenge;
	int	challenge;

	if(from->type == NA_IP && svse.authorizeAddress.type != NA_DOWN)
	{
		/* This part is required to keep the server registered on the masterserver */
		// look up the authorize server's IP
		if(svse.authorizeAddress.type == NA_BAD)
		{
			Com_Printf( "Resolving %s\n", AUTHORIZE_SERVER_NAME );
			if (NET_StringToAdr(AUTHORIZE_SERVER_NAME, &svse.authorizeAddress, NA_IP))
			{
				svse.authorizeAddress.port = BigShort( PORT_AUTHORIZE );
				Com_Printf( "%s resolved to %s\n", AUTHORIZE_SERVER_NAME, NET_AdrToString(&svse.authorizeAddress));
			}else{
				svse.authorizeAddress.type = NA_DOWN;
			}
		}
		if(svse.authorizeAddress.type == NA_IP && from->type == NA_IP && NET_CompareBaseAdr(from, &svse.authorizeAddress))
		{
			//Reset the default socket so that this is forwarded to all sockets
			if(NET_GetDefaultCommunicationSocket() == NULL){
				NET_RegisterDefaultCommunicationSocket(from);
				svse.authorizeAddress.sock = from->sock;
			}
			from->port = BigShort(PORT_AUTHORIZE);
			challenge = NET_CookieHash(from);
			NET_OutOfBandPrint( NS_SERVER, from, "getIpAuthorize %i %s \"\" 0", challenge, NET_AdrToStringShort(from));
			return;
		}
	}
	challenge = NET_CookieHash(from);
	clientChallenge = atoi(SV_Cmd_Argv(1));
	NET_OutOfBandPrint(NS_SERVER, from, "challengeResponse %d %d 0 xproto", challenge, clientChallenge);

}



/*
==================
SV_DirectConnect

A "connect" OOB command has been received
==================
*/

__optimize3 __regparm1 void SV_DirectConnect( netadr_t *from ) {
	char		userinfo[MAX_INFO_STRING];
//	int			reconnectTime;

	int			j;
	int			i, n;
	client_t		*cl, *newcl;
	int			count;
	char			nick[33];
	char			ip_str[128];
	int			clientNum;
	int			version;
	unsigned int		qport;
	int			challenge;
	char			*password;
	char			denied[MAX_STRING_CHARS];
	const char		*denied2;
	qboolean		canreserved;

	Q_strncpyz( userinfo, SV_Cmd_Argv(1), sizeof(userinfo) );
	challenge = atoi( Info_ValueForKey( userinfo, "challenge" ) );
	qport = atoi( Info_ValueForKey( userinfo, "qport" ) );

	if(challenge != NET_CookieHash(from))
	{
		NET_OutOfBandPrint( NS_SERVER, from, "error\nNo or bad challenge for address.\n" );
		return;
	}

	version = atoi( Info_ValueForKey( userinfo, "protocol" ));

#ifdef DEVRELEASE
	char* xversion;

	xversion = Info_ValueForKey( userinfo, "xver");
	if(Q_stricmp(xversion, COD4X_SUBVERSION) && version > 6)
	{
		NET_OutOfBandPrint( NS_SERVER, from, "error\nBad subversion. Server expects subversion %s but client is %s\n", COD4X_SUBVERSION, xversion );
		return;
	}

#endif

	newcl = NULL;

	// quick reject
	for (n=0, cl=svs.clients; n < sv_maxclients->integer; n++, cl++) {

		if ( NET_CompareBaseAdr( from, &cl->netchan.remoteAddress ) && (cl->netchan.qport == qport || from->port == cl->netchan.remoteAddress.port )){

			/*
			reconnectTime = (svs.time - cl->lastConnectTime);
			if (reconnectTime < (sv_reconnectlimit->integer * 1000)) {
				Com_Printf("%s -> reconnect rejected : too soon\n", NET_AdrToString (from));
				NET_OutOfBandPrint( NS_SERVER, from, "print\nReconnect limit in effect... (%i)\n",
							(sv_reconnectlimit->integer - (reconnectTime / 1000)));
				return;

			}else{
				*/
				SV_DropClient( cl, "silent" );
				newcl = cl;
				Com_Printf("reconnected: %s\n", NET_AdrToString(from));
				cl->lastConnectTime = svs.time;
				break;
/*			}*/
		}else if ( NET_CompareBaseAdr( from, &cl->netchan.remoteAddress ) && cl->state == CS_CONNECTED){
			NET_OutOfBandPrint( NS_SERVER, from,
				"error\nConnection refused:\nAn uncompleted connection from %s has been detected\nPlease try again later\n",
				NET_AdrToString(&cl->netchan.remoteAddress));
			Com_Printf("Rejected connection from %s. This is a Fake-Player-DoS protection\n", NET_AdrToString(&cl->netchan.remoteAddress));
			return;
		}
	}

	// force the IP key/value pair so the game can filter based on ip
	Com_sprintf(ip_str, sizeof(ip_str), "%s", NET_AdrToConnectionString( from ));
	Info_SetValueForKey( userinfo, "ip", ip_str );


	Q_strncpyz(nick, Info_ValueForKey( userinfo, "name" ), 33);

	denied[0] = '\0';

	SV_PlayerBannedByip(from, denied, sizeof(denied));
	if(denied[0]){
            NET_OutOfBandPrint( NS_SERVER, from, "error\n%s\n", denied);
		Com_Printf("Rejecting a connection from a banned network address: %s\n", NET_AdrToString(from));
	    return;
	}

	if ( version != sv_protocol->integer ) {

#ifdef COD4X18UPDATE
		if(version < 7)
		{
			Com_Printf("Have to fix up old client which reports version %d\n", version);
		}else{
#endif
			if(version < 8)
			{
				NET_OutOfBandPrint( NS_SERVER, from, "error\nThis server requires protocol version: %d\n"
							    "Please install the inofficial cod4x-update you can find at http://cod4x.me\n",
							    sv_protocol->integer);
			}else{
#ifdef BETA_RELEASE
				NET_OutOfBandPrint( NS_SERVER, from, "error\nThis server requires protocol version: %d\n"
							    "This is a beta server. Sorry, but you can not connect to it with a release build of CoD4X.\n",
							     sv_protocol->integer);
#else
				NET_OutOfBandPrint( NS_SERVER, from, "error\nThis server requires protocol version: %d\n"
							    "Please restart CoD4 and see on the main-menu if a new update is available\n"
							    "{OOBErrorParser protocolmismatch CoD4X" Q3_VERSION " %d}", sv_protocol->integer, sv_protocol->integer);
#endif
			}
			Com_Printf("rejected connect from version %i\n", version);
			return;

#ifdef COD4X18UPDATE
		}
#endif
	}


	// find a client slot:
	// if "sv_privateClients" is set > 0, then that number
	// of client slots will be reserved for connections that
	// have "password" set to the value of "sv_privatePassword"
	// Info requests will report the maxclients as if the private
	// slots didn't exist, to prevent people from trying to connect
	// to a full server.
	// This is to allow us to reserve a couple slots here on our
	// servers so we can play without having to kick people.

	//Get new slot for client
	// check for privateClient password
	password = Info_ValueForKey( userinfo, "password" );
	if(!newcl)
	{
		if ( !strcmp( password, sv_privatePassword->string ))
		{
			canreserved = qtrue;
		}else{
			canreserved = qfalse;
		}

		PHandler_Event(PLUGINS_ONPLAYERWANTRESERVEDSLOT, from, "", userinfo, 0, &canreserved);
		if ( canreserved == qtrue)
		{
			for ( j = 0; j < sv_privateClients->integer ; j++) {
				cl = &svs.clients[j];
				if (cl->state == CS_FREE) {
					newcl = cl;
					break;
				}
			}
		}
	}
	if(*sv_password->string && Q_strncmp(sv_password->string, password, 32)){
		NET_OutOfBandPrint( NS_SERVER, from, "error\nThis server has set a join-password\n^1Invalid Password\n");
		Com_Printf("Connection rejected from %s - Invalid Password\n", NET_AdrToString(from));
		return;
	}
	//Process queue
	for(i = 0 ; i < 10 ; i++){//Purge all older players from queue
	    if(svse.connectqueue[i].lasttime+21 < Com_GetRealtime()){
		svse.connectqueue[i].lasttime = 0;
		svse.connectqueue[i].firsttime = 0;
		svse.connectqueue[i].challengeslot = 0;
		svse.connectqueue[i].attempts = 0;
	    }
	}
	for(i = 0 ; i < 10 ; i++){//Move waiting players up in queue if there is a purged slot
	    if(svse.connectqueue[i].lasttime != 0){
		if(svse.connectqueue[i+1].challengeslot == svse.connectqueue[i].challengeslot){
		    svse.connectqueue[i+1].lasttime = 0;
		    svse.connectqueue[i+1].firsttime = 0;
		    svse.connectqueue[i+1].challengeslot = 0;
		    svse.connectqueue[i+1].attempts = 0;
		}
	    }else{
		Com_Memcpy(&svse.connectqueue[i],&svse.connectqueue[i+1],(9-i)*sizeof(connectqueue_t));
	    }
	}
	for(i = 0 ; i < 10 ; i++){//Find highest slot or the one which is already assigned to this player
	    if(svse.connectqueue[i].firsttime == 0 || svse.connectqueue[i].challengeslot == challenge){
			break;
	    }
	}

	if(i == 0 && !newcl){
		for ( j = sv_privateClients->integer; j < sv_maxclients->integer ; j++) {
			cl = &svs.clients[j];
			if (cl->state == CS_FREE) {
				newcl = cl;
				svse.connectqueue[0].lasttime = 0;
				svse.connectqueue[0].firsttime = 0;
				svse.connectqueue[0].challengeslot = 0;
				svse.connectqueue[0].attempts = 0;
				break;
			}
		}
	}

	if ( !newcl ) {
		if(i == 10){
		    NET_OutOfBandPrint( NS_SERVER, from, "error\nServer is full. More than 10 players are in queue.\n" );
		    return;
		}else{
		    NET_OutOfBandPrint( NS_SERVER, from, "print\nServer is full. %i players wait before you.\n",i);
		}
		if(svse.connectqueue[i].attempts > 30){
		    NET_OutOfBandPrint( NS_SERVER, from, "error\nServer is full. %i players wait before you.\n",i);
		    svse.connectqueue[i].attempts = 0;
		}else if(svse.connectqueue[i].attempts > 15 && i > 1){
		    NET_OutOfBandPrint( NS_SERVER, from, "error\nServer is full. %i players wait before you.\n",i);
		    svse.connectqueue[i].attempts = 0;
		}else if(svse.connectqueue[i].attempts > 5 && i > 3){
		    NET_OutOfBandPrint( NS_SERVER, from, "error\nServer is full. %i players wait before you.\n",i);
		    svse.connectqueue[i].attempts = 0;
		}
		if(svse.connectqueue[i].firsttime == 0){
		    svse.connectqueue[i].firsttime = Com_GetRealtime();
		}
		svse.connectqueue[i].attempts++;
		svse.connectqueue[i].lasttime = Com_GetRealtime();
		svse.connectqueue[i].challengeslot = challenge;

		return;
	}


	int bckbegintime;

	if(n < sv_maxclients->integer && newcl->lastPacketTime  + 10000 > svs.time)
	{
		bckbegintime = newcl->updateBeginTime;
	}else{
		bckbegintime = 0;
	}


#ifdef COD4X18UPDATE
	if(version < 7 && newcl->challenge == challenge && newcl->state && newcl->updateconnOK)
	{
		Com_Memset(newcl, 0x00, sizeof(client_t));
		newcl->updateconnOK = qtrue;

	}else{
#endif
		Com_Memset(newcl, 0x00, sizeof(client_t));

#ifdef COD4X18UPDATE
	}
#endif

	newcl->updateBeginTime = bckbegintime;

	newcl->power = 0; //Sets the default power for the client
        newcl->challenge = challenge; // save the challenge
	// (build a new connection
	// accept the new client
	// this is the only place a client_t is ever initialized)

  clientNum = newcl - svs.clients;

  denied[0] = '\0';

  // save the userinfo
  Q_strncpyz(newcl->userinfo, userinfo, sizeof(newcl->userinfo) );

  PHandler_Event(PLUGINS_ONPLAYERCONNECT, clientNum, from, "", userinfo, 0, denied, sizeof(denied));

  if(denied[0]){
    NET_OutOfBandPrint( NS_SERVER, from, "error\n%s", denied);
		Com_Printf("Rejecting a connection from a ? player\n");

    svse.connectqueue[i].lasttime = 0;
    svse.connectqueue[i].firsttime = 0;
    svse.connectqueue[i].challengeslot = 0;
		svse.connectqueue[i].attempts = 0;
		return;
  }

	newcl->unsentVoiceData = 0;
	newcl->hasVoip = 1;
	newcl->gentity = SV_GentityNum(clientNum);
	newcl->clscriptid = Scr_AllocArray();
	newcl->protocol = version;

#ifdef COD4X18UPDATE
	if(newcl->protocol != sv_protocol->integer)
	{
		newcl->needupdate = qtrue;
	}else{
		newcl->needupdate = qfalse;
	}

	if(!newcl->needupdate)
	{
#endif
		// get the game a chance to reject this connection or modify the userinfo
		denied2 = ClientConnect(clientNum, newcl->clscriptid);

		if ( denied2 ) {
			NET_OutOfBandPrint( NS_SERVER, from, "error\n%s\n", denied2 );
			Com_Printf("Game rejected a connection: %s\n", denied2);
			SV_FreeClientScriptId(newcl);
			return;
		}


#ifdef COD4X18UPDATE
	}
#endif

	// save the address
	// init the netchan queue
	Netchan_Setup( NS_SERVER, &newcl->netchan, *from, qport,
			 newcl->unsentBuffer, sizeof(newcl->unsentBuffer),
			 newcl->fragmentBuffer, sizeof(newcl->fragmentBuffer));

#ifdef COD4X18UPDATE

	if(!newcl->needupdate)
	{

#endif


		if(SV_SetupReliableMessageProtocol(newcl) == qfalse)
		{
			NET_OutOfBandPrint( NS_SERVER, from, "error\nServer is out of memory\n");
			Com_Printf("Server is out of memory. Refused to accept client %s\n", nick);
			SV_FreeClientScriptId(newcl);
			return;
		}

		Com_Printf( "Going from CS_FREE to CS_CONNECTED for %s num %i from: %s\n", nick, clientNum, NET_AdrToConnectionString(from));

#ifdef COD4X18UPDATE
	}
#endif

	newcl->state = CS_CONNECTED;
	newcl->nextSnapshotTime = svs.time;
	newcl->lastPacketTime = svs.time;
	newcl->lastConnectTime = svs.time;

	Q_strncpyz(newcl->xversion, Info_ValueForKey( userinfo, "xver"), sizeof(newcl->xversion));

#ifdef COD4X18UPDATE
	if(newcl->needupdate)
	{
		newcl->state = CS_ZOMBIE;
		Com_Printf( "Going from CS_FREE to CS_ZOMBIE for %s num %i from: %s\n", nick, clientNum, NET_AdrToConnectionString(from));
		newcl->nextSnapshotTime = 0x7fffffff;

	}else{
		Q_strncpyz(newcl->name, nick, sizeof(newcl->name));
		SV_UserinfoChanged(newcl);
	}

	if(!newcl->updateconnOK && newcl->needupdate)
	{
		if(newcl->updateBeginTime == 0)
		{
			newcl->updateBeginTime = svs.time;
		}
		if(svs.time - newcl->updateBeginTime > 18000)
		{
			NET_OutOfBandPrint( NS_SERVER, from, "error\n%s\n", "Can not connect to server because the update backend is unavailable\nTo join this server you have to install the required update manually.\nPlease visit www.cod4x.me/clupdate");
			Com_Printf("Rejected client %s because updatebackend is unavailable\n", nick);
			SV_FreeClientScriptId(newcl);
			Com_Memset(newcl, 0, sizeof(client_t));
			return;
		}
		SV_ConnectWithUpdateProxy(newcl);
		return;
	}

#else
	Q_strncpyz(newcl->name, nick, sizeof(newcl->name));
	SV_UserinfoChanged(newcl);

#endif

#ifdef COD4X18UPDATE

	// send the connect packet to the client
	if(sv_modStats->boolean && !newcl->needupdate){

#else

	if(sv_modStats->boolean){

#endif

	    NET_OutOfBandPrint( NS_SERVER, from, "connectResponse %s", fs_gameDirVar->string);
	}else{
	    NET_OutOfBandPrint( NS_SERVER, from, "connectResponse");
	}
	// when we receive the first packet from the client, we will
	// notice that it is from a different serverid and that the
	// gamestate message was not just sent, forcing a retransmit
	newcl->gamestateMessageNum = -1; //newcl->gamestateMessageNum = -1;


	// if this was the first client on the server, or the last client
	// the server can hold, send a heartbeat to the master.
	for (j=0, cl=svs.clients, count=0; j < sv_maxclients->integer; j++, cl++) {
		if (cl->state >= CS_CONNECTED ) {
			count++;
		}
	}
	if ( count == 1 || count == sv_maxclients->integer ) {
		SV_Heartbeat_f();
	}
}


#ifdef COD4X18UPDATE


__optimize3 __regparm2 void SV_ReceiveStats(netadr_t *from, msg_t* msg){

	unsigned short qport;
	client_t *cl;
	byte var_02;

	qport = MSG_ReadShort( msg );
	// find which client the message is from
	cl = SV_ReadPackets(from, qport);
	if(cl == NULL)
	{
		Com_DPrintf("SV_ReceiveStats: Received statspacket from disconnected remote client: %s qport: %d\n", NET_AdrToString(from), qport);
		return;
	}

	cl->receivedstats = 0x7F;
	var_02 = cl->receivedstats;
	var_02 = ~var_02;
	var_02 = var_02 & 127;
	cl->lastPacketTime = svs.time;

	NET_OutOfBandPrint( NS_SERVER, from, "statResponse %i", var_02 );
}

#endif


/*
client->receivedstats reset by SV_SpawnServer
*/
void SV_ReceiveStats_f(client_t* cl, msg_t* msg)
{
	int type, size;
	type = MSG_ReadByte(msg);
	if(type == 0)
	{
		cl->receivedstats = 1;
		return;
	}
	if(type != 1)
	{
		return;
	}
	size = MSG_ReadLong(msg);
	if(size != sizeof(cl->stats))
	{
		SV_DropClient(cl, "Received stats data of invalid length");
	}
	if(cl->receivedstats == 1)
	{
		SV_DropClient(cl, "Received stats although it was not requested from client");
	}
	MSG_ReadData(msg, &cl->stats, sizeof(cl->stats));
	Com_Printf("Received packet %i of stats data\n", 0);
	cl->receivedstats = 1;
}


qboolean SV_RequestStats(client_t* client)
{
	msg_t msg;
	byte data[1024];
	if((signed char)client->receivedstats == -1)
	{
		return qfalse;
	}
	if(client->receivedstats == 1)
	{
		return qtrue;
	}
	MSG_Init(&msg, data, sizeof(data));
	MSG_WriteLong(&msg, 0);
	MSG_WriteLong(&msg, clc_statscommands);
	MSG_WriteByte(&msg, 0);
	SV_SendReliableServerCommand(client, &msg);
	client->receivedstats = -1;
	return qfalse;
}


/*
=================
SV_UserinfoChanged

Pull specific info from a newly changed userinfo string
into a more C friendly form.
=================
*/
void SV_UserinfoChanged( client_t *cl ) {
	char	*val;
	char	ip[128];
	int	i;
	int	len;

/*
	if(cl->state == CS_CONNECTED)
	{

		// name for C code
		Q_strncpyz( cl->name, Info_ValueForKey (cl->userinfo, "name"), sizeof(cl->name) );
		if(!Q_isprintstring(cl->name) || strstr(cl->name,"&&") || strstr(cl->name,"///")){
			Com_sprintf(cl->name, 16, "CID_%i", cl - svs.clients);
			cl->usernamechanged = UN_NEEDUID;
			Info_SetValueForKey( cl->userinfo, "name", cl->name);
		}else{
			cl->usernamechanged = UN_VERIFYNAME;
		}
		Q_strncpyz(cl->shortname, cl->name, sizeof(cl->shortname));

	}else{
*/
	Q_strncpyz(cl->shortname, cl->name, sizeof(cl->shortname));
/*
	}
*/
	// rate command
	// if the client is on the same subnet as the server and we aren't running an
	// internet public server, assume they don't need a rate choke
	if ( Sys_IsLANAddress( &cl->netchan.remoteAddress )) {
		cl->rate = 1048576;	// lans should not rate limit
	} else {
		val = Info_ValueForKey (cl->userinfo, "rate");
		if (strlen(val)) {
			i = atoi(val);
			cl->rate = i;
			if (cl->rate < 2500) {
				cl->rate = 2500;
			} else if (cl->rate >= 25000) {
				cl->rate = sv_maxRate->integer;
			}
		} else {
			cl->rate = 2500;
		}
	}
	// snaps command
	val = Info_ValueForKey (cl->userinfo, "snaps");

	if(strlen(val))
	{
		i = atoi(val);

		if(i < 10)
			i = 10;
		else if(i > sv_fps->integer)
			i = sv_fps->integer;
		else if(i == 30)
			i = sv_fps->integer;

		cl->snapshotMsec = 1000 / i;
	}
	else
		cl->snapshotMsec = 50;

	val = Info_ValueForKey(cl->userinfo, "cl_voice");
	cl->hasVoip = atoi(val);

	// TTimo
	// maintain the IP information
	// the banning code relies on this being consistently present
	if( NET_IsLocalAddress(cl->netchan.remoteAddress) )
		Q_strncpyz(ip,  "localhost", sizeof(ip));
	else
		Com_sprintf(ip, sizeof(ip), "%s", NET_AdrToConnectionString( &cl->netchan.remoteAddress ));

	val = Info_ValueForKey( cl->userinfo, "ip" );

	if( val[0] )
		len = strlen( ip ) - strlen( val ) + strlen( cl->userinfo );
	else
		len = strlen( ip ) + 4 + strlen( cl->userinfo );

	if( len >= MAX_INFO_STRING )
		SV_DropClient( cl, "userinfo string length exceeded" );
	else
		Info_SetValueForKey( cl->userinfo, "ip", ip );

	cl->wwwDownload = qfalse;
	if(Info_ValueForKey(cl->userinfo, "cl_wwwDownload"))
		cl->wwwDownload = qtrue;

	PHandler_Event(PLUGINS_ONCLIENTUSERINFOCHANGED, cl);

}


void SV_GetUsername(int clientNum, char* name, int maxlen)
{
    if(clientNum < 0 || clientNum >= sv_maxclients->integer)
    {
        name[0] = '\0';
    }else{
        Q_strncpyz(name, svs.clients[clientNum].name, maxlen);
    }
}

/*
==================
SV_UpdateUserinfo_f
==================
*//*
static void SV_UpdateUserinfo_f( client_t *cl ) {
	Q_strncpyz( cl->userinfo, Cmd_Argv(1), sizeof(cl->userinfo) );

	SV_UserinfoChanged( cl );
	// call prog code to allow overrides
	VM_Call( gvm, GAME_CLIENT_USERINFO_CHANGED, cl - &svs.clients );
}*/


/*
=====================
SV_DropClient

Called when the player is totally leaving the server, either willingly
or unwillingly.  This is NOT called if the entire server is quiting
or crashing -- SV_FinalMessage() will handle that
=====================
*/

void SV_CloseAllClientHandles(client_t *drop)
{
	if(drop->demorecording)
	{
		SV_StopRecord(drop);
	}

	SV_NotifySApiDisconnect(drop);
	SV_CloseDownload(drop);
	G_DestroyAdsForPlayer(drop);
	SV_FreeClient(drop);
	SV_DisconnectReliableMessageProtocol(drop);


}


__cdecl void SV_DropClientInternal( client_t *drop, const char *reason, qboolean notifyOthers ) {
	int i;
	int clientnum;
	char var_01[2];
	const char *dropreason;
	char clientName[64];
	char ssti[128];
	char psti[128];

	if ( drop->state <= CS_ZOMBIE ) {
		return;     // already dropped
	}
#ifdef COD4X18UPDATE
	if ( drop->needupdate ) {
		drop->state = CS_ZOMBIE;
		return;
	}
#endif

	Q_strncpyz(clientName, drop->name, sizeof(clientName));

	clientnum = drop - svs.clients;

	SV_SApiSteamIDToString(drop->playerid, psti, sizeof(psti));
	if(drop->steamid > 0)
	{
		SV_SApiSteamIDToString(drop->steamid, ssti, sizeof(ssti));
		SV_EnterLeaveLog("^4Client %s %s ^4left this server from slot %d with steamid %s playerid %s", drop->name, NET_AdrToString(&drop->netchan.remoteAddress), clientnum, ssti, psti);
	}else
		SV_EnterLeaveLog("^4Client %s %s ^4left this server from slot %d with playerid %s", drop->name, NET_AdrToString(&drop->netchan.remoteAddress), clientnum, psti);

	clientnum = drop - svs.clients;

	if(!reason)
		reason = "Unknown reason for dropping";


	Com_Printf("Player %s^7, %i dropped: %s\n", clientName, clientnum, reason);
	HL2Rcon_EventClientLeave(clientnum);

	PHandler_Event(PLUGINS_ONPLAYERDC, drop, reason);	// Plugin event

	SV_CloseAllClientHandles(drop);



	if(!Q_stricmp(reason, "silent")){
		//Just disconnect him and don't tell anyone about it
		if(drop->netchan.remoteAddress.type == NA_BOT){
			drop->state = CS_FREE;  // become free now
			drop->netchan.remoteAddress.type = 0; //Reset the botflag
			Com_DPrintf( "Going to CS_FREE for Bot %s\n", clientName );
		}else{

			drop->state = CS_ZOMBIE;        // become free in a few seconds
			Com_DPrintf( "Going to CS_ZOMBIE for %s\n", clientName );
		}
		return;
	}


	if(SEH_StringEd_GetString( reason )){
		var_01[0] = 0x14;
		var_01[1] = 0;
	}else{
		var_01[0] = 0;
	}

	if(!Q_stricmp(reason, "EXE_DISCONNECTED")){
		dropreason = "EXE_LEFTGAME";
	} else {
		dropreason = reason;
	}

	// tell everyone why they got dropped
	if(notifyOthers)
	{
		SV_SendServerCommand(NULL, "%c \"\x15%s^7 %s%s\"\0", 0x65, clientName, var_01, dropreason);
	}

	SV_SendServerCommandNoLoss(NULL, "%c %d", 0x4b, clientnum);
	// add the disconnect command

	drop->reliableSent = drop->reliableSequence = drop->reliableAcknowledge;	//Reset unsentBuffer and Sequence to ommit the outstanding junk from beeing transmitted
	drop->netchan.unsentFragments = qfalse;
	SV_SendServerCommandNoLoss( drop, "%c \"%s\" PB\0", 0x77, dropreason);

	if(drop->netchan.remoteAddress.type == NA_BOT){
		drop->state = CS_FREE;  // become free now
		drop->netchan.remoteAddress.type = 0; //Reset the botflag
		Com_DPrintf( "Going to CS_FREE for Bot %s\n", clientName );
	}else{

		drop->state = CS_ZOMBIE;        // become free in a few seconds
		Com_DPrintf( "Going to CS_ZOMBIE for %s\n", clientName );
	}


	// if this was the last client on the server, send a heartbeat
	// to the master so it is known the server is empty
	// send a heartbeat now so the master will get up to date info
	// if there is already a slot for this ip, reuse it
	for ( i = 0 ; i < sv_maxclients->integer ; i++ ) {
		if ( svs.clients[i].state >= CS_CONNECTED ) {
			break;
		}
	}
	if ( i == sv_maxclients->integer ) {
		SV_Heartbeat_f();
	}
}

__cdecl void SV_DropClient( client_t *drop, const char *reason )
{

    SV_DropClientInternal( drop, reason, qtrue );

}

__cdecl void SV_DropClientNoNotify( client_t *drop, const char *reason )
{

    SV_DropClientInternal( drop, reason, qfalse );

}







/*
==================
SV_UserMove

The message usually contains all the movement commands
that were in the last three packets, so that the information
in dropped packets can be recovered.

On very fast clients, there may be multiple usercmd packed into
each of the backup packets.
==================
*/
__optimize3 __regparm3 void SV_UserMove( client_t *cl, msg_t *msg, qboolean delta ) {
	int i, key, clientNum;
	unsigned int *ackTime;
	unsigned int sysTime;
	int cmdCount;
	usercmd_t nullcmd;
	usercmd_t cmds[MAX_PACKET_USERCMDS];
	usercmd_t   *cmd, *oldcmd;
	playerState_t *ps;
//	extclient_t *extcl;

	if ( delta ) {
		cl->deltaMessage = cl->messageAcknowledge;
	} else {
		cl->deltaMessage = -1;
	}

	if(cl->reliableSequence - cl->reliableAcknowledge >= MAX_RELIABLE_COMMANDS){
		return;
	}

	cmdCount = MSG_ReadByte( msg );

	if ( cmdCount < 1 ) {
		Com_Printf( "cmdCount < 1\n" );
		return;
	}

	if ( cmdCount > MAX_PACKET_USERCMDS ) {
		Com_Printf( "cmdCount > MAX_PACKET_USERCMDS\n" );
		return;
	}

	// save time for ping calculation
	ackTime = &cl->frames[ cl->messageAcknowledge & PACKET_MASK ].messageAcked;
	sysTime = Sys_Milliseconds();
	if(*ackTime == 0xFFFFFFFF)
		*ackTime = sysTime;


	clientNum = cl - svs.clients;
//	extcl = &svse.extclients[clientNum];

	// use the checksum feed in the key
	key = sv.checksumFeed;
	// also use the message acknowledge
	key ^= cl->messageAcknowledge;
	// also use the last acknowledged server command in the key
//	key ^= Com_HashKey( extcl->reliableCommands[ cl->reliableAcknowledge & ( MAX_RELIABLE_COMMANDS - 1 ) ].command, 32 );
	key ^= Com_HashKey( cl->reliableCommands[ cl->reliableAcknowledge & ( MAX_RELIABLE_COMMANDS - 1 ) ].command, 32 );

	ps = SV_GameClientNum( clientNum );

	oldcmd = &nullcmd;

	MSG_SetDefaultUserCmd(ps, oldcmd);


	for ( i = 0 ; i < cmdCount ; i++ ) {
		cmd = &cmds[i];
		MSG_ReadDeltaUsercmdKey( msg, key, oldcmd, cmd );
		if( ! BG_IsWeaponValid(ps, cmd->weapon) ){
			cmd->weapon = ps->weapon;
		}
		if( ! BG_IsWeaponValid(ps, cmd->offHandIndex) ){
			cmd->offHandIndex = ps->offHandIndex;
		}

		oldcmd = cmd;
	}

	cl->unknownUsercmd1 = MSG_ReadLong(msg);
	cl->unknownUsercmd2 = MSG_ReadLong(msg);
	cl->unknownUsercmd3 = MSG_ReadLong(msg);
	cl->unknownUsercmd4 = MSG_ReadLong(msg);


	// TTimo
	// catch the no-cp-yet situation before SV_ClientEnterWorld
	// if CS_ACTIVE, then it's time to trigger a new gamestate emission
	// if not, then we are getting remaining parasite usermove commands, which we should ignore

	if ( sv_pure->integer != 0 && cl->pureAuthentic == 0 /*&& !cl->gotCP*/ ) {
		if ( cl->state == CS_ACTIVE ) {
			// we didn't get a cp yet, don't assume anything and just send the gamestate all over again
			Com_DPrintf( "%s: didn't get cp command, resending gamestate\n", cl->name);
			SV_SendClientGameState( cl );
		}
		return;
	}

	// if this is the first usercmd we have received
	// this gamestate, put the client into the world
	if ( cl->state == CS_PRIMED ) {
		SV_ClientEnterWorld( cl, &cmds[0] );
		return;
		// the moves can be processed normaly
	}

	if ( cl->state != CS_ACTIVE ) {
		cl->deltaMessage = -1;
		return;
	}

	// usually, the first couple commands will be duplicates
	// of ones we have previously received, but the servertimes
	// in the commands will cause them to be immediately discarded
	for ( i =  0 ; i < cmdCount ; i++ ) {
		// if this is a cmd from before a map_restart ignore it
		if ( cmds[i].serverTime > cmds[cmdCount - 1].serverTime ) {
			continue;
		}
		// extremely lagged or cmd from before a map_restart
		//if ( cmds[i].serverTime > svs.time + 3000 ) {
		//	continue;
		//}
		// don't execute if this is an old cmd which is already executed
		// these old cmds are included when cl_packetdup > 0
		if ( cmds[i].serverTime <= cl->lastUsercmd.serverTime ) {   // Q3_MISSIONPACK
	//		if ( cmds[i].serverTime > cmds[cmdCount-1].serverTime ) {
			continue;   // from just before a map_restart
		}
		if(sysTime >= cl->clFrameCalcTime){
			cl->clFrameCalcTime = sysTime + 1000;
			cl->clFPS = cl->clFrames;
			cl->clFrames = 0;
		}
		cl->clFrames++;

		SV_ClientThink( cl, &cmds[ i ] );

		PHandler_Event(PLUGINS_ONCLIENTMOVECOMMAND, cl, &cmds[ i ]);

		if(cl->demorecording && !cl->demowaiting)
			SV_WriteDemoArchive(cl);
	}
}

/*
==================
SV_ClientEnterWorld
==================
*/
void SV_ClientEnterWorld( client_t *client, usercmd_t *cmd ) {
	int clientNum;
	gentity_t *ent;
	mvabuf;
	char ssti[128];
	char psti[128];

/*
	if(client->netchan.remoteAddress.type != NA_BOT && ((sv_pure->integer != 0 && client->pureAuthentic == 0) || !psvs.serverAuth))
		return;
*/
	Com_DPrintf( "Going from CS_PRIMED to CS_ACTIVE for %s\n", client->name );
	client->state = CS_ACTIVE;

	// set up the entity for the client
	clientNum = client - svs.clients;
	ent = SV_GentityNum( clientNum );
	ent->s.number = clientNum;
	client->gentity = ent;

	client->deltaMessage = -1;
	client->nextSnapshotTime = svs.time;    // generate a snapshot immediately

	if(cmd)
		client->lastUsercmd = *cmd;

	// call the game begin function
	ClientBegin( clientNum );

	// a bad cp command was sent, drop the client
	if ( client->netchan.remoteAddress.type != NA_BOT && sv_pure->integer != 0 && client->pureAuthentic == 2) {
		SV_DropClient( client, "EXE_UNPURECLIENTDETECTED" );
		return;
	}
	client->enteredWorldTime = svs.time;
	if(client->connectedTime == 0)
	{
		client->connectedTime = svs.time;
	}
	//Set gravity, speed... to system default
	Pmove_ExtendedInitForClient(client);

	SV_SApiSteamIDToString(client->steamid, psti, sizeof(psti));

	if(sv_autodemorecord->boolean && !client->demorecording && (client->netchan.remoteAddress.type == NA_IP || client->netchan.remoteAddress.type == NA_IP6))
	{
			SV_RecordClient(client, va("demo_%s_", psti));
	}

	if(!client->enteredWorldForFirstTime && (client->netchan.remoteAddress.type == NA_IP || client->netchan.remoteAddress.type == NA_IP6)){
		if(client->steamid != 0)
		{
			SV_SApiSteamIDToString(client->steamid, ssti, sizeof(ssti));
			SV_EnterLeaveLog("^5Client %s %s ^5entered this server in slot %d with steamid %s playerid %s", client->name, NET_AdrToString(&client->netchan.remoteAddress), clientNum, ssti, psti);
			client->power = Auth_GetClPowerBySteamID(client->steamid);
		}else{
			SV_EnterLeaveLog("^5Client %s %s ^5entered this server in slot %d with playerid %s", client->name, NET_AdrToString(&client->netchan.remoteAddress), clientNum, psti);
		}
	}

	client->enteredWorldForFirstTime = qtrue;
	client->pureAuthentic = 1;

	HL2Rcon_EventClientEnterWorld( clientNum );
	PHandler_Event(PLUGINS_ONCLIENTENTERWORLD, client);

}


gentity_t* SV_AddBotClient(){

    int i, p, cntnames, read;
    unsigned short qport;
    client_t *cl = NULL;
    const char* denied;
    char name[16];
    char botnames[128][16];
    char userinfo[MAX_INFO_STRING];
    netadr_t botnet;
    usercmd_t ucmd;
    fileHandle_t file;
    mvabuf;

	//Find a free serverslot for our bot

	for ( i = sv_privateClients->integer; i < sv_maxclients->integer; i++) {
		cl = &svs.clients[i];
		if (cl->state == CS_FREE) {
			break;
		}
	}
	if( i == sv_maxclients->integer )
		return NULL;		//No free slot

        //Getting a new name for our bot
	FS_SV_FOpenFileRead("botnames.txt", &file);

	if(!file){
		cntnames = 0;
	}else{
		for(cntnames = 0; cntnames < 128; cntnames++){
			read = FS_ReadLine(botnames[cntnames], 16, file);
			if(read <= 0)
				break;
			if(strlen(botnames[cntnames]) < 2)
				break;
		}
		FS_FCloseFile(file);
	}
	if(!cntnames){
		Q_strncpyz(name,va("bot%d", i),sizeof(name));
	}else{
		Q_strncpyz(name,botnames[rand() % cntnames],sizeof(name));
		for(p = 0; p < sizeof(name); p++){
			if(name[p] == '\n' || name[p] == '\r')
				name[p] = 0;
		}
	}


//Connect our bot

	Com_RandomBytes((byte*) &qport, sizeof(short));

	*userinfo = 0;

	Info_SetValueForKey( userinfo, "cg_predictItems", "1");
	Info_SetValueForKey( userinfo, "color", "4");
	Info_SetValueForKey( userinfo, "head", "default");
	Info_SetValueForKey( userinfo, "model", "multi");
	Info_SetValueForKey( userinfo, "snaps", "20");
	Info_SetValueForKey( userinfo, "rate", "99999");
	Info_SetValueForKey( userinfo, "name", name);
	Info_SetValueForKey( userinfo, "protocol", va("%i", sv_protocol->integer));
	Info_SetValueForKey( userinfo, "qport", va("%hi", qport));

	Com_Memset(&botnet,0,sizeof(botnet));
	botnet.type = NA_BOT;
	Info_SetValueForKey( userinfo, "ip", NET_AdrToString( &botnet ) );

	//gotnewcl:
	Com_Memset(cl, 0x00, sizeof(client_t));

	cl->power = 0; //Sets the default power for the client
	// (build a new connection
	// accept the new client
	// this is the only place a client_t is ever initialized)
	Q_strncpyz(cl->legacy_pbguid, "BOT-Client",33);	// save the pbguid

	// save the userinfo
	Q_strncpyz(cl->userinfo, userinfo, 1024 );

	cl->unsentVoiceData = 0;
	cl->hasVoip = 0;
  cl->gentity = SV_GentityNum(i);
  cl->clscriptid = Scr_AllocArray();

	denied = ClientConnect(i, cl->clscriptid);
	if ( denied ) {
		Com_Printf("Bot couldn't connect: %s\n", denied);
		SV_FreeClientScriptId(cl);
		return NULL;
	}
	Com_Printf( "Going from CS_FREE to CS_CONNECTED for %s num %i\n", name, i);

	// save the addressgamestateMessageNum
	// init the netchan queue
	Netchan_Setup( NS_SERVER, &cl->netchan, botnet, qport,
			 cl->unsentBuffer, sizeof(cl->unsentBuffer),
			 cl->fragmentBuffer, sizeof(cl->fragmentBuffer));

/*	for(index = 0; index < MAX_RELIABLE_COMMANDS; index++ ){
		if(index < MAX_RELIABLE_COMMANDS / 2){
			cl->reliableCommands[index] = &cl->lowReliableCommands[index & (MAX_RELIABLE_COMMANDS - 1)];
		} else {
			cl->reliableCommands[index] = &svse.extclients[i].highReliableCommands[index & (MAX_RELIABLE_COMMANDS - 1)];
		}
	}
*/
	cl->state = CS_CONNECTED;
	cl->nextSnapshotTime = svs.time;
	cl->lastPacketTime = svs.time;
	cl->lastConnectTime = svs.time;

	SV_UserinfoChanged(cl);


	Q_strncpyz(cl->name, name, sizeof(cl->name));
	Q_strncpyz(cl->shortname, name, sizeof(cl->shortname));
	ClientSetUsername(i, name);

	SV_UpdateClientConfigInfo(cl);

	// when we receive the first packet from the client, we will
	// notice that it is from a different serverid and that the
	// gamestate message was not just sent, forcing a retransmit
	cl->gamestateMessageNum = -1; //newcl->gamestateMessageNum = -1;

	cl->canNotReliable = 1;
        //Let enter our new bot the game

	Com_Memset(&ucmd, 0, sizeof(ucmd));



	SV_ClientEnterWorld(cl, &ucmd);

	return SV_GentityNum(i);
}


/*
============
SV_RemoveAllBots
============
*/


void SV_RemoveAllBots(){

	int i;
	client_t *cl;

	for(i=0, cl = svs.clients; i < sv_maxclients->integer; i++, cl++){
		if(cl->netchan.remoteAddress.type == NA_BOT && cl->state > CS_FREE){
			SV_DropClient(cl, NULL);
		}
	}
}


/*
============
SV_RemoveBot
============
*/

gentity_t* SV_RemoveBot() {

	int i;
	client_t *cl;

	for(i = 0, cl = svs.clients; i < sv_maxclients->integer; i++, cl++){
		if(cl->netchan.remoteAddress.type == NA_BOT && cl->state > CS_FREE){
			SV_DropClient(cl, "EXE_DISCONNECTED");
			return SV_GentityNum(i);
		}
	}
	return NULL;
}

typedef enum
{
    DLSUBCMD_SERVERDL,
    DLSUBCMD_FILEINIT,
    DLSUBCMD_WWWRD,
    DLSUBCMD_FAIL
}downloadSubcommands_t;


/*
==================
SV_WWWRedirect

Send the client the full url of the http/ftp download server
==================
*/

void SV_WWWRedirect(client_t *cl, msg_t *msg){

    Com_sprintf(cl->wwwDownloadURL, sizeof(cl->wwwDownloadURL), "%s/%s", sv_wwwBaseURL->string, cl->downloadName);

    Com_Printf("Redirecting client '%s' to %s\n", cl->name, cl->wwwDownloadURL);

    cl->wwwDownloadStarted = qtrue;

    MSG_WriteByte( msg, DLSUBCMD_WWWRD ); //SubCommand
    MSG_WriteString(msg, cl->wwwDownloadURL);
    MSG_WriteLong(msg, cl->downloadSize);
    MSG_WriteLong(msg, (int32_t)sv_wwwDlDisconnected->boolean);

    cl->wwwDl_var01 = qfalse;

    if(cl->download){
        FS_FCloseFile(cl->download);
    }

    cl->download = 0;
    //*cl->downloadName = 0;
}



/*
==================
SV_WriteDownloadToClient

Check to see if the client wants a file, open it if needed and start pumping the client
Fill up msg with data
==================
*/

__cdecl void SV_WriteDownloadToClient( client_t *cl ) {
	char errorMessage[1024];
	byte downloadBlock[0xffff];
	int blockSize, filepos, remaining;
	msg_t msg;
	byte data[0xffff + 64];

	if ( !*cl->downloadName ) {
		return; // Nothing being downloaded
	}

	if ( cl->wwwDlAck ) {
		return;
	}

	if ( !cl->download ) {
		// We open the file here
		// DHM - Nerve
		// CVE-2006-2082
		// validate the download against the list of pak files
		if ( !FS_VerifyPak( cl->downloadName ) ) {
   			// will drop the client and leave it hanging on the other side. good for him
			SV_DropClient( cl, "illegal download request" );
			return;
		}

		MSG_Init(&msg, data, sizeof(data));
		MSG_WriteLong( &msg, 0 ); //Size = 0
		MSG_WriteLong( &msg, svc_download );


		if ( !sv_allowDownload->integer || ( cl->downloadSize = FS_SV_FOpenFileRead( cl->downloadName, &cl->download ) ) <= 0 ) {
			// cannot auto-download file
			if ( !sv_allowDownload->integer ) {
				Com_Printf( "clientDownload: %d : \"%s\" download disabled", cl - svs.clients, cl->downloadName );

				if ( sv_pure->integer ) {
					Com_sprintf( errorMessage, sizeof( errorMessage ), "EXE_AUTODL_SERVERDISABLED_PURE\x15%s", cl->downloadName );
				} else {
					Com_sprintf( errorMessage, sizeof( errorMessage ), "EXE_AUTODL_SERVERDISABLED\x15%s", cl->downloadName );
				}

			} else {
				Com_Printf( "clientDownload: %d : \"%s\" file not found on server\n", cl - svs.clients, cl->downloadName );
				Com_sprintf( errorMessage, sizeof( errorMessage ), "EXE_AUTODL_FILENOTONSERVER\x15%s", cl->downloadName );
			}
			MSG_WriteByte( &msg, DLSUBCMD_FAIL ); //SubCommand
			MSG_WriteString( &msg, errorMessage );
			SV_SendReliableServerCommand(cl, &msg);

			cl->wwwDl_var01 = 0;
			if(cl->download){
				FS_FCloseFile(cl->download);
			}
			cl->download = 0;
			*cl->downloadName = 0;

			return;
		}

		Com_Printf( "clientDownload: %d : begining \"%s\"\n", cl - svs.clients, cl->downloadName );

		if(sv_wwwDownload->boolean && cl->wwwDownload){
			if(cl->wwwDl_var03){
				cl->wwwDl_var03 = 0;
				return;
			}
			MSG_WriteByte(&msg, DLSUBCMD_FILEINIT);
			MSG_WriteLong(&msg, cl->downloadSize);
			SV_WriteChecksumInfo(&msg, cl->downloadName);
			SV_SendReliableServerCommand(cl, &msg);

			MSG_Clear(&msg);
			MSG_WriteLong( &msg, 0 ); //Size = 0
			MSG_WriteLong( &msg, svc_download );
			SV_WWWRedirect(cl, &msg);
			SV_SendReliableServerCommand(cl, &msg);
			cl->wwwDlAck = qtrue; //Reliable transport = ack will always succeed
			return;
		}

		// Init
		cl->downloadCurrentBlock = cl->downloadClientBlock = cl->downloadXmitBlock = 0;
		cl->downloadCount = 0;
		//No block has been requested yet - waiting for client to tell which block it wants
		cl->downloadEOF = qtrue;
		cl->downloadNumBytes = 0;
		cl->downloadBeginOffset = 0;
		cl->wwwDownloadStarted = 0;

		MSG_WriteByte(&msg, DLSUBCMD_FILEINIT);
		MSG_WriteLong(&msg, cl->downloadSize);
		SV_WriteChecksumInfo(&msg, cl->downloadName);
		SV_SendReliableServerCommand(cl, &msg);
		return;
	}

	if(cl->downloadEOF)
	{
		return;
	}


	cl->downloadBlockSize = 900;
	if(cl->downloadBlockSize > sizeof(downloadBlock))
	{
		cl->downloadBlockSize = sizeof(downloadBlock);
	}

	remaining = cl->downloadBeginOffset + cl->downloadNumBytes - cl->downloadCount;

	filepos = cl->downloadCount;

	//No data to download - EOF
	if(cl->downloadNumBytes <= 0 || remaining <= 0)
	{
		cl->downloadEOF = qtrue;  // We have added the EOF block
		blockSize = 0;
	}else{
		if(remaining < cl->downloadBlockSize)
		{
			cl->downloadBlockSize = remaining;
		}

		blockSize = FS_Read( downloadBlock, cl->downloadBlockSize, cl->download );
		if ( blockSize <= 0 ) {
			// EOF right now
			cl->downloadEOF = qtrue;  // We have added the EOF block
			blockSize = 0;
			filepos = cl->downloadCount;
		}else{
			cl->downloadCount += blockSize;
		}
	}

	MSG_Init(&msg, data, sizeof(data));
	MSG_WriteLong( &msg, 0 ); //Size = 0
	MSG_WriteLong( &msg, svc_download );
	MSG_WriteByte( &msg, DLSUBCMD_SERVERDL ); //SubCommand
	MSG_WriteLong( &msg, filepos );
	MSG_WriteShort( &msg, blockSize );
	MSG_WriteData( &msg, downloadBlock, blockSize );

	Com_DPrintf( "clientDownload: %d : writing position %d with %d bytes of %d bytes\n", cl - svs.clients, filepos, blockSize, cl->downloadSize);

	cl->downloadSendTime = svs.time;
	SV_SendReliableServerCommand(cl, &msg);
}


/*
================
SV_SendClientGameState

Sends the first message from the server to a connected client.
This will be sent on the initial connection and upon each new map load.

It will be resent if the client acknowledges a later message but has
the wrong gamestate.
================
*/
void SV_SendClientGameState( client_t *client ) {
	msg_t msg;
	byte msgBuffer[MAX_MSGLEN];
	qboolean sapi, stats, returnNow;
	char banrejectmsg[1024];
	uint64_t playerid;
	uint64_t steamid;

	if(client->needupdate)
	{
		return;
	}

	while(client->state != CS_FREE && client->netchan.unsentFragments){
		SV_Netchan_TransmitNextFragment(client);
	}

	sapi = SV_ConnectSApi(client);
	stats = SV_RequestStats(client);

	if(!sapi || !stats)
	{
		return;
	}

	playerid = client->playerid;
	steamid = client->steamidPending;

	if(playerid == 0)
	{
		playerid = steamid;
	}

	returnNow = qfalse;
	banrejectmsg[0] = '\0';

	PHandler_Event(PLUGINS_ONPLAYERGOTAUTHINFO, &client->netchan.remoteAddress, &playerid, &steamid, banrejectmsg, &returnNow, client);
	if(returnNow)
	{
		return;
	}

	if(banrejectmsg[0] || SV_PlayerIsBanned(client->playerid, client->steamid, &client->netchan.remoteAddress, banrejectmsg, sizeof(banrejectmsg)))
	{
		SV_DropClient(client, banrejectmsg);
		return;
	}

	SV_SetServerStaticHeader();

	if(client->state < CS_PRIMED)
	{
		serverStatus_Write();

	}

	if(client->gamestateMessageNum == -1) //It is the 1st time he connects to this server and receives a gamestate. Limit that to this event
	{
		SV_UpdateClientConfigInfo( client ); //Let everyone know about this client additional information (Clantag + Username atm.)
		Auth_ApplyUndercoverStatus( client );
	}

	Com_DPrintf( "SV_SendClientGameState() for %s\n", client->name );
	Com_DPrintf( "Going from CS_CONNECTED to CS_PRIMED for %s\n", client->name );
	client->state = CS_PRIMED;
	client->pureAuthentic = 0;

	// when we receive the first packet from the client, we will
	// notice that it is from a different serverid and that the
	// gamestate message was not just sent, forcing a retransmit
	client->gamestateMessageNum = client->netchan.outgoingSequence;

	MSG_Init( &msg, msgBuffer, sizeof( msgBuffer ) );

	MSG_ClearLastReferencedEntity(&msg);

	// NOTE, MRE: all server->client messages now acknowledge
	// let the client know which reliable clientCommands we have received
	MSG_WriteLong( &msg, client->lastClientCommand );

	// send any server commands waiting to be sent first.
	// we have to do this cause we send the client->reliableSequence
	// with a gamestate and it sets the clc.serverCommandSequence at
	// the client side
	SV_UpdateServerCommandsToClient( client, &msg );

	MSG_WriteByte(&msg, svc_EOF);
	SV_SendMessageToClient( &msg, client );

	MSG_Clear(&msg);
	MSG_WriteLong(&msg, 0);
	MSG_WriteLong(&msg, svc_gamestate);
	// send the gamestate
	SV_WriteGameState(&msg, client);

	MSG_WriteLong( &msg, svse.configDataSequence );

	MSG_WriteLong( &msg, client - svs.clients );

	// write the checksum feed
	MSG_WriteLong( &msg, sv.checksumFeed );

	// NERVE - SMF - debug info
	Com_DPrintf( "Sending %i bytes in gamestate to client: %i\n", msg.cursize, client - svs.clients );

	// deliver this to the client

	SV_SendReliableServerCommand(client, &msg);

	SV_GetServerStaticHeader();

	//Gamestate contains all the config updates. So we acknowledge here all old messages
	client->configDataAcknowledge = svse.configDataSequence;

	Com_DPrintf("configDataAcknowledge is now %d and configDataSequence is now %d\n", client->configDataAcknowledge, svse.configDataSequence);

	client->gamestateSent = 1;
}




/*
==================
SV_CloseDownload

clear/free any download vars
==================
*/
static void SV_CloseDownload( client_t *cl ) {
	// EOF
	if ( cl->download ) {
		FS_FCloseFile( cl->download );
	}
	cl->download = 0;
	*cl->downloadName = 0;
}



/*
===========================================================================

USER CMD EXECUTION

===========================================================================
*/

/*
===================
SV_ExecuteClientMessage

Parse a client packet
===================
*/
__optimize3 __regparm2 void SV_ExecuteClientMessage( client_t *cl, msg_t *msg ) {
	int c, clnum;
	int serverId;
	static const char *clc_strings[256] = { "clc_move", "clc_moveNoDelta", "clc_clientCommand", "clc_EOF", "clc_nop", "clc_sApiData"};

	msg_t decompressMsg;
	byte buffer[NETCHAN_FRAGMENTBUFFER_SIZE +1];

	MSG_Init(&decompressMsg, buffer, sizeof(buffer));

	decompressMsg.cursize = MSG_ReadBitsCompress(msg->data + msg->readcount, msg->cursize - msg->readcount, decompressMsg.data, decompressMsg.maxsize);
	if(decompressMsg.cursize == decompressMsg.maxsize)
	{
		SV_DropClient(cl, "SV_ExecuteClientMessage: Client sent oversize message");
		return;
	}

	clnum = cl - svs.clients;

	if ( sv_shownet->integer == clnum ) {
		Com_Printf( "------------------\n" );
	}

	serverId = cl->serverId;

	if ( (serverId & 0xffffff00) != (sv.start_frameTime & 0xffffff00) && !cl->wwwDl_var01 && !cl->wwwDownloadStarted && !cl->wwwDlAck )
	{
		if(cl->gamestateSent)
		{
			return;
		}
		if ( cl->messageAcknowledge > cl->gamestateMessageNum )
		{
			SV_SendClientGameState( cl );
		}
		return;
	}


	while(qtrue)
	{
		c = MSG_ReadBits(&decompressMsg, 3);

		if ( sv_shownet->integer == clnum )
		{
			if ( !clc_strings[c] ) {
					Com_Printf( "%3i:BAD CMD %i\n", decompressMsg.readcount - 1, c );
			} else {
				Com_Printf( "%3i:%s\n",  decompressMsg.readcount - 1, clc_strings[c] );
			}
		}

		switch(c)
		{
			case clc_EOF:   //3
				return;

			case clc_move:  //0
				SV_UserMove( cl, &decompressMsg, qtrue );
				return;

			case clc_moveNoDelta:  //1
				SV_UserMove( cl, &decompressMsg, qfalse );
				return;

			case clc_clientCommand: //2
				if ( !SV_ClientCommand( cl, &decompressMsg, 0 ) || cl->state == CS_ZOMBIE )
				{
					return; // we couldn't execute it because of the flood protection
				}
				break;

			default:
				Com_PrintWarning( "bad command byte %d for client %i\n", c, cl - svs.clients );
				return;
		}

	}

}


/*
==================
SV_UpdateUserinfo_f
==================
*/
static void SV_UpdateUserinfo_f( client_t *cl ) {
	Q_strncpyz( cl->userinfo, SV_Cmd_Argv( 1 ), sizeof( cl->userinfo ) );

	SV_UserinfoChanged( cl );

	// call prog code to allow overrides
	ClientUserinfoChanged( cl - svs.clients );
}

/*
=================
SV_Disconnect_f

The client is going to disconnect, so remove the connection immediately  FIXME: move to game?
=================
*/
static void SV_Disconnect_f( client_t *cl ) {
	SV_DropClient( cl, "EXE_DISCONNECTED" );
}


/*
=================
SV_VerifyPaks_f

If we are pure, disconnect the client if they do no meet the following conditions:

1. the first two checksums match our view of cgame and ui DLLs
   Wolf specific: the checksum is the checksum of the pk3 we found the DLL in
2. there are no any additional checksums that we do not have

This routine would be a bit simpler with a goto but i abstained

=================
*/
static void SV_VerifyPaks_f( client_t *cl ) {
/*	int nChkSum1, nClientPaks, nServerPaks, i, j, nCurArg;
	int nClientChkSum[1024];
	int nServerChkSum[1024];
*/
	// if we are pure, we "expect" the client to load certain things from
	// certain pk3 files, namely we want the client to have loaded the
	// ui and cgame that we think should be loaded based on the pure setting
	if ( sv_pure->boolean != 0 ) {

/*		nCurArg = 0;
		nClientPaks = SV_Cmd_Argc() - 3;

		if(nClientPaks < 0 || nClientPaks > 1024 || *SV_Cmd_Argv( 1 ) != '@')
		{
			cl->pureAuthentic = 2;
			return;
		}

		if(nClientPaks != 0)
		{
			for(i = 0; i <= nClientPaks; i++)
			{
				nClientChkSum[i] = atoi(SV_Cmd_Argv( i+2 ));
			}
			//Find duplicates
			for(i = 0; i < nClientPaks; i++)
			{
			    for(j = i+1; j < nClientPaks; j++)
			    {
				if(nClientChkSum[i] == nClientChkSum[j])
				{
					cl->pureAuthentic = 2;
					return;
				}
			    }
			}
		}else{
			cl->pureAuthentic = 0;
			return;
		}

		Cmd_TokenizeString(FS_LoadedIwdPureChecksums());

		nServerPaks = Cmd_Argc();
		nCurArg = -1;

		if(nServerPaks > 1024)
			nServerPaks = 1024;

		for(i = 0; i < nServerPaks; i++)
		{
			nServerChkSum[i] = atoi(Cmd_Argv( i ));
		}

		Cmd_EndTokenizedString();

		// check if the number of checksums was correct
		nChkSum1 = sv.checksumFeed;
		for ( i = 0; i < nClientPaks; i++ ) {
			nChkSum1 ^= nClientChkSum[i];
		}
		nChkSum1 ^= nClientPaks;
		if ( nChkSum1 == nClientChkSum[nClientPaks] ) {*/
			cl->pureAuthentic = 1;
/*		}else{
			cl->pureAuthentic = 2;
		}*/
	}
}

/*
=================
SV_ResetPureClient_f
=================
*/
static void SV_ResetPureClient_f( client_t *cl ) {
	cl->pureAuthentic = 0;
}


/*
==================
SV_StopDownload_f

Abort a download if in progress
==================
*/
void SV_StopDownload_f( client_t *cl ) {
	if ( *cl->downloadName ) {
		Com_DPrintf( "clientDownload: %d : file \"%s\" aborted\n", cl - svs.clients, cl->downloadName );
	}

	SV_CloseDownload( cl );
	cl->wwwDl_var01 = 0;
}


/*
==================
SV_DoneDownload_f

Downloads are finished
==================
*/
void SV_DoneDownload_f( client_t *cl ) {
	Com_DPrintf( "clientDownload: %s Done\n", cl->name );
	// resend the game state to update any clients that entered during the download
	SV_CloseDownload( cl );
	cl->wwwDl_var01 = 0;
	SV_SendClientGameState( cl );
}

/*
==================
SV_NextDownload_f

The argument will be the last acknowledged block from the client, it should be
the same as cl->downloadClientBlock
==================
*/
void SV_NextDownload_f( client_t *cl ) {

	return;

	int block = atoi( SV_Cmd_Argv( 1 ) );

	if ( block == cl->downloadClientBlock ) {
		Com_DPrintf( "clientDownload: %d : client acknowledge of block %d\n", cl - svs.clients, block );

		// Find out if we are done.  A zero-length block indicates EOF
		if ( cl->downloadEOF ) {
			Com_Printf( "clientDownload: %d : file \"%s\" completed\n", cl - svs.clients, cl->downloadName );
			SV_CloseDownload( cl );
			return;
		}

		cl->downloadSendTime = svs.time;
//		cl->downloadClientBlock++;
		return;
	}
	// We aren't getting an acknowledge for the correct block, drop the client
	// FIXME: this is bad... the client will never parse the disconnect message
	//			because the cgame isn't loaded yet
	SV_DropClient( cl, "broken download" );
}


/*
==================
SV_RetransmitDownload_f

The argument will be the last acknowledged block from the client, it should be
the same as cl->downloadClientBlock
==================
*/
void SV_RetransmitDownload_f( client_t *cl ) {

	int block = atoi( SV_Cmd_Argv( 1 ) );

	if ( block == cl->downloadClientBlock ) {
		cl->downloadXmitBlock = block;
	}
}

/*
==================
SV_WWWDownload_f

==================
*/


void SV_WWWDownload_BBL8R_f(client_t *cl)
{
	if(!cl->wwwDownloadStarted || !cl->wwwDlAck)
	{
		Com_PrintWarning("SV_WWWDownload: unexpected wwwdl for client '%s'\n", cl->name);
	}

	SV_DropClient(cl, "Client dropped to download files");
}


void SV_WWWDownload_Done_f(client_t *cl)
{
	if(!cl->wwwDownloadStarted || !cl->wwwDlAck)
	{
		Com_PrintWarning("SV_WWWDownload: unexpected wwwdl for client '%s'\n", cl->name);
		SV_DropClient(cl, "Unexpected www download message.");
		return;
	}

	cl->wwwDl_var01 = 0;
	if ( cl->download ) {
		FS_FCloseFile( cl->download );
	}
	cl->download = 0;
	*cl->downloadName = 0;
	cl->wwwDownloadStarted = 0;
	cl->wwwDlAck = 0;
}


void SV_WWWDownload_Fail_f(client_t *cl)
{
	if(!cl->wwwDownloadStarted || !cl->wwwDlAck)
	{
		Com_PrintWarning("SV_WWWDownload: unexpected wwwdl for client '%s'\n", cl->name);
		SV_DropClient(cl, "Unexpected www download message.");
		return;
	}

	Com_PrintWarning("Client '%s' reported that the http download of '%s' failed, falling back to a server download\n", cl->name, cl->downloadName);
	cl->wwwDl_var01 = 0;
	if ( cl->download ) {
		FS_FCloseFile( cl->download );
	}
	cl->download = 0;
	*cl->downloadName = 0;
	cl->wwwDownloadStarted = 0;
	cl->wwwDlAck = 0;
	cl->wwwDl_var03 = 1;

	SV_SendClientGameState(cl);
}

void SV_WWWDownload_ChkFail_f(client_t *cl)
{
	if(!cl->wwwDownloadStarted || !cl->wwwDlAck)
	{
		Com_PrintWarning("SV_WWWDownload: unexpected wwwdl for client '%s'\n", cl->name);
		SV_DropClient(cl, "Unexpected www download message.");
		return;
	}


	Com_PrintWarning("Client '%s' reports that the redirect download for '%s' had wrong checksum.\n        You should make sure that your files on your redirect are the same files you have on your server\n", cl->name, cl->downloadName);

	cl->wwwDl_var01 = 0;
	if ( cl->download ) {
		FS_FCloseFile( cl->download );
	}
	cl->download = 0;
	*cl->downloadName = 0;
	cl->wwwDownloadStarted = 0;
	cl->wwwDlAck = 0;
	cl->wwwDl_var03 = 1;
	SV_SendClientGameState(cl);
}



/*
==================
SV_BeginDownloadX_f
==================
*/
void SV_BeginDownloadX_f( client_t *cl, msg_t* msg ) {

	// Kill any existing download
	SV_CloseDownload( cl );

	// cl->downloadName is non-zero now, SV_WriteDownloadToClient will see this and open
	// the file itself
	cl->wwwDl_var01 = 1;

	MSG_ReadString( msg, cl->downloadName, sizeof( cl->downloadName ) );
}

/*
==================
SV_SelectDownloadBlocksX_f
Selects the blocks we want to download
==================
*/

void SV_SelectDownloadBlocksX_f( client_t *cl, msg_t* msg )
{

	if(cl->download == 0)
	{
		Com_DPrintf("SV_SelectDownloadBlocksX_f a serverdownload is no longer in progress - ignoring this command\n");
		return;
	}

    cl->downloadBeginOffset = MSG_ReadLong(msg);
    cl->downloadNumBytes = MSG_ReadLong(msg);
    cl->downloadEOF = qfalse;

    //Expected file is longer than in reality
    if( cl->downloadBeginOffset > cl->downloadSize )
    {
        cl->downloadBeginOffset = cl->downloadSize;
    }
    //Expected file is longer than in reality
    if( cl->downloadBeginOffset + cl->downloadNumBytes > cl->downloadSize )
    {
        cl->downloadNumBytes = cl->downloadSize - cl->downloadBeginOffset;
    }
    FS_Seek(cl->download, cl->downloadBeginOffset, FS_SEEK_SET);
    cl->downloadCount = cl->downloadBeginOffset;
    Com_Printf("DL Get blocks: %d len %d\n", cl->downloadBeginOffset, cl->downloadNumBytes);
    return;
}



typedef enum
{
    CLC_BEGINDOWNLOAD,
    CLC_DONEDOWNLOAD,
    CLC_STOPDOWNLOAD,
    CLC_REQUESTDLBLOCKS,
    CLC_WWWDLFAIL,
    CLC_WWWDLDONE,
    CLC_WWWDLBBL8R,
    CLC_WWWDLCHKFAIL
}clc_downloadsubcommands_t;

void SV_ExecuteDownloadCmd(client_t* client, msg_t* msg)
{
    int subcmd = MSG_ReadByte(msg);

    switch(subcmd)
    {
        case CLC_BEGINDOWNLOAD:
            SV_BeginDownloadX_f( client, msg );
            return;

        case CLC_DONEDOWNLOAD:
            SV_DoneDownload_f( client );
            return;

        case CLC_STOPDOWNLOAD:
            SV_StopDownload_f( client );
            return;

        case CLC_REQUESTDLBLOCKS:
            SV_SelectDownloadBlocksX_f( client, msg );
            return;

		case CLC_WWWDLBBL8R:
			SV_WWWDownload_BBL8R_f(client);
			return;

		case CLC_WWWDLDONE:
			SV_WWWDownload_Done_f(client);
			return;

		case CLC_WWWDLFAIL:
			SV_WWWDownload_Fail_f(client);
			return;

		case CLC_WWWDLCHKFAIL:
			SV_WWWDownload_ChkFail_f(client);
			return;

        default:
            return;
    }

}

void SV_MutePlayer_f(client_t* cl){

	int muteClient = atoi( SV_Cmd_Argv( 1 ) );

	if(muteClient > 63 || muteClient < 0)
		return;

	cl->mutedClients[muteClient] = 1;
}


void SV_UnmutePlayer_f(client_t* cl){

	int muteClient = atoi( SV_Cmd_Argv( 1 ) );

	if(muteClient > 63 || muteClient < 0)
		return;

	cl->mutedClients[muteClient] = 0;
}



typedef struct {
	char    *name;
	void ( *func )( client_t *cl );
	qboolean indlcmd;
} ucmd_t;

static ucmd_t ucmds[] = {
	{"userinfo", SV_UpdateUserinfo_f, 0},
	{"disconnect", SV_Disconnect_f, 1},
	{"cp", SV_VerifyPaks_f, 0},
	{"vdr", SV_ResetPureClient_f, 0},
/*
	{"download", SV_BeginDownload_f, 0},
	{"nextdl", SV_NextDownload_f, 0},
	{"stopdl", SV_StopDownload_f, 0},
	{"donedl", SV_DoneDownload_f, 0},
	{"retransdl", SV_RetransmitDownload_f, 0},

	{"wwwdl", SV_WWWDownload_f, 0},
*/
	{"muteplayer", SV_MutePlayer_f, 0},
	{"unmuteplayer", SV_UnmutePlayer_f, 0},
	{NULL, NULL, 0}
};

/*
==================
SV_ExecuteClientCommand

Also called by bot code
==================
*/
void SV_ExecuteClientCommand( client_t *cl, const char *s, qboolean clientOK, qboolean inDl ) {
	ucmd_t  *u;

	SV_Cmd_TokenizeString( s );

	if(SV_Cmd_Argc() < 1){
		SV_Cmd_EndTokenizedString( );
		return;
	}

	// see if it is a server level command
	for ( u = ucmds ; u->name ; u++ ) {
		if ( !strcmp( SV_Cmd_Argv( 0 ), u->name ) ) {

			if(!inDl || u->indlcmd){
				u->func( cl );
			}
			SV_Cmd_EndTokenizedString( );
			return;
		}
	}

	if ( clientOK ) {
		// pass unknown strings to the game
		if ( !u->name && sv.state == SS_GAME ) {
			ClientCommand( cl - svs.clients );
		}
	}

	SV_Cmd_EndTokenizedString( );
}


/*
===============
SV_ClientCommand
===============
*/
qboolean SV_ClientCommand( client_t *cl, msg_t *msg, qboolean inDl) {
	int seq;
	const char  *s;
	qboolean clientOk = qtrue;
	qboolean floodprotect = qtrue;
	char stringbuf[MAX_STRING_CHARS];

	seq = MSG_ReadLong( msg );
	s = MSG_ReadString( msg, stringbuf, sizeof(stringbuf));

	// see if we have already executed it
	if ( cl->lastClientCommand >= seq ) {
		return qtrue;
	}

	Com_DPrintf( "clientCommand: %s : %i : %s\n", cl->name, seq, s );

	// drop the connection if we have somehow lost commands
	if ( seq > cl->lastClientCommand + 1 ) {
		Com_Printf( "Client %s lost %i clientCommands\n", cl->name, seq - cl->lastClientCommand + 1 );
		SV_DropClient( cl, "EXE_LOSTRELIABLECOMMANDS" );
		return qfalse;
	}

	if(!sv_floodProtect->boolean || cl->state == CS_PRIMED || cl->netchan.remoteAddress.type == NA_LOOPBACK
		// NERVE - SMF - some server game-only commands we cannot have flood protect
		|| !Q_strncmp( "team", s, 4 ) || !Q_strncmp( "mr", s, 2 ) || !Q_strncmp( "score", s, 5 )){
		//Com_DPrintf( "Skipping flood protection for: %s\n", s );
		floodprotect = qfalse;
	}

	// malicious users may try using too many string commands
	// to lag other players.  If we decide that we want to stall
	// the command, we will stop processing the rest of the packet,
	// including the usercmd.  This causes flooders to lag themselves
	// but not other people
	// We don't do this when the client hasn't been active yet since its
	// normal to spam a lot of commands when downloading

	if(inDl){
		Com_DPrintf( "client text ignored for %s: %s\n", cl->name, SV_Cmd_Argv( 0 ) );
		clientOk = qfalse;
	}


	if(floodprotect){

		if(!inDl && !cl->floodprotect ){

			if(svs.time < cl->nextReliableTime){
				Com_DPrintf( "client text ignored for %s: %s\n", cl->name, SV_Cmd_Argv( 0 ) );
				clientOk = qfalse;
			}
		}

		if(svs.time > cl->nextReliableTime){

			cl->floodprotect = sv_floodProtect->integer - 1;
		}else{
			cl->floodprotect = cl->floodprotect - 1;

			if(cl->floodprotect < 0)
				cl->floodprotect = 0;
		}

		cl->nextReliableTime = svs.time + 800;
	}

	SV_ExecuteClientCommand( cl, s, clientOk, inDl );

	cl->lastClientCommand = seq;
	Q_strncpyz( cl->lastClientCommandString, s, sizeof( cl->lastClientCommandString ) );

	return qtrue;       // continue procesing
}

const char* SV_GetGuid( unsigned int clnum, char* buffer, int len)
{

	if(clnum > sv_maxclients->integer)
		return "";
	if(sv_legacymode->boolean)
	{
	 	return svs.clients[clnum].legacy_pbguid;
	}
	SV_SApiSteamIDToString(svs.clients[clnum].steamid, buffer, len);
	return buffer;
}
const char* SV_GetGuidBin(int clnum)
{
	static char buf[33];
	return SV_GetGuid( clnum, buf, sizeof(buf));
}

void SV_DelayDropClient(client_t *client, const char *dropmsg)
{
	if ( client->state != CS_ZOMBIE && client->delayDropMsg == NULL)
	{
		client->delayDropMsg = dropmsg;
	}
}


void SV_WriteClientVoiceData(msg_t *msg, client_t *client)
{
	int i;

	MSG_WriteByte(msg, client->unsentVoiceData);

	for(i = 0; i < client->unsentVoiceData; i++)
	{
		MSG_WriteByte( msg, client->voicedata[i].num );
		MSG_WriteByte( msg, client->voicedata[i].dataLen );
		MSG_WriteData( msg, client->voicedata[i].data, client->voicedata[i].dataLen );
	}

}

void SV_SendClientVoiceData(client_t *client)
{

	msg_t msg;
	byte buff[0x20000];

	if ( client->state < CS_ACTIVE || client->unsentVoiceData == 0)
	{
		return;
	}
    MSG_Init(&msg, buff, sizeof(buff));
    MSG_WriteString(&msg, "v");
    SV_WriteClientVoiceData(&msg, client);
    if ( msg.overflowed )
    {
		Com_PrintWarning( "WARNING: voice msg overflowed for %s\n", client->name);
		return;
    }
    NET_OutOfBandData(NS_SERVER, &client->netchan.remoteAddress, msg.data, msg.cursize);
    client->unsentVoiceData = 0;
}

void SV_GetVoicePacket(netadr_t *from, msg_t *msg)
{
	unsigned short qport;

	client_t *cl;

	qport = (unsigned short)MSG_ReadShort(msg);

	cl = SV_ReadPackets(from, qport);

	if ( cl && cl->state >= CS_CONNECTED)
	{
		cl->lastPacketTime = svs.time;
		if ( cl->state >= CS_ACTIVE )
			SV_UserVoice(cl, msg);
		else
			SV_PreGameUserVoice(cl, msg);

	}
}

client_t* SV_ReadPackets(netadr_t *from, unsigned short qport)
{
	int i;
	client_t *cl;

	// find which client the message is from
	for (i = 0, cl = svs.clients; i < sv_maxclients->integer; i++, cl++)
	{

		if ( cl->state == CS_FREE ) {
			continue;
		}
		if ( !NET_CompareBaseAdr( from, &cl->netchan.remoteAddress ) ) {
			continue;
		}

		// it is possible to have multiple clients from a single IP
		// address, so they are differentiated by the qport variable
		if ( cl->netchan.qport != qport ) {
			continue;
		}

		// the IP port can't be used to differentiate them, because
		// some address translating routers periodically change UDP
		// port assignments
		if ( cl->netchan.remoteAddress.port != from->port ) {
			Com_Printf( "SV_ReceiveStats: fixing up a translated port\n" );
			cl->netchan.remoteAddress.port = from->port;
		}
		return cl;

	}
	return NULL;
}


void SV_RelocateReliableMessageProtocolBuffer(msg_t* msg, int newsize)
{

	byte* newbuffer;
	if(msg->cursize > newsize)
	{
		newsize = msg->cursize;
	}
	newbuffer = Z_Malloc(newsize);

	if(newbuffer == NULL)
	{
		return;
	}
	if(msg->data != NULL)
	{
		memcpy(newbuffer, msg->data, msg->cursize);
		Z_Free(msg->data);
	}
	msg->data = newbuffer;
	msg->maxsize = newsize;
}

void SV_ProcessModules( client_t* cl, msg_t* msg )
{
	int cmd;
	int n_modules;
	long checksum;
	unsigned modulePathLen;
	char modulePath[128];
	unsigned i;

	Com_Printf("SV_SApiReadModules() for %s called\n", cl->name);

	cmd = MSG_ReadByte(msg);
	Com_Printf("cmd is %d\n", cmd);

	if(cmd == 0)
	{
		n_modules = 0;
		n_modules = MSG_ReadShort(msg);

		for(i=0; i < n_modules; ++i)
		{
			//
			modulePathLen = MSG_ReadShort(msg);
			checksum = MSG_ReadLong(msg);
			MSG_ReadData(msg, modulePath, modulePathLen);

			PHandler_Event(PLUGINS_ONMODULELOADED, cl, modulePath, checksum);
			Com_Printf("Module %d %s %d\n", modulePathLen, modulePath, checksum);
		}


	}else if(cmd == 2){
		Com_Printf("Client reported error getting modules\n");
		return;
	}else {

		//SV_SApiDropWithPenality(cl, 5);
		return;
	}
}

void SV_ExecuteReliableMessage(client_t* client)
{
	int command;
	msg_t* msg = &client->reliablemsg.recvbuffer;

	command = MSG_ReadLong(msg);
	Com_Printf("SV_ExecuteReliableMessage() cmd: %d\n", command);
	switch(command)
	{
		case clc_steamcommands:
			SV_SApiData(client, msg);
			break;
		case clc_statscommands:
			SV_ReceiveStats_f(client, msg);
			break;
		case clc_download:
			SV_ExecuteDownloadCmd(client, msg);
			break;
		case 0x753:
			SV_SApiReadSS(client, msg);
			break;
		case 0x35448:
			SV_ProcessModules(client, msg);
			//asdftest();
			break;
		default:
			Com_PrintWarning("Unknown clientcommand: %d\n", command);
	}
}

#define RNET_DEFAULT_BUFFER_SIZE 16*1024

void SV_ReceiveReliableMessages(client_t* client)
{
	int messagesize;


	msg_t* msg = &client->reliablemsg.recvbuffer;

	if(msg->maxsize < MAX_FRAGMENT_SIZE)
	{
		SV_RelocateReliableMessageProtocolBuffer(msg, MAX_FRAGMENT_SIZE);
	}

	while(1)
	{
		if(msg->cursize < 1)
		{
			msg->cursize = ReliableMessageReceive(client->reliablemsg.netstate, msg->data, 4);
		}

		if(msg->cursize < 1){
			break;
		}

		MSG_BeginReading(msg);

		messagesize = MSG_ReadLong(msg);

		if(messagesize < 0)
		{
			return;
		}
//		Com_Printf("Received %d bytes of %d\n", msg->cursize - 4, messagesize);
		if(msg->cursize < messagesize + 4)
		{	//Incomplete message
			if(messagesize + 4 > msg->maxsize)
			{
				SV_RelocateReliableMessageProtocolBuffer(msg, messagesize + 4);
				if(messagesize + 4 > msg->maxsize)
				{
					SV_DropClient(client, "Insufficient memory on server");
					return;
				}
			}
			msg->cursize += ReliableMessageReceive(client->reliablemsg.netstate, msg->data + msg->cursize, (messagesize + 4) - msg->cursize);
			if(msg->cursize < messagesize + 4)
			{
				return;
			}
		}
		/* Doing the important stuff here */
		SV_ExecuteReliableMessage(client);
		if(msg->cursize == 0)
		{
		    //Client got dropped in meantime
		    return;
		}
		Com_Printf("^2Processed %d bytes for client %s\n", msg->cursize -4, client->name);
		MSG_Clear(msg);
	}

	if(msg->maxsize != RNET_DEFAULT_BUFFER_SIZE)
	{
		SV_RelocateReliableMessageProtocolBuffer(msg, RNET_DEFAULT_BUFFER_SIZE);
	}
	return;
}



/* Note: Netchan has to be setup already before you can do this */
qboolean SV_SetupReliableMessageProtocol(client_t* client)
{
    byte* defaultbuffer;
    int size;

    size = RNET_DEFAULT_BUFFER_SIZE;
    defaultbuffer = Z_Malloc(size);

    if(client->netchan.remoteAddress.type == NA_BAD)
    {
        Com_Error(ERR_FATAL, "SV_SetupRelibiableMessageProtocol() called without setting up netchan");
    }

    client->reliablemsg.netstate = ReliableMessageSetup(client->netchan.sock, client->netchan.qport, &client->netchan.remoteAddress);

    if(defaultbuffer == NULL)
    {
        size = 0;
    }

    MSG_Init(&client->reliablemsg.recvbuffer, defaultbuffer, size);

    if(client->reliablemsg.netstate == NULL)
        return qfalse;
    return qtrue;
}


/* Note: Netchan has to be setup already before you can do this */
void SV_DisconnectReliableMessageProtocol(client_t* client)
{
	ReliableMessageDisconnect(client->reliablemsg.netstate);
	if(client->reliablemsg.recvbuffer.data)
	{
		Z_Free(client->reliablemsg.recvbuffer.data);
	}
	client->reliablemsg.recvbuffer.data = NULL;
	client->reliablemsg.recvbuffer.cursize = 0;
	client->reliablemsg.recvbuffer.maxsize = 0;

	client->reliablemsg.netstate = NULL;
}



void SV_SendReliableServerCommand(client_t* client, msg_t *msg)
{
	int cursizeback;

	cursizeback = msg->cursize;
	msg->cursize = 0;
	MSG_WriteLong(msg, cursizeback - 4);
	msg->cursize = cursizeback;

	ReliableMessageSend(client->reliablemsg.netstate, msg->data, msg->cursize);

}


void SV_SetClientStat(int clientNum, signed int index, int value)
{
  client_t *cl;
  int arrayentry;


  cl = &svs.clients[clientNum];
  if ( index < 2000 )
  {
	arrayentry = index;
    if ( cl->stats.data.bytedata[arrayentry] == value )
	{
      return;
	}
    cl->stats.data.bytedata[arrayentry] = value;

  }else if( index < 3498 ){
	arrayentry = index - 2000;
    if ( cl->stats.data.longdata[arrayentry] == value )
    {
		return;
	}
    cl->stats.data.longdata[arrayentry] = value;

  }else{

	return;
  }
  SV_SendServerCommandNoLoss(cl, "%c %i %i", 'N', index, value);

}

int SV_GetClientStat(int clientNum, signed int index)
{
  client_t *cl;
  int arrayentry;


  cl = &svs.clients[clientNum];
  if ( index < 2000 )
  {
	arrayentry = index;
    return cl->stats.data.bytedata[arrayentry];

  }else if( index < 3498 ){
	arrayentry = index - 2000;
    return cl->stats.data.longdata[arrayentry];

  }else{

	return 0;
  }
}
