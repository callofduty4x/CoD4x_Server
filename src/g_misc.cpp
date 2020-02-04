#include "g_misc.hpp"
#include "qshared.hpp"
#include "g_shared.hpp"
#include "g_main_mp.hpp"


extern "C"
{
    turretInfo_s turretInfo[MAX_TURRETS];

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