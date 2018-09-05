#include "scr_vm.h"
#include "qcommon_io.h"

uint16_t* modNames[] =
{
  &scr_const.MOD_UNKNOWN,
  &scr_const.MOD_PISTOL_BULLET,
  &scr_const.MOD_RIFLE_BULLET,
  &scr_const.MOD_GRENADE,
  &scr_const.MOD_GRENADE_SPLASH,
  &scr_const.MOD_PROJECTILE,
  &scr_const.MOD_PROJECTILE_SPLASH,
  &scr_const.MOD_MELEE,
  &scr_const.MOD_HEAD_SHOT,
  &scr_const.MOD_CRUSH,
  &scr_const.MOD_TELEFRAG,
  &scr_const.MOD_FALLING,
  &scr_const.MOD_SUICIDE,
  &scr_const.MOD_TRIGGER_HURT,
  &scr_const.MOD_EXPLOSIVE,
  &scr_const.MOD_IMPACT
};



