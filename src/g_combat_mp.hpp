#pragma once
#include <cstdint>

extern "C"
{
    extern uint16_t* modNames[16];
    extern char g_HitLocConstNames[0x80];
    extern char g_fHitLocDamageMult[0x80];

    extern unsigned char riflePriorityMap[19];
    extern unsigned char bulletPriorityMap[19];
    extern const char* g_HitLocNames[19];
}
