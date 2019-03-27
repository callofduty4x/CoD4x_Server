#ifndef __BG_PUBLIC_H__
#define __BG_PUBLIC_H__

#include "entity.h"
#include "cm_public.h"
#include "xassets/weapondef.h"

void __cdecl BG_EvaluateTrajectory(trajectory_t *tr, int atTime, float *result);
void __cdecl BG_ShutdownWeaponDefFiles();
const char *__cdecl BG_WeaponName(int weapon);

#ifdef __cplusplus
extern "C"{
#endif

struct WeaponDef *__cdecl BG_GetWeaponDef(int weapon);

#ifdef __cplusplus
};
#endif


struct DObjModel_s;

struct pmove_t
{
  struct playerState_s *ps;
  usercmd_t cmd;
  usercmd_t oldcmd;
  int tracemask;
  int numtouch;
  int touchents[32];
  vec3_t mins;
  vec3_t maxs;
  float xyspeed;
  int proneChange;
  float maxSprintTimeMultiplier;
  byte mantleStarted;
  char pad1[3];
  vec3_t mantleEndPos;
  int mantleDuration;
  int viewChangeTime;
  float viewChange;
  char handler;
  char pad2[3];
};

struct pml_t
{
  vec3_t forward;
  vec3_t right;
  vec3_t up;
  float frametime;
  int msec;
  int walking;
  int groundPlane;
  int almostGroundPlane;
  trace_t groundTrace;
  float impactSpeed;
  vec3_t previous_origin;
  vec3_t previous_velocity;
};

/*
#pragma pack(push, 8)
struct animation_s
{
  char name[64];
  int initialLerp;
  float moveSpeed;
  int duration;
  int nameHash;
  int flags;
  int pad1;
  int64_t movetype;
  int noteType;
  int pad2;
};
#pragma pack(pop)

#pragma pack(push, 8)
struct animScriptData_t
{
  animation_s animations[512];
  unsigned int numAnimations;
  animScript_t scriptAnims[1][43];
  animScript_t scriptCannedAnims[1][43];
  animScript_t scriptStateChange[1][1];
  animScript_t scriptEvents[21];
  animScriptItem_t scriptItems[2048];
  int numScriptItems;
  scr_animtree_t animTree;
  unsigned __int16 torsoAnim;
  unsigned __int16 legsAnim;
  unsigned __int16 turningAnim;
  snd_alias_list_t *(__cdecl *soundAlias)(const char *);
  int (__cdecl *playSoundAlias)(int, snd_alias_list_t *);
};
#pragma pack(pop)



#pragma pack(push, 1)
struct __align(8) bgs_s
{
  animScriptData_t animScriptData;
  bodyAnim_t generic_human;
  int time;
  int latestSnapshotTime;
  int frametime;
  int anim_user;
  XModel *(__cdecl *GetXModel)(const char *);
  void (__cdecl *CreateDObj)(DObjModel_s *, unsigned int int16_t, XAnimTree_s *, int, int, clientInfo_t *);
  uint16_t (__cdecl *AttachWeapon)(DObjModel_s *, uint16_t, clientInfo_t *);
  DObj_s *(__cdecl *GetDObj)(int, int);
  void (__cdecl *SafeDObjFree)(int, int);
  void *(__cdecl *AllocXAnim)(int);
  clientInfo_t clientinfo[64];
};
#pragma pack(pop)
*/

struct __align(8) bgs_s
{
  byte animScriptData[0x9a9d0];
  byte generic_human[0x10];
  int time;
  int latestSnapshotTime;
  int frametime;
  int anim_user;
  struct XModel *(__cdecl *GetXModel)(const char *);
  void (__cdecl *CreateDObj)(struct DObjModel_s *, uint16_t, struct XAnimTree_s *, int, int, struct clientInfo_t *);
  uint16_t (__cdecl *AttachWeapon)(struct DObjModel_s *, uint16_t, struct clientInfo_t *);
  struct DObj_s *(__cdecl *GetDObj)(int, int);
  void (__cdecl *SafeDObjFree)(int, int);
  void *(__cdecl *AllocXAnim)(int);
  struct clientInfo_t clientinfo[64];
};

extern struct bgs_s level_bgs;
extern struct bgs_s *bgs;
#endif


