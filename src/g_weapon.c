#include "q_shared.h"
#include "q_math.h"
#include "g_shared.h"
#include "server.h"

struct AntilagClientStore
{
  vec3_t realClientPositions[MAX_CLIENTS];
  bool clientMoved[MAX_CLIENTS];
};


void __cdecl G_AntiLagRewindClientPos(int gameTime, struct AntilagClientStore *antilagStore)
{
  int client;
  vec3_t clientPositions[MAX_CLIENTS];
  vec3_t clientAngles[MAX_CLIENTS];
  bool success[MAX_CLIENTS];

  if ( g_antilag->boolean == qfalse)
  {
    return;
  }
  assert(antilagStore != NULL);

  memset(antilagStore, 0, sizeof(*antilagStore));

  assert(gameTime > 0);
  if ( level.time - gameTime > 400 )
  {
    gameTime = level.time - 400;
  }
  if ( level.time - gameTime > 1000 / sv_fps->integer )
  {
    memset(success, 0, sizeof(success));
    if ( SV_GetClientPositionsAtTime(gameTime, clientPositions, clientAngles, success) )
    {
      for ( client = 0; client < level.maxclients; ++client )
      {
        if ( !success[client] || level.clients[client].sess.connected != CON_CONNECTED || level.clients[client].sess.sessionState )
        {
          antilagStore->clientMoved[client] = false;
        }
        else
        {
          assert(!IS_NAN(clientPositions[client][0]) && !IS_NAN(clientPositions[client][1]) && !IS_NAN(clientPositions[client][2]));
          assert(!IS_NAN(clientAngles[client][0]) && !IS_NAN(clientAngles[client][1]) && !IS_NAN(clientAngles[client][2]));

          VectorCopy(g_entities[client].r.currentOrigin, antilagStore->realClientPositions[client]);
/*
          VectorCopy(g_entities[client].r.currentAngles, antilagStore->realClientAngles[client]);
*/
	  assertx(!IS_NAN( antilagStore->realClientPositions[client][0]) &&
		!IS_NAN(antilagStore->realClientPositions[client][1]) &&
		!IS_NAN(antilagStore->realClientPositions[client][2]), 
		"client %i's origin is invalid - (%f, %f, %f)", client,
                antilagStore->realClientPositions[client][0],
                antilagStore->realClientPositions[client][1],
                antilagStore->realClientPositions[client][2]);
/*
	  assertx(!IS_NAN( antilagStore->realClientAngles[client][0]) &&
		!IS_NAN(antilagStore->realClientAngles[client][1]) &&
		!IS_NAN(antilagStore->realClientAngles[client][2]), 
                "client %i's angles are invalid - (%f, %f, %f)", client,
                antilagStore->realClientAngles[client][0],
                antilagStore->realClientAngles[client][1],
                antilagStore->realClientAngles[client][2]);
*/

	//Unlink not in Blackops...
          SV_UnlinkEntity(&g_entities[client]);

          VectorCopy(clientPositions[client], g_entities[client].r.currentOrigin);
//          VectorCopy(clientAngles[client], g_entities[client].r.currentAngles);

          SV_LinkEntity(&g_entities[client]);
          antilagStore->clientMoved[client] = true;
        }
      }
    }
  }
}

void __cdecl G_AntiLag_RestoreClientPos(struct AntilagClientStore *antilagStore)
{
  int client;

  if ( g_antilag->boolean == qfalse)
  {
    return;
  }

  assert(antilagStore != NULL);

  for ( client = 0; client < level.maxclients; ++client )
  {
    if ( antilagStore->clientMoved[client] )
    {
      assertx(!IS_NAN(antilagStore->realClientPositions[client][0]) &&
                !IS_NAN(antilagStore->realClientPositions[client][1]) &&
                 !IS_NAN(antilagStore->realClientPositions[client][2]),
                "client %i's origin is invalid - (%f, %f, %f)", client,
               antilagStore->realClientPositions[client][0],
               antilagStore->realClientPositions[client][1],
               antilagStore->realClientPositions[client][2]);
/*
      assertx(!IS_NAN(antilagStore->realClientAngles[client][0]) && 
		!IS_NAN(antilagStore->realClientAngles[client][1]) &&
		!IS_NAN(antilagStore->realClientAngles[client][2]),
		"client %i's angles are invalid - (%f, %f, %f)", client,
               antilagStore->realClientAngles[client][0],
               antilagStore->realClientAngles[client][1],
               antilagStore->realClientAngles[client][2]);
*/

	//Unlink not in Blackops...
      SV_UnlinkEntity(&g_entities[client]);

      VectorCopy(antilagStore->realClientPositions[client], g_entities[client].r.currentOrigin);
//      VectorCopy(antilagStore->realClientAngles[client], g_entities[client].r.currentAngles);

      SV_LinkEntity(&g_entities[client]);
      antilagStore->clientMoved[client] = false;

    }
  }
}