#pragma once
#include "player.hpp"


extern "C" int SV_GetArchivedClientInfo(int clientNum, int *pArchiveTime, playerState_t *ps, clientState_t *cs, float *origin, int *health, int *otherFlags);
