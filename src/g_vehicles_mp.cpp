#include "g_vehicles_mp.hpp"

#include "scr_vm.hpp"
#include "cscr_const.hpp"

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
    NULL };
