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
/*
  vec3_t predorg;

  SV_GetPredictedOriginAndTimeForClientNum(clientNum, predorg);
  if(level.clients)
  {
        static vec3_t storedpred;
	static vec3_t storedorg;
        if(VectorCompare(level.clients[clientNum].ps.origin, storedorg) != 1 || VectorCompare(predorg, storedpred) != 1)
        {
            Com_Printf(CON_CHANNEL_SERVER, "(%.1f %.1f %.1f) Predicted: (%.1f %.1f %.1f)\n", level.clients[clientNum].ps.origin[0], level.clients[clientNum].ps.origin[1], level.clients[clientNum].ps.origin[2], predorg[0], predorg[1], predorg[2]);
            VectorCopy(level.clients[clientNum].ps.origin, storedorg);
            VectorCopy(predorg, storedpred);

        }
//	level.clients[0].ps.moveSpeedScaleMultiplier = 1.0;
  }
*/

  assert(bgs == &level_bgs);

  bgs = NULL;
}



extern "C" void DebugWriteBGS(fileHandle_t f)
{
        FS_Write(&level_bgs.time, sizeof(level_bgs.time), f);
        FS_Write(&level_bgs.latestSnapshotTime, sizeof(level_bgs.latestSnapshotTime), f);
        FS_Write(&level_bgs.frametime, sizeof(level_bgs.frametime), f);
//        FS_Write(&level_bgs.clientinfo, sizeof(level_bgs.clientinfo), f);

}

extern "C" void DebugReadBGS(fileHandle_t f)
{
        FS_Read(&level_bgs.time, sizeof(level_bgs.time), f);
        FS_Read(&level_bgs.latestSnapshotTime, sizeof(level_bgs.latestSnapshotTime), f);
        FS_Read(&level_bgs.frametime, sizeof(level_bgs.frametime), f);
//        FS_Read(&level_bgs.clientinfo, sizeof(level_bgs.clientinfo), f);

}




};


