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
#include "qcommon.h"
#include "qcommon_io.h"
#include "msg.h"
#include "sys_net.h"
#include "server.h"
#include "net_game.h"
#include "net_game_conf.h"
#include "plugin_handler.h"

void NET_UDPPacketEvent(netadr_t* from, void* data, int len, int buflen)
{

        msg_t msg;

        qboolean returnNow = qfalse;
        PHandler_Event(PLUGINS_ONUDPNETEVENT, from, data, len, &returnNow);
        if(returnNow)
        {
            return;
        }

        msg.data = data;
        msg.cursize = len;
        msg.maxsize = buflen;
        msg.readcount = 0;
        msg.bit = 0;
        msg.readonly = qfalse;
        msg.overflowed = qfalse;

        SV_PacketEvent(from, &msg);
}


unsigned int NET_TimeGetTime()
{
        return (unsigned int)com_frameTime;
}


/*
=================
NET_ReadTcpPackets
=================
*/

#define MAX_TCPEVENTS 4

typedef struct
{
    int serviceId;
    tcpclientstate_t (*tcpauthevent)(netadr_t* from, msg_t* msg, int *connectionId);
    qboolean (*tcpevent)(netadr_t* from, msg_t* msg, int connectionId);
    void (*tcpconncloseevent)(netadr_t* from, int connectionId);

}tcpevent_t;

tcpevent_t tcpevents[MAX_TCPEVENTS];

void NET_TCPConnectionClosed(netadr_t* adr, int connectionId, int serviceId)
{
        int i;

        for(i = 0; i < MAX_TCPEVENTS; i++)
        {

            if(tcpevents[i].serviceId == serviceId)
            {

                if(tcpevents[i].tcpconncloseevent != NULL)
                    tcpevents[i].tcpconncloseevent(adr, connectionId);

                return;
            }
        }
}

tcpclientstate_t NET_TCPAuthPacketEvent(netadr_t* from, byte* bufData, int len, int* connectionId, int *serviceId)
{

        int i;
        msg_t msg;
        tcpclientstate_t ret;

        msg.data = bufData;
        msg.cursize = len;
        msg.maxsize = len;
        msg.readcount = 0;
        msg.bit = 0;
        msg.readonly = qtrue;
        msg.overflowed = qfalse;

        Com_DPrintf("Auth Packet event from: %s\n", NET_AdrToString(from));

        for(i = 0; i < MAX_TCPEVENTS; i++)
        {

            if(tcpevents[i].tcpauthevent == NULL)
                continue;

            ret = tcpevents[i].tcpauthevent(from, &msg, connectionId);
            if(ret != TCP_AUTHNOTME)
            {
                *serviceId = tcpevents[i].serviceId;
                return ret;
            }
        }
        Com_DPrintf("^5Bad TCP-Packet from: %s\n", NET_AdrToString(from));
        return TCP_AUTHBAD; //Close connection
}

void NET_TCPPacketEvent(netadr_t* from, byte* bufData, int len, int connectionId, int serviceId)
{
        int i;
        msg_t msg;

		Com_DPrintf("Packet event from: %s\n", NET_AdrToString(from));

	
        for(i = 0; i < MAX_TCPEVENTS; i++)
        {
            if(tcpevents[i].serviceId == serviceId)
            {

                msg.data = bufData;
                msg.cursize = len;
                msg.maxsize = len;
                msg.readcount = 0;
                msg.bit = 0;
                msg.readonly = qtrue;
                msg.overflowed = qfalse;

                if(tcpevents[i].tcpevent(from, &msg, connectionId))
                {
                    NET_TcpCloseSocket(from->sock);
                }
                return;
            }
        }

        Com_PrintError("NET_TCPPacketEvent: Bad serviceId: %x\n", serviceId);
        NET_TcpCloseSocket(from->sock);
        return; //Close connection
}

void NET_TCPAddEventType(
        qboolean (*tcpevent)(netadr_t* from, msg_t* msg, int connectionId),
        tcpclientstate_t (*tcpauthevent)(netadr_t* from, msg_t* msg, int *connectionId),
        void (*tcpconncloseevent)(netadr_t* from, int connectionId),
        int serviceId
){


    int i;

    if(tcpevent == NULL || tcpauthevent == NULL)
    {
        Com_Error(ERR_FATAL, "NET_TCPAddEventType: NULL tcpevent handler or NULL tcpauthevent handler");
        return;
    }

    for(i = 0; i < MAX_TCPEVENTS; i++)
    {
        if(tcpevents[i].tcpevent ==  tcpevent)
        {
            Com_Error(ERR_FATAL, "NET_TCPAddEventType: Attempt to add an already defined redirect function twice.");
            return;
        }

        if(tcpevents[i].tcpevent == NULL)
        {
            tcpevents[i].tcpevent = tcpevent;
            tcpevents[i].tcpauthevent = tcpauthevent;
            tcpevents[i].tcpconncloseevent = tcpconncloseevent;
            tcpevents[i].serviceId = serviceId;
            return;
        }
    }
    Com_Error(ERR_FATAL, "NET_TCPAddEventType: Out of redirect handles. Increase MAX_TCPEVENTS to add more redirect destinations");

}

