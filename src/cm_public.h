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


#ifndef __CM_PUBLIC_H__
#define __CM_PUBLIC_H__

#ifndef CLIPHANDLE_DEFINED
#define CLIPHANDLE_DEFINED
typedef unsigned int clipHandle_t;
#endif


typedef enum
{
  TRACE_HITTYPE_NONE = 0x0,
  TRACE_HITTYPE_ENTITY = 0x1,
  TRACE_HITTYPE_DYNENT_MODEL = 0x2,
  TRACE_HITTYPE_DYNENT_BRUSH = 0x3,
  TRACE_HITTYPE_GLASS = 0x4
}TraceHitType;


typedef struct trace_s
{
  float fraction;
  vec3_t normal;
  int sflags;
  int cflags;
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

typedef struct 
{
	vec3_t start;
	vec3_t end;
	vec3_t invDelta;
}TraceExtents;

struct sightclip_t
{
  vec3_t mins;
  vec3_t maxs;
  vec3_t outerSize;
  vec3_t start;
  vec3_t end;
  int passEntityNum[2];
  int contentmask;
};


struct sightpointtrace_t
{
  vec3_t start;
  vec3_t end;
  int passEntityNum[2];
  int contentmask;
  int locational;
  char *priorityMap;
};

typedef struct pointtrace_t
{
  TraceExtents extents;
  IgnoreEntParams *ignoreEntParams;
  int contentmask;
  int bLocational;
  char *priorityMap;
} pointtrace_t;


typedef struct moveclip_s{
	vec3_t mins;	//0x00
	vec3_t maxs;	//0x0c size of the moving object
	vec3_t outerSize;
	TraceExtents extents;
	int passEntityNum;  //0x48
	int passOwnerNum;   //0x4c
	int contentmask;    //0x50
} moveclip_t;


// trace->entityNum can also be 0 to (MAX_GENTITIES-1)
// or ENTITYNUM_NONE, ENTITYNUM_WORLD
#ifndef CLIPHANDLE_DEFINED
#define CLIPHANDLE_DEFINED
typedef unsigned int clipHandle_t;
#endif


#ifdef __cplusplus
extern "C"{
#endif

int CM_BoxLeafnums( const vec3_t mins, const vec3_t maxs, uint16_t *list, int listsize, int *lastLeaf );
byte *CM_ClusterPVS( int cluster );
int CM_PointLeafnum( const vec3_t p );
int CM_LeafCluster( int leafnum );
char *CM_EntityString( void );
void CM_ModelBounds( clipHandle_t model, vec3_t mins, vec3_t maxs );
clipHandle_t CM_InlineModel( int index );
int CM_NumInlineModels( void );
int CM_PointContents(const float *p, unsigned int model);
void SetPlaneSignbits( cplane_t *out );
int CM_TransformedPointContents( const vec3_t p, clipHandle_t model, const vec3_t origin, const vec3_t angles );
int __cdecl CM_TransformedBoxSightTrace(int hitNum, const float *start, const float *end, const float *mins, const float *maxs, unsigned int model, int brushmask, const float *origin, const float *angles);
void CM_DebugInit();
int __cdecl CM_BoxSightTrace(int oldHitNum, const float *start, const float *end, const float *mins, const float *maxs, unsigned int model, int brushmask);
int __cdecl CM_PointSightTraceToEntities(struct sightpointtrace_t *spt);
int __cdecl CM_ClipSightTraceToEntities(struct sightclip_t *clip);
int __cdecl CM_PointTraceStaticModelsComplete(const float *start, const float *end, int contentmask);


qboolean CM_TraceBox(TraceExtents *extents, const float *mins, const float *maxs, float fraction);
void REGPARM(3) CM_Trace(trace_t *results, const float *start, const float *end, const float *mins, const float *maxs, unsigned int model, int brushmask);

clipHandle_t __cdecl CM_TempBoxModel(const float* mins, const float* maxs, int capsule);
void __cdecl CM_TransformedBoxTrace(trace_t* trace, const float* start, const float* end, const float* mins, const float* maxs,
			clipHandle_t cliphandle, int contentmask, const float* origin, const float* angle);
void CM_BoxTrace( trace_t *results, const vec3_t start, const vec3_t end,
				  const vec3_t mins, const vec3_t maxs,
				  clipHandle_t model, int brushmask );

void __cdecl CM_CalcTraceExtents(TraceExtents *extents);
void __cdecl CM_ClipMoveToEntities(moveclip_t *clip, trace_t *trace);
void __cdecl CM_PointTraceStaticModels(trace_t *results, const float *start, const float *end, int contentmask);
void __cdecl CM_PointTraceToEntities(struct pointtrace_t *clip, trace_t *trace);
qboolean __cdecl CM_ClipHandleIsValid(unsigned int handle);
int __cdecl CM_ContentsOfModel(unsigned int handle);
void __cdecl CM_TransformedBoxTraceExternal(trace_t *results, const float *start, const float *end, const float *mins, const float *maxs, unsigned int model, int brushmask, const float *origin, const float *angles);
int16_t __cdecl Trace_GetEntityHitId(trace_t *trace);
void CM_LoadMap(const char *name, int *checksum);
void CM_Unload();
#ifdef __cplusplus
}
#endif


#endif

