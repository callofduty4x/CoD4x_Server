/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
    Copyright (C) 1999-2005 Id Software, Inc.

    This file is part of CoD4X18-Server source code.

    CoD4X18-Server source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X18-Server source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/

#include "q_shared.h"
#include "cvar.h"
#include "entity.h"
#include "player.h"
#include "g_sv_shared.h"
#include "g_shared.h"
#include "plugin_handler.h"
#include "cmd.h"
#include "qcommon_io.h"
#include "server.h"
#include "scr_vm.h"
#include "misc.h"
#include "cscr_stringlist.h"


#include <string.h>

extern cvar_t *g_deadChat;
static cvar_t *g_voteTime;
static cvar_t *g_voteBanTime;
cvar_t *g_votedMapName;
cvar_t *g_votedGametype;
static cvar_t *g_voteVoteGametypes;
static cvar_t *g_voteKickMinPlayers;
static cvar_t *g_voteMaxVotes;
static cvar_t *g_voteAllowMaprotate;
static cvar_t *g_voteAllowKick;
static cvar_t *g_voteAllowGametype;
static cvar_t *g_voteAllowMap;
static cvar_t *g_voteAllowRestart;
cvar_t* com_ansiColor;

static int g_voteFlags;

void Init_CallVote(void)
{

    g_votedMapName = Cvar_RegisterString("g_votedMapName", "", 0, "Contains the voted mapname");
    g_votedGametype = Cvar_RegisterString("g_votedGametype", "", 0, "Contains the voted gametype");
    g_voteTime = Cvar_RegisterInt("g_voteTime", 30, 10, 90, 0, "Duration a called vote is active");
    g_voteBanTime = Cvar_RegisterInt("g_voteBanTime", 15, 1, 240, 0, "Duration a player is banned after successful votekick");
    g_voteMaxVotes = Cvar_RegisterInt("g_voteMaxVotes", 2, 1, 10, 0, "How many votes a player can call");
    g_voteVoteGametypes = Cvar_RegisterString("g_voteVoteGametypes", "", 0, "Contains a list of gametypes that are allowed to vote. Empty list = all");
    g_voteKickMinPlayers = Cvar_RegisterInt("g_voteKickMinPlayers", 5, 0, 14, 0, "How many active players are needed on server to allow calling a kickvote");
    g_voteAllowMaprotate = Cvar_RegisterBool("g_voteAllowMaprotate", qtrue, 0, "Allow calling map_rotate votes");
    g_voteAllowKick = Cvar_RegisterBool("g_voteAllowKick", qtrue, 0, "Allow calling kick votes");
    g_voteAllowGametype = Cvar_RegisterBool("g_voteAllowGametype", qtrue, 0, "Allow calling gametype votes");
    g_voteAllowMap = Cvar_RegisterInt("g_voteAllowMap", 1, 0, 2, 0, "Allow calling next map setting votes - 0=disabled, 1=only from rotation, 2=Any map");
    g_voteAllowRestart = Cvar_RegisterBool("g_voteAllowRestart", qtrue, 0, "Allow calling map restart votes");

    g_voteFlags = 0;
    g_voteFlags |= g_voteAllowRestart->boolean ? VOTEFLAGS_RESTART : 0;
    g_voteFlags |= g_voteAllowGametype->boolean ? VOTEFLAGS_GAMETYPE : 0;
    g_voteFlags |= g_voteAllowMaprotate->boolean ? VOTEFLAGS_NEXTMAP : 0;
    g_voteFlags |= g_voteAllowMap->boolean && g_voteAllowGametype->boolean ? VOTEFLAGS_TYPE : 0;
    g_voteFlags |= g_voteAllowKick->boolean ? VOTEFLAGS_KICK : 0;
    g_voteFlags |= g_voteAllowMap->integer ? VOTEFLAGS_MAP : 0;
    g_voteFlags |= g_voteAllowMap->integer == 2 ? VOTEFLAGS_ANYMAP : 0;
}

/*
==================
Cmd_CallVote_f
==================
*/
void Cmd_CallVote_f(gentity_t *ent)
{
    int i, activePlayers;
    char arg1[MAX_STRING_TOKENS];
    char arg2[MAX_STRING_TOKENS];
    char arg3[MAX_STRING_TOKENS];
    char cleanName[64]; // JPW NERVE
    int mask = 0;
    mvabuf;

    if (!g_allowVote->boolean)
    {
        SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"GAME_VOTINGNOTENABLED\"\0", 0x65));
        return;
    }
    if (level.voteTime)
    {
        SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"GAME_VOTEALLREADYINPROGRESS\"\0", 0x65));
        return;
    }
    if (ent->client->sess.voteCount >= g_voteMaxVotes->integer)
    {
        SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"You have called too many votes\"\0", 0x65));
        return;
    }
    if (ent->client->sess.cs.team == TEAM_SPECTATOR)
    {
        SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"GAME_NOSPECTATORCALLVOTE\"\0", 0x65));
        return;
    }

    // make sure it is a valid command to vote on
    SV_Cmd_ArgvBuffer(1, arg1, sizeof(arg1));
    SV_Cmd_ArgvBuffer(2, arg2, sizeof(arg2));
    SV_Cmd_ArgvBuffer(3, arg3, sizeof(arg3));

    if (strchr(arg1, ';') || strchr(arg2, ';') || strchr(arg3, ';'))
    {
        SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"GAME_INVALIDVOTESTRING\"\0", 0x65));
        return;
    }

    if (!Q_stricmp(arg1, "map_restart"))
    {
        mask = VOTEFLAGS_RESTART;
    }
    else if (!Q_stricmp(arg1, "map_rotate"))
    {
        mask = VOTEFLAGS_NEXTMAP;
    }
    else if (!Q_stricmp(arg1, "map"))
    {
        mask = VOTEFLAGS_MAP;
    }
    else if (!Q_stricmp(arg1, "typemap"))
    {
        mask = VOTEFLAGS_TYPE;
    }
    else if (!Q_stricmp(arg1, "kick"))
    {
        mask = VOTEFLAGS_KICK;
    }
    else if (!Q_stricmp(arg1, "tempbanuser"))
    {
        mask = VOTEFLAGS_KICK;
    }
    else if (!Q_stricmp(arg1, "g_gametype"))
    {
        mask = VOTEFLAGS_GAMETYPE;
    }
    else
    {
        SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"GAME_INVALIDVOTESTRING\"\0", 0x65));
        SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"GAME_VOTECOMMANDSARE\x15 map_restart, map_rotate, map <mapname>, g_gametype <gametype>, kick <player or clientnum>, typemap <gametype> <map>\"\0", 0x65));
        return;
    }

    if (!(g_voteFlags & mask))
    {
        SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"Voting for %s is disabled on this server\"\0", 0x65, arg1));
        return;
    }

    // if there is still a vote to be executed
    if (level.voteExecuteTime)
    {
        level.voteExecuteTime = 0;
        Cbuf_AddText(va("%s\n", level.voteString));
    }

    // special case for g_gametype, check for bad values
    if (!Q_stricmp(arg1, "typemap"))
    {

        if (*g_voteVoteGametypes->string)
        {
            if (!strstr(g_voteVoteGametypes->string, arg2))
            {
                SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"Voting for gametype %s is disabled on this server\"\0", 0x65, arg2));
                return;
            }
        }

        /*for (i = 0; i < g_gametypes->numGametypes; i++)
        {
            if (!Q_stricmp(arg2, g_gametypes->gametype[i].gametypename))
                break;
        }
        if (i == g_gametypes->numGametypes)
        {
            SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"GAME_INVALIDGAMETYPE\"\0", 0x65));
            return;
        }*/

        if (!(g_voteFlags & VOTEFLAGS_ANYMAP))
        {
            if (!strstr(SV_GetMapRotation(), va("map %s", arg3)))
            {
                SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"Voting for map %s is disabled on this server\"\0", 0x65, arg3));
                return;
            }
        }
        Com_sprintf(level.voteString, sizeof(level.voteString), "set g_votedGametype %s; set g_votedMapName %s\n", arg2, arg3);
        Com_sprintf(level.voteDisplayString, sizeof(level.voteDisplayString), "Set next map to: %s and gametype to: \x14%s", arg3, arg2 /*g_gametypes->gametype[i].gametypereadable*/);
    }
    else if (!Q_stricmp(arg1, "g_gametype"))
    {

        if (*g_voteVoteGametypes->string)
        {
            if (!strstr(g_voteVoteGametypes->string, arg2))
            {
                SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"Voting for gametype %s is disabled on this server\"\0", 0x65, arg2));
                return;
            }
        }

        /*for (i = 0; i < g_gametypes->numGametypes; i++)
        {
            if (!Q_stricmp(arg2, g_gametypes->gametype[i].gametypename))
                break;
        }
        if (i == g_gametypes->numGametypes)
        {
            SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"GAME_INVALIDGAMETYPE\"\0", 0x65));
            return;
        }*/

        Com_sprintf(level.voteString, sizeof(level.voteString), "set g_gametype %s; map_restart\n", arg2);
        Com_sprintf(level.voteDisplayString, sizeof(level.voteDisplayString), "Set gametype to: \x15%s and restart", arg2 /*g_gametypes->gametype[i].gametypename*/);
    }
    else if (!Q_stricmp(arg1, "map_restart"))
    {
        // NERVE - SMF - do a warmup when we restart maps
        Com_sprintf(level.voteString, sizeof(level.voteString), "map_restart\n");
        Com_sprintf(level.voteDisplayString, sizeof(level.voteDisplayString), "Restart current game");
    }
    else if (!Q_stricmp(arg1, "map"))
    {

        if (!(g_voteFlags & VOTEFLAGS_ANYMAP))
        {
            if (!strstr(SV_GetMapRotation(), va("map %s", arg2)))
            {
                SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"This server does not allow voting for maps which aren't part of map-rotation\"\0", 0x65));
                return;
            }
        }
        Com_sprintf(level.voteString, sizeof(level.voteString), "set g_votedMapName %s\n", arg2);
        Com_sprintf(level.voteDisplayString, sizeof(level.voteDisplayString), "Set next map to: %s", arg2);
    }
    else if (!Q_stricmp(arg1, "map_rotate"))
    {

        if (*g_votedMapName->string)
        {
            if (*g_votedGametype->string)
                Com_sprintf(level.voteString, sizeof(level.voteString), "set g_gametype %s; map %s; set g_votedGametype \"\"; set g_votedMapName \"\"\n", g_votedGametype->string, g_votedMapName->string);
            else
                Com_sprintf(level.voteString, sizeof(level.voteString), "map %s; set g_votedMapName \"\"\n", g_votedMapName->string);
            //Com_sprintf( s, sizeof( s ), g_votedMapName->string);
        }
        else
        {
            Com_sprintf(level.voteString, sizeof(level.voteString), "map_rotate\n");
            //Com_sprintf( s, sizeof( s ), g_votedMapName->string);
        }
        Com_sprintf(level.voteDisplayString, sizeof(level.voteDisplayString), "Switch to next map now");
        // JPW NERVE
    }
    else if (!Q_stricmp(arg1, "tempbanuser") || !Q_stricmp(arg1, "kick"))
    {

        int i, kicknum = MAX_CLIENTS;

        for (i = 0, activePlayers = 0; i < level.maxclients; i++)
        {
            if (level.clients[i].sess.connected != CON_CONNECTED || level.clients[i].sess.cs.team == TEAM_SPECTATOR)
            {
                continue;
            }
            activePlayers++;
        }
        if (activePlayers < g_voteKickMinPlayers->integer)
        {
            SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"GAME_VOTINGNOTENOUGHPLAYERS\"\0", 0x65));
            return;
        }
        for (i = 0; i < MAX_CLIENTS; i++)
        {
            if (level.clients[i].sess.connected != CON_CONNECTED)
            {
                continue;
            }
            // strip the color crap out
            Q_strncpyz(cleanName, level.clients[i].sess.newnetname, sizeof(cleanName));
            Q_CleanStr(cleanName);
            if (!Q_stricmp(cleanName, arg2))
            {
                kicknum = i;
            }
        }

        if (kicknum != MAX_CLIENTS)
        { // found a client # to kick, so override votestring with better one

            Com_sprintf(level.voteDisplayString, sizeof(level.voteDisplayString), "%s wants to kick and tempban: %s", ent->client->sess.newnetname, level.clients[kicknum].sess.newnetname);

            if (svs.clients[kicknum].power > 5)
            {
                SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"Can not call a vote against a protected player\"\0", 0x65));
                level.voteDisplayString[0] = 0;
                return;
            }
            else
            {
                Com_sprintf(level.voteString, sizeof(level.voteString), "tempban \"%d\" %im Vote kick; kick \"%d\" Vote kick\n", kicknum, g_voteBanTime->integer, kicknum);
            }
        }
        else
        { // if it can't do a name match, don't allow kick (to prevent votekick text spam wars)
            SV_GameSendServerCommand(ent - g_entities, 0, va("%c \"GAME_CLIENTNOTONSERVER\"\0", 0x65));
            level.voteDisplayString[0] = 0;
            return;
        }
        // jpw
    }
    else
    {
        //		Com_sprintf( level.voteString, sizeof( level.voteString ), "%s \"%s\"", arg1, arg2 );
        //		Com_sprintf( level.voteDisplayString, sizeof( level.voteDisplayString ), "%s", level.voteString );
    }

    SV_GameSendServerCommand(-1, 0, va("%c \"GAME_CALLEDAVOTE\x15%s\"\0", 0x65, ent->client->sess.newnetname));
    ent->client->sess.voteCount++;

    // start the voting, the caller autoamtically votes yes
    level.voteTime = level.time + 1000 * g_voteTime->integer;
    level.voteYes = 1;
    level.voteNo = 0;

    for (i = 0; i < level.maxclients; i++)
    {
        level.clients[i].ps.eFlags &= ~EF_VOTED;
    }
    ent->client->ps.eFlags |= EF_VOTED;

    SV_SetConfigstring(CS_VOTE_TIME, va("%i %i", level.voteTime, sv_serverid->integer));
    SV_SetConfigstring(CS_VOTE_STRING, level.voteDisplayString);
    SV_SetConfigstring(CS_VOTE_YES, va("%i", level.voteYes));
    SV_SetConfigstring(CS_VOTE_NO, va("%i", level.voteNo));
}

qboolean ClientCanSpectateTeam(gclient_t *ent, team_t team)
{
    return 1 & ((ent->sess.noSpectate >> team) ^ 1);
}

qboolean Cmd_FollowClient_f(gentity_t *ent, int clientnum)
{
    // first set them to spectator
    if ((ent->client->sess.sessionState != SESS_STATE_SPECTATOR))
    {
        return qfalse;
    }

    if (clientnum < 0 || clientnum >= level.maxclients)
    {
        Com_Printf(CON_CHANNEL_SERVER,"Cmd_FollowClient_f: Bad clientnum %i\n", clientnum);
        return qfalse;
    }

    if ((ent->client->sess.forceSpectatorClient >= 0))
    {
        return qfalse;
    }

    // can only follow connected clients
    if (level.clients[clientnum].sess.connected != CON_CONNECTED)
    {
        return qfalse;
    }

    // can't follow another spectator
    if (level.clients[clientnum].sess.cs.team == TEAM_SPECTATOR)
    {
        return qfalse;
    }

    if (ClientCanSpectateTeam(ent->client, level.clients[clientnum].sess.cs.team))
    {
        // this is good, we can use it
        ent->client->spectatorClient = clientnum;
        return qtrue;
    }
    return qfalse;
}

/*
=================
StopFollowingOnDeath

If the client being followed dies in game
This function is required for refollowing facility on spawn
=================
*/

__cdecl void StopFollowingOnDeath(gentity_t *ent)
{

    if (ent->client->spectatorClient != -1)
        ent->client->lastFollowedClient = ent->client->spectatorClient; //saving the last followed player

    StopFollowing(ent);
}

/*
==================
G_Say
==================
*/
#define MAX_SAY_TEXT 150
#define SAY_ALL 0
#define SAY_TEAM 1
#define SAY_TELL 2

void G_SayTo(gentity_t *ent, gentity_t *other, int mode, int color, const char *teamname, const char *name, const char *message)
{
    char buf[64];
    char v16[128];
    const char *teamcolor;
    mvabuf;

    if (!other)
    {
        return;
    }
    if (!other->r.inuse)
    {
        return;
    }
    if (!other->client)
    {
        return;
    }
    if (other->client->sess.connected != CON_CONNECTED)
    {
        return;
    }
    if (mode == SAY_TEAM && !OnSameTeam(ent, other))
    {
        return;
    }

    if (ent->client->sess.sessionState != SESS_STATE_PLAYING && other->client->sess.sessionState == SESS_STATE_PLAYING && !g_deadChat->boolean)
    {
        return;
    }
    if (ent->client->sess.cs.team == TEAM_FREE || ent->client->sess.cs.team == TEAM_SPECTATOR)
    {
        teamcolor = "";
    }
    else if (ent->client->sess.cs.team == other->client->sess.cs.team)
    {
        teamcolor = "^8";
    }
    else
    {
        teamcolor = "^9";
    }
    if (ent->client->sess.cs.team == TEAM_SPECTATOR)
    {
        Com_sprintf(buf, sizeof(buf), "\x15(\x14GAME_SPECTATOR\x15)");
    }
    else
    {
        if (ent->client->sess.sessionState)
        {
            Com_sprintf(buf, sizeof(buf), "\x15%s(\x14GAME_DEAD\x15)", teamcolor);
        }
        else
        {
            Com_sprintf(buf, sizeof(buf), "\x15%s", teamcolor);
        }
    }
    if (mode == SAY_TEAM)
    {
        Com_sprintf(v16, sizeof(v16), "%s(\x14%s\x15)%s%s: ", buf, teamname, name, "^7");
    }
    else if (mode == SAY_TELL)
    {
        Com_sprintf(v16, sizeof(v16), "%s[%s]%s: ", buf, name, "^7");
    }
    else
    {
        Com_sprintf(v16, sizeof(v16), "%s%s%s: ", buf, name, "^7");
    }
    SV_GameSendServerCommand(other->s.number, 0, va("%c \"\x15%s%c%c%s\"", 'i' - (mode != 1), v16, '^', color, message));
}

__cdecl void G_Say(gentity_t *ent, gentity_t *target, int mode, const char *chatText)
{
    int j;
    gentity_t *other;
    int color;
    char name[64];
    char buf[128];
    // don't let text be too long for malicious reasons
    char text[MAX_SAY_TEXT];
    char *teamname;

    if (mode == 1)
    {
        if (ent->client->sess.cs.team == TEAM_RED || ent->client->sess.cs.team == TEAM_BLUE)
            mode = SAY_TEAM;
        else
            mode = SAY_ALL;
    }
    if (svs.clients[ent->s.number].clantag[0])
    {
        Com_sprintf(name, sizeof(name), "%s %s", svs.clients[ent->s.number].clantag, svs.clients[ent->s.number].name);
    }
    else
    {
        Q_strncpyz(name, svs.clients[ent->s.number].name, sizeof(name));
    }
    Q_CleanStr(name);

    Q_strncpyz(text, chatText, sizeof(text));

    char *textptr = text;

    if (textptr[0] == 0x15)
        textptr++;

    if (textptr[0] == '/' || textptr[0] == '$' || (textptr[0] == '!' && !g_disabledefcmdprefix->boolean))
    { //Check for Command-Prefix
        textptr++;
        SV_ExecuteRemoteCmd(ent->s.number, textptr);
        //Scr_PlayerSay(ent, mode, textptr -1);
        return;
    }

    if (Q_stricmpn(textptr, "changepassword", 14) == 0)
    {
        SV_ExecuteRemoteCmd(ent->s.number, textptr);
        return;
    }

    if (sv_disableChat->boolean == qtrue)
    {
        SV_GameSendServerCommand(ent->s.number, 0, "\x67 \"Chat messages disabled on this server\"");
        return;
    }

    switch (mode)
    {
    default:
    case SAY_ALL:
        G_LogPrintf("say;%s;%d;%s;%s\n", SV_GetGuid(ent->s.number, buf, sizeof(buf)), ent->s.number, name, text);
        teamname = "";
        color = COLOR_WHITE;
        break;
    case SAY_TEAM:
        G_LogPrintf("sayteam;%s;%d;%s;%s\n", SV_GetGuid(ent->s.number, buf, sizeof(buf)), ent->s.number, name, text);
        if (ent->client->sess.cs.team == TEAM_RED)
        {
            teamname = g_TeamName_Axis->string;
        }
        else
        {
            teamname = g_TeamName_Allies->string;
        }
        color = COLOR_CYAN;
        break;
    case SAY_TELL:
        teamname = "";
        color = COLOR_YELLOW;
        break;
    }

    G_ChatRedirect(text, ent->s.number, mode);

    if (target)
    {
        if (svs.clients[ent->s.number].mutelevel < 2)
        {
            G_SayTo(ent, target, mode, color, teamname, name, text);
        }
        return;
    }

    qboolean show = qtrue;
    PHandler_Event(PLUGINS_ONMESSAGESENT, text, ent->s.number, &show, mode);

    if (!show)
        return;
    if (svs.clients[ent->s.number].mutelevel >= 2)
    {
        SV_GameSendServerCommand(ent->s.number, 0, "h \"^1Error^7: You are no longer allowed to use the chat\"");
        return;
    }

    /*
	Removed. Create a plugin if you want to capature chat.
	if(Scr_PlayerSay(ent, mode, textptr))
	{
		return;
	}
*/
    if (text[0] != 0x15 && text[0] != 0x14 && !g_allowConsoleSay->boolean)
        return;

    if (g_conrichsay && g_conrichsay->boolean) {
        // echo the text to the console
        const int isPlaying = ent->client->sess.sessionState == SESS_STATE_PLAYING;
        const int isAttack = ent->client->sess.cs.team == TEAM_BLUE;
        const int isDefence = ent->client->sess.cs.team == TEAM_RED;
        const int c1 = isAttack ? 1 : 0;
        const int c2 = isAttack ? 34 : (isDefence ? 33 : 0);
        if(com_ansiColor && com_ansiColor->integer) {
            Com_Printf(CON_CHANNEL_SERVER,"\033[%d;%dm%s%s%s\033[0m: %s\n", c1, c2, isPlaying ? "" : "(Dead)", mode == SAY_ALL ? "" : (isAttack ? "(Attack)" : "(Defence)"), name, text);
        } else {
            Com_Printf(CON_CHANNEL_SERVER,"%s%s%s: %s\n", isPlaying ? "" : "(Dead)", mode == SAY_ALL ? "" : (isAttack ? "(Attack)" : "(Defence)"), name, text);
        }
    } else {
        Com_Printf(CON_CHANNEL_SERVER, "Say %s: %s\n", name, text);
    }

    // send it to all the apropriate clients
    for (j = 0; j < level.maxclients; j++)
    {
        other = &g_entities[j];
        G_SayTo(ent, other, mode, color, teamname, name, text);
    }
}

#define MAX_REDIRECTDESTINATIONS 4

static void (*rd_destinations[MAX_REDIRECTDESTINATIONS])(const char *buffer, int client, int mode);

void G_ChatRedirect(char *msg, int client, int mode)
{

    int i;

    for (i = 0; i < MAX_REDIRECTDESTINATIONS; i++)
    {
        if (rd_destinations[i] == NULL)
            return;

        rd_destinations[i](msg, client, mode);
    }
}
/*
    To Add:
    HL2Rcon_SourceRconSendChat(text, ent->s.number);
*/

void G_AddChatRedirect(void (*rd_dest)(const char *, int, int))
{
    int i;

    for (i = 0; i < MAX_REDIRECTDESTINATIONS; i++)
    {
        if (rd_destinations[i] == rd_dest)
        {
            Com_Error(ERR_FATAL, "G_AddChatRedirect: Attempt to add an already defined redirect function twice.");
            return;
        }

        if (rd_destinations[i] == NULL)
        {
            rd_destinations[i] = rd_dest;
            return;
        }
    }
    Com_Error(ERR_FATAL, "G_AddChatRedirect: Out of redirect handles. Increase MAX_REDIRECTDESTINATIONS to add more redirect destinations");
}



void __cdecl Svcmd_EntityList_f()
{
  signed int e;
  gentity_t *check;

  check = &g_entities[1];
  e = 1;
  while ( e < level.num_entities )
  {
    if ( check->r.inuse )
    {
      Com_Printf(CON_CHANNEL_DONT_FILTER, "%3i: ", e);
      Com_Printf(CON_CHANNEL_DONT_FILTER, "'%s'", G_GetEntityTypeName(check));
      if ( check->classname )
      {
        Com_Printf(CON_CHANNEL_DONT_FILTER, ", '%s'", SL_ConvertToString(check->classname));
      }
      Com_Printf(CON_CHANNEL_DONT_FILTER, "\n");
    }
    ++e;
    ++check;
  }
}

qboolean __cdecl ConsoleCommand()
{
  char *cmd;

  cmd = Cmd_Argv(0);
  if ( !Q_stricmp(cmd, "entitylist") )
  {
    Svcmd_EntityList_f();
    return qtrue;
  }
  if ( !Q_stricmp(cmd, "say") )
  {
    char b[1024];
    SV_GameSendServerCommand(-1, 0, va("%c \"GAME_SERVER\x15: %s\"", 101, SV_Cmd_Argsv(1, b, sizeof(b))));
    return qtrue;
  }
  return qfalse;
}
