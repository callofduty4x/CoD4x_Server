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



#include "q_shared.h"
#include "server.h"
#include "cm_public.h"
#include "dobj.h"

vec3_t actorLocationalMaxs = { 64.0, 64.0, 72.0 };
vec3_t actorLocationalMins = { -64.0, -64.0, -32.0 };

typedef struct moveclip_s{
	vec3_t mins;	//0x00
	vec3_t maxs;	//0x0c size of the moving object
	vec3_t outerSize;
	TraceExtents extents;
	int passEntityNum;  //0x48
	int passOwnerNum;   //0x4c
	int contentmask;    //0x50
} moveclip_t;

clipHandle_t SV_ClipHandleForEntity(gentity_t *touch)
{
	if(!touch->r.bmodel)
		return CM_TempBoxModel(touch->r.mins, touch->r.maxs, touch->r.contents);
	else
		return touch->s.index;
}

qboolean G_ShouldEntitiesClip(moveclip_t *clip, int touchNum, gentity_t *touch)
{
	if(clip->passEntityNum < 64 && clip->contentmask & CONTENTS_PLAYERCLIP){

		if(g_entities[clip->passEntityNum].client->sess.cs.team == TEAM_FREE){

			if(!SV_FFAPlayerCanBlock()){
				if(touchNum < 64)
				{
					return qfalse;

				}else if(touch->r.ownerNum -1 < 64 && touch->r.contents & CONTENTS_PLAYERCLIP){
					return qfalse;
				}
			}

		}else if(!SV_FriendlyPlayerCanBlock()){

			if(touchNum < 64)
			{
				if(OnSameTeam( &g_entities[clip->passEntityNum], &g_entities[touchNum]))
				{
					return qfalse;
				}
			}
			else if( touch->r.ownerNum && touch->r.ownerNum <= 64 && touch->r.contents & CONTENTS_PLAYERCLIP)
			{
				if(OnSameTeam( &g_entities[clip->passEntityNum], &g_entities[touch->r.ownerNum -1]))
				{
					return qfalse;
				}
			}
		}
	}
	return qtrue;
}



/*
====================
SV_ClipToEntity

====================
*/
void SV_ClipToEntity( trace_t *trace, const vec3_t start, const vec3_t mins, const vec3_t maxs, const vec3_t end, int entityNum, int contentmask, int capsule ) {
	gentity_t  *touch;
	clipHandle_t clipHandle;
	float           *origin, *angles;

	touch = SV_GentityNum( entityNum );

	memset( trace, 0, sizeof( trace_t ) );

	// if it doesn't have any brushes of a type we
	// are looking for, ignore it
	if ( !( contentmask & touch->r.contents ) ) {
		trace->fraction = 1.0;
		return;
	}

	// might intersect, so do an exact clip
	clipHandle = SV_ClipHandleForEntity( touch );

	origin = touch->r.currentOrigin;
	angles = touch->r.currentAngles;

	if ( !touch->r.bmodel ) {
		angles = vec3_origin;   // boxes don't rotate
	}

	CM_TransformedBoxTrace( trace, start, end,
							mins, maxs, clipHandle, contentmask,
							origin, angles );

	if ( trace->fraction < 1 ) {
		trace->hitType = TRACE_HITTYPE_ENTITY;
		trace->hitId = touch->s.number;
	}
}



__cdecl void SV_ClipMoveToEntity(moveclip_t *clip, svEntity_t *entity, trace_t *trace){

	gentity_t	*touch;
	int		touchNum;
	float		*origin, *angles;
	vec3_t		mins, maxs;
	float		oldfraction;
	clipHandle_t	clipHandle;

	touchNum = entity - sv.svEntities;

	touch = SV_GentityNum( touchNum );

	if( !(clip->contentmask & touch->r.contents))
		return;

	if ( clip->passEntityNum != ENTITYNUM_NONE ) {

		if( touchNum == clip->passEntityNum )
			return;

		if(touch->r.ownerNum){
		
			if( touch->r.ownerNum - 1 == clip->passEntityNum )
			    return;


			if( touch->r.ownerNum - 1 == clip->passOwnerNum )
			    return;
		
		}
		if(!G_ShouldEntitiesClip(clip, touchNum, touch))
			return;
	}

	VectorAdd(touch->r.absmin, clip->mins, mins);
	VectorAdd(touch->r.absmax, clip->maxs, maxs);

	if(CM_TraceBox(&clip->extents, mins, maxs, trace->fraction))
		return;
	
	clipHandle = SV_ClipHandleForEntity(touch);

	origin = touch->r.currentOrigin;
	angles = touch->r.currentAngles;

	if ( !touch->r.bmodel ) {
		angles = vec3_origin;   // boxes don't rotate
	}

	oldfraction = trace->fraction;

	CM_TransformedBoxTrace( trace, clip->extents.start, clip->extents.end,
				clip->mins, clip->maxs, clipHandle, clip->contentmask, origin, angles );


	if ( trace->fraction < oldfraction ) {
		trace->hitType = TRACE_HITTYPE_ENTITY;
		trace->hitId = touch->s.number;
	}

}

void __cdecl SV_SetupIgnoreEntParams(IgnoreEntParams *ignoreEntParams, int baseEntity)
{
  gentity_t *ent = NULL;

  ignoreEntParams->baseEntity = baseEntity;
  if(baseEntity != 1023)
  {
	  ent = SV_GentityNum(baseEntity);
  }
  
  if ( ent && ent->r.ownerNum )
  {
    ignoreEntParams->parentEntity = ent->r.ownerNum - 1;
    ignoreEntParams->ignoreSelf = 1;
    ignoreEntParams->ignoreChildren = 1;
    ignoreEntParams->ignoreSiblings = 1;
    ignoreEntParams->ignoreParent = 0;
  }
  else
  {
    ignoreEntParams->parentEntity = -1;
    ignoreEntParams->ignoreSelf = 1;
    ignoreEntParams->ignoreChildren = 1;
    ignoreEntParams->ignoreSiblings = 1;
    ignoreEntParams->ignoreParent = 0;
  }
}

void G_TraceCapsule(trace_t *results, const float *start, const float *mins, const float *maxs, const float *end, int passEntityNum, int contentmask)
{
  IgnoreEntParams ignoreEntParams;

  SV_SetupIgnoreEntParams(&ignoreEntParams, passEntityNum);
  SV_Trace(results, start, mins, maxs, end, &ignoreEntParams, contentmask, 0, 0, 0);
}



void CM_AreaEntities_r(unsigned int nodeIndex, areaParms_t *ap)
{
  struct worldSector_s *node;
  gentity_t *gcheck;
  int en;

  for (node = &cm_world.sectors[nodeIndex] ;node->contents.contentsEntities & ap->contentmask; node = &cm_world.sectors[nodeIndex])
  {
		for(en = node->contents.entities; en > 0; en = sv.svEntities[en].nextEntityInWorldSector)
		{
      		int gnum = en -1;
			gcheck = SV_GentityNum(gnum);
			if ( gcheck->r.contents & ap->contentmask )
			{
				if ( gcheck->r.absmin[0] > ap->maxs[0]
					|| gcheck->r.absmin[1] > ap->maxs[1]
					|| gcheck->r.absmin[2] > ap->maxs[2]
					|| gcheck->r.absmax[0] < ap->mins[0]
					|| gcheck->r.absmax[1] < ap->mins[1]
					|| gcheck->r.absmax[2] < ap->mins[2] ) {
					continue;
				}
				if ( ap->count == ap->maxcount )
				{
					Com_DPrintf(CON_CHANNEL_SERVER,"CM_AreaEntities: MAXCOUNT\n");
					return;
				}
				ap->list[ap->count] = gnum;
				++ap->count;
	      	}
        }
      
	    if ( node->tree.dist >= ap->maxs[node->tree.axis] )
		{
			nodeIndex = node->tree.child[1];
			if ( node->tree.dist <= ap->mins[node->tree.axis] )
			{
			return;
			}
		}
		else if ( node->tree.dist <= ap->mins[node->tree.axis] )
		{
			nodeIndex = node->tree.child[0];
		}
		else
		{
			nodeIndex = node->tree.child[1];
			CM_AreaEntities_r(node->tree.child[0], ap);
		}
    }
}


int CM_AreaEntities(const float *mins, const float *maxs, int *entityList, int maxcount, int contentmask)
{
  areaParms_t ae; // [sp+8h] [bp-20h]@1

  ae.mins = mins;
  ae.maxs = maxs;
  ae.list = entityList;
  ae.count = 0;
  ae.maxcount = maxcount;
  ae.contentmask = contentmask;
  CM_AreaEntities_r(1u, &ae);
  return ae.count;
}


/*
=============
SV_PointContents
=============
*/

int SV_PointContents( const vec3_t p, int passEntityNum, int contentmask )
{
	int touch[MAX_GENTITIES];
	gentity_t *hit;
	int i, num;
	int contents, c2;
	clipHandle_t clipHandle;

	// get base contents from world
	contents = CM_PointContents( p, 0 );

	// or in contents from all the other entities
	num = CM_AreaEntities( p, p, touch, MAX_GENTITIES, contentmask );
	//CM_AreaEntities
	for ( i = 0 ; i < num ; i++ ) {
		if ( touch[i] == passEntityNum ) {
			continue;
		}
		hit = SV_GentityNum( touch[i] );

		// might intersect, so do an exact clip
		clipHandle = SV_ClipHandleForEntity( hit );

		c2 = CM_TransformedPointContents( p, clipHandle, hit->r.currentOrigin, hit->r.currentAngles );

		contents |= c2;
	}

	return contents & contentmask;
}


signed int __cdecl SV_SightTraceToEntity(const float *start, const float *mins, const float *maxs, const float *end, int entityNum, int contentmask)
{
  struct gentity_s *touch;
  signed int i;
  unsigned int clipHandle;
  const float *angles;
  vec3_t bmin;
  vec3_t bmax;

  touch = SV_GentityNum(entityNum);
  if ( !(contentmask & touch->r.contents) )
  {
    return 0;
  }
  for(i = 0; i < 3; ++i)
  {
    if ( end[i] <= start[i] )
    {
      bmax[i] = (end[i] + mins[i]) - 1.0;
      bmin[i] = (start[i] + maxs[i]) + 1.0;
    }
    else
    {
      bmax[i] = (start[i] + mins[i]) - 1.0;
      bmin[i] = (end[i] + maxs[i]) + 1.0;
    }
  }
  if ( touch->r.absmin[0] > bmin[0] || touch->r.absmin[1] > bmin[1] || touch->r.absmin[2] > bmin[2] || bmax[0] > touch->r.absmax[0] || bmax[1] > touch->r.absmax[1] || bmax[2] > touch->r.absmax[2] )
  {
    return 0;
  }
  clipHandle = SV_ClipHandleForEntity(touch);

  angles = touch->r.currentAngles;
  if ( !touch->r.bmodel )
  {
    angles = vec3_origin;
  }
  if ( CM_TransformedBoxSightTrace(0, start, end, mins, maxs, clipHandle, contentmask, touch->r.currentOrigin, angles) )
  {
    return -1;
  }
  return 0;
}




void __cdecl SV_SightTrace(int *hitNum, const float *start, const float *mins, const float *maxs, const float *end, int passEntityNum0, int passEntityNum1, int contentmask)
{
  vec3_t temp;
  struct sightpointtrace_t spt;
  struct sightclip_t clip;
  *hitNum = CM_BoxSightTrace(*hitNum, start, end, mins, maxs, 0, contentmask);

  if ( *hitNum )
  {
    return;
  }
  if ( maxs[0] - mins[0] + maxs[1] - mins[1] + maxs[2] - mins[2] == 0.0 )
  {
      spt.contentmask = contentmask;
      VectorCopy(start, spt.start);
      VectorCopy(end, spt.end);
      spt.passEntityNum[0] = passEntityNum0;
      spt.passEntityNum[1] = passEntityNum1;
      spt.locational = 0;
      *hitNum = CM_PointSightTraceToEntities(&spt);
  }
  else
  {
      VectorSubtract(maxs, mins, clip.outerSize);
      VectorScale(clip.outerSize, 0.5, clip.outerSize);
      clip.contentmask = contentmask;
      clip.passEntityNum[0] = passEntityNum0;
      clip.passEntityNum[1] = passEntityNum1;

      VectorCopy(clip.outerSize, clip.maxs);
      VectorScale(clip.outerSize, -1.0, clip.mins);

      clip.outerSize[0] = clip.outerSize[0] + 1.0;
      clip.outerSize[1] = clip.outerSize[1] + 1.0;
      clip.outerSize[2] = clip.outerSize[2] + 1.0;

      VectorAdd(maxs, mins, temp);
      VectorScale(temp, 0.5, temp);

      VectorAdd(start, temp, clip.start); 
      VectorAdd(end, temp, clip.end); 

      *hitNum = CM_ClipSightTraceToEntities(&clip);
  }
}


int __cdecl SV_TracePassed(const float *start, const float *mins, const float *maxs, const float *end, int passEntityNum0, int passEntityNum1, int contentmask, int locational, char *priorityMap, int staticmodels)
{
    vec3_t temp;
    struct sightpointtrace_t spt;
    struct sightclip_t clip;


    if ( CM_BoxSightTrace(0, start, end, mins, maxs, 0, contentmask))
    {
        return 0;
    }
    if(staticmodels)
    {
        if(!CM_PointTraceStaticModelsComplete(start, end, contentmask))
        {
            return 0;
        }
    }

    if ( maxs[0] - mins[0] + maxs[1] - mins[1] + maxs[2] - mins[2] == 0.0 )
    {
      spt.contentmask = contentmask;
      VectorCopy(start, spt.start);
      VectorCopy(end, spt.end);
      spt.passEntityNum[0] = passEntityNum0;
      spt.passEntityNum[1] = passEntityNum1;
      spt.locational = locational;
      spt.priorityMap = priorityMap;
      if(CM_PointSightTraceToEntities(&spt))
      {
        return 0;
      }
    }else{
      VectorSubtract(maxs, mins, clip.outerSize);
      VectorScale(clip.outerSize, 0.5, clip.outerSize);
      clip.contentmask = contentmask;
      clip.passEntityNum[0] = passEntityNum0;
      clip.passEntityNum[1] = passEntityNum1;

      VectorCopy(clip.outerSize, clip.maxs);
      VectorScale(clip.outerSize, -1.0, clip.mins);

      clip.outerSize[0] = clip.outerSize[0] + 1.0;
      clip.outerSize[1] = clip.outerSize[1] + 1.0;
      clip.outerSize[2] = clip.outerSize[2] + 1.0;

      VectorAdd(maxs, mins, temp);
      VectorScale(temp, 0.5, temp);

      VectorAdd(start, temp, clip.start); 
      VectorAdd(end, temp, clip.end); 

      if(CM_ClipSightTraceToEntities(&clip))
      {
        return 0;
      }
    }

    return 1;

}





/*
===============
SV_LinkEntity

===============
*/
#define MAX_TOTAL_ENT_LEAFS     128
void SV_LinkEntity( gentity_t *gEnt ) {
	uint16_t leafs[MAX_TOTAL_ENT_LEAFS];
	int cluster;
	int num_leafs;
	int i, j, k;
	int lastLeaf;
	float       *origin, *angles;
	struct svEntity_s  *ent;
	struct DObj_s* dobj;
	vec3_t min, max;
	clipHandle_t clip;

	assert(gEnt->r.inuse);

	ent = SV_SvEntityForGentity( gEnt );
/*
	// Ridah, sanity check for possible currentOrigin being reset bug
	if ( !gEnt->r.bmodel && VectorCompare( gEnt->r.currentOrigin, vec3_origin ) ) {
		Com_DPrintf( "WARNING: BBOX entity is being linked at world origin, this is probably a bug\n" );
	}

	if ( ent->worldSector ) {
		SV_UnlinkEntity( gEnt );    // unlink from old position
	}
*/
	// encode the size into the entityState_t for client prediction
	if ( gEnt->r.bmodel ) {
		gEnt->s.solid = SOLID_BMODEL;       // a solid_box will never create this value
	} else if ( gEnt->r.contents & ( CONTENTS_SOLID | CONTENTS_BODY ) ) {
		// assume that x/y are equal and symetric
		i = gEnt->r.maxs[0];
		if ( i < 1 ) {
			i = 1;
		}
		if ( i > 255 ) {
			i = 255;
		}

		// z is not symetric
		j = ( 1.0 - gEnt->r.mins[2] );
		if ( j < 1 ) {
			j = 1;
		}
		if ( j > 255 ) {
			j = 255;
		}

		// and z maxs can be negative...
		k = ( gEnt->r.maxs[2] + 32 );
		if ( k < 1 ) {
			k = 1;
		}
		if ( k > 255 ) {
			k = 255;
		}
		gEnt->s.solid = ( k << 16 ) | ( j << 8 ) | i;
/*
BLACKOPS
		if ( gEnt->s.solid == 0xFFFFFF )
		{
			gEnt->s.solid = 1;
		}
*/
	} else {
		gEnt->s.solid = 0;
	}

	// get the position
	origin = gEnt->r.currentOrigin;
	angles = gEnt->r.currentAngles;

	assert(!IS_NAN((angles)[0]) && !IS_NAN((angles)[1]) && !IS_NAN((angles)[2]));
	assert(!IS_NAN((origin)[0]) && !IS_NAN((origin)[1]) && !IS_NAN((origin)[2]));

	SnapAngles(angles);

	// set the abs box
	if ( gEnt->r.bmodel && ( angles[0] || angles[1] || angles[2] ) ) {
		// expand for rotation
		float max;
		int i;

		max = RadiusFromBounds( gEnt->r.mins, gEnt->r.maxs );
		for ( i = 0 ; i < 3 ; i++ ) {
			gEnt->r.absmin[i] = origin[i] - max;
			gEnt->r.absmax[i] = origin[i] + max;
		}
	} else {
		// normal
		VectorAdd( origin, gEnt->r.mins, gEnt->r.absmin );
		VectorAdd( origin, gEnt->r.maxs, gEnt->r.absmax );
	}

	// because movement is clipped an epsilon away from an actual edge,
	// we must fully check even when bounding boxes don't quite touch
	gEnt->r.absmin[0] -= 1;
	gEnt->r.absmin[1] -= 1;
	gEnt->r.absmin[2] -= 1;
	gEnt->r.absmax[0] += 1;
	gEnt->r.absmax[1] += 1;
	gEnt->r.absmax[2] += 1;

	// link to PVS leafs
	ent->numClusters = 0;
	ent->lastCluster = 0;

	if ( !(gEnt->r.svFlags & 0x19) )
	{
		//get all leafs, including solids
		num_leafs = CM_BoxLeafnums( gEnt->r.absmin, gEnt->r.absmax, leafs, MAX_TOTAL_ENT_LEAFS, &lastLeaf );

		// if none of the leafs were inside the map, the
		// entity is outside the world and can be considered unlinked
		if ( !num_leafs ) {
			CM_UnlinkEntity(ent);
			return;
		}

		// store as many explicit clusters as we can
		for ( i = 0 ; i < num_leafs ; i++ ) {
			cluster = CM_LeafCluster( leafs[i] );
			if ( cluster != -1 ) {
				ent->clusternums[ent->numClusters++] = cluster;
				if ( ent->numClusters == MAX_ENT_CLUSTERS ) {
					break;
				}
			}
		}

		// store off a last cluster if we need to
		if ( i != num_leafs ) {
			ent->lastCluster = CM_LeafCluster( lastLeaf );
		}
	}
	gEnt->r.linked = qtrue;

	if ( !gEnt->r.contents )
	{
		CM_UnlinkEntity(ent);
		return;
	}
	clip = SV_ClipHandleForEntity(gEnt);
	dobj = Com_GetServerDObj(gEnt->s.number);
	if ( dobj && gEnt->r.svFlags & 6 )
	{
		if ( gEnt->r.svFlags & 2 )
		{
			VectorAdd(origin, actorLocationalMins, min);
			VectorAdd(origin, actorLocationalMaxs, max);
		}
		else
		{
			DObjGetBounds(dobj, min, max);
			VectorAdd(origin, min, min);
			VectorAdd(origin, max, max);
		}
		CM_LinkEntity(ent, min, max, clip);
	}
	else
	{
		CM_LinkEntity(ent, gEnt->r.absmin, gEnt->r.absmax, clip);
	}
}


void __cdecl SV_UnlinkEntity(struct gentity_s *gEnt)
{
  svEntity_t *ent;

  ent = SV_SvEntityForGentity(gEnt);
  gEnt->r.linked = 0;
  CM_UnlinkEntity(ent);
}



void __cdecl SV_TracePointToEntity(pointtrace_t *clip, svEntity_s *check, trace_t *trace)
{
  unsigned int v3; // ST5C_4@54
  char *v4; // eax@56
  unsigned __int16 v5; // [sp+26h] [bp-126h]@94
  unsigned __int16 v6; // [sp+4Ah] [bp-102h]@61
  float *v7; // [sp+68h] [bp-E4h]@30
  float *v8; // [sp+70h] [bp-DCh]@27
  gentity_s *touch; // [sp+A0h] [bp-ACh]@1
  float entAxis[4][3]; // [sp+A4h] [bp-A8h]@22
  unsigned int clipHandle; // [sp+D4h] [bp-78h]@83
  DObj *obj; // [sp+D8h] [bp-74h]@14
  float absmin[3]; // [sp+DCh] [bp-70h]@22
  float localStart[3]; // [sp+E8h] [bp-64h]@39
  const float *angles; // [sp+F4h] [bp-58h]@83
  DObjTrace_s objTrace; // [sp+F8h] [bp-54h]@39
  float localEnd[3]; // [sp+118h] [bp-34h]@39
  float absmax[3]; // [sp+124h] [bp-28h]@22
  int entnum; // [sp+130h] [bp-1Ch]@1
  int partBits[5]; // [sp+134h] [bp-18h]@40
  float oldFraction; // [sp+148h] [bp-4h]@85

  entnum = check - sv.svEntities;
  touch = SV_GentityNum(entnum);


//EntHandle::isDefined(&touch->r.ownerNum) --> touch->r.ownerNum != 0
//EntHandle::entnum(&touch->r.ownerNum) --> touch->r.ownerNum -1
  if ( !touch->r.contents & clip->contentmask )
  {
    return;
  }
  if( clip->ignoreEntParams && clip->ignoreEntParams->baseEntity != 1023 )
  {
    if(clip->ignoreEntParams->ignoreSelf && entnum == clip->ignoreEntParams->baseEntity)
    {
        return;
    }
    if(clip->ignoreEntParams->ignoreParent && entnum == clip->ignoreEntParams->parentEntity)
    {
        return;
    }
    if(EntHandle::isDefined(&touch->r.ownerNum))
    {
	if(clip->ignoreEntParams->ignoreSiblings && EntHandle::entnum(&touch->r.ownerNum) == clip->ignoreEntParams->parentEntity
		&& entnum != clip->ignoreEntParams->baseEntity)
	{
		return;
	}
	if(clip->ignoreEntParams->ignoreChildren && EntHandle::entnum(&touch->r.ownerNum) == clip->ignoreEntParams->baseEntity)
	{
		return;
	}
    }
  }


  obj = SV_LocationalTraceDObj(clip, touch);
  if ( obj )
  {
    PIXBeginNamedEvent(-1, "SV_TracePointToEntity 1");
    if ( touch->r.svFlags & 4 )
    {
      if ( !DObjHasContents(obj, clip->contentmask) )
      {
        if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
        {
          D3DPERF_EndEvent();
        }
        return;
      }
      absmin[0] = touch->r.absmin[0];
      absmin[1] = touch->r.absmin[1];
      absmin[2] = touch->r.absmin[2];
      absmax[0] = touch->r.absmax[0];
      absmax[1] = touch->r.absmax[1];
      absmax[2] = touch->r.absmax[2];
      *(double *)entAxis[3] = *(double *)&touch->r.currentOrigin[0];
      entAxis[3][2] = touch->r.currentOrigin[2];
    }
    else
    {
      if ( !clip->priorityMap
        && !(unsigned __int8)Assert_MyHandler(
                               "C:\\projects_pc\\cod\\codsrc\\src\\server\\sv_world.cpp",
                               485,
                               0,
                               "%s",
                               "clip->priorityMap") )
      {
        __debugbreak();
      }
      *(double *)entAxis[3] = *(double *)&touch->r.currentOrigin[0];
      entAxis[3][2] = touch->r.currentOrigin[2];
      if ( touch->client )
      {
        v8 = (float *)&actorLocationalMinsBig;
      }
      else
      {
        v8 = actorLocationalMins;
      }
      absmin[0] = entAxis[3][0] + *v8;
      absmin[1] = entAxis[3][1] + v8[1];
      absmin[2] = entAxis[3][2] + v8[2];
      if ( touch->client )
      {
        v7 = (float *)&actorLocationalMaxsBig;
      }
      else
      {
        v7 = actorLocationalMaxs;
      }
      absmax[0] = entAxis[3][0] + *v7;
      absmax[1] = entAxis[3][1] + v7[1];
      absmax[2] = entAxis[3][2] + v7[2];
    }
    if ( intersect_extents_aabb(&clip->extents, absmin, absmax, trace->fraction) )
    {
      AnglesToAxis(touch->r.currentAngles, entAxis);
      MatrixTransposeTransformVector43(clip->extents.start.vec.v, entAxis, localStart);
      MatrixTransposeTransformVector43(clip->extents.end.vec.v, entAxis, localEnd);
      objTrace.fraction = trace->fraction;
      if ( touch->r.svFlags & 4 )
      {
        DObjGeomTracelinePartBits(obj, clip->contentmask, partBits);
        G_DObjCalcPose(touch, partBits);
        DObjGeomTraceline(obj, localStart, localEnd, clip->contentmask, &objTrace);
      }
      else
      {
        DObjTracelinePartBits(obj, partBits);
        G_DObjCalcPose(touch, partBits);
        DObjTraceline(obj, localStart, localEnd, clip->priorityMap, &objTrace);
      }
      if ( g_debugLocDamage->current.integer == 2 )
      {
        SV_XModelDebugBoxes(touch, &colorWhite, partBits, 50);
      }
      if ( objTrace.fraction < trace->fraction )
      {
        if ( (objTrace.fraction >= 1.0 || objTrace.fraction < 0.0)
          && !(unsigned __int8)Assert_MyHandler(
                                 "C:\\projects_pc\\cod\\codsrc\\src\\server\\sv_world.cpp",
                                 526,
                                 0,
                                 "%s\n\t(objTrace.fraction) = %g",
                                 "(objTrace.fraction < 1.0f && objTrace.fraction >= 0)",
                                 objTrace.fraction) )
        {
          __debugbreak();
        }
        trace->fraction = objTrace.fraction;
        trace->sflags = objTrace.sflags;
        trace->modelIndex = objTrace.modelIndex;
        trace->partName = objTrace.partName;
        trace->boneIndex = objTrace.localBoneIndex;
        trace->partGroup = objTrace.partGroup;
        MatrixTransformVector(objTrace.normal, entAxis, trace->normal.vec.v);
        *(float *)&v3 = Abs(trace->normal.vec.v) - 1.0;
        if ( COERCE_FLOAT(_mm_and_ps((__m128)v3, (__m128)_mask__AbsFloat_)) >= 0.01 && Abs(trace->normal.vec.v) >= 0.01 )
        {
          v4 = va("%g %g %g", trace->normal.vec.v[0], trace->normal.vec.v[1], trace->normal.vec.v[2]);
          if ( !(unsigned __int8)Assert_MyHandler(
                                   "C:\\projects_pc\\cod\\codsrc\\src\\server\\sv_world.cpp",
                                   535,
                                   0,
                                   "%s\n\t%s",
                                   "(I_fabs( Vec3Length( trace->normal ) - 1.0f ) < 0.01) || (Vec3Length( trace->normal ) < 0.01)",
                                   v4) )
          {
            __debugbreak();
          }
        }
        trace->walkable = trace->normal.vec.v[2] >= 0.69999999;
        if ( touch->s.number != LOWORD(touch->s.number)
          && !(unsigned __int8)Assert_MyHandler(
                                 "C:\\projects_pc\\cod\\codsrc\\src\\server\\sv_world.cpp",
                                 538,
                                 0,
                                 "%s",
                                 "touch->s.number == static_cast<unsigned short>( touch->s.number )") )
        {
          __debugbreak();
        }
        v6 = touch->s.number;
        if ( !trace
          && !(unsigned __int8)Assert_MyHandler(
                                 "c:\\projects_pc\\cod\\codsrc\\src\\server_mp\\../qcommon/cm_public.h",
                                 175,
                                 0,
                                 "%s",
                                 "trace") )
        {
          __debugbreak();
        }
        trace->hitType = 1;
        trace->hitId = v6;
        trace->cflags = touch->r.contents;
        if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
        {
          D3DPERF_EndEvent();
        }
      }
      else if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
      {
        D3DPERF_EndEvent();
      }
    }
    else if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
    {
      D3DPERF_EndEvent();
    }
  }
  else
  {
    PIXBeginNamedEvent(-1, "SV_TracePointToEntity 2");
    if ( touch->r.bmodel || touch->s.eType != 6 )
    {
      if ( !(check->linkcontents & clip->contentmask) )
      {
        if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
        {
          D3DPERF_EndEvent();
        }
        return;
      }
      if ( !intersect_extents_aabb(&clip->extents, touch->r.absmin, touch->r.absmax, trace->fraction) )
      {
        if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
        {
          D3DPERF_EndEvent();
        }
        return;
      }
      clipHandle = SV_ClipHandleForEntity(touch);
      angles = touch->r.currentAngles;
      if ( !touch->r.bmodel )
      {
        angles = &vec3_origin;
      }
      oldFraction = trace->fraction;
      CM_TransformedBoxTrace(
        trace,
        clip->extents.start.vec.v,
        clip->extents.end.vec.v,
        &vec3_origin,
        &vec3_origin,
        clipHandle,
        clip->contentmask,
        touch->r.currentOrigin,
        angles);
      if ( trace->fraction >= oldFraction )
      {
        if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
        {
          D3DPERF_EndEvent();
        }
        return;
      }
      trace->modelIndex = 0;
      trace->partName = 0;
      trace->boneIndex = 0;
      trace->partGroup = 0;
      if ( touch->s.number != LOWORD(touch->s.number)
        && !(unsigned __int8)Assert_MyHandler(
                               "C:\\projects_pc\\cod\\codsrc\\src\\server\\sv_world.cpp",
                               577,
                               0,
                               "%s",
                               "touch->s.number == static_cast<unsigned short>( touch->s.number )") )
      {
        __debugbreak();
      }
      v5 = touch->s.number;
      if ( !trace
        && !(unsigned __int8)Assert_MyHandler(
                               "c:\\projects_pc\\cod\\codsrc\\src\\server_mp\\../qcommon/cm_public.h",
                               175,
                               0,
                               "%s",
                               "trace") )
      {
        __debugbreak();
      }
      trace->hitType = 1;
      trace->hitId = v5;
      trace->cflags = touch->r.contents;
    }
    if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
    {
      D3DPERF_EndEvent();
    }
  }
}