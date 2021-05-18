#include "g_public_mp.h"
#include "q_shared.h"
#include "qcommon.h"
#include "g_shared.h"
#include "scr_vm.h"
#include "server_public.h"
#include "plugin_handler.h"

void __cdecl ClientClearFields(gclient_s *client)
{
    client->useHoldEntity.setEnt(0);
}

void ClearAllSpectators(struct gentity_s* ent)
{
	int i;
	struct gentity_s* followers;

	for(i = 0, followers = level.gentities; i < level.maxclients; i++, followers++)//let refollow all spectors me who have prior followed me
	{
		if(followers->client && followers->client->lastFollowedClient == ent->s.number)
			Cmd_FollowClient_f(followers, ent->s.number);
	}
}

extern "C" void __cdecl ClientSpawn(gentity_s *ent, const float *spawn_origin, const float *spawn_angles)
{
  gclient_s *client;
  vec3_t clean_spawn_angles;
  int index;
  int iFlags;
  int savedSpawnCount;
  int savedServerTime;
  clientSession_t savedSess;

  index = ent - g_entities;
  client = ent->client;

  assertx(index < level.maxclients ,"index doesn't index level.maxclients\n\t%i not in [0, %i)", index, level.maxclients);
  assert(ent->client == &level.clients[index]);
  assert(ent->r.inuse);

  if ( client->ps.otherFlags & 4 )
  {
    if ( client->ps.eFlags & 0x300 )
    {
      assert(client->ps.clientNum == ent->s.number);
      assert(client->ps.viewlocked_entNum != ENTITYNUM_NONE);
      assert(level.gentities[client->ps.viewlocked_entNum].r.ownerNum.entnum() == index);

      gentity_s *turretent = &level.gentities[client->ps.viewlocked_entNum];
      if(turretent->r.ownerNum.ent()->client)
      {
        G_ClientStopUsingTurret(turretent);
      }
    }
  }
  G_EntUnlink(ent);
  if ( ent->r.linked )
  {
    SV_UnlinkEntity(ent);
  }
  ent->s.groundEntityNum = 1023;
  Scr_SetString(&ent->classname, scr_const.player);
  ent->clipmask = 0x2810011;
  ent->r.svFlags |= 1u;
  ent->takedamage = 0;
  G_SetClientContents(ent);
  ent->handler = 11;
  /*
  Blackops
  ent->handler = 14;
  */
  ent->flags = 4096;
  
  VectorCopy(playerMins, ent->r.mins);
  VectorCopy(playerMaxs, ent->r.maxs);

  iFlags = client->ps.eFlags & 0x100002;
  
  memcpy(&savedSess, &client->sess, sizeof(savedSess));
  
  savedSpawnCount = client->ps.stats[4];
  savedServerTime = client->lastServerTime;
  
  ClientClearFields(client);

  memset(client, 0, sizeof(gclient_s));
  
  memcpy(&client->sess, &savedSess, sizeof(client->sess));
  
  client->lastServerTime = savedServerTime;
  client->spectatorClient = -1;
  client->ps.stats[4] = savedSpawnCount + 1;
  client->ps.stats[2] = client->sess.maxHealth;
  client->ps.eFlags = iFlags;
  client->sess.cs.clientIndex = index;
  client->sess.cs.attachedVehEntNum = 1023;
  client->ps.clientNum = index;
  client->ps.viewlocked_entNum = 1023;

  assertx((int)(client - level.clients) < level.maxclients ,"client - level.clients doesn't index level.maxclients\n\t%i not in [0, %i)", client - level.clients, level.maxclients);

  SV_GetUsercmd(client - level.clients, &client->sess.cmd);
  client->ps.eFlags ^= 2u;
  client->ps.viewHeightTarget = 60;
  client->ps.viewHeightCurrent = 60.0;
  client->ps.viewHeightLerpTime = 0;
  client->ps.dofNearBlur = 6.0;
  client->ps.dofFarBlur = 1.8;
  client->ps.spreadOverride = 0;
  client->ps.spreadOverrideState = 0;
  client->ps.throwBackGrenadeTimeLeft = 0;
  client->ps.throwBackGrenadeOwner = 1023;
/*
    BLACKOPS
  for ( i = 0; i < 15; ++i )
  {
    BG_PlayerSetWeaponQuickReload(&client->ps, client->ps.heldWeapons[i].weapon, 1);
  }
  if ( BG_GetWeaponDef(client->ps.weapon)->bDualWield )
  {
    PM_StartWeaponAnim(&client->ps, 1, 1);
  }
  PM_StartWeaponAnim(&client->ps, 1, 0);
*/
  G_SetOrigin(ent, spawn_origin);
  
  VectorCopy(spawn_origin, client->ps.origin);

  client->ps.pm_flags |= 0x400u;
  client->ps.gravity = (int)g_gravity->value;

  clean_spawn_angles[0] = spawn_angles[0];
  clean_spawn_angles[1] = spawn_angles[1];
  clean_spawn_angles[2] = 0.0;
  
  SetClientViewAngle(ent, clean_spawn_angles);
  client->inactivityTime = level.time + 1000 * g_inactivity->integer;
  
  client->buttons = client->sess.cmd.buttons;
  level.clientIsSpawning = 1;
  client->lastSpawnTime = level.time;
  client->sess.cmd.serverTime = level.time;
  client->ps.commandTime = level.time - 100;
  ClientEndFrame(ent);
  ClientThink_real(ent, &client->sess.cmd);
  level.clientIsSpawning = 0;
  BG_PlayerStateToEntityState(&client->ps, &ent->s, 1, 1);



  //CoD4X garbage
  client->lastFollowedClient = -1; //remove the last followed player number if we self have respawned

  ClearAllSpectators(ent);

	PHandler_Event(PLUGINS_ONCLIENTSPAWN, ent);




	if(ent->client->sess.sessionState == SESS_STATE_PLAYING)
	{
    SV_GameSetUndercoverState(index, false);
	}

}

const char *__cdecl CS_DisplayName(clientState_t *cs, int type)
{
  const char* clan = SV_GetPlayerClan(cs->clientIndex);
  const char* name = SV_GetPlayerName(cs->clientIndex);
  
  if(name && clan)
  {
    return Com_DisplayName(name, clan, type);
  }
  return "";
}

extern "C" __cdecl const char* G_GetPlayerId(struct gentity_s* ent)
{
    char id[33];

    if(ent->client == NULL)
    {
	return "";
    }
/*
    uint64_t xuid = SV_GetPlayerXuid(ent->client.ps.clientNum);

    return va("%llu", xuid);
*/

    SV_GetGuid(ent->client->ps.clientNum, id, sizeof(id));

    return va("%s", id);

}

void CS_SetPlayerName(clientState_t *cs, const char* name)
{
  SV_UpdatePlayernameById(cs->clientIndex ,name);
}

extern "C" __cdecl void ClientEndFrame_TurretThink_Stub(gentity_s* ent)
{
  gclient_s* client = ent->client;
	release_assert(client->ps.clientNum == ent->s.number);
	release_assert(client->ps.viewlocked_entNum != ENTITYNUM_NONE);
	release_assertx(level.gentities[client->ps.viewlocked_entNum].r.ownerNum.isDefined() && (level.gentities[client->ps.viewlocked_entNum].r.ownerNum.ent() == ent), "viewlocked_entNum is %i, ownerNum is %i, ent->s.number is %i", client->ps.viewlocked_entNum, level.gentities[client->ps.viewlocked_entNum].r.ownerNum,ent->s.number);
	turret_think_client(&level.gentities[client->ps.viewlocked_entNum]);
}
