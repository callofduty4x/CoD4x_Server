/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

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

#ifndef G_SHARED_H
#define G_SHARED_H

#include "filesystem.h"
#include "entity.h"
#include "player.h"
#include "cvar.h"
#include "cm_public.h"
#include "sys_cod4defs.h"


/* Unfortunately, this can't be used to check\get gametypes... At least for now... */
/*#define g_gametypes ((gametypes_t*)(0x8583bc0))*/
/*#define g_gametypes_count (*(int*)(0x08583BCC))*/
/*#define g_gametypes_info ((gametype_t*)(0x08583BD0))*/ /* Count = 32 */

// this structure is cleared as each map is entered
//
#define MAX_SPAWN_VARS 64
#define MAX_SPAWN_VARS_CHARS 2048

/*enum sessionState_t{
SESS_STATE_PLAYING = 0,
SESS_STATE_DEAD = 1,
SESS_STATE_SPECTATOR = 2,
SESS_STATE_INTERMISSION = 3
};*/

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

struct turretInfo_s
{
  int inuse;
  int flags;
  int fireTime;
  vec2_t arcmin;
  vec2_t arcmax;
  float dropPitch;
  int stance;
  int prevStance;
  int fireSndDelay;
  vec3_t userOrigin;
  float playerSpread;
  float pitchCap;
  int triggerDown;
  char fireSnd;
  char fireSndPlayer;
  char stopSnd;
  char stopSndPlayer;
};

/* Max count = 32, started at 0x08583C10 */
/*typedef struct gametype_t
{
    char	gametypename[64];
    char	gametypereadable[68];
} gametype_t;*/

/* If started at 0x08583BC0, then var_03 points to 0x08583BC8 which is g_playerLastStandLabel - a handler to script function. */
/*typedef struct gametypes_t
{
    int		var_01;
    int		var_02;
    int		var_03;
    int		numGametypes;
    gametype_t	gametype[];
} gametypes_t;*/

#define iDFLAGS_RADIUS 1              // explosive damage
#define iDFLAGS_NO_ARMOR 2            // ???
#define iDFLAGS_NO_KNOCKBACK 4        // players dont get pushed in damage_dir
#define iDFLAGS_PENETRATION 8         // bullets can penetrate walls
#define iDFLAGS_NO_TEAM_PROTECTION 16 // team kills/damage in TDM/SD etc
#define iDFLAGS_NO_PROTECTION 32      // nothing can stop damage
#define iDFLAGS_PASSTHRU 64           // bullet passed through non solid surface (???)

//
// config strings are a general means of communicating variable length strings
// from the server to all connected clients.
//

// CS_SERVERINFO and CS_SYSTEMINFO are defined in q_shared.h
/*

#define CS_MUSIC                2
#define CS_MESSAGE              3       // from the map worldspawn's message field
#define CS_MOTD                 4       // g_motd string for server message of the day
#define CS_WARMUP               5       // server time when the match will be restarted
#define CS_SCORES1              6
#define CS_SCORES2              7
*/

#define CS_VOTE_TIME 13
#define CS_VOTE_STRING 14
#define CS_VOTE_YES 15
#define CS_VOTE_NO 16

#define POF_PLAYER 4

/*
#define CS_GAME_VERSION         12
#define CS_LEVEL_START_TIME     13      // so the timer only shows the current level
#define CS_INTERMISSION         14      // when 1, intermission will start in a second or two

*/
// DHM - Nerve :: Wolf Multiplayer information

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
/*
// entityState_t->eFlags
#define EF_DEAD             0x00000001      // don't draw a foe marker over players with EF_DEAD
#define EF_NONSOLID_BMODEL  0x00000002      // bmodel is visible, but not solid
#define EF_TELEPORT_BIT     0x00000004      // toggled every time the origin abruptly changes
#define EF_MONSTER_EFFECT   0x00000008      // draw an aiChar dependant effect for this character
#define EF_CAPSULE          0x00000010      // use capsule for collisions
#define EF_CROUCHING        0x00000020      // player is crouching
#define EF_MG42_ACTIVE      0x00000040      // currently using an MG42
#define EF_NODRAW           0x00000080      // may have an event, but no model (unspawned items)
#define EF_FIRING           0x00000100      // for lightning gun
#define EF_INHERITSHADER    EF_FIRING       // some ents will never use EF_FIRING, hijack it for "USESHADER"
#define EF_BOUNCE_HEAVY     0x00000200      // more realistic bounce.  not as rubbery as above (currently for c4)
#define EF_SPINNING         0x00000400      // (SA) added for level editor control of spinning pickup items
#define EF_BREATH           EF_SPINNING     // Characters will not have EF_SPINNING set, hijack for drawing character breath

#define EF_MELEE_ACTIVE     0x00000800      // (SA) added for client knowledge of melee items held (chair/etc.)

#define EF_SMOKING          EF_MONSTER_EFFECT3  // DHM - Nerve :: ET_GENERAL ents will emit smoke if set // JPW switched to this after my code change
#define EF_CONNECTION       0x00002000      // draw a connection trouble sprite
#define EF_MONSTER_EFFECT2  0x00004000      // show the secondary special effect for this character
#define EF_SMOKINGBLACK     EF_MONSTER_EFFECT2  // JPW NERVE -- like EF_SMOKING only darker & bigger
#define EF_HEADSHOT         0x00008000      // last hit to player was head shot
#define EF_MONSTER_EFFECT3  0x00010000      // show the third special effect for this character
#define EF_HEADLOOK         0x00020000      // make the head look around*/

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

/*

#define EF_STAND_IDLE2      0x00040000      // when standing, play idle2 instead of the default
#define EF_VIEWING_CAMERA   EF_STAND_IDLE2  // NOTE: REMOVE STAND_IDLE2 !!
#define EF_TAGCONNECT       0x00080000      // connected to another entity via tag
#define EF_MOVER_BLOCKED    0x00100000      // mover was blocked dont lerp on the client
#define EF_FORCED_ANGLES    0x00200000  // enforce all body parts to use these angles

#define EF_ZOOMING          0x00400000      // client is zooming
#define EF_NOSWINGANGLES    0x00800000      // try and keep all parts facing same direction


// !! NOTE: only place flags that don't need to go to the client beyond 0x00800000

#define EF_DUMMY_PMOVE      0x01000000
#define EF_BOUNCE           0x04000000      // for missiles
#define EF_BOUNCE_HALF      0x08000000      // for missiles
#define EF_MOVER_STOP       0x10000000      // will push otherwise	// (SA) moved down to make space for one more client flag

*/

/*
// --- COD4: raw\maps\mp\gametypes\_missions.gsc --- //

typedef enum
{
	MOD_UNKNOWN,
	MOD_PISTOL_BULLET,
	MOD_RIFLE_BULLET,
	MOD_GRENADE,
	MOD_GRENADE_SPLASH,
	MOD_PROJECTILE,
	MOD_PROJECTILE_SPLASH,
	MOD_MELEE,
	MOD_HEAD_SHOT,
	MOD_CRUSH,
	MOD_TELEFRAG,
	MOD_FALLING,
	MOD_SUICIDE,
	MOD_TRIGGER_HURT,
	MOD_EXPLOSIVE,
	MOD_IMPACT,

	MOD_BAD

} meansOfDeath_t;

#define MOD_NUM	16
char *modNames[MOD_NUM] =
{
	"MOD_UNKNOWN",
	"MOD_PISTOL_BULLET",
	"MOD_RIFLE_BULLET",
	"MOD_GRENADE",
	"MOD_GRENADE_SPLASH",
	"MOD_PROJECTILE",
	"MOD_PROJECTILE_SPLASH",
	"MOD_MELEE",
	"MOD_HEAD_SHOT",
	"MOD_CRUSH",
	"MOD_TELEFRAG",
	"MOD_FALLING",
	"MOD_SUICIDE",
	"MOD_TRIGGER_HURT",
	"MOD_EXPLOSIVE",
	"MOD_IMPACT",
};

static const char *g_HitLocNames[] =
{
	"none",
	"helmet",
	"head",
	"neck",
	"torso_upper",
	"torso_lower",
	"right_arm_upper",
	"left_arm_upper",
	"right_arm_lower",
	"left_arm_lower",
	"right_hand",
	"left_hand",
	"right_leg_upper",
	"left_leg_upper",
	"right_leg_lower",
	"left_leg_lower",
	"right_foot",
	"left_foot",
	"gun",
};

*/
enum hitLocation_t
{
  HITLOC_NONE = 0x0,
  HITLOC_HELMET = 0x1,
  HITLOC_HEAD = 0x2,
  HITLOC_NECK = 0x3,
  HITLOC_TORSO_UPR = 0x4,
  HITLOC_TORSO_LWR = 0x5,
  HITLOC_R_ARM_UPR = 0x6,
  HITLOC_L_ARM_UPR = 0x7,
  HITLOC_R_ARM_LWR = 0x8,
  HITLOC_L_ARM_LWR = 0x9,
  HITLOC_R_HAND = 0xA,
  HITLOC_L_HAND = 0xB,
  HITLOC_R_LEG_UPR = 0xC,
  HITLOC_L_LEG_UPR = 0xD,
  HITLOC_R_LEG_LWR = 0xE,
  HITLOC_L_LEG_LWR = 0xF,
  HITLOC_R_FOOT = 0x10,
  HITLOC_L_FOOT = 0x11,
  HITLOC_GUN = 0x12,
  HITLOC_NUM = 0x13,
};

/*
// --- COD4: raw\maps\mp\gametypes\_hud.gsc --- //

// Edge relative placement values for rect->h_align and rect->v_align
#define HORIZONTAL_ALIGN_SUBLEFT		0	// left edge of a 4:3 screen (safe area not included)
#define HORIZONTAL_ALIGN_LEFT			1	// left viewable (safe area) edge
#define HORIZONTAL_ALIGN_CENTER			2	// center of the screen (reticle)
#define HORIZONTAL_ALIGN_RIGHT			3	// right viewable (safe area) edge
#define HORIZONTAL_ALIGN_FULLSCREEN		4	// disregards safe area
#define HORIZONTAL_ALIGN_NOSCALE		5	// uses exact parameters - neither adjusts for safe area nor scales for screen size
#define HORIZONTAL_ALIGN_TO640			6	// scales a real-screen resolution x down into the 0 - 640 range
#define HORIZONTAL_ALIGN_CENTER_SAFEAREA 7	// center of the safearea
#define HORIZONTAL_ALIGN_MAX			HORIZONTAL_ALIGN_CENTER_SAFEAREA
#define HORIZONTAL_ALIGN_DEFAULT		HORIZONTAL_ALIGN_SUBLEFT

#define VERTICAL_ALIGN_SUBTOP			0	// top edge of the 4:3 screen (safe area not included)
#define VERTICAL_ALIGN_TOP				1	// top viewable (safe area) edge
#define VERTICAL_ALIGN_CENTER			2	// center of the screen (reticle)
#define VERTICAL_ALIGN_BOTTOM			3	// bottom viewable (safe area) edge
#define VERTICAL_ALIGN_FULLSCREEN		4	// disregards safe area
#define VERTICAL_ALIGN_NOSCALE			5	// uses exact parameters - neither adjusts for safe area nor scales for screen size
#define VERTICAL_ALIGN_TO480			6	// scales a real-screen resolution y down into the 0 - 480 range
#define VERTICAL_ALIGN_CENTER_SAFEAREA	7	// center of the save area
#define VERTICAL_ALIGN_MAX				VERTICAL_ALIGN_CENTER_SAFEAREA
#define VERTICAL_ALIGN_DEFAULT			VERTICAL_ALIGN_SUBTOP

static const char *g_he_font[] =
{
	"default",		// HE_FONT_DEFAULT
	"bigfixed",		// HE_FONT_BIGFIXED
	"smallfixed",	// HE_FONT_SMALLFIXED
	"objective",	// HE_FONT_OBJECTIVE
};


// These values correspond to the defines in q_shared.h
static const char *g_he_alignx[] =
{
	"left",   // HE_ALIGN_LEFT
	"center", // HE_ALIGN_CENTER
	"right",  // HE_ALIGN_RIGHT
};


static const char *g_he_aligny[] =
{
	"top",    // HE_ALIGN_TOP
	"middle", // HE_ALIGN_MIDDLE
	"bottom", // HE_ALIGN_BOTTOM
};


// These values correspond to the defines in menudefinition.h
static const char *g_he_horzalign[] =
{
	"subleft",			// HORIZONTAL_ALIGN_SUBLEFT
	"left",				// HORIZONTAL_ALIGN_LEFT
	"center",			// HORIZONTAL_ALIGN_CENTER
	"right",			// HORIZONTAL_ALIGN_RIGHT
	"fullscreen",		// HORIZONTAL_ALIGN_FULLSCREEN
	"noscale",			// HORIZONTAL_ALIGN_NOSCALE
	"alignto640",		// HORIZONTAL_ALIGN_TO640
	"center_safearea",	// HORIZONTAL_ALIGN_CENTER_SAFEAREA
};
//cassert( ARRAY_COUNT( g_he_horzalign ) == HORIZONTAL_ALIGN_MAX + 1 );


static const char *g_he_vertalign[] =
{
	"subtop",			// VERTICAL_ALIGN_SUBTOP
	"top",				// VERTICAL_ALIGN_TOP
	"middle",			// VERTICAL_ALIGN_CENTER
	"bottom",			// VERTICAL_ALIGN_BOTTOM
	"fullscreen",		// VERTICAL_ALIGN_FULLSCREEN
	"noscale",			// VERTICAL_ALIGN_NOSCALE
	"alignto480",		// VERTICAL_ALIGN_TO480
	"center_safearea",	// VERTICAL_ALIGN_CENTER_SAFEAREA
};
//cassert( ARRAY_COUNT( g_he_vertalign ) == VERTICAL_ALIGN_MAX + 1 );

*/


enum entHandlers_s
{
  ENT_HANDLER_NULL = 0x0,
  ENT_HANDLER_TRIGGER_MULTIPLE = 0x1,
  ENT_HANDLER_TRIGGER_HURT = 0x2,
  ENT_HANDLER_TRIGGER_HURT_TOUCH = 0x3,
  ENT_HANDLER_TRIGGER_DAMAGE = 0x4,
  ENT_HANDLER_SCRIPT_MOVER = 0x5,
  ENT_HANDLER_SCRIPT_MODEL = 0x6,
  ENT_HANDLER_GRENADE = 0x7,
  ENT_HANDLER_TIMED_OBJECT = 0x8,
  ENT_HANDLER_ROCKET = 0x9,
  ENT_HANDLER_CLIENT = 0xA,
  ENT_HANDLER_CLIENT_SPECTATOR = 0xB,
  ENT_HANDLER_CLIENT_DEAD = 0xC,
  ENT_HANDLER_PLAYER_CLONE = 0xD,
  ENT_HANDLER_TURRET_INIT = 0xE,
  ENT_HANDLER_TURRET = 0xF,
  ENT_HANDLER_DROPPED_ITEM = 0x10,
  ENT_HANDLER_ITEM_INIT = 0x11,
  ENT_HANDLER_ITEM = 0x12,
  ENT_HANDLER_TRIGGER_USE = 0x13,
  ENT_HANDLER_PRIMARY_LIGHT = 0x14,
  ENT_HANDLER_PLAYER_BLOCK = 0x15,
  ENT_HANDLER_VEHICLE = 0x16,
  ENT_HANDLER_HELICOPTER = 0x17,
  ENT_HANDLER_COUNT = 0x18
};


struct entityHandler_t
{
  void (__cdecl *think)(struct gentity_s *);
  void (__cdecl *reached)(struct gentity_s *);
  void (__cdecl *blocked)(struct gentity_s *, struct gentity_s *);
  void (__cdecl *touch)(struct gentity_s *, struct gentity_s *, int);
  void (__cdecl *use)(struct gentity_s *, struct gentity_s *, struct gentity_s *);
  void (__cdecl *pain)(struct gentity_s *, struct gentity_s *, int, const float *, const int, const float *, enum hitLocation_t, const int);
  void (__cdecl *die)(struct gentity_s *, struct gentity_s *, struct gentity_s *, int, int, const int, const float *, enum hitLocation_t, int);
  void (__cdecl *controller)(struct gentity_s *, int *);
  int methodOfDeath;
  int splashMethodOfDeath;
};

extern const struct entityHandler_t entityHandlers[ENT_HANDLER_COUNT];



extern cvar_t *g_allowConsoleSay;
extern cvar_t* g_conrichsay;
extern cvar_t *g_disabledefcmdprefix;
extern cvar_t *g_votedMapName;
extern cvar_t *g_votedGametype;
extern cvar_t *g_allowVote;
extern cvar_t *g_TeamName_Axis;
extern cvar_t *g_TeamName_Allies;
extern cvar_t *g_gravity;
extern cvar_t *jump_height;
extern cvar_t *jump_stepSize;
extern cvar_t *jump_slowdownEnable;
extern cvar_t *g_antilag;
extern cvar_t *g_cheats;
extern cvar_t *g_oldVoting;
extern cvar_t *g_inactivity;
extern cvar_t *g_synchronousClients;
extern cvar_t *g_log;
extern cvar_t *g_logSync;
extern cvar_t *g_logTimeStampInSeconds;
extern cvar_t *g_smoothClients;

extern qboolean onExitLevelExecuted;

#ifdef __cplusplus
extern "C"{
#endif

qboolean __cdecl G_SpawnString(SpawnVar *spawnVar, const char *key, const char *defaultString, const char **out);
const char *__cdecl G_GetEntityParsePoint();
void __cdecl G_SetEntityParsePoint(const char *beginParsePoint);
qboolean __cdecl G_ParseSpawnVars(SpawnVar *spawnVar);

int BG_GetPerkIndexForName(const char *name);
void G_SetSavePersist(int val);

int G_GetClientSize();
playerState_t *G_GetPlayerState(int num);
clientState_t *G_GetClientState(int num);
gclient_t *G_GetGClient(int num);
void SpawnVehicle(gentity_t *ent, const char *vehtype);
void __cdecl G_VehSpawner(gentity_t *ent);
void __cdecl G_VehCollmapSpawner(gentity_t *ent);
void __cdecl G_SetModel(gentity_t *ent, const char *modelname);
/* void ClientSetUsername(int clientNum, const char *username); */
void __cdecl G_DObjCalcPose(gentity_t *ent, int *partBits);
void __cdecl player_die(struct gentity_s *self, struct gentity_s *inflictor, struct gentity_s *attacker, int damage, int meansOfDeath, int iWeapon, const float *vDir, enum hitLocation_t hitLoc, int psTimeOffset);
void SendScoreboard(struct gentity_s*);
void __cdecl G_PrintEntities();
void __cdecl TeleportPlayer(struct gentity_s *player, float *origin, float *angles);
void __cdecl Cmd_Give_f(struct gentity_s *ent);
void __cdecl Cmd_Take_f(struct gentity_s *ent);
const char *__cdecl G_GetEntityTypeName(gentity_t *ent);
int __cdecl G_ClientCanSpectateTeam(gclient_t *client, team_t team);
int __cdecl G_ClientCanSpectateTeamOrLocalPlayer(gclient_t *client, clientState_t *cs);
void __cdecl G_GetPlayerViewOrigin(playerState_t *ps, float *origin);
void __cdecl BG_GetPlayerViewDirection(playerState_t *ps, float *forward, float *right, float *up);
void __cdecl G_SetOrigin(gentity_t *ent, const float *origin);
void __cdecl SetClientViewAngle(gentity_t *ent, const float *angle);
qboolean GetFollowPlayerState(int clientNum, playerState_t *ps);
void CalculateRanks();
int __cdecl GScr_GetStatusIconIndex(const char *pszIcon);
int __cdecl GScr_GetHeadIconIndex(const char *pszIcon);
unsigned int __cdecl G_ModelName(int index);
void __cdecl Com_SetWeaponInfoMemory(int source);
void __cdecl ClearRegisteredItems();
void __cdecl BG_ClearWeaponDef();
int __cdecl G_GetWeaponIndexForName(const char *name);
void __cdecl G_EntUnlink(struct gentity_s *ent);
void __cdecl G_SetClientContents(struct gentity_s *pEnt);
void __cdecl ClientEndFrame(struct gentity_s *ent);
void __cdecl ClientThink_real(struct gentity_s *ent, struct usercmd_s *ucmd);
void __cdecl BG_PlayerStateToEntityState(struct playerState_s *ps, struct entityState_s *s, int snap, char handler);
int G_GetClientArchiveTime(int clientindex);
void G_SetClientArchiveTime(int clindex, int time);
void G_ClientStopUsingTurret(gentity_t* ent);
void G_EarlyInit();
void Scr_Vehicle_Think(struct gentity_s* ent);
uint16_t __cdecl G_GetHitLocationString(enum hitLocation_t hitLoc);
void __cdecl G_FreeEntity(struct gentity_s *gEnt);
void __cdecl G_RunMissile(gentity_t *gEnt);
void __cdecl G_GeneralLink(struct gentity_s *gEnt);
void __cdecl G_RunItem(gentity_t *gEnt);
void __cdecl G_RunMover(struct gentity_s *gEnt);
void __cdecl G_RunClient(gentity_t *gEnt);
void __cdecl G_RunCorpse(gentity_t *gEnt);
void __cdecl Scr_FreeEntity(struct gentity_s *ent);
void __cdecl PlayerCorpse_Free(struct gentity_s *ent);
void __cdecl G_VehFreeEntity(struct gentity_s *ent);
void __cdecl G_FreeTurret(struct gentity_s *ent);
void __cdecl G_FreeEntityRefs(struct gentity_s *ent);
void __cdecl XAnimClearTree(struct XAnimTree_s *tree);
void __cdecl G_LocationalTrace(trace_t *results, const float *start, const float *end, int passEntityNum, int contentmask, char *priorityMap);


void __cdecl Touch_Multi(struct gentity_s *, struct gentity_s *, int);
void __cdecl hurt_use(struct gentity_s *, struct gentity_s *, struct gentity_s *);
void __cdecl hurt_touch(struct gentity_s *, struct gentity_s *, int);
void __cdecl Use_trigger_damage(struct gentity_s *, struct gentity_s *, struct gentity_s *);
void __cdecl Reached_ScriptMover(struct gentity_s *);
void __cdecl Pain_trigger_damage(struct gentity_s *, struct gentity_s *, int, const float *, const int, const float *, enum hitLocation_t, const int);
void __cdecl Die_trigger_damage(struct gentity_s *, struct gentity_s *, struct gentity_s *, int, int, const int, const float *, enum hitLocation_t, int);
void __cdecl Touch_Item_Auto(struct gentity_s *, struct gentity_s *, int);
void __cdecl G_TimedObjectThink(struct gentity_s *);
void __cdecl G_PlayerController(struct gentity_s *, int *);
void __cdecl turret_use(struct gentity_s *, struct gentity_s *, struct gentity_s *);
void __cdecl turret_controller(struct gentity_s *, int *);
void __cdecl turret_think(struct gentity_s *);
void __cdecl G_VehEntHandler_Think(struct gentity_s *);
void __cdecl G_VehEntHandler_Touch(struct gentity_s *, struct gentity_s *, int);
void __cdecl G_VehEntHandler_Use(struct gentity_s *, struct gentity_s *, struct gentity_s *);
void __cdecl G_VehEntHandler_Pain(struct gentity_s *, struct gentity_s *, int, const float *, const int, const float *, enum hitLocation_t, const int);
void __cdecl G_VehEntHandler_Die(struct gentity_s *, struct gentity_s *, struct gentity_s *, int, int, const int, const float *, enum hitLocation_t, int);
void __cdecl G_VehEntHandler_Controller(struct gentity_s *, int *);
void __cdecl Helicopter_Think(struct gentity_s *);
void __cdecl Helicopter_Pain(struct gentity_s *, struct gentity_s *, int, const float *, const int, const float *, enum hitLocation_t, const int);
void __cdecl Helicopter_Die(struct gentity_s *, struct gentity_s *, struct gentity_s *, int, int, const int, const float *, enum hitLocation_t, int);
void __cdecl Helicopter_Controller(struct gentity_s *, int *);
void __cdecl G_ExplodeMissile(struct gentity_s *);
void __cdecl BodyEnd(struct gentity_s *);
void __cdecl turret_think_init(struct gentity_s *);
void __cdecl DroppedItemClearOwner(struct gentity_s *);
void __cdecl FinishSpawningItem(struct gentity_s *);
void __cdecl use_trigger_use(struct gentity_s *, struct gentity_s *, struct gentity_s *);


#ifdef __cplusplus
}
#endif

//This defines Cvars directly related to executable file

extern cvar_t* g_maxclients;
extern cvar_t* g_debugBullets;
extern vec3_t playerMins, playerMaxs;
extern uint16_t *modNames[16];
#endif /*G_SHARED_H*/
