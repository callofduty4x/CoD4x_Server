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



#ifndef __PLAYER_H__
#define __PLAYER_H__

#include "g_public_mp.h"
#include "q_shared.h"
#include "q_shared.h"
#include "entity.h"

#define KEY_MASK_FORWARD        127
#define KEY_MASK_MOVERIGHT      127
#define KEY_MASK_BACK           129
#define KEY_MASK_MOVELEFT       129

#define KEY_MASK_FIRE           1
#define KEY_MASK_SPRINT         2
#define KEY_MASK_MELEE          4
#define KEY_MASK_RELOAD         16
#define KEY_MASK_LEANLEFT       64
#define KEY_MASK_LEANRIGHT      128
#define KEY_MASK_PRONE          256
#define KEY_MASK_CROUCH         512
#define KEY_MASK_JUMP           1024
#define KEY_MASK_ADS_MODE       2048
#define KEY_MASK_TEMP_ACTION    4096
#define KEY_MASK_HOLDBREATH     8192
#define KEY_MASK_FRAG           16384
#define KEY_MASK_SMOKE          32768
#define KEY_MASK_NIGHTVISION    262144
#define KEY_MASK_ADS            524288
#define KEY_MASK_USE            8 
#define KEY_MASK_USERELOAD      0x20
#define BUTTON_ATTACK			KEY_MASK_FIRE

typedef struct{
    int	score; //0x2f78
    int	deaths; //0x2f7c
    int	kills; //0x2f80
    int	assists; //0x2f84
}clientScoreboard_t;

typedef struct{
	int	sprintButtonUpRequired;
	int	sprintDelay;
	int	lastSprintStart;
	int	lastSprintEnd;
	int	sprintStartMaxLength;
}sprintState_t;

typedef struct{
	float	yaw;
	int	timer;
	int	transIndex;
	int	flags;
}mantleState_t;

typedef struct playerState_s {
	int		commandTime;  // 0
	int		pm_type;  // 4
	int		bobCycle;  // 8
	int		pm_flags;  // 12
	int		weapFlags;  // 16
	int		otherFlags;  // 20
	int		pm_time;  // 24
	vec3_t		origin;  // 28
	
	// http://zeroy.com/script/player/getvelocity.htm
	vec3_t		velocity;  // 40
	vec2_t		oldVelocity;

	int		weaponTime;  // 60
	int		weaponDelay;  // 64
	int		grenadeTimeLeft;  // 68
	int		throwBackGrenadeOwner;  // 72
	int		throwBackGrenadeTimeLeft;  // 76
	int		weaponRestrictKickTime;  // 80
	int		foliageSoundTime;  // 84
	int		gravity;  // 88
	float	leanf;  // 92
	int		speed;  // 96
	vec3_t		delta_angles;  // 100
	
	/*The ground entity's rotation will be added onto the player's view.  In particular, this will 
	* cause the player's yaw to rotate around the entity's z-axis instead of the world z-axis. 
	* Any rotation that the reference entity undergoes will affect the player.
	* http://zeroy.com/script/player/playersetgroundreferenceent.htm */
	int		groundEntityNum;  // 112

	vec3_t		vLadderVec;  // 116
	int			jumpTime;  // 128
	float		jumpOriginZ;  // 132
	
	// Animations as in mp/playeranim.script and animtrees/multiplayer.atr, it also depends on mp/playeranimtypes.txt (the currently used weapon)
	int		legsTimer;  // 136
	int		legsAnim;  // 140
	int		torsoTimer;  // 144
	int		torsoAnim;  // 148

	int		legsAnimDuration;
	int		torsoAnimDuration;

	int		damageTimer;  // 160
	int		damageDuration;  // 164
	int		flinchYawAnim;  // 168
	int		movementDir;  // 172
	int		eFlags;  // 176
	int		eventSequence;  // 180

	int events[4];
	unsigned int eventParms[4];

	int		oldEventSequence;

	int		clientNum;  // 220
	int		offHandIndex;  // 224
	OffhandSecondaryClass_t	offhandSecondary;  // 228
	unsigned int weapon;  // 232
	int		weaponstate;  // 236
	unsigned int weaponShotCount;  // 240
	float	fWeaponPosFrac;  // 244
	int		adsDelayTime;  // 248
	
	// http://zeroy.com/script/player/resetspreadoverride.htm
	// http://zeroy.com/script/player/setspreadoverride.htm
	int		spreadOverride;  // 252
	int		spreadOverrideState;  // 256
	
	int		viewmodelIndex;  // 260

	vec3_t		viewangles;  // 264
	int		viewHeightTarget;  // 276
	float	viewHeightCurrent;  // 280
	int		viewHeightLerpTime;  // 284
	int		viewHeightLerpTarget;  // 288
	int		viewHeightLerpDown;  // 292
	vec2_t		viewAngleClampBase;  // 296
	vec2_t		viewAngleClampRange;  // 304

	int		damageEvent;  // 312
	int		damageYaw;  // 316
	int		damagePitch;  // 320
	int		damageCount;  // 324

	int		stats[5];
	int		ammo[128];
	int		ammoclip[128];

	unsigned int	weapons[4];
	unsigned int	weaponold[4];
	unsigned int	weaponrechamber[4];

	float		proneDirection;  // 1420
	float		proneDirectionPitch;  // 1424
	float		proneTorsoPitch;  // 1428
	ViewLockTypes_t		viewlocked;  // 1432
	int		viewlocked_entNum;  // 1436

	int		cursorHint;  // 1440
	int		cursorHintString;  // 1444
	int		cursorHintEntIndex;  // 1448

	int		iCompassPlayerInfo;  // 1452
	int		radarEnabled;  // 1456

	int		locationSelectionInfo;  // 1460
	sprintState_t	sprintState;  // 1464
	
	// used for leaning?
	float		fTorsoPitch;  // 1484
	float		fWaistPitch;  // 1488

	float		holdBreathScale;  // 1492
	int		holdBreathTimer;  // 1496
	
	// Scales player movement speed by this amount, ???it's actually a float???
	// http://zeroy.com/script/player/setmovespeedscale.htm
	float		moveSpeedScaleMultiplier;  // 1500
	
	mantleState_t	mantleState;  // 1504
	float		meleeChargeYaw;  // 1520
	int		meleeChargeDist;  // 1524
	int		meleeChargeTime;  // 1528
	int		perks;  // 1532

	ActionSlotType_t	actionSlotType[4];  // 1536
	ActionSlotParam_t		actionSlotParam[4];  // 1552

	int		entityEventSequence; // 1568

	int		weapAnim;  // 1572
	float	aimSpreadScale;  // 1576
	
	// http://zeroy.com/script/player/shellshock.htm
	int		shellshockIndex;  // 1580
	int		shellshockTime;  // 1584
	int		shellshockDuration;  // 1588

	// http://zeroy.com/script/player/setdepthoffield.htm
	float		dofNearStart;  // 1592
	float		dofNearEnd;  // 1596
	float		dofFarStart;  // 1600
	float		dofFarEnd;  // 1604
	float		dofNearBlur;  // 1608
	float		dofFarBlur;  // 1612
	float		dofViewmodelStart;  // 1616
	float		dofViewmodelEnd;  // 1620

	int			hudElemLastAssignedSoundID;  // 1624

	objective_t objective[16];
	char weaponmodels[128];

	int		deltaTime;  // 2204
	int		killCamEntity;  // 2208

	hudElemState_t hud;// 2212
} playerState_t;//Size: 0x2f64


typedef enum {
	CON_DISCONNECTED,
	CON_CONNECTING,
	CON_CONNECTED
} clientConnected_t;

typedef enum {
	SPECTATOR_NOT,
	SPECTATOR_FREE,
	SPECTATOR_FOLLOW,
	SPECTATOR_SCOREBOARD
} spectatorState_t;

typedef enum {
	TEAM_BEGIN,     // Beginning a team game, spawn at base
	TEAM_ACTIVE     // Now actively playing
} playerTeamStateState_t;

typedef struct {
	int location;
} playerTeamState_t;



// the auto following clients don't follow a specific client
// number, but instead follow the first two active players
#define FOLLOW_ACTIVE1  -1
#define FOLLOW_ACTIVE2  -2

// client data that stays across multiple levels or tournament restarts
// this is achieved by writing all the data to cvar strings at game shutdown
// time and reading them back at connection time.  Anything added here
// MUST be dealt with in G_InitSessionData() / G_ReadSessionData() / G_WriteSessionData()

#define MAX_NETNAME         16


typedef struct clientState_s
{
  int clientIndex;
  team_t team;
  int modelindex;
  int attachModelIndex[6];
  int attachTagIndex[6];
  char netname[MAX_NETNAME];
  float maxSprintTimeMultiplier;
  int rank;
  int prestige;
  int perks;
  int attachedVehEntNum;
  int attachedVehSlotIndex;
}clientState_t;

#define PICKUP_ACTIVATE 0   // pickup items only when using "+activate"
#define PICKUP_TOUCH    1   // pickup items when touched
#define PICKUP_FORCE    2   // pickup the next item when touched (and reset to PICKUP_ACTIVATE when done)

// usercmd_t is sent to the server each client frame
typedef struct usercmd_s
{
    int serverTime;
    int buttons;
    int angles[3];
    byte weapon;
    byte offHandIndex;
    char forwardmove; /* Must be char, not byte */
    char rightmove;   /* Must be char, not byte */
    float meleeChargeYaw;
    byte meleeChargeDist;
    byte selectedLocation[2];
    byte pad;
} usercmd_t;

typedef enum
{	SESS_STATE_PLAYING, SESS_STATE_DEAD,
	SESS_STATE_SPECTATOR, SESS_STATE_INTERMISSION
}sessionState_t;//0x2f64

// client data that stays across multiple respawns, but is cleared
// on each level change or team change at ClientBegin()
typedef struct {

	sessionState_t sessionState; //0x2f64

	int forceSpectatorClient;
	int killCamEntity;
	int status_icon;
	int archiveTime;			//0x2f74


    int	score; //0x2f78
    int	deaths; //0x2f7c
    int	kills; //0x2f80
    int	assists; //0x2f84
	
	uint16_t scriptPersId;          //0x2f88 the first spawn should be at a cool location
	byte pad2;
	byte pad;
	clientConnected_t connected;	//0x2f8c 
	usercmd_t cmd;                  //0x2f90 we would lose angles if not persistant
	usercmd_t oldcmd;               //0x2fb0 previous command processed by pmove()
	qboolean localClient;           //0x2fd0 true if "ip" info key is "localhost"
	qboolean predictItemPickup;     //0x2fd4 based on cg_predictItems userinfo

	char newnetname[MAX_NETNAME];	//0x2fd8

	int maxHealth;                  // 0x2fe8 for handicapping
	int enterTime;                  // 0x2fec level.time the client entered the game

	playerTeamState_t teamState;    // status in teamplay games
	int voteCount;                  // 0x2ff4 to prevent people from constantly calling votes
	int teamVoteCount;              // to prevent people from constantly calling votes		// N/A

	float moveSpeedScaleMultiplier;	// 0x2ffc

	int viewmodelIndex;				// 0x3000 //Model-index

	qboolean noSpectate;			// 0x3004
	int teamInfo;					// 0x3008 is free (unused)addr 
	
	clientState_t cs;
	int psOffsetTime;
	
} clientSession_t;


typedef struct {
	vec3_t mins;
	vec3_t maxs;

	vec3_t origin;

	int time;
	int servertime;
} clientMarker_t;

#define MAX_CLIENT_MARKERS 10

#define LT_SPECIAL_PICKUP_MOD   3       // JPW NERVE # of times (minus one for modulo) LT must drop ammo before scoring a point
#define MEDIC_SPECIAL_PICKUP_MOD    4   // JPW NERVE same thing for medic




typedef struct {
void* dummy;
}animModelInfo_t; //Dummy


typedef struct {
	qboolean bAutoReload; // do we predict autoreload of weapons
	int blockCenterViewTime; // don't let centerview happen for a little while

	// Arnout: MG42 aiming
	float varc, harc;
	vec3_t centerangles;

} pmoveExt_t;   // data used both in client and server - store it here


typedef struct gclient_s gclient_t;


// this structure is cleared on each ClientSpawn(),
// except for 'client->pers' and 'client->sess'
struct gclient_s {
	// ps MUST be the first element, because the server expects it
	playerState_t ps;               //0x00 communicated by server to clients

	// the rest of the structure is private to game
	
	clientSession_t sess;		//0x2f64
	int spectatorClient;        //0x3074 for chasecam and follow mode
	qboolean noclip;		//0x3078
	qboolean ufo;			//0x307c
	qboolean bFrozen;	//0x3080

	int lastCmdTime;                //0x3084 level.time of last usercmd_t, for EF_CONNECTION
									// we can't just use pers.lastCommand.time, because
									// of the g_sycronousclients case
	//Buttonlogic
	int buttons;			//0x3088
	int oldbuttons;	
	int latched_buttons;
	int buttonsSinceLastFrame;		//0x3094

	vec3_t oldOrigin;

	// sum up damage over an entire frame, so
	// shotgun blasts give a single big kick
	float fGunPitch;	
	float fGunYaw;
	int damage_blood;               // damage taken out of health
	vec3_t damage_from;             //0x30b0 origin for vector calculation
	qboolean damage_fromWorld;      //0x30bc if true, don't use the damage_from vector

	int accurateCount;              // for "impressive" reward sound	N/A

	int accuracy_shots;             // total number of shots		N/A
	int accuracy_hits;              // total number of hits			N/A

	int inactivityTime;             //0x30cc kick players when time > this
	qboolean inactivityWarning;     //0x30d0 qtrue if the five second warning has been given
	int lastVoiceTime;				//0x30d4 ??
	int switchTeamTime;             //0x30d8
    
	int currentAimSpreadScale;		//0x30dc

	int jumpHeight; //Used for per player jump height -- bad place here. This should be part of playerState_t
	int lastFollowedClient;

	int dropWeaponTime;				//JPW NERVE last time a weapon was dropped

	int sniperRifleFiredTime;       //Free member
	float sniperRifleMuzzleYaw;		//Free member
	int PCSpecialPickedUpCount;		//Free member

	EntHandle useHoldEntity; //0x30f8

	int useHoldTime;             //0x30fc time the player switched teams

	int useButtonDone;
	
	int iLastCompassPlayerInfoEnt;

	int compassPingTime;

	int damageTime;
	float v_dmg_roll;
	float v_dmg_pitch;
	vec3_t swayViewAngles;
	vec3_t swayOffset;
	vec3_t swayAngles;
	vec3_t vLastMoveAng;
  	float fLastIdleFactor;

	vec3_t vGunOffset;
  	vec3_t vGunSpeed;

	int weapIdleTime;
	int lastServerTime;
  	int lastSpawnTime;
  	unsigned int lastWeapon;
    bool previouslyFiring;
	bool previouslyUsingNightVision;
	bool previouslySprinting;
	bool pad;
	qboolean hasRadar;
	int lastStand;
	int lastStandTime;
};


struct clientControllers_s
{
  vec3_t angles[6];
  vec3_t tag_origin_angles;
  vec3_t tag_origin_offset;
};



#pragma pack(push, 4)
struct clientInfo_t
{
  int infoValid;
  int nextValid;
  int clientNum;
  char name[16];
  team_t team;
  team_t oldteam;
  int rank;
  int unk1;
  int unk2;
  int score;
  int location;
  int health;
  char model[64];
  char attachModelNames[6][64];
  char attachTagNames[6][64];
  struct lerpFrame_t legs;
  struct lerpFrame_t torso;
  float lerpMoveDir;
  float lerpLean;
  float playerAngles[3];
  int leftHandGun;
  int dobjDirty;
  struct clientControllers_s control;
  unsigned int clientConditions[10][2];
  struct XAnimTree_s *pXAnimTree;
  int iDObjWeapon;
  char weaponModel;
  char pad[3];
  int stanceTransitionTime;
  int turnAnimEndTime;
  char turnAnimType;
  char pad2[3];
  int attachedVehEntNum;
  int attachedVehSlotIndex;
  byte hideWeapon;
  byte usingKnife;
  char pad3[2];
};

#pragma pack(pop)


#endif

