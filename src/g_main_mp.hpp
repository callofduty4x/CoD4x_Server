#pragma once
#include "cvar.hpp"
#include "entity.hpp"
#include "bg_public.hpp"
#include "g_shared.hpp"


void G_PrintAddRedirect(void (*rd_dest)( const char *, int));
void G_PrintRedirect(char* msg, int len);

extern "C"
{
    extern gentity_t g_entities[1024];
    extern bgs_s level_bgs;
    extern level_locals_t level;
    extern const entityHandler_t entityHandlers[ENT_HANDLER_COUNT];
    extern cvar_t* g_synchronousClients;
    extern cvar_t* g_playerCollisionEjectSpeed;
    extern cvar_t* g_gravity;
    extern cvar_t* g_debugLocDamage;
    extern cvar_t* g_speed;
    extern cvar_t* g_mantleBlockTimeBuffer;
    extern cvar_t* g_antilag;
    extern cvar_t* g_inactivity;
    extern cvar_t* g_compassShowEnemies;
    extern cvar_t* bullet_penetrationEnabled;
    extern cvar_t* g_dropForwardSpeed;
    extern cvar_t* g_dropHorzSpeedRand;
    extern cvar_t* g_dropUpSpeedBase;
    extern cvar_t* g_dropUpSpeedRand;
    extern cvar_t* g_maxDroppedWeapons;
    extern cvar_t* pickupPrints;
    extern cvar_t* g_minGrenadeDamageSpeed;
    extern cvar_t* g_banIPs;
    extern cvar_t* g_dedicated;
    extern cvar_t* melee_debug;
    extern cvar_t* g_useholdspawndelay;
    extern cvar_t* g_useholdtime;
    extern cvar_t* player_MGUseRadius;
    extern cvar_t* player_throwbackInnerRadius;
    extern cvar_t* player_throwbackOuterRadius;
    extern cvar_t* g_NoScriptSpam;
    extern cvar_t* g_fogColorReadOnly;
    extern cvar_t* g_fogHalfDistReadOnly;
    extern cvar_t* g_fogStartDistReadOnly;
    extern cvar_t* g_maxclients;
    extern cvar_t* g_debugDamage;
    extern cvar_t* radius_damage_debug;
    extern cvar_t* g_allowVote;
    extern cvar_t* g_cheats;
    extern cvar_t* g_deadChat;
    extern cvar_t* g_oldVoting;
    extern cvar_t* g_motd;
    extern cvar_t* g_clonePlayerMaxVelocity;
    extern cvar_t* g_knockback;
    extern cvar_t* g_voiceChatTalkingDuration;
    extern cvar_t* g_ScoresColor_Allies;
    extern cvar_t* g_ScoresColor_Axis;
    extern cvar_t* g_ScoresColor_EnemyTeam;
    extern cvar_t* g_ScoresColor_Free;
    extern cvar_t* g_ScoresColor_MyTeam;
    extern cvar_t* g_ScoresColor_Spectator;
    extern cvar_t* g_TeamColor_Allies;
    extern cvar_t* g_TeamColor_Axis;
    extern cvar_t* g_TeamColor_EnemyTeam;
    extern cvar_t* g_TeamColor_Free;
    extern cvar_t* g_TeamColor_MyTeam;
    extern cvar_t* g_TeamColor_Spectator;
    extern cvar_t* g_TeamIcon_Allies;
    extern cvar_t* g_TeamIcon_Axis;
    extern cvar_t* g_TeamIcon_Free;
    extern cvar_t* g_TeamIcon_Spectator;
    extern cvar_t* g_TeamName_Allies;
    extern cvar_t* g_TeamName_Axis;
    extern cvar_t* g_dumpAnims;
    extern cvar_t* g_entinfo;
    extern cvar_t* g_friendlyNameDist;
    extern cvar_t* g_friendlyfireDist;
    extern cvar_t* g_listEntity;
    extern cvar_t* g_log;
    extern cvar_t* g_logSync;
    extern cvar_t* g_password;
    extern cvar_t* g_redCrosshairs;
    extern cvar_t* g_voteAbstainWeight;
    extern cvar_t* voice_deadChat;
    extern cvar_t* voice_global;
    extern cvar_t* voice_localEcho;
    extern cvar_t* g_gametype;
    extern ::byte g_clients[0xc6100];

    void CCDECL G_LogPrintf( const char *fmt, ... );
    void CCDECL G_RunFrame( int time );
    void CCDECL G_FreeEntity(gentity_s* gEnt);
}
