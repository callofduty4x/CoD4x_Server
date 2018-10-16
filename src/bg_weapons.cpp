#include "bg_public.h"

const char *__cdecl BG_WeaponName(int weapon)
{
  return BG_GetWeaponDef(weapon)->szInternalName;
}
