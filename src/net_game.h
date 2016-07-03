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



#ifndef __NET_GAME_H__
#define __NET_GAME_H__

#include "q_shared.h"
#include "sys_net.h"
#include "msg.h"

void NET_UDPPacketEvent(netadr_t* from, void* data, int len, int buflen);
unsigned int NET_TimeGetTime();

void NET_TCPConnectionClosed(netadr_t* adr, int connectionId, int serviceId);
tcpclientstate_t NET_TCPAuthPacketEvent(netadr_t* remote, byte* bufData, int cursize, int* connectionId, int *serviceId);
qboolean NET_TCPPacketEvent(netadr_t* remote, byte* bufData, int cursize, int *connectionId, int *serviceId);

void NET_TCPAddEventType(
        int (*tcpevent)(netadr_t* from, msg_t* msg, int connectionId),
        qboolean (*tcpserviceidentevent)(netadr_t* from, msg_t* msg, int *connectionId),
        void (*tcpconncloseevent)(netadr_t* from, int connectionId),
        int serviceId
);

#endif
