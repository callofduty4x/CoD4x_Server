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
        MSG_InitReadOnly(&msg, data, len);

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
    int (*tcpevent)(netadr_t* from, msg_t* msg, int connectionId);
    void (*tcpconncloseevent)(netadr_t* from, int connectionId);
    qboolean (*tcpidentevent)(netadr_t* from, msg_t* msg, int *connectionId);
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


qboolean NET_TCPPacketEvent(netadr_t* from, byte* bufData, int len, int* connectionId, int* serviceId) //Returns qtrue if it wants to write data to socket
{
    int i, r;
    qboolean ret;
    msg_t msg;

    if(*serviceId == -1)
    {
        if(len == 0)
        {
            return qfalse;
        }
        if(len < 4)
        {
            NET_TcpCloseSocket(from->sock);
            return qfalse; //Close connection
        }
        for(i = 0; i < MAX_TCPEVENTS; i++)
        {
            if(tcpevents[i].tcpidentevent == NULL)
            {
                continue;
            }
            msg.data = bufData;
            msg.cursize = len;
            msg.maxsize = len;
            msg.readcount = 0;
            msg.bit = 0;
            msg.readonly = qtrue;
            msg.overflowed = qfalse;

            ret = tcpevents[i].tcpidentevent(from, &msg, connectionId);
            if(ret)
            {
                *serviceId = tcpevents[i].serviceId;
                break;
            }
        }

    }

    if(*serviceId == -1)
    {
        return qfalse;
    }

    for(i = 0; i < MAX_TCPEVENTS; i++)
    {
        if(tcpevents[i].serviceId == *serviceId)
        {
            msg.data = bufData;
            msg.cursize = len;
            msg.maxsize = len;
            msg.readcount = 0;
            msg.bit = 0;
            msg.readonly = qtrue;
            msg.overflowed = qfalse;
            r = tcpevents[i].tcpevent(from, &msg, *connectionId);
            if(r == -1)
            {
                NET_TcpCloseSocket(from->sock);
                return qfalse;
            }else if(r == 1){
                return qtrue;
            }
            return qfalse;
        }
    }
    Com_PrintError(CON_CHANNEL_NETWORK,"NET_TCPPacketEvent: Bad serviceId: %x\n", serviceId);
    NET_TcpCloseSocket(from->sock);
    return qfalse; //Close connection
}




void NET_TCPAddEventType(
        int (*tcpevent)(netadr_t* from, msg_t* msg, int connectionId), //returns -1 to close connection, 0 waiting for more data to read, 1 if it wants to write more data
        qboolean (*tcpserviceidentevent)(netadr_t* from, msg_t* msg, int *connectionId),
        void (*tcpconncloseevent)(netadr_t* from, int connectionId),
        int serviceId
){
    int i;

    if(tcpevent == NULL || tcpserviceidentevent == NULL)
    {
        Com_Error(ERR_FATAL, "NET_TCPAddEventType: NULL tcpevent or tcpserviceidentevent handler");
        return;
    }
    if(serviceId == 0)
    {
        Com_Error(ERR_FATAL, "NET_TCPAddEventType: NULL serviceId");
        return;
    }
    for(i = 0; i < MAX_TCPEVENTS; i++)
    {
        if(tcpevents[i].tcpidentevent == tcpserviceidentevent)
        {
            Com_Error(ERR_FATAL, "NET_TCPAddEventType: Attempt to add an already defined redirect function twice.");
            return;
        }
        if(tcpevents[i].tcpevent == NULL)
        {
            tcpevents[i].tcpevent = tcpevent;
            tcpevents[i].tcpidentevent = tcpserviceidentevent;
            tcpevents[i].tcpconncloseevent = tcpconncloseevent;
            tcpevents[i].serviceId = serviceId;
            return;
        }
    }
    Com_Error(ERR_FATAL, "NET_TCPAddEventType: Out of redirect handles. Increase MAX_TCPEVENTS to add more redirect destinations");

}
