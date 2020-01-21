#ifndef _SV_SNAPSHOT_H_
#define _SV_SNAPSHOT_H_
#include "player.h"


int SV_GetArchivedClientInfo(int clientNum, int *pArchiveTime, playerState_t *ps, clientState_t *cs, float *origin, int *health, int *otherFlags);

#endif