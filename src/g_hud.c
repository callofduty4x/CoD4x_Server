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
        if(element->type)
            continue;

        element->type = 1;
        element->x = 0;
        element->y = 0;
        element->var_03 = 0;
        element->targetEnt = 1023;
        element->fontType = 0;
        element->align = 0;
        element->screenAlign = 0;

        element->color.i = 0xFFFFFFFF;
        element->glowColor.i = 0;
        element->fadeColor.i = 0;

        element->fadeStartTime = 0;
        element->fadeTime = 0;
        element->var_13 = 0;
        element->sort = 0;
        element->displayOption = 0;
        element->pulseStartTime = 0;
        element->pulseSpeed = 0;
        element->pulseDecayStart = 0;
        element->pulseDecayDuration = 0;
        element->var_38 = 0;
        element->moveStartTime = 0;
        element->movingTime = 0;
        element->fontScale = 1.4;
        element->archived = 1;
        element->shaderWidth = 0;
        element->shaderHeight = 0;
        element->moveX = 0;
        element->moveY = 0;
        element->moveAlign = 0;
        element->moveScreenAlign = 0;
        element->shaderOldWidth = 0;
        element->shaderOldHeight = 0;
        element->scaleStartTime = 0;
        element->scaleTime = 0;
        element->timeValue = 0;
        element->duration = 0;
        element->value = 0;
        element->hudTextConfigStringIndex = 0;

        if(clientnum > 63)
            element->entityNum = 1023;
        else
            element->entityNum = clientnum;

        element->teamNum = 0;
        return element;
    }
    Com_PrintWarning("G_CreateHudElem: Exceeded limit of Hudelems\n");
    return NULL;
}


void G_HudSetColor(game_hudelem_t* element ,ucolor_t color,ucolor_t glowcolor){

    element->color = color;
    element->glowColor = glowcolor;

}

void G_HudSetPosition(game_hudelem_t* element ,float x, float y, hudscrnalign_t scrnhalign,  hudscrnalign_t scrnvalign, hudalign_t alignx, hudalign_t aligny){

    element->x = x;
    element->y = y;
    element->align = alignx | aligny;
    element->screenAlign = scrnhalign + scrnvalign;
}

void G_HudSetFont(game_hudelem_t* element ,float fontscale, fonttype_t fonttype){

    if(fontscale > 4.6 || fontscale < 1.399999)
    {
        Com_PrintWarning("Fontscale: %f is out of range. Range is 1.4 to 4.6\n", fontscale);
        fontscale = 1.4;
    }
    element->fontScale = fontscale;
    element->fontType = fonttype;
}

void G_HudSetMovingOverTime(game_hudelem_t* element ,int time, float newx, float newy){

    if(time > 60000 || time < 0)
    {
        Com_PrintWarning("G_HudSetMovingOverTime: time: %i is out of range. Range is 0 to 60000\n", time);
        time = 0;
    }


    element->moveStartTime = level.time;
    element->moveX = element->x;
    element->moveY = element->y;
    element->x = newx;
    element->y = newy;
    element->moveAlign = element->align;
    element->moveScreenAlign = element->screenAlign;
    element->movingTime = time;
}

void G_HudSetFadingOverTime(game_hudelem_t* element ,int time, ucolor_t newcolor){

    if(time > 60000 || time < 0)
    {
        Com_PrintWarning("G_HudSetFadeingOverTime: time: %i is out of range. Range is 0 to 60000\n", time);
        time = 0;
    }

    element->fadeStartTime = level.time;
    element->fadeColor = element->color;
    element->fadeTime = time;
    element->color = newcolor;
}


void G_HudSetText(game_hudelem_t* element ,const char *text)
{
    element->shaderWidth = 0;
    element->shaderHeight = 0;
    element->materialIndex = 0;

    element->moveX = 0;
    element->moveY = 0;
    element->moveAlign = 0;
    element->moveScreenAlign = 0;

    element->shaderOldWidth = 0;
    element->shaderOldHeight = 0;
    element->scaleStartTime = 0;
    element->scaleTime = 0;

    element->timeValue = 0;
    element->duration = 0;
    element->value = 0;

    element->hudTextConfigStringIndex = G_LocalizedStringIndex(text);
    element->type = 1;

}

void G_HudDestroy(game_hudelem_t* element){

    Scr_FreeHudElem(element);
    element->type = qfalse;

}

