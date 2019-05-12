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
#include "qcommon_io.h"
#include "qcommon.h"
#include "server.h"
#include "client_dedicated.h"
#include <string.h>


vec4_t MYNULLTEXTCOLOR = { 0, 0, 0, 0 };

extern "C"
{

void __cdecl CL_AddDebugLine(const float *start, const float *end, const float *color, int depthTest, int duration)
{
    duration *= 10;
    SV_SendServerCommand(NULL, "M l %f %f %f;%f %f %f;%f %f %f %f;%d;%d", start[0], start[1], start[2], end[0], end[1], end[2],
                          color[0], color[1], color[2], color[3], depthTest, duration);
}

void __cdecl CL_AddDebugStarWithText(const float *point, const float *starColor, const float *textColor, const char *string, float fontsize, int duration)
{
    duration *= 10;
    if(string == NULL){
        string = "";
    }
    SV_SendServerCommand(NULL, "M S %f %f %f;%f %f %f %f;%f %f %f %f;%f;%d;%s", point[0], point[1], point[2],
                          starColor[0], starColor[1], starColor[2], starColor[3],
                          textColor[0], textColor[1], textColor[2], textColor[3], fontsize, duration, string);
}

void __cdecl CL_AddDebugStar(const float *point, const float *color, int duration)
{
    CL_AddDebugStarWithText(point, color, MYNULLTEXTCOLOR, NULL, 1.0, duration);
}

void __cdecl CL_AddDebugString(const float *xyz, const float *color, float scale, const char *text, int duration)
{
    duration *= 10;
    SV_SendServerCommand(NULL, "M t %f %f %f;%f %f %f %f;%f;%d;%s", xyz[0], xyz[1], xyz[2],
                          color[0], color[1], color[2], color[3], scale, duration, text);
}

void __cdecl SV_AddDebugStarWithText(unsigned int clnum, const float *point, const float *starColor, const float *textColor, const char *string, float fontsize, int duration)
{
    if(clnum >= (unsigned)sv_maxclients->integer)
    {
        return;
    }
    client_t* cl = &svs.clients[clnum];

    duration *= 10;
    if(string == NULL){
        string = "";
    }
    SV_SendServerCommand(cl, "M S %f %f %f;%f %f %f %f;%f %f %f %f;%f;%d;%s", point[0], point[1], point[2],
                          starColor[0], starColor[1], starColor[2], starColor[3],
                          textColor[0], textColor[1], textColor[2], textColor[3], fontsize, duration, string);
}

void __cdecl SV_AddDebugStar(unsigned int clnum, const float *point, const float *color, int duration)
{
    SV_AddDebugStarWithText(clnum, point, color, MYNULLTEXTCOLOR, NULL, 1.0, duration);
}

void __cdecl SV_AddDebugLine(unsigned int clnum, const float *start, const float *end, const float *color, int depthTest, int duration)
{
    if(clnum >= (unsigned)sv_maxclients->integer)
    {
        return;
    }
    client_t* cl = &svs.clients[clnum];


    duration *= 10;
    SV_SendServerCommand(cl, "M l %f %f %f;%f %f %f;%f %f %f %f;%d;%d", start[0], start[1], start[2], end[0], end[1], end[2],
                          color[0], color[1], color[2], color[3], depthTest, duration);
}


};

