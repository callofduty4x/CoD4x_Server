#include "bg_mantle.hpp"


extern "C"
{
    cvar_s* mantle_enable;
    cvar_s* mantle_view_yawcap;
    cvar_s* mantle_debug;
    cvar_s* mantle_check_angle;
    cvar_s* mantle_check_range;
    cvar_s* mantle_check_radius;

    void* s_mantleAnims;
    const char* s_mantleAnimNames[16] =
    {
        "mp_mantle_root",
        "mp_mantle_up_57",
        "mp_mantle_up_51",
        "mp_mantle_up_45",
        "mp_mantle_up_39",
        "mp_mantle_up_33",
        "mp_mantle_up_27",
        "mp_mantle_up_21",
        "mp_mantle_over_high",
        "mp_mantle_over_mid",
        "player_mantle_over_low"
    };

    MantleAnimTransition s_mantleTrans[7] =
    {
        {1, 8, 57.0f},
        {2, 8, 51.0f},
        {3, 9, 45.0f},
        {4, 9, 39.0f},
        {5, 9, 33.0f},
        {6, 10, 27.0f},
        {7, 10, 21.0f}
    };
}
