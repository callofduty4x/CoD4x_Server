#include "bg_weapons.hpp"
#include "bg_public.hpp"

const char *__cdecl BG_WeaponName(int weapon)
{
  return BG_GetWeaponDef(weapon)->szInternalName;
}
