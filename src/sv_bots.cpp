#include "sv_bots.h"
#include "scr_vm.h"
#include "sys_main.h"
#include "q_shared.h"
#include "scr_vm_functions.h"
#include "misc.h"
#include "server.h"
#include "cscr_stringlist.h"
#include "sv_bots_astar.h"

BotMovementInfo_t g_botai[MAX_CLIENTS];

struct BotAction_t
{
    const char* action;
    int key;
};

const BotAction_t BotActions[] =
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
    { "ads",        KEY_MASK_ADS_MODE | KEY_MASK_ADS },
    { "holdbreath", KEY_MASK_HOLDBREATH },
    { "activate",   KEY_MASK_USE }
};
/*
==================
Bot_CalculateRotationForOrigin
==================
*/
static void Bot_CalculateRotationForOrigin(gentity_t* bot, vec3_t origin, float duration)
{
    int bot_num = bot->s.clientNum;
    int i;
    vec3_t view;
    vec3_t rot;
    vec3_t bot_view;

    g_botai[bot_num].rotIterCount = (int)(duration * sv_fps->integer);

    /* Calculate current view origin: ent.origin + stance_z_addition: */
    /*  11, 40, 60. Should change to 'tag_eye' origin? */
    vec3_copy(view, bot->r.currentOrigin);

    /* Values are close enough and used in many scripts with 'bullettrace' */
    /*  script function. */
    if(bot->client->ps.pm_flags & 1)      /* Prone. */
        view[2] += 11.0;
    else if(bot->client->ps.pm_flags & 2) /* Crouch. */
        view[2] += 40.0;
    else                                  /* Stand. */
        view[2] += 60.0;

    vec3_substract(origin, view);
    Math_VectorToAngles(origin, rot);                /* [0, 2Pi]. */
    vec3_copy(bot_view, bot->client->ps.viewangles); /* [-Pi; Pi]. */

    /* Pitch and yaw calc. */
    for(i = 0; i < 2; ++i)
    {
        if(bot_view[i] < 0)
            bot_view[i] = 360.0 + bot_view[i];       /* [0; 2Pi]. */
        rot[i] -= bot_view[i];

        /* Instead of [180; 360) will be [-180; 0). */
        /* For 315.0 will be -45.0. */
        if(rot[i] > 180.0)
            rot[i] -= 360.0;
        /* Instead of [-360.0; -180.0) will be [0; 180). */
        /* For -315.0 will be 45.0. */
        else if(rot[i] < -180.0)
            rot[i] += 360.0;

        g_botai[bot_num].rotFrac[i] = (short int)(((rot[i]/360.0*65535) /
                                      g_botai[bot->s.clientNum].rotIterCount));
    }
    /* Roll will be always 0. */
    //g_botai[bot_num].rotFrac[2] = 0.0; Roll does not exist! - IceNinjaman
}
/*
==================
scr_botmoveto
==================
*/
/* self botmoveto(<vec pos>); */
static void scr_botmoveto(scr_entref_t ent_num)
{
    vec3_t moveTo;
    gentity_t* ent = VM_GetGEntityForEntRef(ent_num);

    if (Scr_GetNumParam() == 1)
    {
        if (ent)
        {
            if (ent->client)
            {
                Scr_GetVector(0, moveTo);
                vec2_copy(g_botai[ent_num.entnum].moveTo, moveTo);
                g_botai[ent_num.entnum].doMove = 1;
            }
            else
                Scr_ObjectError("Not a client.");
        }
        else
            Scr_ObjectError("Not an entity.");
    }
    else
        Scr_Error("Usage: bot botMoveTo(<vec3 position>);");
}
/*
==================
scr_botlookat
==================
*/
/* bot botLookAt(<vec origin>, [float duration]); */
static void scr_botlookat(scr_entref_t ent_num)
{
    vec3_t look_at;
    gentity_t *bot = VM_GetGEntityForEntRef(ent_num);
    float minDuration;
    float duration;
    int argc;
    mvabuf;

    argc = Scr_GetNumParam();
    minDuration = 1.0/sv_fps->integer; /* 1 server frame */
    duration = minDuration;

    if(!bot)
        Scr_ObjectError("Not an entity");

    if(!bot->client)
        Scr_ObjectError("Not a client");

    if (argc == 1 || argc == 2)
        Scr_GetVector(0, look_at);
    else
        Scr_Error("Usage: <bot> botLookAt(<origin>, [duration]);");

    if (argc == 2)
        duration = Scr_GetFloat(1);

    if(duration >= minDuration)
        Bot_CalculateRotationForOrigin(bot, look_at, duration);
    else
        Scr_ParamError(1, va("min duration must be %.4f", minDuration));
}
/*
==================
scr_botstop
==================
*/
/* bot botStop(); */
static void scr_botstop(scr_entref_t ent_num)
{
    gentity_t *bot = VM_GetGEntityForEntRef(ent_num);

    if (!bot)
        Scr_ObjectError("Not an entity.");

    if(!bot->client)
        Scr_ObjectError("Not a client.");

    if(Scr_GetNumParam() != 0)
        Scr_Error("Usage: <bot> botStop();");

    g_botai[ent_num.entnum].buttons = 0;
    g_botai[ent_num.entnum].doMove = 0;
    g_botai[ent_num.entnum].rotIterCount = 0;
    g_botai[ent_num.entnum].weapon = 1; // weapon index 0 is "none"
    /*g_botai[ent_num.entnum].rotFrac[0] = 0;
    g_botai[ent_num.entnum].rotFrac[1] = 0;*/
}
/*
==================
scr_botweapon
==================
*/
/* bot botWeapon(<str action>); */
static void scr_botweapon(scr_entref_t ent_num)
{
    int argc;
    gentity_t *bot;
    char* weapon;
    ::byte weapInt;
    mvabuf;

    bot = VM_GetGEntityForEntRef(ent_num);
    if (!bot)
        Scr_Error("Not an entity.");

    if (!bot->client)
        Scr_Error("Not a client.");

    argc = Scr_GetNumParam();
    if (argc != 1)
        Scr_Error("Usage: <bot> botWeapon(<weapon>);");

    weapon = Scr_GetString(0);

    if (!Q_stricmp(weapon, ""))
    {
        g_botai[ent_num.entnum].weapon = 1;
        return;
    }

    weapInt = static_cast<::byte>(G_GetWeaponIndexForName(weapon));
    g_botai[ent_num.entnum].weapon = weapInt;
}
/*
==================
scr_isbot
==================
*/
/* bot isbot(); */
/*
useless pullrequest, use
if(entity.isbot)
{

}
*/

/*
==================
scr_botaction
==================
*/
/* bot botAction(<str action>); */
static void scr_botaction(scr_entref_t ent_num)
{
    int argc;
    gentity_t *bot;
    char* action;
    qboolean key_found;
    char buffer[1024];
    mvabuf;

    bot = VM_GetGEntityForEntRef(ent_num);
    if (!bot)
        Scr_Error("Not an entity.");

    if (!bot->client)
        Scr_Error("Not a client.");

    argc = Scr_GetNumParam();
    if (argc != 1)
        Scr_Error("Usage: <bot> botAction(<action>);");

    action = Scr_GetString(0);

    if (action[0] != '+' && action[0] != '-')
        Scr_ParamError(0, "Sign for action must be '+' or '-'.");

    key_found = qfalse;
    for (size_t i = 0; i < sizeof(BotActions) / sizeof(BotAction_t); ++i)
    {
        if (!Q_stricmp(&action[1], BotActions[i].action))
        {
            key_found = qtrue;
            if (action[0] == '+')
                g_botai[ent_num.entnum].buttons |= BotActions[i].key;
            else
                g_botai[ent_num.entnum].buttons &= ~(BotActions[i].key);

            return;
        }
    }

    if (!key_found)
    {
        buffer[0] = '\0';
        for (size_t i = 0; i < sizeof(BotActions) / sizeof(BotAction_t); ++i)
        {
            Q_strncat(buffer, 1024, " ");
            Q_strncat(buffer, 1024, BotActions[i].action);
        }
        Scr_ParamError(0, va("Unknown action. Must be one of:%s.", buffer));
    }
}
/*
==================
scr_botlookatplayer
==================
*/
/* bot gPlayer(<ent target>, [str tag_name]); */
static void scr_botlookatplayer(scr_entref_t ent_num)
{
    gentity_t *bot;
    gentity_t *target;
    int argc;
    vec3_t look_origin;
    short tag_name;
    mvabuf;

    bot = VM_GetGEntityForEntRef(ent_num);
    if(!bot)
        Scr_ObjectError("Not an entity.");

    if(!bot->client)
        Scr_ObjectError("Not a client.");

    argc = Scr_GetNumParam();
    if(argc != 1 && argc != 2)
        Scr_Error("Usage: <bot> botLookAtPlayer(<player>, [tag_name]);");

    target = Scr_GetEntity(0);
    if(!target)
        Scr_ParamError(0, "Not an entity.");

    if(!target->client)
        Scr_ParamError(0, "Not a client.");

    tag_name = scr_const.pelvis;
    if(argc == 2)
        tag_name = Scr_GetConstString(1);

    if(!GScr_UpdateTagInternal2(target, tag_name, &level.cachedTagMat, qtrue))
        Scr_ParamError(1, va("tag '%s' does not exist in model '%s' "
                             "(or any attached submodels)",
                             SL_ConvertToString(tag_name),
                             SL_ConvertToString(SV_GetModelConfigstringIndex(
                             bot->model))));

    // If velocity is units per second, then scale velocity by sec per frame...
    // ... and using sprint prediction multiplier
    float multiplier = 1.0;
    if(target->client->ps.pm_flags == 32768) // is sprinting?
        multiplier = 2.0;

    /* Get current target velocity. */
    vec3_copy(look_origin, target->client->ps.velocity);
    /* Divide it to represent units per frame. */
    vec3_multiply(look_origin, multiplier/sv_fps->integer);
    /* Add tag origin. */
    vec3_add(look_origin, level.cachedTagMat.tagMat[3]);

    Bot_CalculateRotationForOrigin(bot, look_origin, 1.0/sv_fps->integer);
}









extern "C"
{

void Scr_AddBotsMovement()
{
    Scr_AddMethod("botmoveto",       scr_botmoveto,       qfalse);
    Scr_AddMethod("botlookat",       scr_botlookat,       qfalse);
    Scr_AddMethod("botstop",         scr_botstop,         qfalse);
    Scr_AddMethod("botaction",       scr_botaction,       qfalse);
    Scr_AddMethod("botlookatplayer", scr_botlookatplayer, qfalse);
    Scr_AddMethod("botweapon",       scr_botweapon,       qfalse);
}

/*
 * shouldSpamUseButton()
 * Returns true if bot dead for at least 3 seconds.
 * Main purpose - imitate "F" spam when "scr_player_forcerespawn 0".
 */
qboolean shouldSpamUseButton(gentity_t *bot)
{
    BotMovementInfo_t *ai = &g_botai[bot->s.number];
    qboolean is_alive = bot->health > 0 ? qtrue : qfalse;

    if (ai->useSpamDelay)
        --ai->useSpamDelay;

    /* Was alive, now dead. */
    if (ai->lastAliveState == qtrue && is_alive == qfalse)
    {
        /* 3 sec */
        ai->useSpamDelay = sv_fps->boolean * 3;
    }

    ai->lastAliveState = is_alive;
    return is_alive == qfalse && ai->useSpamDelay == 0 ? qtrue : qfalse;
}

}
