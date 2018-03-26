#ifndef __BG_PUBLIC_H__
#define __BG_PUBLIC_H__

#include "entity.h"
#include "cm_public.h"

void __cdecl BG_EvaluateTrajectory(trajectory_t *tr, int atTime, float *result);
void __cdecl BG_ShutdownWeaponDefFiles();

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


#endif


