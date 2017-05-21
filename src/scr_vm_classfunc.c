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

#include "scr_vm_classfunc.h"
#include "g_shared.h"
#include "misc.h"
#include "g_sv_shared.h"
#include "hl2rcon.h"

void __cdecl ClientScr_ReadOnly(gclient_t *pSelf, client_fields_t *pField)
{
    mvabuf;
    Scr_Error(va("player field '%s' is read-only", pField->name));
}

void __cdecl ClientScr_GetName(gclient_t *pSelf)
{
    if (pSelf->sess.cs.clientIndex < 0 || pSelf->sess.cs.clientIndex >= MAX_CLIENTS)
    {
        Com_PrintError("ClientScr_GetName() Bad entity\n");
        Scr_AddString("");
        return;
    }
    //	Com_Printf("ClientScr_GetName(): Name: %s for%d  %d\n", pSelf->sess.newnetname,pSelf->ps.clientNum, pSelf->sess.cs.clientIndex, gclient->ps.clientNum);
    Scr_AddString(svs.clients[pSelf->sess.cs.clientIndex].name);
}

void __cdecl ClientScr_SetSessionTeam(gclient_t *gcl, client_fields_t *gfl)
{
    short index;
    int cid;
    mvabuf;

    if ((void *)gcl - (void *)level.clients >= MAX_CLIENTS * sizeof(gclient_t))
    {
        Scr_Error("Client is not pointing to the level.clients array.");
        return;
    }

    index = Scr_GetConstString(0);

    if (index == stringIndex.axis)
        gcl->sess.cs.team = TEAM_RED;
    else if (index == stringIndex.allies)
        gcl->sess.cs.team = TEAM_BLUE;
    else if (index == stringIndex.spectator)
        gcl->sess.cs.team = TEAM_SPECTATOR;
    else if (index == stringIndex.none)
        gcl->sess.cs.team = TEAM_FREE;
    else
    {
        Scr_Error(va("'%s' is an illegal sessionteam string. Must be allies, axis, none, or spectator.", SL_ConvertToString(index)));
        return;
    }

    cid = gcl - level.clients;
    ClientUserinfoChanged(cid);
    HL2Rcon_EventClientEnterTeam(cid, gcl->sess.cs.team);
}

void __cdecl ClientScr_GetSpectatorClient(gclient_t *pSelf)
{
    Scr_AddInt(pSelf->spectatorClient);
}
