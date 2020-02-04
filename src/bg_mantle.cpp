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
}
