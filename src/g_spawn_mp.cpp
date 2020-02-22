#include "g_spawn_mp.hpp"

#include "g_entity.hpp"
#include "g_main_mp.hpp"


extern "C"
{
    ent_field_t ent_fields[11] =
    {
        { "classname", 0x170, F_STRING, Scr_ReadOnlyField },
        { "origin", 0x13C, F_VECTOR, Scr_SetOrigin },
        { "model", 0x168, F_MODEL, Scr_ReadOnlyField },
        { "spawnflags", 0x17C, F_INT, Scr_ReadOnlyField },
        { "target", 0x172, F_STRING, nullptr },
        { "targetname", 0x174, F_STRING, nullptr },
        { "count", 0x1AC, F_INT, nullptr },
        { "health", 0x1A0, F_INT, Scr_SetHealth },
        { "dmg", 0x1A8, F_INT, nullptr },
        { "angles", 0x148, F_VECTOR, Scr_SetAngles },
        { nullptr, 0, F_INT, nullptr}
    };

    SpawnFuncEntry s_bspOrDynamicSpawns[6] =
    {
        {"info_notnull", SP_info_notnull},
        {"info_notnull_big", SP_info_notnull},
        {"trigger_radius", SP_trigger_radius},
        {"script_model", SP_script_model},
        {"script_origin", SP_script_origin},
        {"script_vehicle_collmap", G_VehCollmapSpawner},
    };

    SpawnFuncEntry s_bspOnlySpawns[14] =
    { 
        {"trigger_use", trigger_use},
        {"trigger_use_touch", trigger_use_touch},
        {"trigger_multiple", SP_trigger_multiple},
        {"trigger_disk", SP_trigger_disk},
        {"trigger_hurt", SP_trigger_hurt},
        {"trigger_once", SP_trigger_once},
        {"trigger_damage", SP_trigger_damage},
        {"trigger_lookat", SP_trigger_lookat},
        {"light", SP_light},
        {"misc_mg42", SP_turret},
        {"misc_turret", SP_turret},
        {"script_brushmodel", SP_script_brushmodel},
        {"script_struct", G_FreeEntity},
        {"script_vehicle_mp", G_VehSpawner}
    };

} // extern "C"
