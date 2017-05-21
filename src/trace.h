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

/* 760 */
typedef enum
{
  TRACE_HITTYPE_NONE = 0x0,
  TRACE_HITTYPE_ENTITY = 0x1,
  TRACE_HITTYPE_DYNENT_MODEL = 0x2,
  TRACE_HITTYPE_DYNENT_BRUSH = 0x3,
}TraceHitType;

typedef struct trace_s
{
  float fraction;
  vec3_t normal;
  int surfaceFlags;
  int contents;
  const char *material;
  TraceHitType hitType;
  uint16_t hitId;
  uint16_t modelIndex;
  uint16_t partName;
  uint16_t partGroup;
  byte allsolid;
  byte startsolid;
  byte walkable;
  byte padding;
}trace_t;

typedef struct
{
  int baseEntity;
  int parentEntity;
  byte ignoreSelf;
  byte ignoreParent;
  byte ignoreSiblings;
  byte ignoreChildren;
}IgnoreEntParams;

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

