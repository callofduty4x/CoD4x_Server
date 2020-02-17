#pragma once

#include "q_platform.hpp"

extern "C"
{
    float CDECL std_ceilf(float x);
    float CDECL std_asinf(float x);
    void* CDECL std_new(unsigned int Size_);
    void CDECL std_delete(void* Address_);
}
