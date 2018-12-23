#include "scr_vm.h"
#include "g_scr_vehicle.h"

uint16_t* s_flashTags[] = { 
    &scr_const.tag_flash,
    &scr_const.tag_flash_11,
    &scr_const.tag_flash_2,
    &scr_const.tag_flash_22,
    &scr_const.tag_flash_3,
    NULL };


struct vehicle_info_t s_vehicleInfos[32];

float vehicle_frametime;