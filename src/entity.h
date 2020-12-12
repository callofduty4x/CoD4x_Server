
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

#include "g_public_mp.h"
#include "q_shared.h"
#include "game/surfaceflags.h"




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


struct LerpEntityStatePhysicsJitter
{
  float innerRadius;
  float minDisplacement;
  float maxDisplacement;
};


struct LerpEntityStatePlayer
{
  float leanf;
  int movementDir;
};

struct LerpEntityStateLoopFx
{
  float cullDist;
  int period;
};

struct LerpEntityStateCustomExplode
{
  int startTime;
};

struct LerpEntityStateTurret
{
  vec3_t gunAngles;
};

struct LerpEntityStateAnonymous
{
  int data[7];
};

struct LerpEntityStateExplosion
{
  float innerRadius;
  float magnitude;
};

struct LerpEntityStateBulletHit
{
  vec3_t start;
};

struct LerpEntityStatePrimaryLight
{
  byte colorAndExp[4];
  float intensity;
  float radius;
  float cosHalfFovOuter;
  float cosHalfFovInner;
};

struct LerpEntityStateMissile
{
  int launchTime;
};

struct LerpEntityStateSoundBlend
{
  float lerp;
};

struct LerpEntityStateExplosionJolt
{
  float innerRadius;
  vec3_t impulse;
};

struct LerpEntityStateVehicle
{
  float bodyPitch;
  float bodyRoll;
  float steerYaw;
  int materialTime;
  float gunPitch;
  float gunYaw;
  int team;
};

struct LerpEntityStateEarthquake
{
  float scale;
  float radius;
  int duration;
};

union LerpEntityStateTypeUnion
{
  struct LerpEntityStateTurret turret;
  struct LerpEntityStateLoopFx loopFx;
  struct LerpEntityStatePrimaryLight primaryLight;
  struct LerpEntityStatePlayer player;
  struct LerpEntityStateVehicle vehicle;
  struct LerpEntityStateMissile missile;
  struct LerpEntityStateSoundBlend soundBlend;
  struct LerpEntityStateBulletHit bulletHit;
  struct LerpEntityStateEarthquake earthquake;
  struct LerpEntityStateCustomExplode customExplode;
  struct LerpEntityStateExplosion explosion;
  struct LerpEntityStateExplosionJolt explosionJolt;
  struct LerpEntityStatePhysicsJitter physicsJitter;
  struct LerpEntityStateAnonymous anonymous;
};



struct LerpEntityState
{
  int eFlags;
  trajectory_t pos;
  trajectory_t apos;
  union LerpEntityStateTypeUnion u;
};

enum entityType_t
{
  ET_GENERAL = 0x0,
  ET_PLAYER = 0x1,
  ET_PLAYER_CORPSE = 0x2,
  ET_ITEM = 0x3,
  ET_MISSILE = 0x4,
  ET_INVISIBLE = 0x5,
  ET_SCRIPTMOVER = 0x6,
  ET_SOUND_BLEND = 0x7,
  ET_FX = 0x8,
  ET_LOOP_FX = 0x9,
  ET_PRIMARY_LIGHT = 0xA,
  ET_MG42 = 0xB,
  ET_HELICOPTER = 0xC,
  ET_PLANE = 0xD,
  ET_VEHICLE = 0xE,
  ET_VEHICLE_COLLMAP = 0xF,
  ET_VEHICLE_CORPSE = 0x10,
  ET_EVENTS = 0x11,
  ET_MOVER = 0x99 //Dummy for botlib
};

// entityState_t is the information conveyed from the server
// in an update message about entities that the client will
// need to render in some way
// Different eTypes may use the information in different ways
// The messages are delta compressed, so it doesn't really matter if
// the structure size is fairly large

typedef struct entityState_s {//Confirmed names and offsets but not types

	int		number;			// entity index	//0x00
	enum entityType_t	eType;			// entityType_t	//0x04

	struct LerpEntityState	lerp;

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
	uint32_t	partBits[4];		//0xe4
} entityState_t;	//sizeof(entityState_t): 0xf4


typedef struct {
	byte		linked;				//0xf4 qfalse if not in any good cluster

	byte		bmodel;				//0xf5 if false, assume an explicit mins / maxs bounding box
							// only set by trap_SetBrushModel
	byte		svFlags;
	byte		pad1;

	int		clientMask[2];
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
  EntHandle ownerNum;
	int		eventTime;
} entityShared_t;


struct trigger_ent_t
{
  int threshold;
  int accumulate;
  int timestamp;
  int singleUserEntIndex;
  byte requireLookAt;
};

struct item_ent_t
{
  int ammoCount;
  int clipAmmoCount;
  int index;
};


struct mover_ent_t
{
  float decelTime;
  float aDecelTime;
  float speed;
  float aSpeed;
  float midTime;
  float aMidTime;
  vec3_t pos1;
  vec3_t pos2;
  vec3_t pos3;
  vec3_t apos1;
  vec3_t apos2;
  vec3_t apos3;
};

struct corpse_ent_t
{
  int deathAnimStartTime;
};

enum MissileStage
{
  MISSILESTAGE_SOFTLAUNCH = 0x0,
  MISSILESTAGE_ASCENT = 0x1,
  MISSILESTAGE_DESCENT = 0x2,
};

enum MissileFlightMode
{
  MISSILEFLIGHTMODE_TOP = 0x0,
  MISSILEFLIGHTMODE_DIRECT = 0x1,
};


struct missile_ent_t
{
  float time;
  int timeOfBirth;
  float travelDist;
  vec3_t surfaceNormal;
  enum team_s team;
  vec3_t curvature;
  int targetEntNum;
  vec3_t targetOffset;
  enum MissileStage stage;
  enum MissileFlightMode flightMode;
};


typedef struct gentity_s gentity_t;

struct gentity_s {
	entityState_t s;
	entityShared_t r;               // shared by both the server system and game

	// DO NOT MODIFY ANYTHING ABOVE THIS, THE SERVER
	// EXPECTS THE FIELDS IN THAT ORDER!
	//================================

	struct gclient_s    *client;            // NULL if not a client		0x15c

	struct turretInfo_s *pTurretInfo;
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

	int freeAfterEvent;
	int unlinkAfterEvent;
	int clipmask;
	int processedFrame;
	EntHandle parent;
	int nextthink;

  int health; /* 0x1A0 */
	int maxHealth;
	int damage;
	int count;

	struct gentity_s *chain;

	//	char unknown[104];
	union{
		struct item_ent_t item[2];
		struct trigger_ent_t trigger;
		struct mover_ent_t mover;
		struct corpse_ent_t corpse;
		struct missile_ent_t missile;
	};

	EntHandle missileTargetEnt;

	struct tagInfo_s* tagInfo;
	struct gentity_s *tagChildren;
	uint16_t attachModelNames[19];
	uint16_t attachTagNames[19];
	int useCount;
	struct gentity_s *nextFree;
}; /* Size: 0x274 */

extern gentity_t g_entities[];


struct tagInfo_s
{
  struct gentity_s *parent;
  struct gentity_s *next;
  uint16_t name;
  uint16_t pad;
  int index;
  float axis[4][3];
  float parentInvAxis[4][3];
};


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
