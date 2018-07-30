#include "q_shared.h"
#include "cvar.h"

#define MAX_TURRETS 32

cvar_t* g_noturrets;

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

bool G_TurretsDisabled()
{
    if(g_noturrets->boolean)
    {
	return true;
    }
    return false;
}

void G_EarlyInit()
{

    g_noturrets = Cvar_RegisterBool("g_noturrets", qfalse, 0, "Do not load turrets from fastfiles. Can free up up to 2 weapons");


}

}