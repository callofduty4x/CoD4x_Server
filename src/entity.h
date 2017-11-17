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


#ifndef __ENTITY_H__
#define __ENTITY_H__

#include "q_math.h"
#include "q_shared.h"
#include "game/surfaceflags.h"

#define g_entities ((gentity_t*)(0x841ffe0))

#ifndef CLIPHANDLE_DEFINED
#define CLIPHANDLE_DEFINED
typedef unsigned int clipHandle_t;
#endif

typedef enum {
	TR_STATIONARY,
	TR_INTERPOLATE,				// non-parametric, but interpolate between snapshots
	TR_LINEAR,
	TR_LINEAR_STOP,
	TR_SINE,					// value = base + sin( time / duration ) * delta
	TR_GRAVITY
} trType_t;

typedef struct {
	trType_t	trType;
	int		trTime;
	int		trDuration;			// if non 0, trTime + trDuration = stop time
	vec3_t		trBase;
	vec3_t		trDelta;			// velocity, etc
} trajectory_t;


typedef struct{
	int	cullDist;
	int	period;
}lerp_loopFx_t;


typedef struct{
	int	bodyPitch;
	int	bodyRoll;
	int	steerYaw;
	int	materialTime;
	int	gunPitch;
	int	gunYaw;
	int	teamAndOwnerIndex;
}lerp_vehicle_t;


typedef struct{
	int	lerp;
}lerp_soundBlend_t;


typedef struct{
	int	launchTime;
}lerp_missile_t;


typedef struct{
	int	leanf;
	int	movementDir;
}lerp_player_t;


typedef struct{
	int	data[6];
}lerp_anonymous_t;

typedef struct {
	int		eFlags;
	trajectory_t	pos;	// for calculating position	0x0c
	trajectory_t	apos;	// for calculating angles	0x30
	union{
		lerp_anonymous_t	anonymous;
		lerp_player_t		player;
		lerp_missile_t		missile;
		lerp_soundBlend_t	soundBlend;
		lerp_loopFx_t		loopFx;
		lerp_vehicle_t		vehicle;
	}u;
}lerp_t;

// entityState_t is the information conveyed from the server
// in an update message about entities that the client will
// need to render in some way
// Different eTypes may use the information in different ways
// The messages are delta compressed, so it doesn't really matter if
// the structure size is fairly large

typedef struct entityState_s {//Confirmed names and offsets but not types

	int		number;			// entity index	//0x00
	int		eType;			// entityType_t	//0x04

	lerp_t		lerp;

	int		time2;			//0x70


	int		otherEntityNum;		//0x74 shotgun sources, etc
	int		attackerEntityNum;	//0x78

	int		groundEntityNum;	//0x7c -1 = in air

	int		loopSound;		//0x80 constantly loop this sound
	int		surfType;		//0x84


	clipHandle_t	index;			//0x88
	int		clientNum;		//0x8c 0 to (MAX_CLIENTS - 1), for players and corpses
	int		iHeadIcon;		//0x90
	int		iHeadIconTeam;		//0x94

	int		solid;			//0x98 for client side prediction, trap_linkentity sets this properly	0x98

	int		eventParm;		//0x9c impulse events -- muzzle flashes, footsteps, etc
	int		eventSequence;		//0xa0

	vec4_t		events;			//0xa4
	vec4_t		eventParms;		//0xb4

	// for players
	int		weapon;			//0xc4 determines weapon and flash model, etc
	int		weaponModel;		//0xc8
	int		legsAnim;		//0xcc mask off ANIM_TOGGLEBIT
	int		torsoAnim;		//0xd0 mask off ANIM_TOGGLEBIT

	union{
		int	helicopterStage;	//0xd4
	}un1;
	int		un2;			//0xd8
	int		fTorsoPitch;		//0xdc
	int		fWaistPitch;		//0xe0
	vec4_t		partBits;		//0xe4
} entityState_t;	//sizeof(entityState_t): 0xf4


typedef struct {
	//entityState_t	s;				//Duplicated struct is removed
	byte		linked;				//0xf4 qfalse if not in any good cluster

	byte		bmodel;				//0xf5 if false, assume an explicit mins / maxs bounding box
							// only set by trap_SetBrushModel
	byte		svFlags;
	byte		pad1;

	int			clientMask[2];
	byte		inuse;
	byte		pad2[3];
	int			broadcastTime;

	vec3_t		mins, maxs;		//0x108  //0x114  from SharedEntity_t

	int		contents;		// CONTENTS_TRIGGER, CONTENTS_SOLID, CONTENTS_BODY, etc
						// a non-solid entity should set to 0

	vec3_t		absmin, absmax;		//0x124  //0x130 derived from mins/maxs and origin + rotation

	// currentOrigin will be used for all collision detection and world linking.
	// it will not necessarily be the same as the trajectory evaluation for the current
	// time, because each entity must be moved one at a time after time is advanced
	// to avoid simultanious collision issues
	vec3_t		currentOrigin;		//0x13c
	vec3_t		currentAngles;		//0x148

	// when a trace call is made and passEntityNum != ENTITYNUM_NONE,
	// an ent will be excluded from testing if:
	// ent->s.number == passEntityNum	(don't interact with self)
	// ent->r.ownerNum == passEntityNum	(don't interact with your own missiles)
	// entity[ent->r.ownerNum].r.ownerNum == passEntityNum	(don't interact with other missiles from owner)
	uint16_t	ownerNum;	//0x154
	uint16_t	pad3;
	int		eventTime;
} entityShared_t;

/* Real types are different of course */
typedef void turretInfo_s;



typedef struct gentity_s gentity_t;

struct gentity_s {
	entityState_t s;
	entityShared_t r;               // shared by both the server system and game

	// DO NOT MODIFY ANYTHING ABOVE THIS, THE SERVER
	// EXPECTS THE FIELDS IN THAT ORDER!
	//================================

	struct gclient_s    *client;            // NULL if not a client		0x15c

	turretInfo_s *pTurretInfo;
	struct scr_vehicle_s *scr_vehicle;

	uint16_t model;
	byte physicsObject;
	byte takedamage;
	byte active;
	byte nopickup;
	byte handler;
	byte team;

	uint16_t classname;
	uint16_t target;

	uint16_t targetname;
	uint16_t pad;
	unsigned int attachIgnoreCollision;

	int spawnflags;
	int flags;
	int eventTime;

	char pad_188[24]; /* 0x188 */
	int health; /* 0x1A0 */
	int maxHealth;
	int damage;
	int count;
	char unknown[104];
	struct tagInfo_s* tagInfo;
	char unknown2[88];
}; /* Size: 0x274 */

/***************** Verified *******************************/

#define GENTITYNUM_BITS     10  // JPW NERVE put q3ta default back for testing	// don't need to send any more
//#define	GENTITYNUM_BITS		11		// don't need to send any more		(SA) upped 4/21/2001 adjusted: tr_local.h (802-822), tr_main.c (1501), sv_snapshot (206)
#define MAX_GENTITIES       ( 1 << GENTITYNUM_BITS )

// entitynums are communicated with GENTITY_BITS, so any reserved
// values thatare going to be communcated over the net need to
// also be in this range
#define ENTITYNUM_NONE      ( MAX_GENTITIES - 1 )

/**********************************************************/

#define ENTITYNUM_WORLD     ( MAX_GENTITIES - 2 )
#define ENTITYNUM_MAX_NORMAL    ( MAX_GENTITIES - 2 )

#define	MAX_ENT_CLUSTERS	16


gentity_t* G_Spawn();
void G_SpawnHelicopter( gentity_t* vehent, gentity_t* ownerent, const char* type, const char* model );
qboolean G_CallSpawnEntity( gentity_t* ent );


#endif
