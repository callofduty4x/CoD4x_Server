#pragma once

#include "q_platform.hpp"

extern "C"
{
    float CCDECL std_ceilf(float x);
    float CCDECL std_asinf(float x);
    void* CCDECL std_new(unsigned int Size_);
    void CCDECL std_delete(void* Address_);
}
