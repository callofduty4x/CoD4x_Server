

#include "player.h"
#include "scr_vm.h"
#include "g_shared.h"
#include "cscr_stringlist.h"
#include "g_fields.h"
#include "cscr_variable.h"

#include <algorithm>

#define ENTFIELD_MASK 0xc000

#define CSF( x ) (int)&( (gclient_s*)0 )->x 

struct client_fields_s
{
  const char *name;
  int ofs;
  fieldtype_t type;
  void (__cdecl *setter)(gclient_s *, struct client_fields_s *);
  void (__cdecl *getter)(gclient_s *, struct client_fields_s *);
};

void __cdecl ClientScr_ReadOnly(gclient_s *pSelf, client_fields_s *pField)
{
  assert( pSelf );
  assert( pField );

  Scr_Error(va("player field %s is read-only", pField->name));
}


void __cdecl ClientScr_GetSessionTeam(gclient_s *pSelf, client_fields_s *pField)
{
  assert( pSelf );

  switch ( pSelf->sess.cs.team )
  {
    case TEAM_FREE:
      Scr_AddConstString(scr_const.none);
      break;
    case TEAM_RED:
      Scr_AddConstString(scr_const.axis);
      break;
    case TEAM_BLUE:
      Scr_AddConstString(scr_const.allies);
      break;
    case TEAM_SPECTATOR:
      Scr_AddConstString(scr_const.spectator);
      break;
    default:
      return;
  }
}

void __cdecl ClientScr_SetSessionTeam(gclient_s *pSelf, client_fields_s *pField)
{
  uint16_t newTeam;

  assert( pSelf );


  newTeam = Scr_GetConstString(0);
  if ( newTeam == scr_const.axis )
  {
    pSelf->sess.cs.team = TEAM_RED;
  }
  else if ( newTeam == scr_const.allies )
  {
    pSelf->sess.cs.team = TEAM_BLUE;
  }
  else if ( newTeam == scr_const.spectator )
  {
    pSelf->sess.cs.team = TEAM_SPECTATOR;
  }
  else if ( newTeam == scr_const.none )
  {
    pSelf->sess.cs.team = TEAM_FREE;
  }
  else
  {
    Scr_Error(va("'%s' is an illegal sessionteam string. Must be allies, axis, none, or spectator.", SL_ConvertToString(newTeam)));
  }
  if ( (unsigned int)(pSelf - level.clients) >= (unsigned int)level.maxclients )
  {
    Scr_Error("client is not pointing to the level.clients array");
  }

//  ClientUserinfoChanged(pSelf - level.clients);

  CalculateRanks();
}

void __cdecl ClientScr_SetArchiveTime(gclient_s *pSelf, client_fields_s *pField)
{
    assert( pSelf );

    pSelf->sess.archiveTime = (signed int)(Scr_GetFloat(0) * 1000.0);
}

void __cdecl ClientScr_GetArchiveTime(gclient_s *pSelf, client_fields_s *pField)
{
  Scr_AddFloat((float)pSelf->sess.archiveTime * 0.001);
}

void __cdecl ClientScr_SetMaxHealth(gclient_s *pSelf, client_fields_s *pField)
{
  assert(pSelf);
  assert( (unsigned int)(pSelf - level.clients) < (unsigned int)level.maxclients);

  pSelf->sess.maxHealth = Scr_GetInt(0);
  if ( pSelf->sess.maxHealth < 1 )
  {
    pSelf->sess.maxHealth = 1;
  }
  if ( pSelf->ps.stats[0] > pSelf->sess.maxHealth )
  {
    pSelf->ps.stats[0] = pSelf->sess.maxHealth;
  }
  g_entities[pSelf - level.clients].health = pSelf->ps.stats[0];
  pSelf->ps.stats[2] = pSelf->sess.maxHealth;
}

void __cdecl ClientScr_SetHeadIconTeam(gclient_s *pSelf, client_fields_s *pField)
{
  gentity_s *pEnt;
  uint16_t sTeam;

  assert(pSelf != NULL);
  assert( (unsigned int)(pSelf - level.clients) < (unsigned int)level.maxclients);

  pEnt = &g_entities[pSelf - level.clients];
  sTeam = Scr_GetConstString(0);
  if ( sTeam == scr_const.none )
  {
    pEnt->s.iHeadIconTeam = TEAM_FREE;
  }
  else if ( sTeam == scr_const.allies )
  {
    pEnt->s.iHeadIconTeam = TEAM_BLUE;
  }
  else if ( sTeam == scr_const.axis )
  {
    pEnt->s.iHeadIconTeam = TEAM_RED;
  }
  else if ( sTeam == scr_const.spectator )
  {
    pEnt->s.iHeadIconTeam = TEAM_SPECTATOR;
  }
  else
  {
    Scr_Error(va("'%s' is an illegal head icon team string. Must be none, allies, axis, or spectator.", SL_ConvertToString(sTeam)));
  }
}

void __cdecl ClientScr_GetHeadIconTeam(gclient_s *pSelf, client_fields_s *pField)
{
  assert(pSelf != NULL);
  assert( (unsigned int)(pSelf - level.clients) < (unsigned int)level.maxclients);

  switch ( g_entities[pSelf - level.clients].s.iHeadIconTeam )
  {
    case TEAM_RED:
      Scr_AddConstString(scr_const.axis);
      break;
    case TEAM_BLUE:
      Scr_AddConstString(scr_const.allies);
      break;
    case TEAM_SPECTATOR:
      Scr_AddConstString(scr_const.spectator);
      break;
    default:
      Scr_AddConstString(scr_const.none);
      break;
  }
}


void __cdecl ClientScr_SetScore(gclient_s *pSelf, client_fields_s *pField)
{
  int score;

  assert(pSelf != NULL);
  assert( (unsigned int)(pSelf - level.clients) < (unsigned int)level.maxclients);
  score = Scr_GetInt(0);

  score = std::max(score, -900000000);
  score = std::min(score, 900000000);

  pSelf->sess.score = score;
  CalculateRanks();
}

void __cdecl ClientScr_SetKillCamEntity(gclient_s *pSelf, client_fields_s *pField)
{
  int iNewKillCamEntity;
  assert(pSelf != NULL);

  iNewKillCamEntity = Scr_GetInt(0);
  if ( iNewKillCamEntity < -1 || iNewKillCamEntity >= MAX_GENTITIES )
  {
    Scr_Error("killcamentity can only be set to -1, or a valid entity number");
  }
  pSelf->sess.killCamEntity = iNewKillCamEntity;
}

void __cdecl ClientScr_SetSessionState(gclient_s *pSelf, client_fields_s *pField)
{
  uint16_t newState;
  assert(pSelf != NULL);
  assert(pSelf->sess.connected != CON_DISCONNECTED);

  newState = Scr_GetConstString( 0 );
  if ( newState == scr_const.playing )
  {
    pSelf->sess.sessionState = SESS_STATE_PLAYING;
  }
  else if ( newState == scr_const.dead )
  {
    pSelf->sess.sessionState = SESS_STATE_DEAD;
  }
  else if ( newState == scr_const.spectator )
  {
    pSelf->sess.sessionState = SESS_STATE_SPECTATOR;
  }
  else if ( newState == scr_const.intermission )
  {
    pSelf->ps.eFlags ^= 2u;
    pSelf->sess.sessionState = SESS_STATE_INTERMISSION;
  }
  else
  {
    Scr_Error(va("'%s' is an illegal sessionstate string. Must be playing, dead, spectator, or intermission.", SL_ConvertToString(newState)));
  }
}

void __cdecl ClientScr_GetSessionState(gclient_s *pSelf, client_fields_s *pField)
{
  assert(pSelf != NULL);
  assert(pSelf->sess.connected != CON_DISCONNECTED);

  switch ( pSelf->sess.sessionState )
  {
    case SESS_STATE_PLAYING:
      Scr_AddConstString(scr_const.playing);
      break;
    case SESS_STATE_DEAD:
      Scr_AddConstString(scr_const.dead);
      break;
    case SESS_STATE_SPECTATOR:
      Scr_AddConstString(scr_const.spectator);
      break;
    case SESS_STATE_INTERMISSION:
      Scr_AddConstString(scr_const.intermission);
      break;
    default:
      return;
  }
}


void __cdecl ClientScr_GetStatusIcon(gclient_s *pSelf, client_fields_s *pField)
{
  char szConfigString[1024];

  assert(pSelf != NULL);
  assert(pSelf->sess.status_icon >= 0 && pSelf->sess.status_icon <= MAX_STATUS_ICONS);

  if ( pSelf->sess.status_icon )
  {
    SV_GetConfigstring(pSelf->sess.status_icon + 2258, szConfigString, 1024);
    Scr_AddString(szConfigString);
  }
  else
  {
    Scr_AddString("");
  }
}

void __cdecl ClientScr_SetStatusIcon(gclient_s *pSelf, client_fields_s *pField)
{
  assert(pSelf != NULL);

  pSelf->sess.status_icon = GScr_GetStatusIconIndex(Scr_GetString(0));
}

void __cdecl ClientScr_SetSpectatorClient(gclient_s *pSelf, client_fields_s *pField)
{
  int iNewSpectatorClient;

  assert(pSelf != NULL);

  iNewSpectatorClient = Scr_GetInt(0);
  if ( iNewSpectatorClient < -1 || iNewSpectatorClient >= MAX_CLIENTS )
  {
    Scr_Error("spectatorclient can only be set to -1, or a valid client number");
  }
  pSelf->sess.forceSpectatorClient = iNewSpectatorClient;
}

void __cdecl ClientScr_GetSpectatorClient(gclient_s *pSelf, client_fields_s *pField)
{
  assert(pSelf != NULL);

  int iSpectatorClient = pSelf->spectatorClient;

  if ( iSpectatorClient < 0 || iSpectatorClient >= MAX_CLIENTS )
  {
    iSpectatorClient = -1;
  }
  Scr_AddInt(iSpectatorClient);
}


void __cdecl ClientScr_SetPSOffsetTime(gclient_s *pSelf, client_fields_s *pField)
{
  assert(pSelf != NULL);

  pSelf->sess.psOffsetTime = Scr_GetInt(0);
}

void __cdecl ClientScr_GetPSOffsetTime(gclient_s *pSelf, client_fields_s *pField)
{
  Scr_AddInt(pSelf->sess.archiveTime);
}

void __cdecl ClientScr_SetHeadIcon(gclient_s *pSelf, client_fields_s *pField)
{
  gentity_s *pEnt;
  const char *pszIcon; 

  assert(pSelf != NULL);
  assert( (unsigned int)(pSelf - level.clients) < (unsigned int)level.maxclients);

  pEnt = &g_entities[pSelf - level.clients];
  pszIcon = Scr_GetString(0);
  pEnt->s.iHeadIcon = GScr_GetHeadIconIndex(pszIcon);
}

void __cdecl ClientScr_GetHeadIcon(gclient_s *pSelf, client_fields_s *pField)
{
  char szConfigString[1024];
  gentity_s *pEnt;

  assert(pSelf != NULL);
  assert( (unsigned int)(pSelf - level.clients) < (unsigned int)level.maxclients);

  pEnt = &g_entities[pSelf - level.clients];
  if ( g_entities[pSelf - level.clients].s.iHeadIcon )
  {
    if ( (unsigned int)pEnt->s.iHeadIcon <= 15 )
    {
      SV_GetConfigstring(pEnt->s.iHeadIcon + HEAD_ICON_CS -1, szConfigString, sizeof(szConfigString));
      Scr_AddString(szConfigString);
    }
  }
  else
  {
    Scr_AddString("");
  }
}


void __cdecl ClientScr_GetEntityFromIndex(gclient_s *pSelf, client_fields_s *pField)
{
  int entNum;
  gentity_t* ent;

  assert(pSelf != NULL);
  assert(pField != NULL);

  entNum = *(uint32_t *)((uint8_t*)&pSelf->ps + pField->ofs);

  assert(entNum >= 0 && entNum < MAX_GENTITIES);

  if ( entNum != ENTITYNUM_NONE && entNum != ENTITYNUM_WORLD )
  {
    ent = &g_entities[entNum];
    assert(ent->r.inuse);

    Scr_AddEntity(ent);
  }
}

void __cdecl ClientScr_GetName(gclient_s *pSelf, client_fields_s *pField)
{
  assert(pSelf != NULL);

  Scr_AddString(CS_DisplayName(&pSelf->sess.cs, 3));
}

void __cdecl ClientScr_SetName(gclient_s *pSelf, client_fields_s *pField)
{
  assert(pSelf != NULL);

  const char* playername = Scr_GetString(0);
  if(playername && playername[0])
  {
    CS_SetPlayerName(&pSelf->sess.cs, playername);
  }
}

void __cdecl ClientScr_GetBotStatus(gclient_s *pSelf, client_fields_s *pField)
{
	assert(pSelf != NULL);
	
	client_t* cl = &svs.clients[ pSelf->sess.cs.clientIndex ];
	
	Scr_AddBool(cl->netchan.remoteAddress.type == NA_BOT);
}

void __cdecl ClientScr_GetLocalization(gclient_s *pSelf, client_fields_s *pField)
{
	assert(pSelf != NULL);
	
	client_t* cl = &svs.clients[ pSelf->sess.cs.clientIndex ];
	
	Scr_AddInt( cl->localization );
}

static client_fields_s fields[] =
{
  { "sessionteam", 0, F_STRING, &ClientScr_SetSessionTeam, &ClientScr_GetSessionTeam },
  { "name", 0, F_LSTRING, &ClientScr_SetName, &ClientScr_GetName },
  { "maxhealth", CSF(sess.maxHealth), F_INT, &ClientScr_SetMaxHealth, NULL },
  { "headiconteam", 0, F_STRING, &ClientScr_SetHeadIconTeam, &ClientScr_GetHeadIconTeam },
  { "kills", CSF(sess.kills), F_INT, NULL, NULL },
  { "deaths", CSF(sess.deaths), F_INT, NULL, NULL },
  { "assists", CSF(sess.assists), F_INT, NULL, NULL },
  { "killcamentity", CSF(sess.killCamEntity), F_INT, &ClientScr_SetKillCamEntity, NULL },
  { "score", CSF(sess.score), F_INT, &ClientScr_SetScore, NULL },
  { "sessionstate", 0, F_STRING, &ClientScr_SetSessionState, &ClientScr_GetSessionState },
  { "statusicon", 0, F_STRING, &ClientScr_SetStatusIcon, &ClientScr_GetStatusIcon },
  { "spectatorclient", 0, F_INT, &ClientScr_SetSpectatorClient, ClientScr_GetSpectatorClient },
  { "archivetime", CSF(sess.archiveTime), F_FLOAT, &ClientScr_SetArchiveTime, &ClientScr_GetArchiveTime },
  { "psoffsettime", CSF(sess.psOffsetTime), F_INT, &ClientScr_SetPSOffsetTime, &ClientScr_GetPSOffsetTime },
  { "pers", CSF(sess.scriptPersId), F_OBJECT, &ClientScr_ReadOnly, NULL },
  { "headicon", 0, F_STRING, &ClientScr_SetHeadIcon, &ClientScr_GetHeadIcon },
  { "groundentity", CSF(ps.groundEntityNum), F_ENTITY, &ClientScr_ReadOnly, &ClientScr_GetEntityFromIndex },
  { "hasradar", CSF(hasRadar), F_INT, NULL, NULL },
  { "isbot", 0, F_INT, &ClientScr_ReadOnly, &ClientScr_GetBotStatus },
  { "localization", 0, F_INT, &ClientScr_ReadOnly, &ClientScr_GetLocalization },
  { NULL, 0, F_INT, NULL, NULL }
};


extern "C"
{

void __cdecl GScr_AddFieldsForClient()
{
  client_fields_s *f;

  for ( f = fields; f->name; ++f )
  {
    assert(!((f - fields) & ENTFIELD_MASK));
    assert((f - fields) == (uint16_t)( f - fields ));

    Scr_AddClassField(0, f->name, (uint16_t)(f - fields) | ENTFIELD_MASK);
  }
}

void __cdecl Scr_GetClientField(gclient_s *client, int offset)
{
  client_fields_s *f;

  assert(client);
  assert(static_cast<unsigned int>( offset ) < ARRAY_COUNT( fields ) - 1);
  assert(offset >= 0);

  f = &fields[offset];
  if ( f->getter )
  {
    f->getter(client, f);
  }
  else
  {
    assert(f->ofs);
    Scr_GetGenericField((char *)client, f->type, f->ofs);
  }
}

void __cdecl Scr_SetClientField(gclient_s *client, int offset)
{
  client_fields_s *f;

  assert(client != NULL);
  assert(static_cast<unsigned int>( offset ) < ARRAY_COUNT( fields ) - 1);
  assert(offset >= 0);

  f = &fields[offset];
  if ( f->setter )
  {
    f->setter(client, f);
  }
  else
  {
    assert(f->ofs);
    Scr_SetGenericField((char *)client, f->type, f->ofs);
  }
}



}