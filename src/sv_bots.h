#ifndef _SV_BOTS_H
#define _SV_BOTS_H

#include "player.h"
#include "sys_cod4defs.h"
#include "q_shared.h"

/* Should keep attribute and this field layout.
 * Met situation where simple vector read into moveTo broke whole
 *  structure.
*/
/* !!!DO NOT CHANGE ALIGNED TO 1!!! */
/* T-Max: I have no idea why it changes ints' sizes to 1 byte and brokes whole structure x2. */
typedef struct __attribute__ ((aligned (4))) BotMovementInfo_t
{
    /* Actions */
    int buttons;
    /* Movement */
    int doMove;
    float moveTo[2];
    /* Rotation */
    int rotIterCount;
    short int rotFrac[2];
    qboolean lastAliveState;
    byte useSpamDelay;
    /* Weapon */
    byte weapon;
} BotMovementInfo_t;

extern BotMovementInfo_t g_botai[MAX_CLIENTS];

#ifdef __cplusplus
extern "C"
{
#endif // __cplusplus


void Scr_AddBotsMovement();
qboolean shouldSpamUseButton(gentity_t *bot);


#ifdef __cplusplus
}
#endif //__cplusplus
#endif //_SV_BOTS_H
