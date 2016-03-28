/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
    Copyright (C) 1999-2005 Id Software, Inc.

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



#ifndef __TRACE_H__
#define __TRACE_H__

// a trace is returned when a box is swept through the world
typedef struct trace_s{
	float	fraction;       //0x00 time completed, 1.0 = didn't hit anything
	int	unknown[6];
/*	qboolean allsolid;      // if true, plane is not valid
	qboolean startsolid;    // if true, the initial point was in a solid area
	float fraction;         // time completed, 1.0 = didn't hit anything			//0x00
	vec3_t endpos;          // final position
	cplane_t plane;         // surface normal at impact, transformed to world space
	int surfaceFlags;       // surface hit
	int contents;           // contents on other side of surface hit*/
	int	var_02;		//0x1c
	short	entityNum;      //0x20 entity the contacted sirface is a part of
} trace_t;

// trace->entityNum can also be 0 to (MAX_GENTITIES-1)
// or ENTITYNUM_NONE, ENTITYNUM_WORLD
#ifndef CLIPHANDLE_DEFINED
#define CLIPHANDLE_DEFINED
typedef int clipHandle_t;
#endif

qboolean __cdecl CM_TraceBox(const float*, const float*, const float*, float);
clipHandle_t __cdecl CM_TempBoxModel(const float* mins, const float* maxs, int capsule);
void __cdecl CM_TransformedBoxTrace(trace_t* trace, const float* start, const float* end, const float* mins, const float* maxs,
			clipHandle_t cliphandle, int contentmask, const float* origin, const float* angle);

#endif

