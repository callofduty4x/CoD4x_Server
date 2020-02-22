#pragma once
#include "server.hpp"

struct cvar_s;

extern cvar_s* sv_queryIgnoreMegs;

extern "C"
{
    extern server_t sv;
    extern cvar_s* sv_clientSideBullets;
}
