#pragma once
#include "server.hpp"

struct cvar_s;

extern "C"
{
    extern server_t sv;
    extern cvar_s* sv_clientSideBullets;
}
