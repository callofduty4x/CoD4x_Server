#pragma once
#include "entity.hpp"

float Dirty_GetJumpHeight(unsigned int num);

extern "C"
{
    void CCDECL StuckInClient( gentity_t* gen );
} // extern "C"
