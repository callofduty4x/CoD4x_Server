#include "q_shared.h"
#include "g_shared.h"

#define MAX_TURRETS 32



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