#pragma once
#include "csp_field.hpp"

extern "C"
{
    extern char bg_defaultWeaponDefs[0x880];
    extern char g_playerAnimTypeNames[0x100];
    extern char g_playerAnimTypeNamesCount[0x80];
    extern char surfaceTypeSoundListCount[0x1c];
    extern char surfaceTypeSoundLists[0xe0];

    extern const char* szWeapTypeNames[4];
    extern const char* szWeapClassNames[10];
    extern const char* szWeapOverlayReticleNames[2];
    extern const char* szWeapInventoryTypeNames[4];
    extern const char* szWeapFireTypeNames[5];
    extern const char* penetrateTypeNames[4];
    extern const char* impactTypeNames[9];
    extern const char* szWeapStanceNames[3];
    extern const char* szProjectileExplosionNames[7];
    extern const char* offhandClassNames[4];
    extern const char* activeReticleNames[3];
    extern const char* guidedMissileNames[4];
    extern const char* stickinessNames[4];
    extern const char* overlayInterfaceNames[3];
    extern const char* ammoCounterClipNames[7];
    extern const char* weapIconRatioNames[3];
    extern cspField_t weaponDefFields[502];
} // extern "C"
