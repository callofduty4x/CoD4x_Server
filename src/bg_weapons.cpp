#include "bg_weapons.hpp"

#include "bg_public.hpp"


const char* BG_WeaponName(int weapon)
{
    return BG_GetWeaponDef(weapon)->szInternalName;
}


extern "C"
{
    unsigned int MY_RELOADSTART_INTERUPT_IGNORE_FRAC[] =
    {
        0x3ecccccd, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    };

    unsigned int bg_lastParsedWeaponIndex = 0;

    unsigned int bg_numAmmoTypes;
    WeaponDef* bg_weapAmmoTypes[128];
    char bg_numSharedAmmoCaps[0x20];
    WeaponDef* bg_sharedAmmoCaps[128];
    unsigned int bg_numWeapClips;
    WeaponDef* bg_weapClips[128];
    byte penetrationDepthTableLoaded = 0;
    WeaponDef* bg_weaponDefs[128];
    char penetrationDepthTable[0x1e0];
}
