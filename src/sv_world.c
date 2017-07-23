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
