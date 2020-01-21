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


#ifndef __G_HUD_H__
#define __G_HUD_H__

#include "q_shared.h"
#include "entity.h"

#define HUDELEM_ADDR 0x8335620
#define MAX_HUDELEMS 1024

typedef enum{
    HUDFONT_DEFAULT,
    HUDFONT_BIGFIXED,
    HUDFONT_SMALLFIXED,
    HUDFONT_OBJECTIVE
}fonttype_t;

typedef enum{
    HUDALIGN_TOP = 0,
    HUDALIGN_LEFT = 0,
    HUDALIGN_MIDDLE = 1,
    HUDALIGN_BOTTOM = 2,
    HUDALIGN_CENTER = 4,
    HUDALIGN_RIGHT = 8
}hudalign_t;

typedef enum{
    HUDSCRNALIGN_TOP = 0,
    HUDSCRNALIGN_MIDDLE = 1,
    HUDSCRNALIGN_BOTTOM = 2,
    HUDSCRNALIGN_LEFT = 9,
    HUDSCRNALIGN_CENTER = 17,
    HUDSCRNALIGN_RIGHT = 25
}hudscrnalign_t;

typedef enum{
    HUDDISPLAY_FOREGROUND = 1,
    HUDDISPLAY_HIDEINMENU = 4
}huddisplayoptions_t;


enum hudelem_update_t
{
  HUDELEM_UPDATE_ARCHIVAL = 0x1,
  HUDELEM_UPDATE_CURRENT = 0x2,
  HUDELEM_UPDATE_ARCHIVAL_AND_CURRENT = 0x3
};


typedef struct game_hudelem_s
{
  struct hudelem_s elem;
  int clientNum;
  int team;
  int archived;
}game_hudelem_t;


extern struct game_hudelem_s g_hudelems[1024];

game_hudelem_t* G_GetNewHudElem(unsigned int clnum);
void G_HudSetText(game_hudelem_t*, const char*);
void G_HudSetPosition(game_hudelem_t*, float x, float y, hudscrnalign_t, hudscrnalign_t, hudalign_t alignx, hudalign_t aligny);
void G_HudSetColor(game_hudelem_t*, ucolor_t, ucolor_t);
void G_HudSetMovingOverTime(game_hudelem_t*, int, float newx, float newy);
void G_HudSetFont(game_hudelem_t*, float fontscale, fonttype_t ft);
void G_HudSetFadingOverTime(game_hudelem_t* element ,int time, ucolor_t newcolor);
void G_HudDestroy(game_hudelem_t* element);
game_hudelem_t *__cdecl HudElem_Alloc(int clientNum, int teamNum);
void HudElem_SetDefaults(game_hudelem_t *);
void HudElem_ClearTypeSettings(game_hudelem_t *);

#endif


