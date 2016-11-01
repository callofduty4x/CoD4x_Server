#ifndef _SV_BOTS_H
#define _SV_BOTS_H

#include "player.h"
#include "sys_cod4defs.h"

/* Should keep attribute and this field layout.
 * Met situation where simple vector read into moveTo broke whole
 *  structure.
*/
typedef struct __attribute__ ((aligned (1))) BotMovementInfo
{
    /* Actions */
    int buttons;
    /* Movement */
    int doMove;
    float moveTo[2];
    /* Rotation */
    int rotIterCount;
    short int rotFrac[2];
} BotMovementInfo;

extern BotMovementInfo g_botai[MAX_CLIENTS];

void Scr_AddBotsMovement();

#endif
