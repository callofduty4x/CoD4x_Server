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
#include "sys_net.h"
#include "cvar.h"
#include "msg.h"
#include "netchan.h"
#include "q_platform.h"
#include "plugin_handler.h"
#include "net_game_conf.h"
#include "sha.h"

#include <string.h>
#include <stdarg.h>
#include <stdint.h>
/*

packet header
-------------
4	outgoing sequence.  high bit will be set if this is a fragmented message
[2	qport (only for client to server)]
[4	fragment start byte]
[2	fragment length. if < FRAGMENT_SIZE, this is the last fragment]

if the sequence number is -1, the packet should be handled as an out-of-band
message instead of as part of a netchan.

All fragments will have the same sequence numbers.

The qport field is a workaround for bad address translating routers that
sometimes remap the client's source port on a packet during gameplay.

If the base part of the net address matches and the qport matches, then the
channel matches even if the IP port differs.  The IP port should be updated
to the new value before sending out any replies.

*/

#ifndef MAX_MSGLEN
#define MAX_MSGLEN 0x20000
#endif

#define PACKET_HEADER           10          // two ints and a short

#define FRAGMENT_BIT    ( 1 << 31 )

cvar_t      *showpackets;
cvar_t      *showdrop;
cvar_t      *qport;

static char *netsrcString[2] = {
	"client",
	"server"
};

/*
===============
Netchan_Init

===============
*/
void Netchan_Init( int port ) {

	port &= 0xffff;
	showpackets = Cvar_RegisterBool( "showpackets", qfalse, CVAR_TEMP, "Show all sent and received packets");
	showdrop = Cvar_RegisterBool( "showdrop", qfalse, CVAR_TEMP, "Show dropped packets");
	qport = Cvar_RegisterInt( "net_qport", port, 1, 65535, CVAR_INIT, "The net_chan qport" );
	NET_CookieInit();
	MSG_RegisterCvars();
}

/*
==============
Netchan_Setup

called to open a channel to a remote system
==============
*/

void Netchan_Setup( netsrc_t sock, netchan_t *chan, netadr_t adr, unsigned int qport , byte* unsentBuffer, int unsentBufferSize, byte* fragmentBuffer, int fragmentBufferSize){

	memset( chan, 0, sizeof( netchan_t ) );

	chan->sock = sock;
	chan->remoteAddress = adr;
	chan->qport = qport;
	chan->incomingSequence = 0;
	chan->outgoingSequence = 1;
	chan->unsentBuffer = unsentBuffer;
	chan->unsentBufferSize = unsentBufferSize;
	chan->fragmentBuffer = fragmentBuffer;
	chan->fragmentBufferSize = fragmentBufferSize;

}

/*
=================
Netchan_Process

Returns qfalse if the message should not be processed due to being
out of order or a fragment.

Msg must be large enough to hold MAX_MSGLEN, because if this is the
final fragment of a multi-part message, the entire thing will be
copied out.
=================
*/
qboolean Netchan_Process( netchan_t *chan, msg_t *msg ) {
	int sequence;
	int fragmentStart, fragmentLength;
	qboolean fragmented;
	// get sequence numbers
	MSG_BeginReading( msg );
	sequence = MSG_ReadLong( msg );

	// check for fragment information
	if ( sequence & FRAGMENT_BIT ) {
		sequence &= ~FRAGMENT_BIT;
		fragmented = qtrue;
	} else {
		fragmented = qfalse;
	}

	// Pop off the qport if we are a server
	if ( chan->sock == NS_SERVER ) {
		MSG_ReadShort( msg );
	}

	// read the fragment information
	if ( fragmented ) {
		fragmentStart = MSG_ReadLong( msg );
		fragmentLength = MSG_ReadShort( msg );

	} else {
		fragmentStart = 0;      // stop warning message
		fragmentLength = 0;
	}

	if ( showpackets->boolean ) {
		if ( fragmented ) {
			Com_Printf(CON_CHANNEL_NETWORK, "%s recv %4i : s=%i fragment=%i,%i\n"
						, netsrcString[ chan->sock ]
						, msg->cursize
						, sequence
						, fragmentStart, fragmentLength );
		} else {
			Com_Printf(CON_CHANNEL_NETWORK, "%s recv %4i : s=%i\n"
						, netsrcString[ chan->sock ]
						, msg->cursize
						, sequence );
		}
	}

	//
	// discard out of order or duplicated packets
	//
	if ( sequence <= chan->incomingSequence ) {
		if ( showdrop->boolean || showpackets->boolean ) {
			Com_Printf(CON_CHANNEL_NETWORK, "%s:Out of order packet %i at %i\n"
						, NET_AdrToString( &chan->remoteAddress )
						,  sequence
						, chan->incomingSequence );
		}
		return qfalse;
	}

	//
	// dropped packets don't keep the message from being used
	//
	chan->dropped = sequence - ( chan->incomingSequence + 1 );
	if ( chan->dropped > 0 ) {
		if ( showdrop->boolean || showpackets->boolean ) {
			Com_Printf(CON_CHANNEL_NETWORK, "%s:Dropped %i packets at %i\n"
						, NET_AdrToString( &chan->remoteAddress )
						, chan->dropped
						, sequence );
		}
	}


	//
	// if this is the final framgent of a reliable message,
	// bump incoming_reliable_sequence
	//
	if ( fragmented ) {
		// TTimo
		// make sure we add the fragments in correct order
		// either a packet was dropped, or we received this one too soon
		// we don't reconstruct the fragments. we will wait till this fragment gets to us again
		// (NOTE: we could probably try to rebuild by out of order chunks if needed)

		if ( sequence != chan->fragmentSequence ) {
			chan->fragmentSequence = sequence;
			chan->fragmentLength = 0;
		}

		// if we missed a fragment, dump the message
		if ( fragmentStart != chan->fragmentLength ) {
			if ( showdrop->boolean || showpackets->boolean ) {
				Com_Printf(CON_CHANNEL_NETWORK, "%s:Dropped a message fragment seq: %d, fragmentStart: %d, chan->fragmentLength: %d\n", NET_AdrToString( &chan->remoteAddress ), sequence, fragmentStart, chan->fragmentLength);
			}
			// we can still keep the part that we have so far,
			// so we don't need to clear chan->fragmentLength
			return qfalse;
		}

		// copy the fragment to the fragment buffer
		if ( fragmentLength < 0 || msg->readcount + fragmentLength > msg->cursize
		    || chan->fragmentLength + fragmentLength > chan->fragmentBufferSize)
		{
			if ( showdrop->boolean || showpackets->boolean ) {
				Com_Printf(CON_CHANNEL_NETWORK, "%s:illegal fragment length: Current %i Fragment length %i Max %i\n",
						NET_AdrToString( &chan->remoteAddress ), chan->fragmentLength,
						fragmentLength, chan->fragmentBufferSize);
			}
			return qfalse;
		}

		memcpy( chan->fragmentBuffer + chan->fragmentLength,	msg->data + msg->readcount, fragmentLength );

		chan->fragmentLength += fragmentLength;

		// if this wasn't the last fragment, don't process anything
		if ( fragmentLength == FRAGMENT_SIZE ) {
			return qfalse;
		}

		if ( chan->fragmentLength > msg->maxsize ) {
			Com_Printf(CON_CHANNEL_NETWORK, "%s:fragmentLength %i > msg->maxsize\n", NET_AdrToString( &chan->remoteAddress ), chan->fragmentLength );
			return qfalse;
		}

		// copy the full message over the partial fragment

		// make sure the sequence number is still there
		*(int *)msg->data = LittleLong( sequence );

		memcpy( msg->data + 4, chan->fragmentBuffer, chan->fragmentLength );
		msg->cursize = chan->fragmentLength + 4;
		chan->fragmentLength = 0;
		msg->readcount = 4; // past the sequence number
		msg->bit = 32;  // past the sequence number


		// TTimo
		// clients were not acking fragmented messages
		chan->incomingSequence = sequence;

		return qtrue;
	}

	//
	// the message can now be read from the current message pointer
	//
	chan->incomingSequence = sequence;

	return qtrue;
}


//==============================================================================

/*
=================
Netchan_TransmitNextFragment

Send one fragment of the current message
=================
*/
qboolean Netchan_TransmitNextFragment( netchan_t *chan ) {
	msg_t send;
	qboolean sendsucc;
	byte send_buf[MAX_PACKETLEN];
	int fragmentLength;
	qboolean var_01 = qfalse;
	// write the packet header
	MSG_Init( &send, send_buf, sizeof( send_buf ) );                // <-- only do the oob here

	MSG_WriteLong( &send, chan->outgoingSequence | FRAGMENT_BIT );

	// send the qport if we are a client
	if ( chan->sock == NS_CLIENT ) {
		MSG_WriteShort( &send, qport->integer );
	}

	// copy the reliable message to the packet first
	fragmentLength = FRAGMENT_SIZE;
	if ( chan->unsentFragmentStart  + fragmentLength > chan->unsentLength ) {
		fragmentLength = chan->unsentLength - chan->unsentFragmentStart;
		var_01 = qtrue;
	}

	MSG_WriteLong(&send, chan->unsentFragmentStart);
	MSG_WriteShort( &send, fragmentLength );
	MSG_WriteData( &send, chan->unsentBuffer + chan->unsentFragmentStart, fragmentLength );

	// send the datagram
	sendsucc = NET_SendPacket( chan->sock, send.cursize, send.data, &chan->remoteAddress );
	if ( showpackets->boolean ) {
		Com_Printf(CON_CHANNEL_NETWORK, "%s send %4i : s=%i fragment=%i,%i\n"
					, netsrcString[ chan->sock ]
					, send.cursize
					, chan->outgoingSequence
					, chan->unsentFragmentStart, fragmentLength );
	}

	chan->unsentFragmentStart += fragmentLength;

	// this exit condition is a little tricky, because a packet
	// that is exactly the fragment length still needs to send
	// a second packet of zero length so that the other side
	// can tell there aren't more to follow
	if ( chan->unsentFragmentStart == chan->unsentLength && var_01 ) {
		chan->outgoingSequence++;
		chan->unsentFragments = qfalse;
	}
	return sendsucc;
}




/*
===============
Netchan_Transmit

Sends a message to a connection, fragmenting if necessary
A 0 length will still generate a packet.
================
*/
qboolean Netchan_Transmit( netchan_t *chan, int length, const byte *data ) {
	msg_t send;
	qboolean sendsucc;
	byte send_buf[MAX_PACKETLEN];

	if ( length > chan->unsentBufferSize ) {
		Com_Error( ERR_DROP, "Netchan_Transmit: length = %i", length );
	}
	chan->unsentFragmentStart = 0;

	// fragment large reliable messages
	if ( length >= FRAGMENT_SIZE ) {
		chan->unsentFragments = qtrue;
		chan->unsentLength = length;
		Com_Memcpy( chan->unsentBuffer, data, length );
		// only send the first fragment now
		Netchan_TransmitNextFragment( chan );
		return qtrue;
	}

	// write the packet header
	MSG_Init( &send, send_buf, sizeof( send_buf ) );

	MSG_WriteLong( &send, chan->outgoingSequence );
	chan->outgoingSequence++;

	// send the qport if we are a client
	if ( chan->sock == NS_CLIENT ) {
		MSG_WriteShort( &send, qport->integer );
	}

	MSG_WriteData( &send, data, length );

	// send the datagram
	sendsucc = NET_SendPacket( chan->sock, send.cursize, send.data, &chan->remoteAddress );
	if ( showpackets->boolean ) {
		Com_Printf(CON_CHANNEL_NETWORK, "%s send %4i : s=%i ack=%i\n"
					, netsrcString[ chan->sock ]
					, send.cursize
					, chan->outgoingSequence - 1
					, chan->incomingSequence );
	}
	return sendsucc;
}




/*
=============================================================================

LOOPBACK BUFFERS FOR LOCAL PLAYER

=============================================================================
*/

// there needs to be enough loopback messages to hold a complete
// gamestate of maximum size
#define	MAX_LOOPBACK	16

typedef struct {
	byte	data[MAX_PACKETLEN];
	int		datalen;
} loopmsg_t;

typedef struct {
	loopmsg_t	msgs[MAX_LOOPBACK];
	int			get, send;
} loopback_t;

loopback_t	loopbacks[2];


qboolean	NET_GetLoopPacket (netsrc_t sock, netadr_t *net_from, msg_t *net_message)
{
	int		i;
	loopback_t	*loop;

	loop = &loopbacks[sock];

	if (loop->send - loop->get > MAX_LOOPBACK)
		loop->get = loop->send - MAX_LOOPBACK;

	if (loop->get >= loop->send)
		return qfalse;

	i = loop->get & (MAX_LOOPBACK-1);
	loop->get++;

	Com_Memcpy (net_message->data, loop->msgs[i].data, loop->msgs[i].datalen);
	net_message->cursize = loop->msgs[i].datalen;
	Com_Memset (net_from, 0, sizeof(*net_from));
	net_from->type = NA_LOOPBACK;
	return qtrue;

}


void NET_SendLoopPacket (netsrc_t sock, int length, const void *data, netadr_t to)
{
	int		i;
	loopback_t	*loop;

	loop = &loopbacks[sock^1];

	i = loop->send & (MAX_LOOPBACK-1);
	loop->send++;

	Com_Memcpy (loop->msgs[i].data, data, length);
	loop->msgs[i].datalen = length;
}

//=============================================================================

qboolean NET_SendPacket( netsrc_t sock, int length, const void *data, netadr_t *to ) {

	qboolean returnNow = qfalse;

	PHandler_Event(PLUGINS_ONUDPNETSEND, to, data, length, &returnNow);

	if(returnNow){
		return qtrue;
	}

	// sequenced packets are shown in netchan, so just show oob
	if ( showpackets->boolean && *(int *)data == -1 ){
		char string[128];
		Com_Printf(CON_CHANNEL_NETWORK,"NET_SendPacket %4i destination %s\n", length, NET_AdrToStringMT(to, string, sizeof(string)));
	}
	if ( to->type == NA_LOOPBACK ) {
		NET_SendLoopPacket (sock, length, data, *to);
		return qtrue;
	}
	if ( to->type == NA_BOT ) {
		return qfalse;		//???????????????????????????????????????????????????
	}
	if ( to->type == NA_BAD ) {
		return qfalse;
	}
	return Sys_SendPacket( length, data, to );
}

/*
===============
NET_OutOfBandPrint

Sends a text message in an out-of-band datagram
================
*/

__cdecl void QDECL NET_OutOfBandPrint( netsrc_t sock, netadr_t *adr, const char *format, ... ) {
	va_list		argptr;
	char		string[MAX_MSGLEN];

	// set the header
	string[0] = -1;
	string[1] = -1;
	string[2] = -1;
	string[3] = -1;

	va_start( argptr, format );
	Q_vsnprintf( string+4, sizeof(string)-4, format, argptr );
	va_end( argptr );

	// send the datagram
	NET_SendPacket( sock, strlen( string ), string, adr );
}

/*
===============
NET_OutOfBandData

Sends a data message in an out-of-band datagram
================
*/
void NET_OutOfBandData( netsrc_t sock, netadr_t *adr, byte *format, int len ) {
	byte string[MAX_MSGLEN];
	int i;
//	msg_t mbuf;

	// set the header
	string[0] = 0xff;
	string[1] = 0xff;
	string[2] = 0xff;
	string[3] = 0xff;

/*	if(len +5 >= MAX_MSGLEN){
	    Com_PrintWarning("Buffer Overflow in NET_OutOfBandData %i bytes\n", len);
	    return;
	}
*/
	for ( i = 0; i < len ; i++ ) {
		string[i+4] = format[i];
	}
//	string[i+1] = 0;
	//mbuf.data = string;
	//mbuf.cursize = len + 4;
	//Huff_Compress( &mbuf, 12 );
	// send the datagram
	//NET_SendPacket( sock, mbuf.cursize, mbuf.data, adr );
	NET_SendPacket( sock, i+4, string, adr );
}


/*
===============
NET_TCPPrint

Sends a text message in an out-of-band datagram
================
*/
/*
void QDECL NET_PrintData( int sock, const char *format, ... ) {
	va_list		argptr;
	char		string[MAX_PACKETLEN];


	va_start( argptr, format );
	Q_vsnprintf( string, sizeof(string), format, argptr );
	va_end( argptr );

	// send the datagram
	NET_TcpSendData( sock, string, strlen( string ) );
}
*/
/*
===============
NET_TCPData

Sends a data message in an out-of-band datagram
================
*/
qboolean NET_SendData( int sock, msg_t* msg) {

	return NET_TcpSendData( sock, msg->data, msg->cursize, NULL, 0 );
}


byte net_cookieSecret[58];


void NET_CookieInit(){

    Com_RandomBytes(net_cookieSecret, sizeof(net_cookieSecret));
}

int NET_CookieHash(netadr_t *from){

    uint32_t digest[5];
    uint32_t workspace[80];
    char data[64];
    int i;

    if(from->type == NA_IP){

        for(i = 0; i < 4; i++)
            data[i] = from->ip[i];

        *((unsigned short*)&data[4]) = from->port;

        Com_Memcpy(&data[6], net_cookieSecret, sizeof(data) -6);

    }else if(from->type == NA_IP6){
        for(i = 0; i < 16; i++)
            data[i] = from->ip[i];

        *((unsigned short*)&data[16]) = from->port;

        Com_Memcpy(&data[18], net_cookieSecret, sizeof(data) -18);

    }else
        return 0;

    sha_init(digest);

    sha_transform(digest, data, workspace);

    return digest[0];
}
