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
#include "bg_public.h"
#include "qcommon_io.h"
#include "net_game_conf.h"
#include "server.h"
#include "huffman.h"
#include "msg.h"
#include "sys_main.h"
#include "g_sv_shared.h"
#include "cm_public.h"
#include "g_shared.h"

#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define SV_SEND_HUFFMAN
/*
=============================================================================

Delta encode a client frame onto the network channel

A normal server packet will look like:

4	sequence number (high bit set if an oversize fragment)
<optional reliable commands>
1	svc_snapshot
4	last client reliable command
4	serverTime
1	lastframe for delta compression
1	snapFlags
1	areaBytes
<areabytes>
<playerstate>
<packetentities>

=============================================================================
*/

/*
==================
SV_UpdateServerCommandsToClient

(re)send all server commands the client hasn't acknowledged yet
==================
*/
__cdecl void SV_UpdateServerCommandsToClient( client_t *client, msg_t *msg ) {
	int i;
//	extclient_t* extcl = &svs.extclients[ client - svs.clients ];

	// write any unacknowledged serverCommands
	for ( i = client->reliableAcknowledge + 1 ; i <= client->reliableSequence ; i++ ) {
		MSG_WriteByte( msg, svc_serverCommand );
		MSG_WriteLong( msg, i );
		//MSG_WriteString( msg, extcl->reliableCommands[ i & ( MAX_RELIABLE_COMMANDS - 1 ) ].command );
		MSG_WriteString( msg, client->reliableCommands[ i & ( MAX_RELIABLE_COMMANDS - 1 ) ].command );
	}

	client->reliableSent = client->reliableSequence;

}

void SV_UpdateServerCommandsToClientRecover( client_t *client, msg_t *msg )
{
	int i;
	int cmdlen;

	for(i = client->reliableAcknowledge + 1; i <= client->reliableSequence; i++)
	{

		cmdlen = strlen(client->reliableCommands[i & ( MAX_RELIABLE_COMMANDS - 1 )].command);

		if ( cmdlen + msg->cursize + 6 >= msg->maxsize )
			break;

		MSG_WriteByte(msg, svc_serverCommand);
		MSG_WriteLong(msg, i);
		MSG_WriteString(msg, client->reliableCommands[i & ( MAX_RELIABLE_COMMANDS - 1 )].command);

	}
	if ( i - 1 > client->reliableSent )
	client->reliableSent = i - 1;
}


__cdecl void SV_WriteSnapshotToClient(client_t* client, msg_t* msg){

    snapshotInfo_t snapInfo;
    int lastframe;
    int from_num_entities;
    int newindex, oldindex, newnum, oldnum;
    clientState_t *newcs, *oldcs;
    entityState_t *newent, *oldent;
    clientSnapshot_t *frame, *oldframe;
    int i;
    int snapFlags;
    int var_x, from_first_entity, from_num_clients, from_first_client;

    snapInfo.clnum = client - svsHeader.clients;
    snapInfo.client = (void*)client;
	snapInfo.snapshotDeltaTime = 0;
    snapInfo.fromBaseline = 0;
    snapInfo.archived = 0;

    frame = &client->frames[client->netchan.outgoingSequence & PACKET_MASK];
    frame->var_03 = svsHeader.time;

    if(client->deltaMessage <= 0 ||  client->state != CS_ACTIVE) {
        oldframe = NULL;
        lastframe = 0;
        var_x = 0;

    } else if(client->netchan.outgoingSequence - client->deltaMessage >= PACKET_BACKUP - 3) {
        Com_DPrintf(CON_CHANNEL_SERVER,"%s: Delta request from out of date packet.\n", client->name);
        oldframe = NULL;
        lastframe = 0;
        var_x = 0;

    } else if(client->demoDeltaFrameCount <= 0 && client->demorecording){

        oldframe = NULL;
        lastframe = 0;
        var_x = 0;
        client->demowaiting = qfalse;
        Com_DPrintf(CON_CHANNEL_SERVER,"Force a nondelta frame for %s for demo recording\n", client->name);

        if(client->demoMaxDeltaFrames < 1024)
        {
            client->demoMaxDeltaFrames <<= 1;
        }
        client->demoDeltaFrameCount = client->demoMaxDeltaFrames;


    } else {
        oldframe = &client->frames[client->deltaMessage & PACKET_MASK];
        lastframe = client->netchan.outgoingSequence - client->deltaMessage;
        var_x = oldframe->var_03;
        client->demoDeltaFrameCount--;

        if(oldframe->first_entity <  svsHeader.nextSnapshotEntities - svsHeader.numSnapshotEntities) {
            Com_DPrintWarning(CON_CHANNEL_SERVER,"%s: Delta request from out of date entities - delta against entity %i, oldest is %i, current is %i.  Their old snapshot had %i entities in it\n",
                            client->name, oldframe->first_entity, svs.nextSnapshotEntities - svs.numSnapshotEntities, svs.nextSnapshotEntities, oldframe->num_entities );
            oldframe = NULL;
            lastframe = 0;
            var_x = 0;

        } else if(oldframe->first_client <  svsHeader.nextSnapshotClients - svsHeader.numSnapshotClients) {

            Com_DPrintWarning(CON_CHANNEL_SERVER,"%s: Delta request from out of date clients - delta against client %i, oldest is %i, current is %i.  Their old snapshot had %i clients in it\n",
                            client->name, oldframe->first_client, svs.nextSnapshotClients - svs.numSnapshotClients, svs.nextSnapshotClients, oldframe->num_clients);
            oldframe = NULL;
            lastframe = 0;
            var_x = 0;
        }
    }


    MSG_WriteByte(msg, svc_snapshot);
    MSG_WriteLong(msg, svsHeader.time);
    MSG_WriteByte(msg, lastframe);
    snapInfo.snapshotDeltaTime = var_x;

    snapFlags = svsHeader.snapFlagServerBit;

    if(client->rateDelayed){
	snapFlags |= 1;
    }

    if(client->state == CS_ACTIVE) {

	client->unksnapshotvar = 1;

    } else {
		if(client->state != CS_ZOMBIE){
			client->unksnapshotvar = 0;
		}
    }

    if(!client->unksnapshotvar){
		snapFlags |= 2;
    }

    MSG_WriteByte(msg, snapFlags);

    if(oldframe) {
		MSG_WriteDeltaPlayerstate( &snapInfo, msg, svsHeader.time, &oldframe->ps, &frame->ps);
		from_num_entities = oldframe->num_entities;
		from_first_entity = oldframe->first_entity;
		from_num_clients = oldframe->num_clients;
		from_first_client = oldframe->first_client;
    } else {
	        MSG_WriteDeltaPlayerstate( &snapInfo, msg, svsHeader.time, 0, &frame->ps);
		from_num_entities = 0;
		from_first_entity = 0;
		from_num_clients = 0;
		from_first_client = 0;
    }

    MSG_ClearLastReferencedEntity(msg);


    newindex = 0;
    oldindex = 0;

//    Com_Printf(CON_CHANNEL_SERVER,"Delta client: %i:\n", snapInfo.clnum);


    while ( newindex < frame->num_entities || oldindex < from_num_entities)
	{
		if ( newindex >= frame->num_entities ) {
			newnum = 9999;
			newent = NULL;
		} else {
			newent = &svsHeader.snapshotEntities[( frame->first_entity + newindex ) % svsHeader.numSnapshotEntities];
			newnum = newent->number;
		}

		if ( oldindex >= from_num_entities ) {
			oldnum = 9999;
			oldent = NULL;
		} else {
			oldent = &svsHeader.snapshotEntities[( from_first_entity + oldindex ) % svsHeader.numSnapshotEntities];
			oldnum = oldent->number;
		}

		if ( newnum == oldnum ) {
			// delta update from old position
			// because the force parm is qfalse, this will not result
			// in any bytes being emited if the entity has not changed at all
	//		Com_Printf(CON_CHANNEL_SERVER,"^2Delta Update Entity - New delta: %i Old delta: %i\n", newent->number, oldent->number);
			MSG_WriteDeltaEntity( &snapInfo, msg, svsHeader.time, oldent, newent, qfalse );
			oldindex++;
			newindex++;
			continue;
		}

		if ( newnum < oldnum ) {
			// this is a new entity, send it from the baseline
			snapInfo.fromBaseline = 1;
	//		Com_Printf(CON_CHANNEL_SERVER,"Delta Add Entity: %i\n", newent->number);
			MSG_WriteDeltaEntity( &snapInfo, msg, svsHeader.time, &svsHeader.svEntities[newnum].baseline.s, newent, qtrue );
			snapInfo.fromBaseline = 0;
			newindex++;
			continue;
		}

		if ( newnum > oldnum ) {
			// the old entity isn't present in the new message
	//		Com_Printf(CON_CHANNEL_SERVER,"Delta Remove Entity: %i\n", oldent->number);
			MSG_WriteDeltaEntity( &snapInfo, msg, svsHeader.time, oldent, NULL, qtrue );
			oldindex++;
			continue;
		}
    }


    MSG_WriteEntityIndex(&snapInfo, msg, ( MAX_GENTITIES - 1 ), GENTITYNUM_BITS);
    MSG_ClearLastReferencedEntity(msg);

    newindex = 0;
    oldindex = 0;

    while(newindex < frame->num_clients || oldindex < from_num_clients)
	{
		if(newindex >= frame->num_clients){
			newnum = 9999;
			newcs = NULL;
		}else{

			newcs = &svsHeader.snapshotClients[(frame->first_client + newindex) % svsHeader.numSnapshotClients];
			newnum = newcs->clientIndex;
		}

		if(oldindex >= from_num_clients){
			oldnum = 9999;
			oldcs = NULL;
		}else{

			oldcs = &svsHeader.snapshotClients[(from_first_client + oldindex) % svsHeader.numSnapshotClients];
			oldnum = oldcs->clientIndex;
		}

		if ( newnum == oldnum ) {
			// delta update from old position
			// because the force parm is qfalse, this will not result
			// in any bytes being emited if the entity has not changed at all
			MSG_WriteDeltaClient( &snapInfo, msg, svsHeader.time, oldcs, newcs, qfalse );
			oldindex++;
			newindex++;
			continue;
		}

		if ( newnum < oldnum ) {
			MSG_WriteDeltaClient( &snapInfo, msg, svsHeader.time, NULL, newcs, qtrue );
			newindex++;
			continue;
		}

		if ( newnum > oldnum ) {
			MSG_WriteDeltaClient( &snapInfo, msg, svsHeader.time, oldcs, NULL, qtrue );
			oldindex++;
			continue;
		}
	}

	MSG_WriteBit0(msg);

	if(sv_padPackets->integer){
		for( i=0 ; i < sv_padPackets->integer ; i++){
			MSG_WriteByte( msg, 0); //svc_nop
		}
    }
}


void SV_WriteClientConfigInfo( msg_t* msg, client_t* cl, int messageNum )
{
	//cl: client about which we write updates
	MSG_WriteByte( msg, svc_configclient );
	if(messageNum != -1) //Only in gamestate this will be -1
	{
		MSG_WriteLong(msg, messageNum);
	}
	MSG_WriteByte( msg, cl - svs.clients );
	MSG_WriteString( msg, cl->name );
	MSG_WriteString( msg, cl->clantag );
}


void SV_UpdateConfigData(client_t* cl, msg_t* msg)
{
	int i;
	unsigned int index;

	if(cl->gamestateSent < 2)
	{
		return; //reset sent, need to wait till client has gamestate acknowledged
	}

	//cl: client to whom we write updates
	if(svs.configDataSequence - MAX_CONFIGDATACACHE >= cl->configDataAcknowledge)
	{
		cl->delayDropMsg = "svs.configDataSequence - MAX_CONFIGDATACACHE >= cl->configDataAcknowledge";
		return;
	}

	if(svs.configDataSequence < cl->configDataAcknowledge)
	{
		cl->delayDropMsg = "svs.configDataSequence < cl->configDataAcknowledge";
		return;
	}
	for(i = cl->configDataAcknowledge +1; i <= svs.configDataSequence; ++i)
	{
	//	Com_Printf(CON_CHANNEL_SERVER,"Write Data: %d, Sequence %d\n", i, svs.configDataSequence);
		index = svs.changedConfigData[i % MAX_CONFIGDATACACHE];

		if(index < 64)
		{
			SV_WriteClientConfigInfo( msg, &svs.clients[index], i );
		}
	}

}



/*
====================
SV_RateMsec

Return the number of msec a given size message is supposed
to take to clear, based on the current rate
TTimo - use sv_maxRate or sv_dl_maxRate depending on regular or downloading client
====================
*/
#define HEADER_RATE_BYTES   48      // include our header, IP header, and some overhead

static int SV_RateMsec( client_t *client, int messageSize ) {
	int rate;
	int rateMsec;
	int maxRate;

	// individual messages will never be larger than fragment size
	if ( messageSize > 1500 ) {
		messageSize = 1500;
	}
	// low watermark for sv_maxRate, never 0 < sv_maxRate < 1000 (0 is no limitation)
	if ( sv_maxRate->integer && sv_maxRate->integer < 1000 ) {
		Cvar_SetInt( sv_maxRate, 1000 );
	}
	rate = client->rate;
	maxRate = sv_maxRate->integer;

	if ( maxRate ) {
		if ( maxRate < rate ) {
			rate = maxRate;
		}
	}
	rateMsec = ( messageSize + HEADER_RATE_BYTES ) * 1000 / rate;

	return rateMsec;
}


void SV_TrackHuffmanCompression(int compsize, int uncompsize)
{
    static int totaluncompbytes = 0;
    static int totalcompbytes = 0;
    static int nextnotifybytes = 0;

    totaluncompbytes += uncompsize;
    totalcompbytes += compsize;

    if(totalcompbytes > nextnotifybytes)
    {
	Com_Printf(CON_CHANNEL_SERVER,"Huffman compressionrate: %.2f\n", (float)totaluncompbytes / (float)totalcompbytes);
	nextnotifybytes += 1024*16;
    }
}

/*
=======================
SV_SendMessageToClient

Called by SV_SendClientSnapshot and SV_SendClientGameState
=======================
*/
__cdecl void SV_SendMessageToClient( msg_t *msg, client_t *client ) {
	int rateMsec;

	byte svCompressBuf[4*65536];

#ifdef SV_SEND_HUFFMAN
	int len;
	*(int32_t*)svCompressBuf = *(int32_t*)msg->data;
	len = MSG_WriteBitsCompress( msg->data + 4 ,(byte*)svCompressBuf + 4, msg->cursize - 4);
//	SV_TrackHuffmanCompression(len, msg->cursize - 4);
	len += 4;
#endif
	if(client->delayDropMsg){
		SV_DropClient(client, client->delayDropMsg);
	}

	if(client->demorecording && !client->demowaiting && client->demofile.handleFiles.file.o)
	{
#ifdef SV_SEND_HUFFMAN
		SV_WriteDemoMessageForClient(svCompressBuf, len, client);
#else
		SV_WriteDemoMessageForClient(msg->data, msg->cursize, client);
#endif
	}

	// record information about the message
#ifdef SV_SEND_HUFFMAN
	client->frames[client->netchan.outgoingSequence & PACKET_MASK].messageSize = len;
#else
	client->frames[client->netchan.outgoingSequence & PACKET_MASK].messageSize = msg->cursize;
#endif
	client->frames[client->netchan.outgoingSequence & PACKET_MASK].messageSent = Sys_Milliseconds();
	client->frames[client->netchan.outgoingSequence & PACKET_MASK].messageAcked = 0xFFFFFFFF;

	// send the datagram
#ifdef SV_SEND_HUFFMAN
	SV_Netchan_Transmit( client, svCompressBuf, len );
#else
	SV_Netchan_Transmit( client, msg->data, msg->cursize );
#endif
	// set nextSnapshotTime based on rate and requested number of updates

	// local clients get snapshots every frame
	// TTimo - show_bug.cgi?id=491
	// added sv_lanForceRate check

	if(client->state == CS_ACTIVE && client->deltaMessage >= 0 && client->netchan.outgoingSequence - client->deltaMessage > 28){
		client->nextSnapshotTime = svs.time + 3000 + client->snapshotMsec;
	}

	if ( client->netchan.remoteAddress.type == NA_LOOPBACK || Sys_IsLANAddress( &client->netchan.remoteAddress )) {
		client->nextSnapshotTime = svs.time - 1;
		return;
	}

	// normal rate / snapshotMsec calculation
	rateMsec = SV_RateMsec( client, msg->cursize );

	// TTimo - during a download, ignore the snapshotMsec
	// the update server on steroids, with this disabled and sv_fps 60, the download can reach 30 kb/s
	// on a regular server, we will still top at 20 kb/s because of sv_fps 20
	if ( !*client->downloadName && rateMsec < client->snapshotMsec ) {
		// never send more packets than this, no matter what the rate is at
		rateMsec = client->snapshotMsec;
		client->rateDelayed = qfalse;
	} else {
		client->rateDelayed = qtrue;
	}

	client->nextSnapshotTime = svs.time + rateMsec;

	// don't pile up empty snapshots while connecting
	if ( client->state != CS_ACTIVE && !*client->downloadName) {
		// a gigantic connection message may have already put the nextSnapshotTime
		// more than a second away, so don't shorten it
		// do shorten if client is downloading
		if (  client->nextSnapshotTime < svs.time + 1000 ) {
			client->nextSnapshotTime = svs.time + 1000;
		}
	}
#ifdef SV_SEND_HUFFMAN
	sv.bpsTotalBytes += len;
#else
	sv.bpsTotalBytes += msg->cursize;
#endif
}

void SV_SendClientSnapshot(client_t *cl){

	msg_t msg;

	SV_SetServerStaticHeader();

	SV_BeginClientSnapshot(cl, &msg);

	if(cl->state == CS_ACTIVE || cl->state == CS_ZOMBIE)
		SV_WriteSnapshotToClient(cl, &msg);

	SV_EndClientSnapshot(cl, &msg);

	SV_GetServerStaticHeader();
}

void SV_BeginClientSnapshot(client_t *client, msg_t *msg)
{
	static byte tempSnapshotMsgBuf[NETCHAN_UNSENTBUFFER_SIZE];


	MSG_Init( msg, tempSnapshotMsgBuf, sizeof(tempSnapshotMsgBuf) );
	MSG_ClearLastReferencedEntity( msg );

	MSG_WriteLong( msg, client->lastClientCommand );

	if ( client->state >= CS_CONNECTED || client->state == CS_ZOMBIE )
	{
		SV_UpdateServerCommandsToClient( client, msg );
	}
	if ( client->state >= CS_CONNECTED && client->gamestateSent)
	{
		SV_UpdateConfigData(client, msg);
	}

}

void SV_EndClientSnapshot(client_t *client, msg_t *msg)
{

	if ( client->state != CS_ZOMBIE )
		SV_WriteDownloadToClient( client );

	MSG_WriteByte(msg, svc_EOF);

	if ( msg->overflowed == qtrue)
	{
		Com_PrintWarning(CON_CHANNEL_SERVER, "WARNING: msg overflowed for %s, trying to recover\n", client->name);

		if ( client->state == CS_ACTIVE || client->state == CS_ZOMBIE )
		{
			SV_ShowClientUnAckCommands(client);

			MSG_Clear( msg );
			MSG_WriteLong(msg, client->lastClientCommand);

			SV_UpdateServerCommandsToClientRecover( client, msg );

			MSG_WriteByte(msg, svc_EOF);

		}
		if ( msg->overflowed == qtrue)
		{
			Com_PrintWarning(CON_CHANNEL_SERVER,"WARNING: client disconnected for msg overflow: %s\n", client->name);
			NET_OutOfBandPrint(NS_SERVER, &client->netchan.remoteAddress, "disconnect");
			SV_DropClient(client, "EXE_SERVERMESSAGEOVERFLOW");
		}
	}

	SV_SendMessageToClient(msg, client);
}


//#if 0

/*
===============
SV_AddEntToSnapshot
===============
*/
static void SV_AddEntToSnapshot(  int number, snapshotEntityNumbers_t *eNums )
{

	// if we are full, silently discard entities
	if ( eNums->numSnapshotEntities == MAX_SNAPSHOT_ENTITIES ) {
		return;
	}

	eNums->snapshotEntities[ eNums->numSnapshotEntities ] = number;
	eNums->numSnapshotEntities++;
}


/*
===============
SV_AddEntitiesVisibleFromPoint
===============
*/
static void SV_AddCachedEntitiesVisibleFromPoint(int from_num_entities, int from_first_entity, float *origin, signed int clientNum, snapshotEntityNumbers_t *eNums)
{
	int e, i, l;
	int clientcluster;
	int leafnum, boxleafnums;
	byte    *clientpvs;
	byte    *bitvector;
	float fogOpaqueDistSqrd;
	uint16_t clusternums[128];
	int lastLeaf;
	archivedEntity_t *aent;


	leafnum = CM_PointLeafnum( origin );
	clientcluster = CM_LeafCluster( leafnum );

	if(clientcluster < 0)
	{
		return;
	}

	clientpvs = CM_ClusterPVS( clientcluster );

	fogOpaqueDistSqrd = G_GetFogOpaqueDistSqrd();

	if ( fogOpaqueDistSqrd == 3.4028235e38 )
	{
      fogOpaqueDistSqrd = 0.0;
	}

	int maxCachedSnapshotEntities = sizeof(svs.cachedSnapshotEntities) / sizeof(svs.cachedSnapshotEntities[0]);

	for ( e = 0 ; e < from_num_entities ; e++ ) {

	    aent = &svs.cachedSnapshotEntities[(e + from_first_entity) % maxCachedSnapshotEntities];
        if ( (1 << (clientNum & 31)) & aent->r.clientMask[clientNum >> 5] || aent->s.number == clientNum )
		{
			continue;
		}

        if ( aent->r.svFlags & 0x18 )
		{
            SV_AddEntToSnapshot( e, eNums );
			continue;
		}

		boxleafnums = CM_BoxLeafnums(aent->r.absmin, aent->r.absmax, clusternums, sizeof(clusternums) / sizeof(clusternums[0]), &lastLeaf);
        if ( !boxleafnums )
		{
			continue;
		}

		bitvector = clientpvs;

		for ( i = 0 ; i < boxleafnums ; i++ )
		{
			l = CM_LeafCluster(clusternums[i]);
			if ( bitvector[l >> 3] & ( 1 << ( l & 7 ) ) && l != -1)
			{
				break;
			}
		}

		if ( i == boxleafnums)
		{
			continue;
		}

		if(!(fogOpaqueDistSqrd == 0.0 || BoxDistSqrdExceeds(aent->r.absmin, aent->r.absmax, origin, fogOpaqueDistSqrd) == qfalse) )
		{
			continue;
		}
		// add it
		SV_AddEntToSnapshot( e, eNums );
	}
}



/*
===============
SV_AddEntitiesVisibleFromPoint
===============
*/
static void SV_AddEntitiesVisibleFromPoint( float *origin, int clientNum, snapshotEntityNumbers_t *eNums )
{
	int e, i;
	gentity_t *ent;
	svEntity_t  *svEnt;
	int l;
	int clientcluster;
	int leafnum;
	byte    *clientpvs;
	byte    *bitvector;
	float fogOpaqueDistSqrd;


	leafnum = CM_PointLeafnum( origin );
	clientcluster = CM_LeafCluster( leafnum );

	if(clientcluster < 0)
	{
		return;
	}

	clientpvs = CM_ClusterPVS( clientcluster );

	fogOpaqueDistSqrd = G_GetFogOpaqueDistSqrd();

	if ( fogOpaqueDistSqrd == 3.4028235e38 )
	{
      fogOpaqueDistSqrd = 0.0;
	}

	for ( e = 0 ; e < sv.num_entities ; e++ ) {
		ent = SV_GentityNum( e );

		// never send entities that aren't linked in.
		// never send client's own entity, because it can
		// be regenerated from the playerstate
		if ( !ent->r.linked || e == clientNum)
		{
			continue;
		}


		if ( !ent->r.broadcastTime )
		{
		  if ( ent->r.svFlags & 1 || (1 << (clientNum & 31)) & ent->r.clientMask[clientNum >> 5] )
		  {
		    continue;
		  }

		}else{
			if(ent->r.broadcastTime < 0 || ent->r.broadcastTime >= svs.time)
			{
				SV_AddEntToSnapshot( e, eNums );
				continue;
			}
			ent->r.broadcastTime = 0;
		}


        if ( ent->r.svFlags & 0x18 )
        {
			SV_AddEntToSnapshot( e, eNums );
			continue;
		}

		svEnt = SV_SvEntityForGentity( ent );

		bitvector = clientpvs;

		// check individual leafs
		if ( !svEnt->numClusters ) {
			//goto notVisible; Different in CoD
			SV_AddEntToSnapshot( e, eNums );
			continue;
		}

		l = 0;
		for ( i = 0 ; i < svEnt->numClusters ; i++ )
		{
			l = svEnt->clusternums[i];
			if ( bitvector[l >> 3] & ( 1 << ( l & 7 ) ) )
			{
				break;
			}
		}

		// if we haven't found it to be visible,
		// check overflow clusters that coudln't be stored
		if ( i == svEnt->numClusters )
		{
			if ( svEnt->lastCluster )
			{
				for ( ; l <= svEnt->lastCluster ; l++ )
				{
					if ( bitvector[l >> 3] & ( 1 << ( l & 7 ) ) )
					{
						break;
					}
				}
				if ( l == svEnt->lastCluster ) {
					continue;    // not visible
				}
			} else {
				continue;
			}
		}

		if ( fogOpaqueDistSqrd != 0.0)
		{
			if(BoxDistSqrdExceeds(ent->r.absmin, ent->r.absmax, origin, fogOpaqueDistSqrd))
			{
				continue;
			}
		}
		// add it
		SV_AddEntToSnapshot( e, eNums );
	}
}

static cachedSnapshot_t *SV_GetCachedSnapshot(int *pArchiveTime)
{
  int frame;
  int archivedFrame;
  cachedSnapshot_t *cachedSnap;

  if ( *pArchiveTime <= 0 )
  {
	return 0;
  }

  frame = ((uint64_t)*pArchiveTime * (uint64_t)sv_fps->integer) / (uint64_t)1000;
  archivedFrame = svs.nextArchivedSnapshotFrames - frame;

  if ( archivedFrame < svs.nextArchivedSnapshotFrames - NUM_ARCHIVED_FRAMES )
  {
    archivedFrame = svs.nextArchivedSnapshotFrames - NUM_ARCHIVED_FRAMES;
    *pArchiveTime = ((uint64_t)1000 * (uint64_t)(svs.nextArchivedSnapshotFrames - (svs.nextArchivedSnapshotFrames - NUM_ARCHIVED_FRAMES))) / (uint64_t)sv_fps->integer;
  }

  if ( archivedFrame < 0 )
  {
    archivedFrame = 0;
    *pArchiveTime = ((uint64_t)1000 * (uint64_t)svs.nextArchivedSnapshotFrames) / (uint64_t)sv_fps->integer;
  }

  for( ; archivedFrame < svs.nextArchivedSnapshotFrames; ++archivedFrame)
  {
    cachedSnap = SV_GetCachedSnapshotInternal(archivedFrame, 0, 1);

    if ( cachedSnap )
    {
      return cachedSnap;
    }
  }
  *pArchiveTime = 0;
  return NULL;
}

/*
=============
SV_BuildClientSnapshot

Decides which entities are going to be visible to the client, and
copies off the playerstate and areabits.

This properly handles multiple recursive portals, but the render
currently doesn't.

For viewing through other player's eyes, clent can be something other than client->gentity
=============
*/
static void SV_BuildClientSnapshot( client_t *client ) {

	vec3_t org;
	clientSnapshot_t            *frame;
	snapshotEntityNumbers_t entityNumbers;
	int i;
	archivedEntity_t			*aent;
	gentity_t              		*ent;
	entityState_t               *entState;
	cachedClient_t				*cachedClient;
	clientState_t               *clientStateSource;
	clientState_t               *clientState;
	gentity_t					*clent;
	int clientNum;
	playerState_t               *ps;
	int							archiveTime;
	cachedSnapshot_t			*cachedSnap;
	client_t					*snapClient;

	// this is the frame we are creating
	frame = &client->frames[ client->netchan.outgoingSequence & PACKET_MASK ];

	// clear everything in this snapshot
	entityNumbers.numSnapshotEntities = 0;

	// show_bug.cgi?id=62
	frame->num_entities = 0;
	frame->num_clients = 0;

	clent = client->gentity;
	if ( !clent || client->state == CS_ZOMBIE || sv.state < SS_GAME ) {
		return;
	}

	frame->first_entity = svs.nextSnapshotEntities;
    frame->first_client = svs.nextSnapshotClients;

	clientNum = client - svs.clients;


	archiveTime = G_GetClientArchiveTime(clientNum);

	cachedSnap = SV_GetCachedSnapshot(&archiveTime);

	G_SetClientArchiveTime(clientNum, archiveTime);


	// grab the current playerState_t
	ps = SV_GameClientNum( clientNum );

	frame->ps = *ps;

	//Update client num from other source here
	clientNum = frame->ps.clientNum;


	if ( clientNum < 0 || clientNum >= MAX_GENTITIES ) {
		Com_Error( ERR_DROP, "SV_BuildClientSnapshot(): bad gEnt" );
	}

	// find the client's viewpoint
	VectorCopy( ps->origin, org );
	org[2] += ps->viewHeightCurrent;

//----(SA)	added for 'lean'
	// need to account for lean, so areaportal doors draw properly
	AddLeanToPosition(org, ps->viewangles[1], ps->leanf, 16.0, 20.0);
//----(SA)	end

	if(cachedSnap)
	{
		int snapTime = svs.time - cachedSnap->time;

		int maxCachedSnapshotEntities = sizeof(svs.cachedSnapshotEntities) / sizeof(svs.cachedSnapshotEntities[0]);

		SV_AddCachedEntitiesVisibleFromPoint(cachedSnap->num_entities, cachedSnap->first_entity, org, clientNum, &entityNumbers);

        for ( i = 0 ;i < entityNumbers.numSnapshotEntities; ++i )
        {
            entState = &svs.snapshotEntities[svs.nextSnapshotEntities % svs.numSnapshotEntities];
            aent = &svs.cachedSnapshotEntities[(cachedSnap->first_entity + entityNumbers.snapshotEntities[i]) % maxCachedSnapshotEntities];

			*entState = aent->s;

            if ( entState->lerp.pos.trTime )
			{
              entState->lerp.pos.trTime += snapTime;
			}
			if ( entState->lerp.apos.trTime )
			{
              entState->lerp.apos.trTime += snapTime;
			}
            if ( entState->time2 )
			{
              entState->time2 += snapTime;
			}

            if ( entState->eType == 4 || entState->eType == 0 || entState->eType == 66 )
			{
              entState->lerp.u.anonymous.data[0] += snapTime;
			}
			svs.nextSnapshotEntities++;
			// this should never hit, map should always be restarted first in SV_Frame
			if ( svs.nextSnapshotEntities >= 0x7FFFFFFE ) {
				Com_Error( ERR_FATAL, "svs.nextSnapshotEntities wrapped" );
			}

			frame->num_entities++;
        }


		int maxCachedClients = sizeof(svs.cachedSnapshotClients) / sizeof(svs.cachedSnapshotClients[0]);

		for ( i = 0; i < cachedSnap->num_clients; ++i )
        {
			cachedClient = &svs.cachedSnapshotClients[(i + cachedSnap->first_client) % maxCachedClients];
			clientState = &svs.snapshotClients[svs.nextSnapshotClients % svs.numSnapshotClients];
			*clientState = cachedClient->cs;
			svs.nextSnapshotClients++;

			// this should never hit, map should always be restarted first in SV_Frame
			if ( svs.nextSnapshotClients >= 0x7FFFFFFE ) {
				Com_Error( ERR_FATAL, "svs.nextSnapshotClients wrapped" );
			}
			frame->num_clients++;
        }
		return;
	}



	// add all the entities directly visible to the eye, which
	// may include portal entities that merge other viewpoints
	SV_AddEntitiesVisibleFromPoint( org, clientNum, &entityNumbers );

	// copy the entity states out
	for ( i = 0 ; i < entityNumbers.numSnapshotEntities ; i++ ) {
		ent = SV_GentityNum( entityNumbers.snapshotEntities[i] );
		entState = &svs.snapshotEntities[svs.nextSnapshotEntities % svs.numSnapshotEntities];
		*entState = ent->s;
		svs.nextSnapshotEntities++;
		// this should never hit, map should always be restarted first in SV_Frame
		if ( svs.nextSnapshotEntities >= 0x7FFFFFFE ) {
			Com_Error( ERR_FATAL, "svs.nextSnapshotEntities wrapped" );
		}
		frame->num_entities++;
	}


	// copy the client states out
	for ( snapClient = svs.clients, i = 0 ; i < sv_maxclients->integer ; i++, snapClient++ )
	{
		if(snapClient->state < CS_PRIMED || (!snapClient->gamestateSent && snapClient->netchan.remoteAddress.type != NA_BOT))
		{
			continue;
		}

		clientStateSource = G_GetClientState( i );

		if(snapClient->undercover && i != clientNum)
		{
			continue; // skip send gamestate for undercover players
		}

		clientState = &svs.snapshotClients[svs.nextSnapshotClients % svs.numSnapshotClients];
		*clientState = *clientStateSource;

		svs.nextSnapshotClients++;
		// this should never hit, map should always be restarted first in SV_Frame
		if ( svs.nextSnapshotClients >= 0x7FFFFFFE ) {
			Com_Error( ERR_FATAL, "svs.nextSnapshotClients wrapped" );
		}
		frame->num_clients++;
	}


}
//#endif



/*
 =======================
 SV_SendClientMessages
 =======================
 */

void SV_SendClientMessages( void ) {
	int i, freeBytes, index;
	msg_t msg;
	byte buf[0x20000];
	client_t *c;
	byte snapClients[MAX_CLIENTS];
	int numclients = 0; // NERVE - SMF - net debugging
	/*
	SV_SendClientMessagesA( );
	return;
	 */
	sv.bpsTotalBytes = 0; // NERVE - SMF - net debugging
	sv.ubpsTotalBytes = 0; // NERVE - SMF - net debugging

	// send a message to each connected client
	for ( i = 0, c = svs.clients ; i < sv_maxclients->integer ; i++, c++ ) {
		if ( !c->state || c->netchan.remoteAddress.type == NA_BOT)
		{
			snapClients[i] = 0;
			continue; // not connected
		}

		ReliableMessagesFrame(c->reliablemsg.netstate, svs.time);

		SV_ReceiveReliableMessages(c);
		if ( svs.time < c->nextSnapshotTime ) {
			snapClients[i] = 0;
			continue; // not time yet
		}

		numclients++; // NERVE - SMF - net debugging

		// send additional message fragments if the last message
		// was too large to send at once
		if ( c->netchan.unsentFragments ) {
			c->nextSnapshotTime = svs.time + SV_RateMsec( c, c->netchan.unsentLength - c->netchan.unsentFragmentStart );
			SV_Netchan_TransmitNextFragment( c );
			snapClients[i] = 0;
			continue;
		}

		// generate a new message
		snapClients[i] = 1;

		if ( c->state == CS_ACTIVE || c->state == CS_ZOMBIE )
            SV_BuildClientSnapshot( c );

	}

	SV_SetServerStaticHeader();

	for (i = 0, c = svs.clients; i < sv_maxclients->integer; i++, c++) {

		if(snapClients[i] == 0)
			continue;

		SV_BeginClientSnapshot( c, &msg );

		if(c->state == CS_ACTIVE || c->state == CS_ZOMBIE)
			SV_WriteSnapshotToClient( c, &msg );

		SV_EndClientSnapshot(c, &msg);
		SV_SendClientVoiceData( c );
	}

	// NERVE - SMF - net debugging
	if ( sv_showAverageBPS->integer && numclients > 0 ) {
		float ave = 0, uave = 0;

		for ( i = 0; i < MAX_BPS_WINDOW - 1; i++ ) {
			sv.bpsWindow[i] = sv.bpsWindow[i + 1];
			ave += sv.bpsWindow[i];

			sv.ubpsWindow[i] = sv.ubpsWindow[i + 1];
			uave += sv.ubpsWindow[i];
		}

		sv.bpsWindow[MAX_BPS_WINDOW - 1] = sv.bpsTotalBytes;
		ave += sv.bpsTotalBytes;

		sv.ubpsWindow[MAX_BPS_WINDOW - 1] = sv.ubpsTotalBytes;
		uave += sv.ubpsTotalBytes;

		if ( sv.bpsTotalBytes >= sv.bpsMaxBytes ) {
			sv.bpsMaxBytes = sv.bpsTotalBytes;
		}

		if ( sv.ubpsTotalBytes >= sv.ubpsMaxBytes ) {
			sv.ubpsMaxBytes = sv.ubpsTotalBytes;
		}

		sv.bpsWindowSteps++;

		if ( sv.bpsWindowSteps >= MAX_BPS_WINDOW ) {
			float comp_ratio;

			sv.bpsWindowSteps = 0;

			ave = ( ave / (float)MAX_BPS_WINDOW );
			uave = ( uave / (float)MAX_BPS_WINDOW );

			comp_ratio = ( 1 - ave / uave ) * 100.f;
			sv.ucompAve += comp_ratio;
			sv.ucompNum++;

			Com_DPrintf(CON_CHANNEL_SERVER, "bpspc(%2.0f) bps(%2.0f) pk(%i) ubps(%2.0f) upk(%i) cr(%2.2f) acr(%2.2f)\n",
						ave / (float)numclients, ave, sv.bpsMaxBytes, uave, sv.ubpsMaxBytes, comp_ratio, sv.ucompAve / sv.ucompNum );
		}
	}
	// -NERVE - SMF

	if ( sv.state != SS_GAME )
	{
		SV_GetServerStaticHeader();
		return;
	}

	MSG_Init(&msg, buf, sizeof(buf));
	SV_ArchiveSnapshot(&msg);

	SV_GetServerStaticHeader();

	if ( msg.overflowed == qtrue )
	{
		Com_DPrintf(CON_CHANNEL_SERVER,"SV_ArchiveSnapshot: ignoring snapshot because it overflowed.\n");
		return;
	}

	int maxArchivedSnapshotFrames = sizeof(svs.archivedSnapshotFrames) / sizeof(svs.archivedSnapshotFrames[0]);

	svs.archivedSnapshotFrames[svs.nextArchivedSnapshotFrames % maxArchivedSnapshotFrames].start = svs.nextArchivedSnapshotBuffer;
	svs.archivedSnapshotFrames[svs.nextArchivedSnapshotFrames % maxArchivedSnapshotFrames].size = msg.cursize;

	index = svs.nextArchivedSnapshotBuffer % ARCHIVEDSSBUF_SIZE;

	svs.nextArchivedSnapshotBuffer += msg.cursize;

	if ( svs.nextArchivedSnapshotBuffer >= (signed int)0x7FFFFFFE )
	{
		Com_Error(0, "svs.nextArchivedSnapshotBuffer wrapped");
		return;
	}
	freeBytes = ARCHIVEDSSBUF_SIZE - index;

	if ( msg.cursize > freeBytes )
	{
		memcpy(&svs.archivedSnapshotBuffer[index], msg.data, freeBytes);
		memcpy(svs.archivedSnapshotBuffer, &msg.data[freeBytes], msg.cursize - freeBytes);

	}
	else
	{
		memcpy(&svs.archivedSnapshotBuffer[index], msg.data, msg.cursize);
	}

	svs.nextArchivedSnapshotFrames++;

	if (  svs.nextArchivedSnapshotFrames >= (signed int)0x7FFFFFFE  ){
		Com_Error(0, "svs.nextArchivedSnapshotFrames wrapped");
	}

}


void __cdecl SV_GetClientPositionsFromCachedSnap(cachedSnapshot_t *cachedFrame, vec3_t *pos, vec3_t *angles, bool *success)
{
  struct archivedEntity_s *cachedEnt;
  unsigned int i;
  int clientNum;

  for ( i = 0; i < cachedFrame->num_entities; ++i )
  {
    assertx(cachedFrame->first_entity >= 0, "cachedFrame->first_entity = %i", cachedFrame->first_entity);

    cachedEnt = &svs.cachedSnapshotEntities[(i + cachedFrame->first_entity) % svs.numCachedSnapshotEntities];
    clientNum = cachedEnt->s.number;
    if ( cachedEnt->s.number >= MAX_CLIENTS )
    {
      break;
    }
    success[clientNum] = true;
    BG_EvaluateTrajectory(&cachedEnt->s.lerp.pos, cachedFrame->time, pos[clientNum]);
    angles[clientNum][0] = 0.0;
    angles[clientNum][1] = cachedEnt->s.lerp.apos.trBase[1];
    angles[clientNum][2] = 0.0;
  }
}


bool __cdecl SV_GetClientPositionsAtTime(int gametime, vec3_t *pos, vec3_t *angles, bool *success)
{
  vec3_t endPos[MAX_CLIENTS];
  int startOffset;
  int rewindDeltaTime;
  vec3_t startAngles[MAX_CLIENTS];
  bool foundStart;
  int endOffset;
  float progress;
  vec3_t startPos[MAX_CLIENTS];
  bool startSuccess[MAX_CLIENTS];
  bool endSuccess[MAX_CLIENTS];
  cachedSnapshot_t *frameStart;
  vec3_t endAngles[MAX_CLIENTS];
  bool foundEnd;
  int clientNum;
  cachedSnapshot_t *frameEnd;
  int snapOffset;


  rewindDeltaTime = svs.time - gametime;
  int frametime = 1000000 / sv_fps->integer; //in usec for accuracy
  int frameHistCount = (1000*rewindDeltaTime) / frametime;
  startOffset = (frametime * (frameHistCount + 2)) / 1000;
  endOffset = (frametime * (frameHistCount + 1)) / 1000;
  frameStart = SV_GetCachedSnapshot(&startOffset);
  frameEnd = SV_GetCachedSnapshot(&endOffset);
  if ( frameStart || frameEnd )
  {
    snapOffset = 1;
    while ( frameEnd && frameEnd->time < gametime )
    {
      frameStart = frameEnd;
      endOffset = (frametime * (--snapOffset + frameHistCount)) / 1000;
      frameEnd = SV_GetCachedSnapshot(&endOffset);
    }
    if ( frameEnd && snapOffset != 1 )
    {
      Com_Printf(CON_CHANNEL_SERVER, "Adjusted frameEnd by %i snaps - Requested time=%d Got time=%d\n", 1 - snapOffset, gametime, frameEnd->time);
    }
    snapOffset = 2;
    while ( frameStart && frameStart->time > gametime )
    {
      frameStart = frameEnd;
      startOffset = (frametime * (++snapOffset + frameHistCount)) / 1000;
      frameStart = SV_GetCachedSnapshot(&startOffset);
    }
    if ( frameStart && snapOffset != 2 )
    {
      Com_Printf(CON_CHANNEL_SERVER, "Adjusted frameStart by %i snaps\n", snapOffset - 2);
    }
    foundStart = frameStart != 0;
    foundEnd = frameEnd != 0;

    memset(startSuccess, 0, sizeof(startSuccess));
    memset(endSuccess, 0, sizeof(endSuccess));

    if ( frameStart )
    {
      assertx(frameStart->time <= gametime, "frameStart->time is %i for gametime %i", frameStart->time, gametime);

      SV_GetClientPositionsFromCachedSnap(frameStart, startPos, startAngles, startSuccess);
    }
    if ( foundEnd )
    {
      assertx(frameEnd->time >= gametime, "frameEnd->time is %i for gametime %i", frameEnd->time, gametime);

      SV_GetClientPositionsFromCachedSnap(frameEnd, endPos, endAngles, endSuccess);
    }
    if ( foundStart && foundEnd )
    {
      if ( startOffset == endOffset )
      {
        progress = 0.0;
      }
      else
      {
        progress = (float)(gametime - frameStart->time) / (float)(frameEnd->time - frameStart->time);
      }
      assert(progress >= 0);
      assert(progress <= 1);
    }
    else
    {
      progress = 0.0;
    }
    for ( clientNum = 0; clientNum < MAX_CLIENTS; ++clientNum )
    {
      if ( startSuccess[clientNum] && endSuccess[clientNum] )
      {
	assertx(frameStart->time <= gametime, "%i > %i", frameStart->time, gametime);
	assertx(frameEnd->time >= gametime, "%i < %i", frameEnd->time, gametime);

        success[clientNum] = true;
        Vec3Lerp(startPos[clientNum], endPos[clientNum], progress, pos[clientNum]);
        Vec3Lerp(startAngles[clientNum], endAngles[clientNum], progress, angles[clientNum]);

	assert(!IS_NAN( pos[clientNum][0] ));
	assert(!IS_NAN( pos[clientNum][1] ));
	assert(!IS_NAN( pos[clientNum][2] ));

	assert(!IS_NAN( angles[clientNum][0] ));
	assert(!IS_NAN( angles[clientNum][1] ));
	assert(!IS_NAN( angles[clientNum][2] ));
      }
      else if ( startSuccess[clientNum] )
      {
        success[clientNum] = true;
        VectorCopy(startPos[clientNum], pos[clientNum]);
        VectorCopy(startAngles[clientNum], angles[clientNum]);

        assert(!IS_NAN( pos[clientNum][0]));
        assert(!IS_NAN( pos[clientNum][1]));
        assert(!IS_NAN( pos[clientNum][2]));

        assert(!IS_NAN( angles[clientNum][0]));
        assert(!IS_NAN( angles[clientNum][1]));
        assert(!IS_NAN( angles[clientNum][2]));

      }
      else if ( endSuccess[clientNum] )
      {
        success[clientNum] = true;

        VectorCopy(endPos[clientNum], pos[clientNum]);
        VectorCopy(endAngles[clientNum], angles[clientNum]);

        assert(!IS_NAN( pos[clientNum][0]));
        assert(!IS_NAN( pos[clientNum][1]));
        assert(!IS_NAN( pos[clientNum][2]));

        assert(!IS_NAN( angles[clientNum][0]));
        assert(!IS_NAN( angles[clientNum][1]));
        assert(!IS_NAN( angles[clientNum][2]));
      }
    }
    return true;
  }
  Com_Printf(CON_CHANNEL_SERVER, "Failed to get a cached snapshot for antilag - offset is %i\n", rewindDeltaTime);
  return false;
}





clientState_t * G_GetClientStateLocal(int clientNum)
{
  //assert(svsHeaderValid);

  return (clientState_t *)((byte*)svsHeader.firstClientState + clientNum * svsHeader.clientSize);
}

int GetFollowPlayerStateLocal(int clientNum, playerState_t *ps)
{
  unsigned int index;

  assert(svsHeaderValid);

  if ( *(int *)((byte *)&svsHeader.firstPlayerState->otherFlags + clientNum * svsHeader.clientSize) & 4 )
  {
    memcpy(ps, (byte*)svsHeader.firstPlayerState + clientNum * svsHeader.clientSize, sizeof(*ps));
    for ( index = 0; index < 0x1F && ps->hud.current[index].type; ++index )
    {
      memset(&ps->hud.current[index], 0, sizeof(ps->hud.current[0]));
      assert(ps->hud.current[index].type == HE_TYPE_FREE);
    }
/*
    while ( index < 0x1F )
    {
      assert(!memcmp( &ps->hud.current[index], &g_dummyHudCurrent, sizeof( g_dummyHudCurrent ) ));
      ++index;
    }
*/
    return 1;
  }
  memset(ps, 0, sizeof(*ps));
  return 0;
}

gentity_t *__cdecl SV_GentityNumLocal(int num)
{
    assert(svsHeaderValid);
    return (gentity_t *)((char *)svsHeader.gentities + num * svsHeader.gentitySize);
}

void MSG_TestDeltaAE(snapshotInfo_t* snapInfo, int time, archivedEntity_t* baseline, archivedEntity_t *to, int refent);
void MSG_TestDeltaPS(snapshotInfo_t* snapInfo, int time, playerState_t* baseline, playerState_t *to);
void MSG_TestDeltaCS(snapshotInfo_t* snapInfo, int time, clientState_t* baseline, clientState_t *to);


void SV_ArchiveSnapshot(msg_t *msg)
{
//  struct MatchState *matchState; 
  clientState_t *cs2;
  clientState_t *cs3; 
  clientState_t *lcs;
  cachedClient_t *cachedClient2;
  int e;
  client_t *client;
  int clientNum;
  snapshotInfo_t snapInfo = { 0 };
  archivedEntity_t *archEnt;
  int j;
  int x;
  cachedSnapshot_t *cachedSnap;
  gentity_t *gent;
  int n;
  int lastEntityNum;
  archivedEntity_t to;
  int i;
  playerState_t ps;
//  struct MatchState *from;
  archivedEntity_t *baseline;
  cachedSnapshot_t *cachedFrame;
  cachedClient_t *cachedCl;

//  assert(svsHeaderValid);
  assert(svsHeader.cachedSnapshotEntities);
  assert(svsHeader.cachedSnapshotClients);
  assert(svsHeader.archivedSnapshotBuffer);
  assert(svsHeader.cachedSnapshotFrames);

//  assert(Sys_IsServerThread() || !sv.smp);

  snapInfo.archived = true;

  n = svsHeader.nextCachedSnapshotFrames - 512;
  if ( svsHeader.nextCachedSnapshotFrames - 512 < 0 )
  {
    n = 0;
  }
#ifndef NDEBUG
  MSG_WriteLong(msg, 0xdeadbeef);
#endif
  svsHeader.archivedEntityCount = 0;
  for ( i = svsHeader.nextCachedSnapshotFrames - 1; i >= n; --i )
  {
    cachedFrame = &svsHeader.cachedSnapshotFrames[i % 512];
    if ( cachedFrame->archivedFrame >= svsHeader.nextArchivedSnapshotFrames - svsHeader.fps && !cachedFrame->usesDelta )
    {
      if ( cachedFrame->first_entity >= svsHeader.nextCachedSnapshotEntities - svsHeader.numCachedSnapshotEntities
        && cachedFrame->first_client >= svsHeader.nextCachedSnapshotClients - svsHeader.numCachedSnapshotClients )
      {
        MSG_WriteBit0(msg);

#ifndef NDEBUG
        MSG_WriteLong(msg, 0xdeadbee0);
#endif

        MSG_WriteLong(msg, cachedFrame->archivedFrame);
        MSG_WriteLong(msg, svsHeader.time);
//        MSG_WriteLong(msg, svsHeader.physicsTime);
        MSG_ClearLastReferencedEntity(msg);
/*
        from = &svsHeader.cachedSnapshotMatchStates[cachedFrame->matchState % svsHeader.numCachedSnapshotMatchStates];
        matchState = G_GetMatchStateLocal();
        MSG_WriteDeltaMatchState(&snapInfo, msg, svsHeader.time, from, matchState);
	MSG_ClearLastReferencedEntity(msg);
	*/
        cachedCl = 0;
        clientNum = 0;
        j = 0;
        //PIXBeginNamedEvent(3158271, "clients");
        while ( clientNum < svsHeader.maxclients || j < cachedFrame->num_clients )
        {
          if ( clientNum >= svsHeader.maxclients || svsHeader.clients[clientNum].state >= CS_PRIMED )
          {
            if ( j < cachedFrame->num_clients )
            {
              cachedClient2 = &svsHeader.cachedSnapshotClients[(j + cachedFrame->first_client)
                                                             % svsHeader.numCachedSnapshotClients];
              x = cachedClient2->cs.clientIndex;
            }
            else
            {
              cachedClient2 = 0;
              x = 9999;
            }
            snapInfo.clnum = clientNum;
            if ( clientNum == x )
            {
	      assert(cachedClient2);

              cs2 = G_GetClientStateLocal(clientNum);
              MSG_TestDeltaCS(&snapInfo, svsHeader.time, &cachedClient2->cs, cs2);

              MSG_WriteDeltaClient(&snapInfo, msg, svsHeader.time, &cachedClient2->cs, cs2, 1);
              if ( GetFollowPlayerStateLocal(clientNum, &ps) )
              {
                MSG_WriteBit1(msg);
                if ( cachedClient2->playerStateExists )
                {

		    MSG_TestDeltaPS(&snapInfo, svsHeader.time, &cachedClient2->ps, &ps);

                  MSG_WriteDeltaPlayerstate(&snapInfo, msg, svsHeader.time, &cachedClient2->ps, &ps);
                }
                else
                {
		    MSG_TestDeltaPS(&snapInfo, svsHeader.time, NULL, &ps);

                  MSG_WriteDeltaPlayerstate(&snapInfo, msg, svsHeader.time, NULL, &ps);
                }
              }
              else
              {
                MSG_WriteBit0(msg);
              }
              ++j;
              ++clientNum;
            }
            else if ( clientNum >= x )
            {
              if ( clientNum > x )
              {
                ++j;
              }
            }
            else
            {
              cs3 = G_GetClientStateLocal(clientNum);

              MSG_TestDeltaCS(&snapInfo, svsHeader.time, NULL, cs3);

              MSG_WriteDeltaClient(&snapInfo, msg, svsHeader.time, NULL, cs3, 1);
              if ( GetFollowPlayerStateLocal(clientNum, &ps) )
              {
                MSG_WriteBit1(msg);

		MSG_TestDeltaPS(&snapInfo, svsHeader.time, NULL, &ps);

                MSG_WriteDeltaPlayerstate(&snapInfo, msg, svsHeader.time, NULL, &ps);
              }
              else
              {
                MSG_WriteBit0(msg);
              }
              ++clientNum;
            }
          }
          else
          {
            ++clientNum;
          }
        }
/*
        if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
        {
          D3DPERF_EndEvent();
        }
*/
	MSG_WriteBit0(msg);
        MSG_ClearLastReferencedEntity(msg);

#ifndef NDEBUG
	      MSG_WriteLong(msg, 0xdeadbee9);
#endif


        lastEntityNum = -1;
        //PIXBeginNamedEvent(3158271, "entities");
        for ( e = 0; e < svsHeader.num_entities; ++e )
        {
          gent = SV_GentityNumLocal(e);
          if ( gent->r.linked )
          {
            assertx ( gent->s.number == e, "entnum: %d vs %d, eType: %d, origin: %f %f %f", gent->s.number, e, gent->s.eType, gent->r.currentOrigin[0], gent->r.currentOrigin[1], gent->r.currentOrigin[2]);

	    if ( gent->r.broadcastTime /*|| gent->s.clientLinkInfo.flags & 1*/
		 || ( !(gent->r.svFlags & 1) &&
	    (gent->r.svFlags & 0x18 || svsHeader.svEntities[gent->s.number].numClusters))
	    /* && !(gent->r.svFlags & 0x80)*/
	    )
            {
              baseline = &svsHeader.svEntities[gent->s.number].baseline;
              assert( baseline );
              memcpy(&to.s, &gent->s, sizeof(entityState_t));
              to.r.svFlags = gent->r.svFlags;
              if ( gent->r.broadcastTime )
              {
                to.r.svFlags |= 8u;
              }
	      to.r.clientMask[0] = gent->r.clientMask[0];
	      to.r.clientMask[1] = gent->r.clientMask[1];
	      VectorCopy(gent->r.absmin, to.r.absmin);
	      VectorCopy(gent->r.absmax, to.r.absmax);

	      assertx(lastEntityNum != gent->s.number, "lastEntityNum is %i, cur entnum is %i", lastEntityNum, gent->s.number);

              snapInfo.fromBaseline = 1;

#ifndef NDEBUG
	      MSG_WriteLong(msg, 0xdeadbee7);
#endif

	      MSG_TestDeltaAE(&snapInfo, svsHeader.time, baseline, &to, msg->lastRefEntity);

              if ( MSG_WriteDeltaArchivedEntity(&snapInfo, msg, svsHeader.time, baseline, &to, 0) )
              {
                ++svsHeader.archivedEntityCount;
              }
              snapInfo.fromBaseline = 0;
              lastEntityNum = gent->s.number;
            }
          }
	}
	/*
        if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
        {
          D3DPERF_EndEvent();
	}
	*/
        goto skipDelta;
      }
      break;
    }
  }


  //PIXBeginNamedEvent(3158271, "write delta");
  MSG_WriteBit1(msg);
#ifndef NDEBUG
  MSG_WriteLong(msg, 0xdeadbee1);
#endif
  MSG_WriteLong(msg, svsHeader.time);
//  MSG_WriteLong(msg, svsHeader.physicsTime);
  MSG_ClearLastReferencedEntity(msg);
  cachedSnap = &svsHeader.cachedSnapshotFrames[svsHeader.nextCachedSnapshotFrames % 512];
  svsHeader.cachedSnapshotFrames[svsHeader.nextCachedSnapshotFrames % 512].archivedFrame = svsHeader.nextArchivedSnapshotFrames;
//  cachedSnap->matchState = svsHeader.nextCachedSnapshotMatchStates;
  cachedSnap->num_entities = 0;
  cachedSnap->first_entity = svsHeader.nextCachedSnapshotEntities;
  cachedSnap->num_clients = 0;
  cachedSnap->first_client = svsHeader.nextCachedSnapshotClients;
  cachedSnap->usesDelta = 0;
  cachedSnap->time = svsHeader.time;
  //cachedSnap->physicsTime = svsHeader.physicsTime;
  MSG_ClearLastReferencedEntity(msg);
/*
  matchState = &svsHeader.cachedSnapshotMatchStates[svsHeader.nextCachedSnapshotMatchStates
                                                  % svsHeader.numCachedSnapshotMatchStates];
  memcpy(matchState, G_GetMatchStateLocal(), sizeof(MatchState));
  MSG_WriteDeltaMatchState(v1, &snapInfo, msg, svsHeader.time, 0, matchState);
  if ( ++svsHeader.nextCachedSnapshotMatchStates >= 0x7FFFFFFE )
  {
    Com_Error(ERR_FATAL, "svsHeader.nextCachedSnapshotMatchStates wrapped");
  }
  MSG_ClearLastReferencedEntity(msg);
*/


  for ( i = 0, client = svsHeader.clients; i < svsHeader.maxclients; ++i, ++client)
  {
    if ( client->state >= CS_PRIMED )
    {
      cachedCl = &svsHeader.cachedSnapshotClients[svsHeader.nextCachedSnapshotClients
                                                % svsHeader.numCachedSnapshotClients];
      lcs = G_GetClientStateLocal(i);

      memcpy(&cachedCl->cs, lcs, sizeof(cachedCl->cs));

      MSG_TestDeltaCS(&snapInfo, svsHeader.time, NULL, &cachedCl->cs);

      MSG_WriteDeltaClient(&snapInfo, msg, svsHeader.time, 0, &cachedCl->cs, 1);
      cachedCl->playerStateExists = GetFollowPlayerStateLocal(i, &cachedCl->ps);
      if ( cachedCl->playerStateExists )
      {
        MSG_WriteBit1(msg);

	MSG_TestDeltaPS(&snapInfo, svsHeader.time, NULL, &cachedCl->ps);

        MSG_WriteDeltaPlayerstate(&snapInfo, msg, svsHeader.time, NULL, &cachedCl->ps);
      }
      else
      {
        MSG_WriteBit0(msg);
      }
      if ( ++svsHeader.nextCachedSnapshotClients >= 0x7FFFFFFE )
      {
        Com_Error(ERR_FATAL, "svsHeader.nextCachedSnapshotClients wrapped");
      }
      ++cachedSnap->num_clients;
    }
  }


  MSG_WriteBit0(msg);

#ifndef NDEBUG
	      MSG_WriteLong(msg, 0xdeadbee9);
#endif

  MSG_ClearLastReferencedEntity(msg);
  for ( e = 0; e < svsHeader.num_entities; ++e )
  {
    gent = SV_GentityNumLocal(e);
    if ( gent->r.linked )
    {
      assertx ( gent->s.number == e, "entnum: %d vs %d, eType: %d, origin: %f %f %f", gent->s.number, e, gent->s.eType, gent->r.currentOrigin[0], gent->r.currentOrigin[1], gent->r.currentOrigin[2] );

      if ( gent->r.broadcastTime
	/* || gent->s.clientLinkInfo.flags & 1*/
	|| (!(gent->r.svFlags & 1)
        && (gent->r.svFlags & 0x18 || svsHeader.svEntities[gent->s.number].numClusters))
        /*&& !(gent->r.svFlags & 0x80)*/ )
      {
	baseline = &svsHeader.svEntities[gent->s.number].baseline;
	
	assert(baseline);

        archEnt = &svsHeader.cachedSnapshotEntities[svsHeader.nextCachedSnapshotEntities % svsHeader.numCachedSnapshotEntities];
        memcpy(archEnt, gent, sizeof(svsHeader.cachedSnapshotEntities[0]));
        archEnt->r.svFlags = gent->r.svFlags;
        if ( gent->r.broadcastTime )
        {
          archEnt->r.svFlags |= 8u;
        }
        archEnt->r.clientMask[0] = gent->r.clientMask[0];
        archEnt->r.clientMask[1] = gent->r.clientMask[1];

	VectorCopy(gent->r.absmax, archEnt->r.absmax);
	VectorCopy(gent->r.absmin, archEnt->r.absmin);
	
        snapInfo.fromBaseline = 1;

#ifndef NDEBUG
        MSG_WriteLong(msg, 0xdeadbee7);
#endif
	MSG_TestDeltaAE(&snapInfo, svsHeader.time, baseline, archEnt, msg->lastRefEntity);

        MSG_WriteDeltaArchivedEntity(&snapInfo, msg, svsHeader.time, baseline, archEnt, 0);
        ++svsHeader.archivedEntityCount;
        snapInfo.fromBaseline = 0;
        if ( ++svsHeader.nextCachedSnapshotEntities >= 0x7FFFFFFE )
        {
          Com_Error(ERR_FATAL, "svsHeader.nextCachedSnapshotEntities wrapped");
        }
        ++cachedSnap->num_entities;
      }
    }
  }

  if ( ++svsHeader.nextCachedSnapshotFrames >= 0x7FFFFFFE )
  {
    Com_Error(ERR_FATAL, "svsHeader.nextCachedSnapshotFrames wrapped");
  }
/*
  if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
  {
    D3DPERF_EndEvent();
  }
*/
skipDelta:
#ifndef NDEBUG
        MSG_WriteLong(msg, 0xdeadbee7);
#endif

  MSG_WriteEntityIndex(&snapInfo, msg, 1023, 10);
}

bool SV_FrameIsStillInArchivedSnapshotBuffer(const int frameStart)
{
  int bufferStart;

  assert(frameStart >= 0);
  bufferStart = svs.nextArchivedSnapshotBuffer - ARCHIVEDSSBUF_SIZE;
  if ( svs.nextArchivedSnapshotBuffer - ARCHIVEDSSBUF_SIZE >= 0 )
  {
    return frameStart >= bufferStart && frameStart < svs.nextArchivedSnapshotBuffer;
  }
  if ( frameStart >= svs.nextArchivedSnapshotBuffer )
  {
    return frameStart >= bufferStart + 0x28000000;
  }
  return true;
}


cachedSnapshot_t* SV_GetCachedSnapshotInternal(int archivedFrame, int depth, bool expectedToSucceed)
{
  int startIndex;
  archivedSnapshot_t *frame;
  signed int oldArchivedFrame;
  int newnum;
  int oldindex;
  signed int oldnum;
  msg_t msg;
  cachedSnapshot_t *cachedFrame;
  cachedClient_t *oldCachedClient;
  int partSize;
  int firstCachedSnapshotFrame;
  int i;
  cachedSnapshot_t *oldCachedFrame;
  cachedClient_t *cachedClient;

  frame = &svs.archivedSnapshotFrames[archivedFrame % NUM_ARCHIVED_FRAMES];
  assertx(frame->size, "(archivedFrame) = %i", archivedFrame);

  if ( !SV_FrameIsStillInArchivedSnapshotBuffer(frame->start) )
  {
    if ( expectedToSucceed && svs.nextArchivedSnapshotErrorTime < svs.time)
    {
      Com_Printf(CON_CHANNEL_SERVER, "Failed to get archived snapshot for archived frame %i - frame->start is too old - %i < %i - %i\n",
        archivedFrame, frame->start, svs.nextArchivedSnapshotBuffer, ARCHIVEDSSBUF_SIZE);
      svs.nextArchivedSnapshotErrorTime = svs.time + 1000;
    }
    return 0;
  }
  firstCachedSnapshotFrame = svs.nextCachedSnapshotFrames - 512;
  if ( svs.nextCachedSnapshotFrames - 512 < 0 )
  {
    firstCachedSnapshotFrame = 0;
  }
  for ( i = svs.nextCachedSnapshotFrames - 1; i >= firstCachedSnapshotFrame; --i )
  {
    cachedFrame = &svs.cachedSnapshotFrames[i % 512];
    if ( cachedFrame->archivedFrame == archivedFrame )
    {
      assertx(cachedFrame->first_entity >= 0, "(cachedFrame->first_entity) = %i", cachedFrame->first_entity);

      if (/* cachedFrame->matchState > depth + svs.nextCachedSnapshotMatchStates - svs.numCachedSnapshotMatchStates
	&& */
	cachedFrame->first_entity > 160 * depth + svs.nextCachedSnapshotEntities - svs.numCachedSnapshotEntities
        && cachedFrame->first_client > 32 * depth + svs.nextCachedSnapshotClients - svs.numCachedSnapshotClients )
      {
        return cachedFrame;
      }
      break;
    }
  }
  startIndex = frame->start % ARCHIVEDSSBUF_SIZE;
  partSize = ARCHIVEDSSBUF_SIZE - startIndex;
  if ( frame->size > partSize )
  {
    MSG_InitReadOnlySplit( &msg, &svs.archivedSnapshotBuffer[startIndex], partSize, &svs.archivedSnapshotBuffer[0], frame->size - partSize);
  }
  else
  {
    MSG_InitReadOnly(&msg, &svs.archivedSnapshotBuffer[startIndex], frame->size);
  }
  MSG_BeginReading(&msg);

  assert(MSG_ReadLong(&msg) == 0xdeadbeef);

  if ( MSG_ReadBit(&msg) )
  {
    assert ( !msg.overflowed );
    assert(MSG_ReadLong(&msg) == 0xdeadbee1);

    cachedFrame = &svs.cachedSnapshotFrames[svs.nextCachedSnapshotFrames % 512];
    cachedFrame->archivedFrame = archivedFrame;
 //   cachedFrame->matchState = svs.nextCachedSnapshotMatchStates;
    cachedFrame->num_entities = 0;
    cachedFrame->first_entity = svs.nextCachedSnapshotEntities;
    cachedFrame->num_clients = 0;
    cachedFrame->first_client = svs.nextCachedSnapshotClients;
    cachedFrame->usesDelta = 0;
    cachedFrame->time = MSG_ReadLong(&msg);
//    cachedFrame->physicsTime = MSG_ReadLong(&msg);
    
    MSG_ClearLastReferencedEntity(&msg);
/*
    MSG_ReadDeltaMatchState(&msg, cachedFrame->time, 0, &svs.cachedSnapshotMatchStates[svs.nextCachedSnapshotMatchStates % svs.numCachedSnapshotMatchStates]);
    
    ++svs.nextCachedSnapshotMatchStates;
    
    MSG_ClearLastReferencedEntity(&msg);
*/
    while ( MSG_ReadBit(&msg) )
    {
      newnum = MSG_ReadEntityIndex(&msg, 6);
      if ( msg.overflowed )
      {
        Com_Error(ERR_DROP, "SV_GetCachedSnapshot: end of message");
      }

      cachedClient = &svs.cachedSnapshotClients[svs.nextCachedSnapshotClients % svs.numCachedSnapshotClients];
      MSG_ReadDeltaClient(&msg, cachedFrame->time, 0, &svs.cachedSnapshotClients[svs.nextCachedSnapshotClients % svs.numCachedSnapshotClients].cs, newnum);
      cachedClient->playerStateExists = MSG_ReadBit(&msg);
      if ( cachedClient->playerStateExists )
      {
        MSG_ReadDeltaPlayerstate(0, &msg, cachedFrame->time, 0, &cachedClient->ps, 0);
      }

      assert ( !svsHeaderValid );

      if ( ++svs.nextCachedSnapshotClients >= 0x7FFFFFFE )
      {
        Com_Error(ERR_FATAL, "svs.nextCachedSnapshotClients wrapped");
      }
      ++cachedFrame->num_clients;
    }

    assert(MSG_ReadLong(&msg) == 0xdeadbee9);

    MSG_ClearLastReferencedEntity(&msg);

    while ( 1 )
    {
      assert(MSG_ReadLong(&msg) == 0xdeadbee7);

      newnum = MSG_ReadEntityIndex(&msg, 10);
      if ( newnum == 1023 )
      {
        break;
      }
      if ( msg.overflowed )
      {
        Com_Error(ERR_DROP, "SV_GetCachedSnapshot: end of message");
      }

      MSG_ReadDeltaArchivedEntity( &msg, cachedFrame->time, &sv.svEntities[newnum].baseline,
	&svs.cachedSnapshotEntities[svs.nextCachedSnapshotEntities % svs.numCachedSnapshotEntities], newnum);

      if ( ++svs.nextCachedSnapshotEntities >= 0x7FFFFFFE )
      {
        Com_Error(ERR_FATAL, "svs.nextCachedSnapshotEntities wrapped");
      }
      ++cachedFrame->num_entities;
    }
    if ( ++svs.nextCachedSnapshotFrames >= 0x7FFFFFFE )
    {
      Com_Error(ERR_FATAL, "svs.nextCachedSnapshotFrames wrapped");
    }
  }
  else
  {
    assert ( !msg.overflowed );
    assert(MSG_ReadLong(&msg) == 0xdeadbee0);

    oldArchivedFrame = MSG_ReadLong(&msg);
    if ( oldArchivedFrame < svs.nextArchivedSnapshotFrames - NUM_ARCHIVED_FRAMES )
    {
      if ( expectedToSucceed && svs.nextArchivedSnapshotErrorTime < svs.time )
      {
        Com_Printf(CON_CHANNEL_SERVER, "getting archive snapshot failed for time %i - oldArchiveFrame(%i) < svs.nextArchivedSnapshotFrames(%i) - NUM_ARCHIVED_FRAMES(%i)\n",
          archivedFrame, oldArchivedFrame, svs.nextArchivedSnapshotFrames, NUM_ARCHIVED_FRAMES);
        svs.nextArchivedSnapshotErrorTime = svs.time + 1000;
      }
      return 0;
    }
    frame = &svs.archivedSnapshotFrames[oldArchivedFrame % NUM_ARCHIVED_FRAMES];
    if ( !SV_FrameIsStillInArchivedSnapshotBuffer(frame->start) )
    {
      if ( expectedToSucceed && svs.nextArchivedSnapshotErrorTime < svs.time )
      {
	Com_Printf(CON_CHANNEL_SERVER, "getting archive snapshot failed for time %i - frame->start(%i) < svs.nextArchivedSnapshotBuffer(%i) - ARCHIVEDSSBUF_SIZE(%i)\n",
	  archivedFrame, frame->start, svs.nextArchivedSnapshotBuffer, ARCHIVEDSSBUF_SIZE);
        svs.nextArchivedSnapshotErrorTime = svs.time + 1000;
      }
      return 0;
    }
    oldCachedFrame = SV_GetCachedSnapshotInternal(oldArchivedFrame, depth + 1, expectedToSucceed);
    if ( !oldCachedFrame )
    {
      if ( expectedToSucceed && svs.nextArchivedSnapshotErrorTime < svs.time )
      {
        Com_Printf(CON_CHANNEL_SERVER, "failed to get snapshot for time %i - it was delta'd off time %i, and we couldn't get that snapshot\n",
          archivedFrame, oldArchivedFrame);
        svs.nextArchivedSnapshotErrorTime = svs.time + 1000;
      }
      return 0;
    }

    assert(!oldCachedFrame->usesDelta);

    cachedFrame = &svs.cachedSnapshotFrames[svs.nextCachedSnapshotFrames % 512];
    cachedFrame->archivedFrame = archivedFrame;
//    cachedFrame->matchState = svs.nextCachedSnapshotMatchStates;
    cachedFrame->num_entities = 0;
    cachedFrame->first_entity = svs.nextCachedSnapshotEntities;
    cachedFrame->num_clients = 0;
    cachedFrame->first_client = svs.nextCachedSnapshotClients;
    cachedFrame->usesDelta = 1;
    cachedFrame->time = MSG_ReadLong(&msg);
//    cachedFrame->physicsTime = MSG_ReadLong(&msg);
    MSG_ClearLastReferencedEntity(&msg);
/*	
    MSG_ReadDeltaMatchState( &msg, cachedFrame->time, 
      &svs.cachedSnapshotMatchStates[oldCachedFrame->matchState % svs.numCachedSnapshotMatchStates],
      &svs.cachedSnapshotMatchStates[svs.nextCachedSnapshotMatchStates % svs.numCachedSnapshotMatchStates]);

    ++svs.nextCachedSnapshotMatchStates;
*/
    MSG_ClearLastReferencedEntity(&msg);
    oldindex = 0;
    oldCachedClient = 0;
    if ( oldCachedFrame->num_clients > 0 )
    {
      oldCachedClient = &svs.cachedSnapshotClients[oldCachedFrame->first_client % svs.numCachedSnapshotClients];
      oldnum = oldCachedClient->cs.clientIndex;
    }
    else
    {
      oldnum = 99999;
    }
    while ( MSG_ReadBit(&msg) )
    {
      newnum = MSG_ReadEntityIndex(&msg, 6);

      assert(newnum >= 0);

      if ( msg.overflowed )
      {
        Com_Error(ERR_DROP, "SV_GetCachedSnapshot: end of message");
      }
      while ( oldnum < newnum )
      {
        if ( ++oldindex < oldCachedFrame->num_clients )
        {
          oldCachedClient = &svs.cachedSnapshotClients[(oldindex + oldCachedFrame->first_client)
                                                     % svs.numCachedSnapshotClients];
          oldnum = oldCachedClient->cs.clientIndex;
        }
        else
        {
          oldnum = 99999;
        }
      }
      if ( oldnum == newnum )
      {
        cachedClient = &svs.cachedSnapshotClients[svs.nextCachedSnapshotClients % svs.numCachedSnapshotClients];
	assert(cachedClient != oldCachedClient);		


        MSG_ReadDeltaClient(&msg, cachedFrame->time, &oldCachedClient->cs, &cachedClient->cs, newnum);
        cachedClient->playerStateExists = MSG_ReadBit(&msg);
        if ( cachedClient->playerStateExists )
        {
          if ( oldCachedClient->playerStateExists )
          {
            MSG_ReadDeltaPlayerstate(0, &msg, cachedFrame->time, &oldCachedClient->ps, &cachedClient->ps, 0);
          }
          else
          {
            MSG_ReadDeltaPlayerstate(0, &msg, cachedFrame->time, 0, &cachedClient->ps, 0);
          }
        }
	assert(!svsHeaderValid);
        if ( ++svs.nextCachedSnapshotClients >= 0x7FFFFFFE )
        {
          Com_Error(ERR_FATAL, "svs.nextCachedSnapshotClients wrapped");
        }
        ++cachedFrame->num_clients;
        if ( ++oldindex < oldCachedFrame->num_clients )
        {
          oldCachedClient = &svs.cachedSnapshotClients[(oldindex + oldCachedFrame->first_client) % svs.numCachedSnapshotClients];
          oldnum = oldCachedClient->cs.clientIndex;
        }
        else
        {
          oldnum = 99999;
        }
      }
      else
      {
	assert(oldnum > newnum);
        cachedClient = &svs.cachedSnapshotClients[svs.nextCachedSnapshotClients % svs.numCachedSnapshotClients];

        MSG_ReadDeltaClient(&msg, cachedFrame->time, 0, &svs.cachedSnapshotClients[svs.nextCachedSnapshotClients % svs.numCachedSnapshotClients].cs, newnum);
        cachedClient->playerStateExists = MSG_ReadBit(&msg);
        if ( cachedClient->playerStateExists )
        {
          MSG_ReadDeltaPlayerstate(0, &msg, cachedFrame->time, 0, &cachedClient->ps, 0);
        }

	assert( !svsHeaderValid );

	if ( ++svs.nextCachedSnapshotClients >= 0x7FFFFFFE )
        {
          Com_Error(ERR_FATAL, "svs.nextCachedSnapshotClients wrapped");
        }
        ++cachedFrame->num_clients;
      }
    }

    assert(MSG_ReadLong(&msg) == 0xdeadbee9);

    MSG_ClearLastReferencedEntity(&msg);

    while ( 1 )
    {
      assert(MSG_ReadLong(&msg) == 0xdeadbee7);

      newnum = MSG_ReadEntityIndex(&msg, 10);
      if ( newnum == 1023 )
      {
        break;
      }
      if ( msg.overflowed )
      {
        Com_Error(ERR_DROP, "SV_GetCachedSnapshot: end of message");
      }

      MSG_ReadDeltaArchivedEntity(
        &msg, cachedFrame->time, &sv.svEntities[newnum].baseline,
        &svs.cachedSnapshotEntities[svs.nextCachedSnapshotEntities % svs.numCachedSnapshotEntities], newnum);
      if ( ++svs.nextCachedSnapshotEntities >= 0x7FFFFFFE )
      {
        Com_Error(ERR_FATAL, "svs.nextCachedSnapshotEntities wrapped");
      }
      ++cachedFrame->num_entities;
    }
    if ( ++svs.nextCachedSnapshotFrames >= 0x7FFFFFFE )
    {
      Com_Error(ERR_FATAL, "svs.nextCachedSnapshotFrames wrapped");
    }

  }
  assertx(cachedFrame->num_entities < svs.numCachedSnapshotEntities, "(cachedFrame->num_entities) = %i", cachedFrame->num_entities);
  assertx(cachedFrame->num_clients < svs.numCachedSnapshotClients, "(cachedFrame->num_clients) = %i", cachedFrame->num_clients);
//  assert(cachedFrame->matchState >= svs.nextCachedSnapshotMatchStates - svs.numCachedSnapshotMatchStates);
  assert(cachedFrame->first_entity >= svs.nextCachedSnapshotEntities - svs.numCachedSnapshotEntities);
  assert(cachedFrame->first_client >= svs.nextCachedSnapshotClients - svs.numCachedSnapshotClients);
  return cachedFrame;
}



int SV_GetCurrentClientInfo(int clientNum, playerState_t *ps, clientState_t *cs)
{
    assert(clientNum < sv_maxclients->integer);

  if ( svs.clients[clientNum].state == CS_ACTIVE )
  {
    if ( GetFollowPlayerState(clientNum, ps) )
    {
      memcpy(cs, G_GetClientState(clientNum), sizeof(clientState_t));
      return 1;
    }
  }
  return 0;
}




int SV_GetArchivedClientInfo(int clientNum, int *pArchiveTime, playerState_t *ps, clientState_t *cs, float *origin, int *health, int *otherFlags)
{
  cachedSnapshot_t *cachedSnapshot;
  unsigned int i;
  int offsettime;
  cachedClient_t *cachedClient;
    playerState_t backupPs;

    assert(health);
    assert(otherFlags);

  cachedSnapshot = SV_GetCachedSnapshot(pArchiveTime);
  if ( cachedSnapshot )
  {
	assert(*pArchiveTime > 0);
    offsettime = svs.time - cachedSnapshot->time;
    cachedClient = 0;
    for ( i = 0; ; ++i )
    {
      if ( i >= cachedSnapshot->num_clients )
      {
        return 0;
      }
      cachedClient = &svs.cachedSnapshotClients[(i + cachedSnapshot->first_client) % svs.numCachedSnapshotClients];
      if ( cachedClient->cs.clientIndex == clientNum )
      {
        break;
      }
    }
    if ( !cachedClient->playerStateExists )
    {
      return 0;
    }

	assert(cachedClient);
	assert(cachedClient->ps.otherFlags & POF_PLAYER);

    if ( origin )
    {
	    VectorCopy(cachedClient->ps.origin, origin);
    }
    if ( cs )
    {
      Com_Memcpy(cs, &cachedClient->cs, sizeof(clientState_t));
    }
    *health = cachedClient->ps.stats[0];
    *otherFlags = cachedClient->ps.otherFlags;
    if ( ps )
    {
      Com_Memcpy(ps, &cachedClient->ps, sizeof(playerState_t));
      if ( ps->commandTime )
      {
        ps->commandTime += offsettime;
      }
      if ( ps->pm_time )
      {
        ps->pm_time += offsettime;
      }
      if ( ps->foliageSoundTime )
      {
        ps->foliageSoundTime += offsettime;
      }
      if ( ps->jumpTime )
      {
        ps->jumpTime += offsettime;
      }
      if ( ps->viewHeightLerpTime )
      {
        ps->viewHeightLerpTime += offsettime;
      }
      if ( ps->shellshockTime )
      {
        ps->shellshockTime += offsettime;
      }
      for ( i = 0; i < 0x1F && ps->hud.archival[i].type; ++i )
      {
        if ( ps->hud.archival[i].time )
        {
          ps->hud.archival[i].time += offsettime;
        }
        if ( ps->hud.archival[i].fadeStartTime )
        {
		    ps->hud.archival[i].fadeStartTime += offsettime;
		    assertx(ps->hud.archival[i].fadeStartTime <= svs.time, "%i, %i", ps->hud.archival[i].fadeStartTime, svs.time);
        }
        if ( ps->hud.archival[i].scaleStartTime )
        {
          ps->hud.archival[i].scaleStartTime += offsettime;
        }
        if ( ps->hud.archival[i].moveStartTime )
        {
          ps->hud.archival[i].moveStartTime += offsettime;
        }
      }
      ps->deltaTime += offsettime;
    }
    return 1;
  }
  if ( !ps )
  {
      ps = &backupPs;
  }
  if ( *pArchiveTime <= 0 && SV_GetCurrentClientInfo(clientNum, ps, cs) )
  {
      *health = ps->stats[0];
      *otherFlags = ps->otherFlags;
      if ( origin )
      {
		VectorCopy(ps->origin, origin);
      }
      return 1;
  }
  return 0;
}
