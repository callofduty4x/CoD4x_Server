#include "g_scr_vehicle.hpp"

#include "scr_vm.hpp"
#include "cscr_const.hpp"

extern "C"
{
    uint16_t* s_flashTags[] = {
        &scr_const.tag_flash,
        &scr_const.tag_flash_11,
        &scr_const.tag_flash_2,
        &scr_const.tag_flash_22,
        &scr_const.tag_flash_3,
        NULL };

    vehicle_info_t s_vehicleInfos[32];
    float vehicle_frametime;

    const float s_correctSolidDeltas[26][3] =
    {
        {0.0f, 0.0f, 1.0f},
        {-1.0f, 0.0f, 1.0f},
        {0.0f, -1.0f, 1.0f},
        {1.0f, 0.0f, 1.0f},
        {0.0f, 1.0f, 1.0f},
        {-1.0f, 0.0f, 0.0f},
        {0.0f, -1.0f, 0.0f},
        {1.0f, 0.0f, 0.0f},
        {0.0f, 1.0f, 0.0f},
        {0.0f, 0.0f, -1.0f},
        {-1.0f, 0.0f, -1.0f},
        {0.0f, -1.0f, -1.0f},
        {1.0f, 0.0f, -1.0f},
        {0.0f, 1.0f, -1.0f},
        {-1.0f, -1.0f, 1.0f},
        {1.0f, -1.0f, 1.0f},
        {1.0f, 1.0f, 1.0f},
        {-1.0f, 1.0f, 1.0f},
        {-1.0f, -1.0f, 0.0f},
        {1.0f, -1.0f, 0.0f},
        {1.0f, 1.0f, 0.0f},
        {-1.0f, 1.0f, 0.0f},
        {-1.0f, -1.0f, -1.0f},
        {1.0f, -1.0f, -1.0f},
        {1.0f, 1.0f, -1.0f},
        {-1.0f, 1.0f, -1.0f}
    };
}
