#include "player.h"
#include "g_shared.h"
#include "bg_public.h"
#include "server_public.h"
#include "qcommon_io.h"


extern "C"{

int __cdecl G_ClientCanSpectateTeamOrLocalPlayer(gclient_t *client, clientState_t *cs)
{
  return G_ClientCanSpectateTeam(client, cs->team);
}

qboolean GetFollowPlayerState(int clientNum, playerState_t *ps)
{
  gclient_t *client;
  unsigned int index;

    assert((signed int)clientNum < level.maxclients);

    client = &level.clients[clientNum];
    assert(client);
    assert(client == g_entities[clientNum].client);

  if ( client->ps.otherFlags & POF_PLAYER )
  {
    memcpy(ps, &client->ps, sizeof(playerState_t));
    for ( index = 0; index < 31 && ps->hud.current[index].type; ++index )
    {
      memset(&ps->hud.current[index], 0, sizeof(ps->hud.current[0]));
	    assert(ps->hud.current[index].type == HE_TYPE_FREE);
    }
/*
    while ( index < 31 )
    {
        assert(!memcmp( &ps->hud.current[index], &g_dummyHudCurrent, sizeof( g_dummyHudCurrent ) ));
      ++index;
    }
*/
    return qtrue;
  }
  memset(ps, 0, sizeof(playerState_t));
  return qfalse;
}


void __cdecl ClientThink(int clientNum)
{
  struct gentity_s *ent;

//  assert(Sys_IsServerThread());

  ent = &g_entities[clientNum];

  assert(ent->client);

  assert(bgs == NULL);

  bgs = &level_bgs;
  memcpy(&ent->client->sess.oldcmd, &ent->client->sess.cmd, sizeof(ent->client->sess.oldcmd));
  SV_GetUsercmd(clientNum, &ent->client->sess.cmd);
  ent->client->lastCmdTime = level.time;
  if ( !g_synchronousClients->boolean )
  {
    ClientThink_real(ent, &ent->client->sess.cmd);
  }

  assert(bgs == &level_bgs);

  bgs = NULL;
}


void __cdecl G_PlayerStateToEntityStateExtrapolate(playerState_s *ps, entityState_s *s, int time, int snap)
{
  VectorCopy(ps->velocity, s->lerp.pos.trDelta);

  s->lerp.pos.trTime = time;
  s->lerp.pos.trDuration = 1000 / level.framerate;
  BG_PlayerStateToEntityState(ps, s, snap, 1);
  s->lerp.pos.trType = TR_LINEAR_STOP;
}


void G_UpdateEntityStateFromPlayerState(struct gclient_s *client, struct gentity_s *ent)
{
      if ( g_smoothClients->boolean )
      {
        G_PlayerStateToEntityStateExtrapolate(&client->ps, &ent->s, client->ps.commandTime, 1);
      }
      else
      {
        BG_PlayerStateToEntityState(&client->ps, &ent->s, 1, 1);
      }
}

};


