#include "g_combat_mp.hpp"

#include "scr_vm.hpp"
#include "qcommon_io.hpp"
#include "cscr_const.hpp"

extern "C"
{
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

    char g_HitLocConstNames[0x80];
    char g_fHitLocDamageMult[0x80];

    unsigned char riflePriorityMap[19] = { 1, 9, 9, 9, 8, 7, 6, 6, 6, 6, 5, 5, 4, 4, 4, 4, 3, 3, 0 };
    unsigned char bulletPriorityMap[19] = { 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0 };
    const char* g_HitLocNames[19] =
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

}
