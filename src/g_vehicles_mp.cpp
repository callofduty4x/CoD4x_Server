#include "g_vehicles_mp.hpp"

#include "scr_vm.hpp"
#include "cscr_const.hpp"

extern "C"
{
    byte s_phys[0x40];
    byte s_backup[0x1c0];
    byte s_numVehicleInfos[0x1c];
    byte s_vehicles[0x1aa0];
    cvar_t* vehDebugServer;
    cvar_t* vehTestHorsepower;
    cvar_t* vehTestMaxMPH;
    cvar_t* vehTestWeight;
    cvar_t* vehTextureScrollScale;

    uint16_t* s_wheelTags[] = {
        &scr_const.tag_wheel_front_left,
        &scr_const.tag_wheel_front_right,
        &scr_const.tag_wheel_back_left,
        &scr_const.tag_wheel_back_right,
        &scr_const.tag_wheel_middle_left,
        &scr_const.tag_wheel_middle_right,
        NULL 
    };

    const char* s_vehicleTypeNames[6] =
    {
        "4 wheel",
        "tank",
        "plane",
        "boat",
        "artillery",
        "helicopter",
    };

    cspField_t s_vehicleFields[33] =
    {
        { "type", 0x40, 0x0C }, 
        { "steerWheels", 0x44, 5 },
        { "texureScroll", 0x48, 5 },
        { "quadBarrel", 0x4C, 5 },
        { "bulletDamage", 0x50, 5 },
        { "armorPiercingDamage", 0x54, 5 },
        { "grenadeDamage", 0x58, 5 },
        { "projectileDamage", 0x5C, 5 },
        { "projectileSplashDamage", 0x60, 5 },
        { "heavyExplosiveDamage", 0x64, 5 },
        { "texureScrollScale", 0x68, 6 },
        { "maxSpeed", 0x6C, 6 },
        { "accel", 0x70, 6 },
        { "rotRate", 0x74, 6 },
        { "rotAccel", 0x78, 6 },
        { "collisionDamage", 0x84, 6 },
        { "collisionSpeed", 0x88, 6 },
        { "suspensionTravel", 0x8C, 6 },
        { "maxBodyPitch", 0x7C, 6 },
        { "maxBodyRoll", 0x80, 6 },
        { "turretWeapon", 0x90, 0 },
        { "turretHorizSpanLeft", 0x0D0, 6 },
        { "turretHorizSpanRight", 0x0D4, 6 },
        { "turretVertSpanUp", 0x0D8, 6 },
        { "turretVertSpanDown", 0x0DC, 6 },
        { "turretRotRate", 0x0E0, 6 },
        { "lowIdleSnd", 0x0E4, 0 },
        { "highIdleSnd", 0x124, 0 },
        { "lowEngineSnd", 0x164, 0 },
        { "highEngineSnd", 0x1A4, 0 },
        { "turretSpinSnd", 0x1E4, 0 },
        { "turretStopSnd", 0x224, 0 },
        { "engineSndSpeed", 0x26C, 6 }
    };

} // extern "C"
