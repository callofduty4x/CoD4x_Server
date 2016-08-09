#ifndef _SV_BOTS_H
#define _SV_BOTS_H

#include "player.h"
#include "sys_cod4defs.h"  // MAX_CLIENTS.

typedef struct
{
	int clNum;
	int buttons;
} BotMovement_t;

extern BotMovement_t BotMovement[MAX_CLIENTS];
void addBotsMovementScriptCommands();

#endif
