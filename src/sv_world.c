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
#include "trace.h"
#include "server.h"

typedef struct 
{
	vec3_t start;	//0x24
	vec3_t end;	//0x30
	vec3_t invDelta;
}TraceExtents;

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

	if(CM_TraceBox(clip->extents.start, mins, maxs, trace->fraction))
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
		trace->var_02 = qtrue;
		trace->entityNum = touch->s.number;
	}

}

