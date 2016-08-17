#ifndef _SV_BOTS_H
#define _SV_BOTS_H

#include "player.h"
#include "sys_cod4defs.h"
#include "scr_vm.h"
#include "sys_main.h"
#include "q_math.h"
#include "scr_vm_functions.h"

typedef struct BotMovementInfo_s
{
	byte forwardMove;
	byte rightMove;
	int buttons;
	short int rotFrac[3];
	int rotIterCount;
} BotMovementInfo_t;

extern BotMovementInfo_t BotMovement[MAX_CLIENTS];

void Scr_AddBotsMovement();

#endif
