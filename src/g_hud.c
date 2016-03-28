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


#include "g_hud.h"
#include "qcommon_io.h"
#include "g_shared.h"
#include "g_sv_shared.h"
#include "scr_vm.h"



game_hudelem_t* g_hudelems = (game_hudelem_t*)(HUDELEM_ADDR);


game_hudelem_t* G_GetNewHudElem(unsigned int clientnum){

    int i;
    game_hudelem_t* element = g_hudelems;

    for(i = 0; i < MAX_HUDELEMS; i++, element++)
    {
        if(element->inuse)
            continue;

        element->inuse = qtrue;
        element->x = 0;
        element->y = 0;
        element->var_03 = 0;
        element->var_04 = 1023;
        element->fonttype = 0;
        element->align = 0;
        element->screenalign = 0;

        element->color.red = 255;
        element->color.green = 255;
        element->color.blue = 255;
        element->color.alpha = 255;
        element->glowcolor.red = 0;
        element->glowcolor.green = 0;
        element->glowcolor.blue = 0;
        element->glowcolor.alpha = 0;
        element->fadecolor.red = 0;
        element->fadecolor.green = 0;
        element->fadecolor.blue = 0;
        element->fadecolor.alpha = 0;

        element->fadestarttime = 0;
        element->fadetime = 0;
        element->var_13 = 0;
        element->sort = 0;
        element->displayoption = 0;
        element->var_34 = 0;
        element->var_35 = 0;
        element->var_36 = 0;
        element->var_37 = 0;
        element->var_38 = 0;
        element->movestarttime = 0;
        element->movingtime = 0;
        element->fontscale = 1.4;
        element->archived = 1;
        element->var_14 = 0;
        element->var_15 = 0;
        element->movex = 0;
        element->movey = 0;
        element->movealign = 0;
        element->movescralign = 0;
        element->var_18 = 0;
        element->var_19 = 0;
        element->var_20 = 0;
        element->var_21 = 0;
        element->var_28 = 0;
        element->var_29 = 0;
        element->var_30 = 0;
        element->hudTextConfigStringIndex = 0;

        if(clientnum > 63)
            element->entitynum = 1023;
        else
            element->entitynum = clientnum;

        element->teamnum = 0;
        return element;
    }
    Com_PrintWarning("G_CreateHudElem: Exceeded limit of Hudelems\n");
    return NULL;
}


void G_HudSetColor(game_hudelem_t* element ,ucolor_t color,ucolor_t glowcolor){

    element->color = color;
    element->glowcolor = glowcolor;

}

void G_HudSetPosition(game_hudelem_t* element ,float x, float y, hudscrnalign_t scrnhalign,  hudscrnalign_t scrnvalign, hudalign_t alignx, hudalign_t aligny){

    element->x = x;
    element->y = y;
    element->align = alignx | aligny;
    element->screenalign = scrnhalign + scrnvalign;
}

void G_HudSetFont(game_hudelem_t* element ,float fontscale, fonttype_t fonttype){

    if(fontscale > 4.6 || fontscale < 1.399999)
    {
        Com_PrintWarning("Fontscale: %f is out of range. Range is 1.4 to 4.6\n", fontscale);
        fontscale = 1.4;
    }
    element->fontscale = fontscale;
    element->fonttype = fonttype;
}

void G_HudSetMovingOverTime(game_hudelem_t* element ,int time, float newx, float newy){

    if(time > 60000 || time < 0)
    {
        Com_PrintWarning("G_HudSetMovingOverTime: time: %i is out of range. Range is 0 to 60000\n", time);
        time = 0;
    }


    element->movestarttime = level.time;
    element->movex = element->x;
    element->movey = element->y;
    element->x = newx;
    element->y = newy;
    element->movealign = element->align;
    element->movescralign = element->screenalign;
    element->movingtime = time;
}

void G_HudSetFadingOverTime(game_hudelem_t* element ,int time, ucolor_t newcolor){

    if(time > 60000 || time < 0)
    {
        Com_PrintWarning("G_HudSetFadeingOverTime: time: %i is out of range. Range is 0 to 60000\n", time);
        time = 0;
    }

    element->fadestarttime = level.time;
    element->fadecolor = element->color;
    element->fadetime = time;
    element->color = newcolor;
}


void G_HudSetText(game_hudelem_t* element ,const char *text){

    element->var_14 = 0;
    element->var_15 = 0;
    element->var_16 = 0;

    element->movex = 0;
    element->movey = 0;
    element->movealign = 0;
    element->movescralign = 0;

    element->var_18 = 0;
    element->var_19 = 0;
    element->var_20 = 0;
    element->var_21 = 0;

    element->var_28 = 0;
    element->var_29 = 0;
    element->var_30 = 0;

    element->hudTextConfigStringIndex = G_LocalizedStringIndex(text);
    element->inuse = qtrue;

}

void G_HudDestroy(game_hudelem_t* element){

    Scr_FreeHudElem(element);
    element->inuse = qfalse;

}

