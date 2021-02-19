/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

    This file is part of CoD4X Plugin Handler source code.

    CoD4X Plugin Handler source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X Plugin Handler source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
 */


#ifndef PLUGIN_INCLUDES

#error Please include pinc.h instead!

#endif /*PLUGIN_INCLUDES*/

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <time.h>

#define MAX_QPATH 64
#define GENTITYNUM_BITS     10  // JPW NERVE put q3ta default back for testing	// don't need to send any more
//#define	GENTITYNUM_BITS		11		// don't need to send any more		(SA) upped 4/21/2001 adjusted: tr_local.h (802-822), tr_main.c (1501), sv_snapshot (206)
#define MAX_GENTITIES       ( 1 << GENTITYNUM_BITS )
#define MAX_STRING_CHARS 1024
#define MAX_INFO_STRING  1024
#define MAX_RELIABLE_COMMANDS 128
#define MAX_DOWNLOAD_WINDOW 8
#define MAX_OSPATH   256
#define PACKET_BACKUP  32
#define MAX_CLIENTS   64
#define NUMFORCLIENT(clientobj) Plugin_GetClientNumForClient(clientobj)
#define NETCHAN_UNSENTBUFFER_SIZE 0x20000
#define NETCHAN_FRAGMENTBUFFER_SIZE 0x800


//#define CLIENT_BASE_ADDR 0x0
//#define clientbase ((client_t*)CLIENT_BASE_ADDR)  //e.g. clientbase[i].username

//Types and structs
typedef int scr_entref_t;
typedef int fileHandle_t;

typedef enum {
    qfalse, qtrue
} qboolean;
typedef void (*xcommand_t)();
typedef void (*xfunction_t)();
typedef void *client_t_ptr;
typedef unsigned char byte;

// Used for internet communication

typedef enum {
    NA_BAD = 0, // an address lookup failed
    NA_BOT = 0,
    NA_LOOPBACK = 2,
    NA_BROADCAST = 3,
    NA_IP = 4,
    NA_IP6 = 5,
    NA_TCP = 6,
    NA_TCP6 = 7,
    NA_MULTICAST6 = 8,
    NA_UNSPEC = 9,
    NA_DOWN = 10
} netadrtype_t;

#pragma pack(1)

typedef struct {
    netadrtype_t type;
    int scope_id;
    unsigned short port;
    unsigned short pad;
    int sock; //Socket FD. 0 = any socket

    union {
        byte ip[4];
        byte ipx[10];
        byte ip6[16];
    };
} netadr_t;

typedef struct {
    // sequencing variables
    int outgoingSequence;
    int sock;
    int dropped; // between last packet and previous
    int incomingSequence;

    //Remote address
    netadr_t remoteAddress; // (0x10)
    int qport; // qport value to write when transmitting (0x24)
    // incoming fragment assembly buffer
    int fragmentSequence;
    int fragmentLength;
    byte *fragmentBuffer; // Old: (0x30)
    int fragmentBufferSize;

    // outgoing fragment buffer
    // we need to space out the sending of large fragmented messages
    qboolean unsentFragments;
    int unsentFragmentStart;
    int unsentLength;
    byte *unsentBuffer; //Old: (0x44)
    int unsentBufferSize;
} netchan_t;

typedef float vec_t;
typedef vec_t vec2_t[2];
typedef vec_t vec3_t[3];
typedef vec_t vec4_t[4];
typedef vec_t vec5_t[5];

typedef void convariable_t;

typedef struct { // A structure representing a player's scoreboard
    int score;
    int deaths;
    int kills;
    int assists;
} clientScoreboard_t;

// usercmd_t is sent to the server each client frame

typedef struct usercmd_s {
    int serverTime;
    int buttons;
    int angles[3];
    byte weapon;
    byte offHandIndex;
    char forwardmove; /* Must be char, not byte */
    char rightmove; /* Must be char, not byte */
    float meleeChargeYaw;
    byte meleeChargeDist;
    byte pad[3];
} usercmd_t;

typedef enum {
    CVAR_BOOL,
    CVAR_FLOAT,
    CVAR_VEC2,
    CVAR_VEC3,
    CVAR_VEC4,
    CVAR_INT,
    CVAR_ENUM,
    CVAR_STRING,
    CVAR_COLOR
} cvarType_t;

typedef struct {
    char *name;
    char *description;
    short int flags;
    byte type;
    byte modified;

    union {
        float floatval;
        float value;
        int integer;
        char* string;
        byte boolean;
    };

    union {
        float latchedfloatval;
        float latchedvalue;
        int latchedinteger;
        char* latchedstring;
        byte latchedboolean;
    };

    union {
        int imin;
        float fmin;
    };

    union {
        int imax;
        float fmax;
        const char** enumStr;
    };
} cvar_t;

#define CVAR_ARCHIVE  1 // set to cause it to be saved to vars.rc
// used for system variables, not for player
// specific configurations
#define CVAR_USERINFO  2 // sent to server on connect or change
#define CVAR_SERVERINFO  4 // sent in response to front end requests
#define CVAR_SYSTEMINFO  8 // these cvars will be duplicated on all clients
#define CVAR_INIT  16 // don't allow change from console at all,
// but can be set from the command line
#define CVAR_LATCH  32 // will only change when C code next does
// a Cvar_Get(), so it can't be changed
// without proper initialization.  modified
// will be set, even though the value hasn't
// changed yet
#define CVAR_ROM  64 // display only, cannot be set by user at all
#define CVAR_CHEAT  128 // can not be changed if cheats are disabled
#define CVAR_TEMP  256 // can be set even when cheats are disabled, but is not archived
#define CVAR_NORESTART  1024 // do not clear when a cvar_restart is issued
#define CVAR_USER_CREATED 16384 // created by a set command


#define cvardeclarations

//typedef int fileHandle_t;
typedef int clipHandle_t;

typedef enum {
    TR_STATIONARY,
    TR_INTERPOLATE, // non-parametric, but interpolate between snapshots
    TR_LINEAR,
    TR_LINEAR_STOP,
    TR_SINE, // value = base + sin( time / duration ) * delta
    TR_GRAVITY
} trType_t;

typedef struct {
    trType_t trType;
    int trTime;
    int trDuration; // if non 0, trTime + trDuration = stop time
    vec3_t trBase;
    vec3_t trDelta; // velocity, etc
} trajectory_t;

typedef struct {
    int cullDist;
    int period;
} lerp_loopFx_t;

typedef struct {
    int bodyPitch;
    int bodyRoll;
    int steerYaw;
    int materialTime;
    int gunPitch;
    int gunYaw;
    int teamAndOwnerIndex;
} lerp_vehicle_t;

typedef struct {
    int lerp;
} lerp_soundBlend_t;

typedef struct {
    int launchTime;
} lerp_missile_t;

typedef struct {
    int leanf;
    int movementDir;
} lerp_player_t;

typedef struct {
    int data[6];
} lerp_anonymous_t;

typedef struct {
    int eFlags;
    trajectory_t pos; // for calculating position	0x0c
    trajectory_t apos; // for calculating angles	0x30

    union {
        lerp_anonymous_t anonymous;
        lerp_player_t player;
        lerp_missile_t missile;
        lerp_soundBlend_t soundBlend;
        lerp_loopFx_t loopFx;
        lerp_vehicle_t vehicle;
    } u;
} lerp_t;

// entityState_t is the information conveyed from the server
// in an update message about entities that the client will
// need to render in some way
// Different eTypes may use the information in different ways
// The messages are delta compressed, so it doesn't really matter if
// the structure size is fairly large

typedef struct entityState_s {//Confirmed names and offsets but not types

    int number; // entity index	//0x00
    int eType; // entityType_t	//0x04

    lerp_t lerp;

    int time2; //0x70


    int otherEntityNum; //0x74 shotgun sources, etc
    int attackerEntityNum; //0x78

    int groundEntityNum; //0x7c -1 = in air

    int loopSound; //0x80 constantly loop this sound
    int surfType; //0x84


    clipHandle_t index; //0x88
    int clientNum; //0x8c 0 to (MAX_CLIENTS - 1), for players and corpses
    int iHeadIcon; //0x90
    int iHeadIconTeam; //0x94

    int solid; //0x98 for client side prediction, trap_linkentity sets this properly	0x98

    int eventParm; //0x9c impulse events -- muzzle flashes, footsteps, etc
    int eventSequence; //0xa0

    vec4_t events; //0xa4
    vec4_t eventParms; //0xb4

    // for players
    int weapon; //0xc4 determines weapon and flash model, etc
    int weaponModel; //0xc8
    int legsAnim; //0xcc mask off ANIM_TOGGLEBIT
    int torsoAnim; //0xd0 mask off ANIM_TOGGLEBIT

    union {
        int helicopterStage; //0xd4
    } un1;
    int un2; //0xd8
    int fTorsoPitch; //0xdc
    int fWaistPitch; //0xe0
    vec4_t partBits; //0xe4
} entityState_t; //sizeof(entityState_t): 0xf4

typedef struct {
    //entityState_t	s;				//Duplicated struct is removed
    byte linked; //0xf4 qfalse if not in any good cluster

    byte bmodel; //0xf5 if false, assume an explicit mins / maxs bounding box
    // only set by trap_SetBrushModel
    byte svFlags;
    byte pad1;

    int clientMask[2];
    byte inuse;
    byte pad2[3];
    int broadcastTime;

    vec3_t mins, maxs; //0x108  //0x114  from SharedEntity_t

    int contents; // CONTENTS_TRIGGER, CONTENTS_SOLID, CONTENTS_BODY, etc
    // a non-solid entity should set to 0

    vec3_t absmin, absmax; //0x124  //0x130 derived from mins/maxs and origin + rotation

    // currentOrigin will be used for all collision detection and world linking.
    // it will not necessarily be the same as the trajectory evaluation for the current
    // time, because each entity must be moved one at a time after time is advanced
    // to avoid simultanious collision issues
    vec3_t currentOrigin; //0x13c
    vec3_t currentAngles; //0x148

    // when a trace call is made and passEntityNum != ENTITYNUM_NONE,
    // an ent will be excluded from testing if:
    // ent->s.number == passEntityNum	(don't interact with self)
    // ent->r.ownerNum == passEntityNum	(don't interact with your own missiles)
    // entity[ent->r.ownerNum].r.ownerNum == passEntityNum	(don't interact with other missiles from owner)
    uint16_t ownerNum; //0x154
    uint16_t pad3;
    int eventTime;
} entityShared_t;

typedef struct {
    int sprintButtonUpRequired;
    int sprintDelay;
    int lastSprintStart;
    int lastSprintEnd;
    int sprintStartMaxLength;
} sprintState_t;

typedef struct {
    int yaw;
    int timer;
    int transIndex;
    int flags;
} mantleState_t;

typedef enum {
    PLAYER_OFFHAND_SECONDARY_SMOKE = 0x0,
    PLAYER_OFFHAND_SECONDARY_FLASH = 0x1,
    PLAYER_OFFHAND_SECONDARIES_TOTAL = 0x2,
} OffhandSecondaryClass_t;

typedef enum {
    PLAYERVIEWLOCK_NONE = 0x0,
    PLAYERVIEWLOCK_FULL = 0x1,
    PLAYERVIEWLOCK_WEAPONJITTER = 0x2,
    PLAYERVIEWLOCKCOUNT = 0x3,
} ViewLockTypes_t;

typedef enum {
    ACTIONSLOTTYPE_DONOTHING = 0x0,
    ACTIONSLOTTYPE_SPECIFYWEAPON = 0x1,
    ACTIONSLOTTYPE_ALTWEAPONTOGGLE = 0x2,
    ACTIONSLOTTYPE_NIGHTVISION = 0x3,
    ACTIONSLOTTYPECOUNT = 0x4,
} ActionSlotType_t;

typedef struct {
    unsigned int index;
} ActionSlotParam_SpecifyWeapon_t;

typedef struct {
    ActionSlotParam_SpecifyWeapon_t specifyWeapon;
} ActionSlotParam_t;

#define MAX_HUDELEMENTS 31

typedef enum {
    HE_TYPE_FREE = 0x0,
    HE_TYPE_TEXT = 0x1,
    HE_TYPE_VALUE = 0x2,
    HE_TYPE_PLAYERNAME = 0x3,
    HE_TYPE_MAPNAME = 0x4,
    HE_TYPE_GAMETYPE = 0x5,
    HE_TYPE_MATERIAL = 0x6,
    HE_TYPE_TIMER_DOWN = 0x7,
    HE_TYPE_TIMER_UP = 0x8,
    HE_TYPE_TENTHS_TIMER_DOWN = 0x9,
    HE_TYPE_TENTHS_TIMER_UP = 0xA,
    HE_TYPE_CLOCK_DOWN = 0xB,
    HE_TYPE_CLOCK_UP = 0xC,
    HE_TYPE_WAYPOINT = 0xD,
    HE_TYPE_COUNT = 0xE,
} he_type_t;

/* 6853 */
typedef struct {
    char r;
    char g;
    char b;
    char a;
} hudelem_colorsplit_t;

/* 6854 */
typedef union {
    hudelem_colorsplit_t split;
    int rgba;
} hudelem_color_t;

typedef struct hudelem_s {
    he_type_t type;
    float x;
    float y;
    float z;
    int targetEntNum;
    float fontScale;
    int font;
    int alignOrg;
    int alignScreen;
    hudelem_color_t color;
    hudelem_color_t fromColor; //0x28
    int fadeStartTime; //0x2c
    int fadeTime;
    int label;
    int width;
    int height; //0x3C
    int materialIndex;
    int offscreenMaterialIdx; //0x44
    int fromWidth;
    int fromHeight;
    int scaleStartTime;
    int scaleTime;
    float fromX;
    float fromY;
    int fromAlignOrg;
    int fromAlignScreen;
    int moveStartTime;
    int moveTime;
    int time;
    int duration;
    float value;
    int text;
    float sort;
    hudelem_color_t glowColor; //0x84
    int fxBirthTime;
    int fxLetterTime;
    int fxDecayStartTime;
    int fxDecayDuration;
    int soundID;
    int flags;
} hudelem_t;

typedef struct hudElemState_s {
    hudelem_t current[MAX_HUDELEMENTS];
    hudelem_t archival[MAX_HUDELEMENTS];
} hudElemState_t;

typedef enum {
    OBJST_EMPTY = 0x0,
    OBJST_ACTIVE = 0x1,
    OBJST_INVISIBLE = 0x2,
    OBJST_DONE = 0x3,
    OBJST_CURRENT = 0x4,
    OBJST_FAILED = 0x5,
    OBJST_NUMSTATES = 0x6,
} objectiveState_t;

typedef struct objective_s {
    objectiveState_t state;
    float origin[3];
    int entNum;
    int teamNum;
    int icon;
} objective_t;

typedef struct playerState_s {
    int commandTime; // 0
    int pm_type; // 4
    int bobCycle; // 8
    int pm_flags; // 12
    int weapFlags; // 16
    int otherFlags; // 20
    int pm_time; // 24
    vec3_t origin; // 28

    // http://zeroy.com/script/player/getvelocity.htm
    vec3_t velocity; // 40
    vec2_t oldVelocity;

    int weaponTime; // 60
    int weaponDelay; // 64
    int grenadeTimeLeft; // 68
    int throwBackGrenadeOwner; // 72
    int throwBackGrenadeTimeLeft; // 76
    int weaponRestrictKickTime; // 80
    int foliageSoundTime; // 84
    int gravity; // 88
    int leanf; // 92
    int speed; // 96
    vec3_t delta_angles; // 100

    /*The ground entity's rotation will be added onto the player's view.  In particular, this will
     * cause the player's yaw to rotate around the entity's z-axis instead of the world z-axis.
     * Any rotation that the reference entity undergoes will affect the player.
     * http://zeroy.com/script/player/playersetgroundreferenceent.htm */
    int groundEntityNum; // 112

    vec3_t vLadderVec; // 116
    int jumpTime; // 128
    float jumpOriginZ; // 132

    // Animations as in mp/playeranim.script and animtrees/multiplayer.atr, it also depends on mp/playeranimtypes.txt (the currently used weapon)
    int legsTimer; // 136
    int legsAnim; // 140
    int torsoTimer; // 144
    int torsoAnim; // 148

    int legsAnimDuration;
    int torsoAnimDuration;

    int damageTimer; // 160
    int damageDuration; // 164
    int flinchYawAnim; // 168
    int movementDir; // 172
    int eFlags; // 176
    int eventSequence; // 180

    int events[4];
    unsigned int eventParms[4];

    int oldEventSequence;

    int clientNum; // 220
    int offHandIndex; // 224
    OffhandSecondaryClass_t offhandSecondary; // 228
    int weapon; // 232
    int weaponstate; // 236
    int weaponShotCount; // 240
    int fWeaponPosFrac; // 244
    int adsDelayTime; // 248

    // http://zeroy.com/script/player/resetspreadoverride.htm
    // http://zeroy.com/script/player/setspreadoverride.htm
    int spreadOverride; // 252
    int spreadOverrideState; // 256

    int viewmodelIndex; // 260

    vec3_t viewangles; // 264
    int viewHeightTarget; // 276
    float viewHeightCurrent; // 280
    int viewHeightLerpTime; // 284
    int viewHeightLerpTarget; // 288
    int viewHeightLerpDown; // 292
    vec2_t viewAngleClampBase; // 296
    vec2_t viewAngleClampRange; // 304

    int damageEvent; // 312
    int damageYaw; // 316
    int damagePitch; // 320
    int damageCount; // 324

    int stats[5];
    int ammo[128];
    int ammoclip[128];

    unsigned int weapons[4];
    unsigned int weaponold[4];
    unsigned int weaponrechamber[4];

    int proneDirection; // 1420
    int proneDirectionPitch; // 1424
    int proneTorsoPitch; // 1428
    ViewLockTypes_t viewlocked; // 1432
    int viewlocked_entNum; // 1436

    int cursorHint; // 1440
    int cursorHintString; // 1444
    int cursorHintEntIndex; // 1448

    int iCompassPlayerInfo; // 1452
    int radarEnabled; // 1456

    int locationSelectionInfo; // 1460
    sprintState_t sprintState; // 1464

    // used for leaning?
    float fTorsoPitch; // 1484
    float fWaistPitch; // 1488

    float holdBreathScale; // 1492
    int holdBreathTimer; // 1496

    // Scales player movement speed by this amount, ???it's actually a float???
    // http://zeroy.com/script/player/setmovespeedscale.htm
    float moveSpeedScaleMultiplier; // 1500

    mantleState_t mantleState; // 1504
    float meleeChargeYaw; // 1520
    int meleeChargeDist; // 1524
    int meleeChargeTime; // 1528
    int perks; // 1532

    ActionSlotType_t actionSlotType[4]; // 1536
    ActionSlotParam_t actionSlotParam[4]; // 1552

    int entityEventSequence; // 1568

    int weapAnim; // 1572
    float aimSpreadScale; // 1576

    // http://zeroy.com/script/player/shellshock.htm
    int shellshockIndex; // 1580
    int shellshockTime; // 1584
    int shellshockDuration; // 1588

    // http://zeroy.com/script/player/setdepthoffield.htm
    float dofNearStart; // 1592
    float dofNearEnd; // 1596
    float dofFarStart; // 1600
    float dofFarEnd; // 1604
    float dofNearBlur; // 1608
    float dofFarBlur; // 1612
    float dofViewmodelStart; // 1616
    float dofViewmodelEnd; // 1620

    int hudElemLastAssignedSoundID; // 1624

    objective_t objective[16];
    char weaponmodels[128];

    int deltaTime; // 2204
    int killCamEntity; // 2208

    hudElemState_t hud; // 2212
} playerState_t; //Size: 0x2f64


typedef struct gentity_s gentity_t;

struct gentity_s {
    entityState_t s;
    entityShared_t r; // shared by both the server system and game

    // DO NOT MODIFY ANYTHING ABOVE THIS, THE SERVER
    // EXPECTS THE FIELDS IN THAT ORDER!
    //================================

    struct gclient_s *client; // NULL if not a client		0x15c

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

    char pad_188[24];
    int healthPoints;
    char unknown[208];


    /*
            char        *classname;         // set in QuakeEd
            int spawnflags;                 // set in QuakeEd

            qboolean neverFree;             // if true, FreeEntity will only unlink
                                                                            // bodyque uses this

            int flags;                      // FL_* variables

            char        *model;
            char        *model2;
            int freetime;                   // level.time when the object was freed

            int eventTime;                  // events will be cleared EVENT_VALID_MSEC after set
            qboolean freeAfterEvent;
            qboolean unlinkAfterEvent;

            qboolean physicsObject;         // if true, it can be pushed by movers and fall off edges
                                                                            // all game items are physicsObjects,
            float physicsBounce;            // 1.0 = continuous bounce, 0.0 = no bounce
            int clipmask;                   // brushes with this content value will be collided against
                                                                            // when moving.  items and corpses do not collide against
                                                                            // players, for instance

            // movers
            moverState_t moverState;
            int soundPos1;
            int sound1to2;
            int sound2to1;
            int soundPos2;
            int soundLoop;
            // JOSEPH 1-26-00
            int sound2to3;
            int sound3to2;
            int soundPos3;
            // END JOSEPH

            int soundKicked;
            int soundKickedEnd;

            int soundSoftopen;
            int soundSoftendo;
            int soundSoftclose;
            int soundSoftendc;

            gentity_t   *parent;
            gentity_t   *nextTrain;
            gentity_t   *prevTrain;
            // JOSEPH 1-26-00
            vec3_t pos1, pos2, pos3;
            // END JOSEPH

            char        *message;

            int timestamp;              // body queue sinking, etc   //0x1bc

            float angle;                // set in editor, -1 = up, -2 = down
            char        *target;
            char        *targetname;
            char        *team;
            char        *targetShaderName;
            char        *targetShaderNewName;
            gentity_t   *target_ent;

            float speed;
            float closespeed;           // for movers that close at a different speed than they open
            vec3_t movedir;

            int gDuration;
            int gDurationBack;
            vec3_t gDelta;
            vec3_t gDeltaBack;

            int nextthink;
            void ( *think )( gentity_t *self );
            void ( *reached )( gentity_t *self );       // movers call this when hitting endpoint
            void ( *blocked )( gentity_t *self, gentity_t *other );
            void ( *touch )( gentity_t *self, gentity_t *other, trace_t *trace );
            void ( *use )( gentity_t *self, gentity_t *other, gentity_t *activator );
            void ( *pain )( gentity_t *self, gentity_t *attacker, int damage, vec3_t point );
            void ( *die )( gentity_t *self, gentity_t *inflictor, gentity_t *attacker, int damage, int mod );

            int pain_debounce_time;
            int fly_sound_debounce_time;            // wind tunnel
            int last_move_time;

            int health;		//0x1A0 ??

            qboolean takedamage;	//0x16b

            int damage;
            int splashDamage;           // quad will increase this without increasing radius
            int splashRadius;
            int methodOfDeath;
            int splashMethodOfDeath;

            int count;

            gentity_t   *chain;
            gentity_t   *enemy;
            gentity_t   *activator;
            gentity_t   *teamchain;     // next entity in team
            gentity_t   *teammaster;    // master of the team

            int watertype;
            int waterlevel;

            int noise_index;

            // timing variables
            float wait;		//
            float random;		//

            // Rafael - sniper variable
            // sniper uses delay, random, radius
            int radius;
            float delay;

            // JOSEPH 10-11-99
            int TargetFlag;
            float duration;
            vec3_t rotate;
            vec3_t TargetAngles;
            // END JOSEPH

            gitem_t     *item;          // for bonus items

            // Ridah, AI fields
            char        *aiAttributes;
            char        *aiName;
            int aiTeam;
            void ( *AIScript_AlertEntity )( gentity_t *ent );
            qboolean aiInactive;
            int aiCharacter;            // the index of the type of character we are (from aicast_soldier.c)
            // done.

            char        *aiSkin;
            char        *aihSkin;

            vec3_t dl_color;
            char        *dl_stylestring;
            char        *dl_shader;
            int dl_atten;


            int key;                    // used by:  target_speaker->nopvs,

            qboolean active;	//0x16c
            qboolean botDelayBegin;

            // Rafael - mg42
            float harc;
            float varc;

            int props_frame_state;

            // Ridah
            int missionLevel;               // mission we are currently trying to complete
                                                                            // gets reset each new level
            // done.

            // Rafael
            qboolean is_dead;
            // done

            int start_size;
            int end_size;

            // Rafael props

            qboolean isProp;

            int mg42BaseEnt;

            gentity_t   *melee;

            char        *spawnitem;

            qboolean nopickup;

            int flameQuota, flameQuotaTime, flameBurnEnt;

            int count2;

            int grenadeExplodeTime;         // we've caught a grenade, which was due to explode at this time
            int grenadeFired;               // the grenade entity we last fired

            int mg42ClampTime;              // time to wait before an AI decides to ditch the mg42

            char        *track;

            // entity scripting system
            char                *scriptName;

            int numScriptEvents;
            g_script_event_t    *scriptEvents;  // contains a list of actions to perform for each event type
            g_script_status_t scriptStatus;     // current status of scripting
            // the accumulation buffer
            int scriptAccumBuffer[G_MAX_SCRIPT_ACCUM_BUFFERS];

            qboolean AASblocking;
            float accuracy;

            char        *tagName;       // name of the tag we are attached to
            gentity_t   *tagParent;

            float headshotDamageScale;

            int lastHintCheckTime;                  // DHM - Nerve
            // -------------------------------------------------------------------------------------------
            // if working on a post release patch, new variables should ONLY be inserted after this point
            // DHM - Nerve :: the above warning does not really apply to MP, but I'll follow it for good measure

            int voiceChatSquelch;                   // DHM - Nerve
            int voiceChatPreviousTime;              // DHM - Nerve
            int lastBurnedFrameNumber;              // JPW - Nerve   : to fix FT instant-kill exploit*/
}; //Size: 0x274

typedef enum {
    CS_FREE, // can be reused for a new connection
    CS_ZOMBIE, // client has been disconnected, but don't reuse
    // connection for a couple seconds
    CS_CONNECTED, // has been assigned to a client_t, but no gamestate yet
    CS_PRIMED, // gamestate has been sent, but client hasn't sent a usercmd
    CS_ACTIVE // client is fully in game
} clientConnectState_t;

typedef struct {//(0x2146c);
    playerState_t ps; //0x2146c
    int num_entities;
    int num_clients; // (0x2f68)
    int first_entity; // (0x2f6c)into the circular sv_packet_entities[]
    int first_client;
    // the entities MUST be in increasing state number
    // order, otherwise the delta compression will fail
    unsigned int messageSent; // (0x243e0 | 0x2f74) time the message was transmitted
    unsigned int messageAcked; // (0x243e4 | 0x2f78) time the message was acked
    int messageSize; // (0x243e8 | 0x2f7c)   used to rate drop packets
    int var_03;
} clientSnapshot_t; //size: 0x2f84

typedef struct {
    char num;
    char data[256];
    int dataLen;
} voices_t;

typedef struct {
    int checksum;
    byte bytedata[2000];
    int longdata[1547];
} statData_t;


#define MAX_ZPATH 256

typedef void* unzFile;

typedef union qfile_gus {
    FILE*		o;
    unzFile	z;
} qfile_gut;

typedef struct qfile_us {
    qfile_gut	file;
    qboolean	unique;
} qfile_ut;


typedef struct {
    qfile_ut		handleFiles;
    qboolean	handleSync;
    int		fileSize;
    int		zipFilePos;
    qboolean		zipFile;
    qboolean		streamed;
    char			name[MAX_ZPATH];
    //Not used by filesystem api
    void*		writebuffer;
    int			bufferSize;
    int			bufferPos; //For buffered writes, next write position for logfile buffering
    int	rbufferPos; //next read position
} fileHandleData_t; //0x11C (284) Size

typedef struct client_s
{
	clientConnectState_t	state;
	int					unksnapshotvar;		// must timeout a few frames in a row so debugging doesn't break
	int					deltaMessage;		// frame last client usercmd message
	qboolean			rateDelayed;		// true if nextSnapshotTime was set based on rate instead of snapshotMsec
	netchan_t			netchan;
	//DemoData
	fileHandleData_t	demofile;
	qboolean			demorecording;
	qboolean			demowaiting;
	char				demoName[MAX_QPATH];
	int					demoArchiveIndex;
	int					demoMaxDeltaFrames;
	int					demoDeltaFrameCount;
	qboolean				undercover;
	int					bantime;
	int					clienttimeout;
	int					power;
	int					msgType;
	int					enteredWorldTime;
	unsigned int		clFrames;
	unsigned int		clFrameCalcTime;
	unsigned int		clFPS;
	float			jumpHeight;
	qboolean		needPassword;
	unsigned int	connectedTime;
	char			xversion[8];
	int				protocol;
	qboolean		needupdate;
	qboolean		updateconnOK;
    unsigned int    updateBeginTime;
    byte reliablemsg[40 + 44];
	uint64_t		steamid;
	uint64_t		steamidPending;
	uint64_t		clanid;
	uint64_t		clanidPending;
	uint64_t		playerid;
	int			steamstatus;
	int			isMember; //Steam group membership. 
	//If sv_steamgroup is set up this variable will be 0 if membership status is still unknown.
	//It will be -1 if he is not a member or 1 if he is a member or 2 if he is an officer
	int			mutelevel; //1 = voice blocked; 2 = chat and voice blocked

	char		name[36];
	char		clantag[16];

	char*		commandWhitelist[32];

	int 		configDataAcknowledge; //New: to determine which config data updates the client has not yet received
	vec3_t		predictedOrigin;
	int			predictedOriginServerTime;

	const char*		delayDropMsg;
	char			userinfo[MAX_INFO_STRING];		// name, etc 
    byte reliableCommands[MAX_RELIABLE_COMMANDS * (MAX_STRING_CHARS + 2 * sizeof (int))]; // (0xa50)
	int			reliableSequence;	// last added reliable message, not necesarily sent or acknowledged yet
	int			reliableAcknowledge;	// last acknowledged reliable message
	int			reliableSent;		// last sent reliable message, not necesarily acknowledged yet
	int			messageAcknowledge;	//
	int			gamestateMessageNum;	// netchan->outgoingSequence of gamestate
	int			challenge;
	usercmd_t		lastUsercmd;
	int			lastClientCommand;	// reliable client message sequence
	char			lastClientCommandString[MAX_STRING_CHARS];
	gentity_t		*gentity;
	int			wwwDl_var01;
	// downloading
	char			downloadName[MAX_QPATH]; // if not empty string, we are downloading
	fileHandle_t		download;		// file being downloaded
 	int			downloadSize;		// total bytes (can't use EOF because of paks)
 	int			downloadCount;		// bytes sent
	int			downloadClientBlock;	// Current block we send to client
	int			downloadCurrentBlock;	// current block number
	int			downloadXmitBlock;	// last block we xmited
	int			downloadBeginOffset;
	int			downloadNumBytes;
	int			downloadBlockSize;
	qboolean		downloadEOF;		// We have sent the EOF block
	int			downloadSendTime;	// time we last got an ack from the client
	char			wwwDownloadURL[MAX_OSPATH]; // URL from where the client should download the current file

	qboolean		wwwDownload;		
	qboolean		wwwDownloadStarted;	
	qboolean		wwwDlAck;		
	qboolean		wwwDl_failed;
	int			nextReliableTime;	//  svs.time when another reliable command will be allowed
	int			floodprotect;		
	int			lastPacketTime;		// svs.time when packet was last received
	int			lastConnectTime;	// svs.time when connection started
	int			nextSnapshotTime;	// send another snapshot when svs.time >= nextSnapshotTime
	int			timeoutCount;
	clientSnapshot_t	frames[PACKET_BACKUP];	//updates can be delta'd from here
	int			ping;		
	int			rate;		// bytes / second
	int			snapshotMsec;	// requests a snapshot every snapshotMsec unless rate choked
	int			unknown6;
	int			pureAuthentic;
	byte			unsentBuffer[NETCHAN_UNSENTBUFFER_SIZE];
	byte			fragmentBuffer[NETCHAN_FRAGMENTBUFFER_SIZE];
	char			legacy_pbguid[33];
	byte			pad;
	short			scriptId;
	int			canNotReliable;
	int			serverId;
    voices_t voicedata[40];
	int			voicePacketCount;
	byte			muteList[MAX_CLIENTS];
	byte			sendVoice;
	byte			receivedstats;
	byte			gamestateSent;
	byte			hasValidPassword;
	statData_t		stats;
}client_t;




typedef struct {
    //Player banned
    char playername[33];
    uint64_t steamid;
    uint64_t playerid;
    netadr_t adr;

    //Admin who did ban
    char adminname[33];
    uint64_t adminsteamid;

    //Details about the ban
    char message[1024];
    time_t expire;
    unsigned int duration; //minutes
    time_t created;
} baninfo_t;


/* For HTTP API */
//
// msg.c
//

typedef struct {
    qboolean overflowed; //0x00
    qboolean readonly; //0x04
    byte *data; //0x08
    byte *splitdata; //0x0c
    int maxsize; //0x10
    int cursize; //0x14
    int splitcursize; //0x18
    int readcount; //0x1c
    int bit; //0x20	// for bitwise reads and writes
    int lastRefEntity; //0x24
} msg_t; //Size: 0x28

typedef enum {
    FT_PROTO_HTTP,
    FT_PROTO_FTP
} ftprotocols_t;

typedef struct {
    qboolean lock;
    qboolean active;
    qboolean transferactive;
    int transferStartTime;
    int socket;
    int transfersocket;
    int sentBytes;
    int finallen;
    int totalreceivedbytes;
    int transfertotalreceivedbytes;
    msg_t *extrecvmsg;
    msg_t *extsendmsg;
    msg_t sendmsg;
    msg_t recvmsg;
    msg_t transfermsg;
    qboolean complete;
    int code;
    int version;
    char status[32];
    char url[MAX_STRING_CHARS];
    char address[MAX_STRING_CHARS];
    char username[256];
    char password[256];
    char contentType[64];
    char cookie[MAX_STRING_CHARS];
    int mode;
    int headerLength;
    int contentLength;
    int contentLengthArrived;
    int currentChunkLength;
    int currentChunkReadOffset;
    int chunkedEncoding;
    int startTime;
    int stage;
    ftprotocols_t protocol;
    netadr_t remote;
} ftRequest_t;

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

typedef enum {
	TEAM_FREE,
	TEAM_RED,
	TEAM_BLUE,
	TEAM_SPECTATOR,
	TEAM_NUM_TEAMS
}team_t;

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

typedef struct {

    enum
	{	STATE_PLAYING, STATE_DEAD,
		STATE_SPECTATOR, STATE_INTERMISSION
	}sessionState;//0x2f64

	int forceSpectatorClient;
	int unk2;
	int unk3; // These 2 are between int status_icon;
	int archiveTime;			//0x2f74


	clientScoreboard_t	scoreboard;	//0x2f78
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
	int playerTalkTime;				//0x30d4 ??
	int rewardTime;                 // clear the EF_AWARD_IMPRESSIVE, etc when time > this  N/A
    vec3_t unk;						//0x30dc


	int airOutTime;			//0x30e8 Unknown only reset

	int lastKillTime;               // ???for multiple kill rewards
	int dummy34;

	qboolean fireHeld;              // ???used for hook
	gentity_t   *persistantPowerup;              //0x30f8 grapple hook if out

	int switchTeamTime;             //0x30fc time the player switched teams



	int IMtooLazy[33];
	//Not anymore resolved

	// timeResidual is used to handle events that happen every second
	// like health / armor countdowns and regeneration
/*	int timeResidual;

	float currentAimSpreadScale;

	int medicHealAmt;

	// RF, may be shared by multiple clients/characters
	animModelInfo_t *modelInfo;

	// -------------------------------------------------------------------------------------------
	// if working on a post release patch, new variables should ONLY be inserted after this point

	gentity_t   *persistantPowerup;
	int portalID;
	int ammoTimes[WP_NUM_WEAPONS];
	int invulnerabilityTime;

	gentity_t   *cameraPortal;              // grapple hook if out
	vec3_t cameraOrigin;

	int dropWeaponTime;         // JPW NERVE last time a weapon was dropped
	int limboDropWeapon;         // JPW NERVE weapon to drop in limbo
	int deployQueueNumber;         // JPW NERVE player order in reinforcement FIFO queue
	int sniperRifleFiredTime;         // JPW NERVE last time a sniper rifle was fired (for muzzle flip effects)
	float sniperRifleMuzzleYaw;       // JPW NERVE for time-dependent muzzle flip in multiplayer
	int lastBurnTime;         // JPW NERVE last time index for flamethrower burn
	int PCSpecialPickedUpCount;         // JPW NERVE used to count # of times somebody's picked up this LTs ammo (or medic health) (for scoring)
	int saved_persistant[MAX_PERSISTANT];           // DHM - Nerve :: Save ps->persistant here during Limbo

	// g_antilag.c
	int topMarker;
	clientMarker_t clientMarkers[MAX_CLIENT_MARKERS];
	clientMarker_t backupMarker;

	gentity_t       *tempHead;  // Gordon: storing a temporary head for bullet head shot detection

	pmoveExt_t pmext;*/
};


#define MAX_SPAWN_VARS 64
#define MAX_SPAWN_VARS_CHARS 2048
#define SAY_ALL 0
#define SAY_TEAM 1
#define SAY_TELL 2
#define MAX_STATUS_ICONS 8
#define STATUS_ICON_CS 2259
#define HEAD_ICON_CS 2267
#define MAX_HEAD_ICONS 15


typedef struct
{
    const char *key;
    const char *value;
} keyValueStr_t;

typedef struct
{
    byte spawnVarsValid;
    byte pad[3];
    int numSpawnVars;
    keyValueStr_t spawnVars[64];
    int numSpawnVarChars;
    char spawnVarChars[2048];
} SpawnVar;

typedef struct
{
    int time;
    int entnum;
    uint16_t name;
    uint16_t pad;
    float tagMat[4][3];
} cached_tag_mat_t;

/* 7571 */
typedef struct
{
    uint16_t entnum;
    uint16_t otherEntnum;
    int useCount;
    int otherUseCount;
} trigger_info_t;

/* 7383 */
typedef struct
{
    int lines;
    const char *text;
    int ungetToken;
    int backup_lines;
    const char *backup_text;
} com_parse_mark_t;

typedef struct
{                              //0x8370440
    struct gclient_s *clients; // [maxclients]

    struct gentity_s *gentities;

    int gentitySize;

    int num_entities; // current number, <= MAX_GENTITIES

    struct gentity_s *firstFreeEnt;
    struct gentity_s *lastFreeEnt;

    fileHandle_t logFile;

    int initializing;
    int clientIsSpawning;
    objective_t objectives[16];

    // store latched cvars here that we want to get at often
    int maxclients; //0x1e4
    int framenum;
    int time;         // in msec		0x1ec
    int previousTime; // 0x1f0 so movers can back up when blocked
    int frameTime;    // Gordon: time the frame started, for antilag stuff

    int startTime; // level.time the map was started

    int teamScores[TEAM_NUM_TEAMS]; //0x1fc
    int lastTeammateHealthTime;     // last time of client team location update

    qboolean bUpdateScoresForIntermission; //???? Not known 0x210
    byte teamHasRadar[TEAM_NUM_TEAMS];
    int manualNameChange;           //0x218 Manual Change mode
    int numConnectedClients;        // connected, non-spectators
    int sortedClients[MAX_CLIENTS]; //sorted by rank or score ? 0x220

    // voting state
    char voteString[MAX_STRING_CHARS];        //0x320
    char voteDisplayString[MAX_STRING_CHARS]; //0x720
    int voteTime;                             // level.time vote was called	0xb20
    int voteExecuteTime;                      // time the vote is executed
    int voteYes;                              //0xb28
    int voteNo;                               //0xb2c
    int numVotingClients;                     // set by CalculateRanks

    SpawnVar spawnVars;
    int savePersist;

    struct gentity_s *droppedWeaponCue[32];
    float fFogOpaqueDist;
    float fFogOpaqueDistSqrd;
    int remapCount;
    int currentPlayerClone;
    trigger_info_t pendingTriggerList[256];
    trigger_info_t currentTriggerList[256];
    int pendingTriggerListSize;
    int currentTriggerListSize;
    int finished;
    int bPlayerIgnoreRadiusDamage;
    int bPlayerIgnoreRadiusDamageLatched;
    int registerWeapons;
    int bRegisterItems;
    int currentEntityThink;
    void *openScriptIOFileHandles[1];
    char *openScriptIOFileBuffers[1];
    com_parse_mark_t currentScriptIOLineMark[1];
    cached_tag_mat_t cachedTagMat;
    int scriptPrintChannel;
    float compassMapUpperLeft[2];
    float compassMapWorldSize[2];
    float compassNorth[2];
    struct scr_vehicle_s *vehicles;
    int framerate;
} level_locals_t;

extern level_locals_t level;


#define CS_VOTE_TIME 13
#define CS_VOTE_STRING 14
#define CS_VOTE_YES 15
#define CS_VOTE_NO 16

#define POF_PLAYER 4

// TTimo - voting config flags
#define VOTEFLAGS_RESTART (1 << 0)
#define VOTEFLAGS_GAMETYPE (1 << 1)
#define VOTEFLAGS_STARTMATCH (1 << 2)
#define VOTEFLAGS_NEXTMAP (1 << 3)
#define VOTEFLAGS_SWAP (1 << 4)
#define VOTEFLAGS_TYPE (1 << 5)
#define VOTEFLAGS_KICK (1 << 6)
#define VOTEFLAGS_MAP (1 << 7)
#define VOTEFLAGS_ANYMAP (1 << 8)

#define EF_VOTED 0x00100000     // already cast a vote
#define EF_TALK 0x00200000      // draw a talk balloon
#define EF_TAUNT 0x00400000     // player saying taunt
#define EF_FIRING 0x00000020    // for lightning gun
#define EF_MANTLE 0x00008000    // for mantle move over something
#define EF_CROUCHING 0x00000004 // player is crouching
#define EF_PRONE 0x00000008     // player is prone
#define EF_DEAD 0x00020000      // don't draw a foe marker over players with EF_DEAD
#define EF_USETURRET 0x00000200 // use a turret? Not sure about it but using it sets this flag
#define EF_AIMDOWNSIGHT 0x00040000


#pragma pack(push, 1)

#define MAX_POST_VALS 32

struct httpPostValsInternal_s {
    char name[MAX_STRING_CHARS];
    char value[MAX_STRING_CHARS];
};

#pragma pack(pop)

typedef struct httpPostValsInternal_s httpPostVals_t[MAX_POST_VALS];

#ifdef _WIN32
typedef uint32_t threadid_t;
#else
#include <pthread.h>
typedef pthread_t threadid_t;
#endif


#include "plugin_declarations.h"
#include "function_declarations.h" // Function descriptions are available in this file
#include "callback_declarations.h"

#pragma pack()
