#include "sv_bots.h"

BotMovementInfo_t BotMovement[MAX_CLIENTS];

typedef struct BotActions_s
{
	char* action;
	int key;
}BotActions_t;

const BotActions_t BotActions[] =
{
	{ "gostand",    KEY_MASK_JUMP       },
	{ "gocrouch",   KEY_MASK_CROUCH     },
	{ "goprone",    KEY_MASK_PRONE      },
	{ "fire",       KEY_MASK_FIRE       },
	{ "melee",      KEY_MASK_MELEE      },
	{ "frag",       KEY_MASK_FRAG       },
	{ "smoke",      KEY_MASK_SMOKE      },
	{ "reload",     KEY_MASK_RELOAD     },
	{ "sprint",     KEY_MASK_SPRINT     },
	{ "leanleft",   KEY_MASK_LEANLEFT   },
	{ "leanright",  KEY_MASK_LEANRIGHT  },
	{ "ads",        KEY_MASK_ADS_MODE   },
	{ "holdbreath", KEY_MASK_HOLDBREATH }
};

static void Bot_CalculateRotationForOrigin(gentity_t* bot, vec3_t origin, float duration)
{
	int i;
	vec3_t viewOrigin    = {0, 0, 0};
	vec3_t rotAngle      = {0, 0, 0};
	vec3_t fixedEntAngle = {0, 0, 0};

	BotMovement[bot->s.clientNum].rotIterCount = (int)(duration * sv_fps->integer);

	// Calculate current view origin: ent.origin + stance_z_addition: 11, 40, 60. Should change to 'tag_eye' origin?
	VectorCopy(bot->r.currentOrigin, viewOrigin);

		// Values are close enough and used in many scripts with 'bullettrace' script function.
	if(bot->client->ps.pm_flags & 1)      // Prone
		viewOrigin[2] += 11.0;
	else if(bot->client->ps.pm_flags & 2) // Crouch
		viewOrigin[2] += 40.0;
	else                                  // Stand
		viewOrigin[2] += 60.0;

	VectorSubtract(origin, viewOrigin, origin);
	Math_VectorToAngles(origin, rotAngle);            // [0, 2Pi].
	VectorCopy(bot->client->ps.viewangles, fixedEntAngle);  // [-Pi; Pi].

	// Pitch and yaw calc.
	for(i = 0; i < 2; ++i)
	{
		if(fixedEntAngle[i] < 0)
			fixedEntAngle[i] = 360.0 + fixedEntAngle[i];        // [0; 2Pi].
		rotAngle[i] -= fixedEntAngle[i];

		if(rotAngle[i] > 180.0)
			rotAngle[i] -= 360.0; // Instead of [180; 360) will be [-180; 0). For 315.0 will be -45.0;
		else if(rotAngle[i] < -180.0)
			rotAngle[i] += 360.0; // Instead of [-360.0; -180.0) will be [0; 180). For -315.0 will be 45.0;

		BotMovement[bot->s.clientNum].rotFrac[i] = (short int)(((rotAngle[i]/360.0*65535) / BotMovement[bot->s.clientNum].rotIterCount));
	}
	// Roll will be always 0.
	BotMovement[bot->s.clientNum].rotFrac[2] = 0.0;
}

static void Scr_BotAction_f(scr_entref_t entNum)
{
	int i;
	int argc = Scr_GetNumParam();
	if(argc != 1)
	{
		Scr_Error("Usage: <bot> botDoAction(<action>);");
		return;
	}

	if(!VM_GetGClientForEntityNumber(entNum))
	{
		Scr_ObjectError("not a client");
		return;
	}

	char* command = Scr_GetString(0);
	byte sign = command[0];
	char* action = &command[1];

	if(sign != '+' && sign != '-')
	{
		Scr_ParamError(0, "sign for action must be '+' or '-'");
		return;
	}

	qboolean keyFound = qfalse;

	if(!Q_stricmp(action, "forward"))
	{
		keyFound = qtrue;
		if(sign == '+')
			BotMovement[entNum].forwardMove = KEY_MASK_FORWARD;
		else
			BotMovement[entNum].forwardMove = 0;
	}
	else if(!Q_stricmp(action, "back"))
	{
		keyFound = qtrue;
		if(sign == '+')
			BotMovement[entNum].forwardMove = KEY_MASK_BACK;
		else
			BotMovement[entNum].forwardMove = 0;
	}
	else if(!Q_stricmp(action, "moveleft"))
	{
		keyFound = qtrue;
		if(sign == '+')
			BotMovement[entNum].rightMove = KEY_MASK_MOVELEFT;
		else
			BotMovement[entNum].rightMove = 0;
	}
	else if(!Q_stricmp(action, "moveright"))
	{
		keyFound = qtrue;
		if(sign == '+')
			BotMovement[entNum].rightMove = KEY_MASK_MOVERIGHT;
		else
			BotMovement[entNum].rightMove = 0;
	}

	for(i = 0; i < sizeof(BotActions) / sizeof(BotActions_t); ++i)
	{
		keyFound = qtrue;
		if(!Q_stricmp(action, BotActions[i].action))
		{
			if(sign == '+')
				BotMovement[entNum].buttons |= BotActions[i].key;
			else
				BotMovement[entNum].buttons &= ~(BotActions[i].key);
		}
	}

	if(!keyFound)
	{
		char buffer[1024] = {'\0'};
		mvabuf;

		for(i = 0; i < sizeof(BotActions) / sizeof(BotActions_t); ++i)
		{
			Q_strcat(buffer, 1024, " ");
			Q_strcat(buffer, 1024, BotActions[i].action);
		}
		Scr_ParamError(0, va("Unknown action. Must be one of:%s.", buffer));
	}
}

static void Scr_BotStopAllActions_f(scr_entref_t entNum)
{
	if(!VM_GetGClientForEntityNumber(entNum))
	{
		Scr_ObjectError("Not a client");
		return;
	}

	if(Scr_GetNumParam() > 0)
	{
		Scr_Error("Usage: <bot> botStopAllActions();");
		return;
	}

	Com_Memset(&BotMovement[entNum], 0, sizeof(BotMovementInfo_t));
}

static void Scr_BotRotate_f(scr_entref_t entNum)
{
	vec3_t angle;
	int i;
	gentity_t *ent = VM_GetGEntityForNum(entNum);
	mvabuf;

	if(!ent)
	{
		Scr_ObjectError("Not an entity");
		return;
	}
	if(!ent->client)
	{
		Scr_ObjectError("Not a client");
		return;
	}

	if(Scr_GetNumParam() != 1 && Scr_GetNumParam() != 2)
	{
		Scr_Error("Usage: <bot> botRotate(<angles>, [duration]);");
		return;
	}

	Scr_GetVector(0, (float*)&angle);
	float minDuration = 1.0/sv_fps->integer;
	float duration = minDuration; // 1 server frame.
	if(Scr_GetNumParam() == 2)
	{
		duration = Scr_GetFloat(1);
		if(duration < minDuration)
		{
			Scr_ParamError(1, va("minimal duration and its precision must be %.4f", minDuration));
			return;
		}
	}
	BotMovement[entNum].rotIterCount = (int)(duration * sv_fps->integer);

	for(i = 0; i < 3; ++i)
		BotMovement[entNum].rotFrac[i] = (short int)((angle[i]/360.0*65536) / BotMovement[entNum].rotIterCount);
}

static void Scr_BotStopRotation_f(scr_entref_t entNum)
{
	if(!VM_GetGClientForEntityNumber(entNum))
	{
		Scr_ObjectError("Not a client");
		return;
	}

	if(Scr_GetNumParam() != 0)
	{
		Scr_Error("Usage: <bot> botStopRotation();");
		return;
	}

	Com_Memset(BotMovement[entNum].rotFrac, 0, sizeof(BotMovement[entNum].rotFrac));
	BotMovement[entNum].rotIterCount = 0;
}

static void Scr_BotLookAt_f(scr_entref_t entNum)
{
	vec3_t lookAtOrigin  = {0, 0, 0};
	gentity_t *ent = VM_GetGEntityForNum(entNum);
	mvabuf;

	if(!ent)
	{
		Scr_ObjectError("Not an entity");
		return;
	}

	if(!ent->client)
	{
		Scr_ObjectError("Not a client");
		return;
	}

	if(Scr_GetNumParam() != 1 && Scr_GetNumParam() != 2)
	{
		Scr_Error("Usage: <bot> botLookAt(<origin>, [duration]);");
		return;
	}

	float minDuration = 1.0/sv_fps->integer;
	Scr_GetVector(0, (float*)&lookAtOrigin);
	float duration = minDuration; // 1 server frame.
	if(Scr_GetNumParam() == 2)
	{
		duration = Scr_GetFloat(1);
		if(duration < minDuration)
		{
			Scr_ParamError(1, va("minimal duration and its precision must be %.4f", minDuration));
			return;
		}
	}

	Bot_CalculateRotationForOrigin(ent, lookAtOrigin, duration);
}

static void Scr_BotLookAtPlayer_f(scr_entref_t entNum)
{
	gentity_t *ent = VM_GetGEntityForNum(entNum);
	vec3_t lookOrigin = {0, 0, 0};
	vec3_t velocity   = {0, 0, 0};
	mvabuf;

	if(!ent)
	{
		Scr_ObjectError("Not an entity");
		return;
	}

	if(!ent->client)
	{
		Scr_ObjectError("Not a client");
		return;
	}

	if(Scr_GetNumParam() != 1 && Scr_GetNumParam() != 2)
	{
		Scr_Error("Usage: <bot> botLookAtPlayer(<player>, [tag_name]);");
		return;
	}

	gentity_t* player = Scr_GetEntity(0);
	if(!player)
	{
		Scr_ParamError(0, "Not an entity.");
		return;
	}
	if(!player->client)
	{
		Scr_ParamError(0, "Not a client.");
		return;
	}

	short tagName = stringIndex.pelvis;
	if(Scr_GetNumParam() == 2)
		tagName = Scr_GetConstString(1);

	if(!GetTagInfoForEntity(player, tagName, &DOBJ_PART_CACHE, qtrue))
	{
		Scr_ParamError(1, va("tag '%s' does not exist in model '%s' (or any attached submodels)", SL_ConvertToString(tagName), SL_ConvertToString(SV_GetModelConfigstringIndex(ent->model))));
		return;
	}

	// If velocity is units per second, then scale velocity by sec per frame...
	// ... and using sprint prediction multiplier
	float multiplier = 1.0;
	if(player->client->ps.pm_flags == 32768) // is sprinting?
		multiplier = 2.0;

	VectorScale(player->client->ps.velocity, multiplier/sv_fps->integer, velocity);
	VectorAdd(DOBJ_PART_CACHE.vectorSet.origin, velocity, lookOrigin);
	Bot_CalculateRotationForOrigin(ent, lookOrigin, 1.0/sv_fps->integer);
}

void Scr_AddBotsMovement()
{
	Scr_AddMethod("botAction", Scr_BotAction_f, qfalse);
	Scr_AddMethod("botStopAllActions", Scr_BotStopAllActions_f, qfalse);
	Scr_AddMethod("botRotate", Scr_BotRotate_f, qfalse);
	Scr_AddMethod("botStopRotation", Scr_BotStopRotation_f, qfalse);
	Scr_AddMethod("botLookAt", Scr_BotLookAt_f, qfalse);
	Scr_AddMethod("botLookAtPlayer", Scr_BotLookAtPlayer_f, qfalse);
}
