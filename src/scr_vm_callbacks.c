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
#include "entity.h"
#include "scr_vm.h"

//Only CoD4 gamescript callback functions here

/*

qboolean Scr_PlayerSay(gentity_t* from, int mode, const char* text){

    int callback;
    int threadId;
    int i, j;

    char textbuf[MAX_STRING_CHARS];
    for(i = 0, j = 0; i < sizeof(textbuf) -1 && text[i]; ++i)
    {
        textbuf[j] = text[i];

        if(textbuf[j] < ' ')
        {
            continue;
        }
        ++j;
    }
    textbuf[j] = '\0';

    callback = script_CallBacks_new[SCR_CB_SAY];
    if(!callback){
        return qfalse;
    }

    if(mode == 0)
        Scr_AddBool( qfalse );
    else
        Scr_AddBool( qtrue );

    Scr_AddString( textbuf );

    threadId = Scr_ExecEntThread(from, callback, 2);

    Scr_FreeThread(threadId);

    return qtrue;

}

*/

qboolean Scr_ScriptCommand(int clientnum, const char* cmd, const char* args){

    int callback;
    int threadId;

    int i, j;

    char textbuf[MAX_STRING_CHARS];
    /* Clean control characters */
    for(i = 0, j = 0; i < sizeof(textbuf) -1 && args[i]; ++i)
    {
        textbuf[j] = args[i];

        if(textbuf[j] < ' ')
        {
            continue;
        }
        ++j;
    }
    textbuf[j] = '\0';

    callback = script_CallBacks_new[SCR_CB_SCRIPTCOMMAND];
    if(!callback){
        Scr_Error("Attempt to call a script added function without a registered callback: maps/mp/gametypes/_callbacksetup::CodeCallback_ScriptCommand\nMaybe you have not used addscriptcommand() like it is supposed to use?");
        return qfalse;
    }

    Scr_AddString(textbuf);

    Scr_AddString(cmd);

    if(clientnum < 0 || clientnum > 63)
    {
        threadId = Scr_ExecThread(callback, 2);
    }else{
        threadId = Scr_ExecEntThread(&g_entities[clientnum], callback, 2);
    }

    Scr_FreeThread(threadId);

    return qtrue;
}

