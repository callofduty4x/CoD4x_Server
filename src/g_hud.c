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


#ifndef NDEBUG
static struct game_hudelem_s g_dummyHudCurrent;
#endif

game_hudelem_t* G_GetNewHudElem(unsigned int clientnum){

    int i;
    struct game_hudelem_s* elements = g_hudelems;
    struct hudelem_s* element; 
    for(i = 0; i < MAX_HUDELEMS; i++, elements++)
    {
        element = &elements->elem;
        if(element->type)
            continue;

        elements->archived = 1;
        if(clientnum > 63)
            elements->clientNum = 1023;
        else
            elements->clientNum = clientnum;

        elements->team = 0;


        element->type = 1;
        element->x = 0;
        element->y = 0;
        element->z = 0;
        element->targetEntNum = 1023;
        element->font = 0;
        element->alignOrg = 0;
        element->alignScreen = 0;
        element->color.rgba = 0xFFFFFFFF;
        element->glowColor.rgba = 0;
        element->fromColor.rgba = 0;
        element->fadeStartTime = 0;
        element->fadeTime = 0;
        element->label = 0;
        element->sort = 0;
        element->flags = 0;
        element->fxBirthTime = 0;
        element->fxLetterTime = 0;
        element->fxDecayStartTime = 0;
        element->fxDecayDuration = 0;
        element->soundID = 0;
        element->moveStartTime = 0;
        element->moveTime = 0;
        element->fontScale = 1.4;
        element->width = 0;
        element->height = 0;
        element->fromX = 0;
        element->fromY = 0;
        element->fromAlignOrg = 0;
        element->fromAlignScreen = 0;
        element->fromWidth = 0;
        element->fromHeight = 0;
        element->scaleStartTime = 0;
        element->scaleTime = 0;
        element->time = 0;
        element->duration = 0;
        element->value = 0;
        element->text = 0;

        return elements;
    }
    Com_PrintWarning(CON_CHANNEL_SCRIPT,"G_CreateHudElem: Exceeded limit of Hudelems\n");
    return NULL;
}

void __cdecl HudElem_Free(struct game_hudelem_s *hud)
{
  assert(hud != NULL);
  assert(hud - g_hudelems < 1024);
  assert(hud->elem.type > HE_TYPE_FREE && hud->elem.type < HE_TYPE_COUNT);

  Scr_FreeHudElem(hud);
  hud->elem.type = 0;
}


void G_HudSetColor(game_hudelem_t* element ,ucolor_t color,ucolor_t glowcolor){

    element->elem.color.rgba = color.i;
    element->elem.glowColor.rgba = glowcolor.i;

}

void G_HudSetPosition(game_hudelem_t* element ,float x, float y, hudscrnalign_t scrnhalign,  hudscrnalign_t scrnvalign, hudalign_t alignx, hudalign_t aligny){

    element->elem.x = x;
    element->elem.y = y;
    element->elem.alignOrg = alignx | aligny;
    element->elem.alignScreen = scrnhalign + scrnvalign;
}

void G_HudSetFont(game_hudelem_t* element ,float fontscale, fonttype_t fonttype){

    if(fontscale > 4.6 || fontscale < 1.399999)
    {
        Com_PrintWarning(CON_CHANNEL_SCRIPT,"Fontscale: %f is out of range. Range is 1.4 to 4.6\n", fontscale);
        fontscale = 1.4;
    }
    element->elem.fontScale = fontscale;
    element->elem.font = fonttype;
}

void G_HudSetMovingOverTime(game_hudelem_t* element ,int time, float newx, float newy){

    if(time > 60000 || time < 0)
    {
        Com_PrintWarning(CON_CHANNEL_SCRIPT,"G_HudSetMovingOverTime: time: %i is out of range. Range is 0 to 60000\n", time);
        time = 0;
    }


    element->elem.moveStartTime = level.time;
    element->elem.fromX = element->elem.x;
    element->elem.fromY = element->elem.y;
    element->elem.x = newx;
    element->elem.y = newy;
    element->elem.fromAlignOrg = element->elem.alignOrg;
    element->elem.fromAlignScreen = element->elem.alignScreen;
    element->elem.moveTime = time;
}

void G_HudSetFadingOverTime(game_hudelem_t* element ,int time, ucolor_t newcolor){

    if(time > 60000 || time < 0)
    {
        Com_PrintWarning(CON_CHANNEL_SCRIPT,"G_HudSetFadeingOverTime: time: %i is out of range. Range is 0 to 60000\n", time);
        time = 0;
    }

    element->elem.fadeStartTime = level.time;
    element->elem.fromColor = element->elem.color;
    element->elem.fadeTime = time;
    element->elem.color.rgba = newcolor.i;
}


void G_HudSetText(game_hudelem_t* element ,const char *text)
{
    element->elem.width = 0;
    element->elem.height = 0;
    element->elem.materialIndex = 0;

    element->elem.fromX = 0;
    element->elem.fromY = 0;
    element->elem.fromAlignOrg = 0;
    element->elem.fromAlignScreen = 0;

    element->elem.fromWidth = 0;
    element->elem.fromHeight = 0;
    element->elem.scaleStartTime = 0;
    element->elem.scaleTime = 0;

    element->elem.time = 0;
    element->elem.duration = 0;
    element->elem.value = 0;

    element->elem.text = G_LocalizedStringIndex(text);
    element->elem.type = 1;

}

void G_HudDestroy(game_hudelem_t* element){

    Scr_FreeHudElem(element);
    element->elem.type = 0;

}

void __cdecl HudElem_ClientDisconnect(struct gentity_s *ent)
{
  unsigned int i;

  for ( i = 0; i < 1024; ++i )
  {
    if ( g_hudelems[i].elem.type )
    {
      if ( g_hudelems[i].clientNum == ent->s.number )
      {
        HudElem_Free(&g_hudelems[i]);
      }
    }
  }
}

void __cdecl HudElem_DestroyAll()
{
  unsigned int i;

  for ( i = 0; i < 1024; ++i )
  {
    if ( g_hudelems[i].elem.type )
    {
      HudElem_Free(&g_hudelems[i]);
    }
  }
  memset(g_hudelems, 0, 1024*sizeof(struct hudelem_s));
}



void __cdecl HudElem_UpdateClient(struct gclient_s *client, int clientNum, enum hudelem_update_t which)
{
  int archivalCount;
  int currentCount;
  struct game_hudelem_s *hud;
  unsigned int i;
  struct hudelem_s *elem;

  assert(clientNum >= 0 && clientNum < level.maxclients);

  if (clientNum < 0 || clientNum >= level.maxclients)
  {
    return;
  }
  assert(level.gentities[clientNum].r.inuse);

  assert(client != NULL);

  for(i = 0, hud = g_hudelems, archivalCount = 0, currentCount = 0;i < 1024; ++i, ++hud)
  {
    if ( hud->elem.type && !(hud->elem.flags & 0x2000) && (!hud->team || hud->team == client->sess.cs.team) && (hud->clientNum == 1023 || hud->clientNum == clientNum) )
    {
      if ( hud->archived )
      {
        if ( which & 1 )
        {
          elem = &client->ps.hud.archival[archivalCount];
          if ( archivalCount < 31 )
          {
            ++archivalCount;
            memcpy(elem, hud, sizeof(struct hudelem_s));
          }
        }
      }
      else if ( which & 2 )
      {
        elem = &client->ps.hud.current[currentCount];
        if ( currentCount < 31 )
        {
          ++currentCount;
          memcpy(elem, hud, sizeof(struct hudelem_s));
        }
      }
    }
  }
  if ( which & 1 )
  {
    while ( archivalCount < 31 && client->ps.hud.archival[archivalCount].type )
    {
      memset(&client->ps.hud.archival[archivalCount], 0, sizeof(client->ps.hud.archival[0]));
      assert(client->ps.hud.archival[archivalCount].type == HE_TYPE_FREE);
      ++archivalCount;
    }
    while ( archivalCount < 31 )
    {
      assert(!memcmp( &client->ps.hud.archival[archivalCount], &g_dummyHudCurrent, sizeof( g_dummyHudCurrent ) ));
      ++archivalCount;
    }
  }
  if ( which & 2 )
  {
    while ( currentCount < 31 && client->ps.hud.current[currentCount].type )
    {
      memset(&client->ps.hud.current[currentCount], 0, sizeof(client->ps.hud.current[0]));
      assert(client->ps.hud.current[currentCount].type == HE_TYPE_FREE);
      ++currentCount;
    }
    for (;currentCount < 31;++currentCount )
    {
      assert(!memcmp( &client->ps.hud.current[currentCount], &g_dummyHudCurrent, sizeof( g_dummyHudCurrent ) ));
      ++currentCount;
    }
  }
}


