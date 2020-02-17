#pragma once
#include "entity.hpp"

float Dirty_GetJumpHeight(unsigned int num);

extern "C"
{
    void CDECL __optimize3 StuckInClient( gentity_t* gen );
} // extern "C"
