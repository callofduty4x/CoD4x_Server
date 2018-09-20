#include "q_shared.h"
#include "g_shared.h"

#define MAX_TURRETS 32

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

extern turretInfo_s turretInfo[MAX_TURRETS];

extern "C"{

void G_InitTurrets()
{
  int i;

  for(i = 0; i < MAX_TURRETS; ++i){
    turretInfo[i].inuse = 0;
  }
}

int G_TurretCalcFireTime()
{
    return 1000 / level.framerate;
}

}