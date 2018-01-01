#include "q_shared.h"
#include "scr_vm.h"
#include "g_shared.h"




struct gameTypeScript_t
{
  char pszScript[64];
  char pszName[64];
  int bTeamBased;
};

struct scr_gametype_data_t
{
  int main;
  int startupgametype;
  int playerconnect;
  int playerdisconnect;
  int playerdamage;
  int playerkilled;
  int votecalled;
  int playervote;
  int playerlaststand;
  int iNumGameTypes;
  struct gameTypeScript_t list[32];
};

#pragma pack(push, 4)
struct corpseInfo_t
{
  struct XAnimTree_s *tree;
  int entnum;
  int time;
  struct clientInfo_t ci;
  byte falling;
  byte pad[3];
};
#pragma pack(pop)

struct scr_data_t
{
  int levelscript;
  int gametypescript;
  struct scr_gametype_data_t gametype;
  int delete_;
  int initstructs;
  int createstruct;
  struct corpseInfo_t playerCorpseInfo[8];
};

extern struct scr_data_t g_scr_data;



extern "C"{


void __cdecl GScr_PlaceSpawnPoint(scr_entref_t entref)
{
  gentity_s *pEnt;
  uint16_t groundEntNum;
  trace_t trace;
  vec3_t vEnd;
  vec3_t vStart;

  if ( HIWORD(entref) )
  {
    Scr_ObjectError("not an entity");
    pEnt = 0;
  }
  else
  {
    pEnt = &g_entities[LOWORD(entref)];
  }

  VectorCopy(pEnt->r.currentOrigin, vStart);
  VectorCopy(pEnt->r.currentOrigin, vEnd);

  vEnd[2] += 128.0;

  G_TraceCapsule(&trace, vStart, playerMins, playerMaxs, vEnd, pEnt->s.number, 0x2810011);

  vStart[0] = (vEnd[0] - vStart[0]) * trace.fraction + vStart[0];
  vStart[1] = (vEnd[1] - vStart[1]) * trace.fraction + vStart[1];
  vStart[2] = (vEnd[2] - vStart[2]) * trace.fraction + vStart[2];

  VectorCopy(vStart, vEnd);
  vEnd[2] -= 262144.0;

  G_TraceCapsule(&trace, vStart, playerMins, playerMaxs, vEnd, pEnt->s.number, 0x2810011);

  groundEntNum = Trace_GetEntityHitId(&trace);

  pEnt->s.groundEntityNum = groundEntNum;
  g_entities[groundEntNum].flags |= 0x100000u;

  vStart[0] = (vEnd[0] - vStart[0]) * trace.fraction + vStart[0];
  vStart[1] = (vEnd[1] - vStart[1]) * trace.fraction + vStart[1];
  vStart[2] = (vEnd[2] - vStart[2]) * trace.fraction + vStart[2];

  G_TraceCapsule(&trace, vStart, playerMins, playerMaxs, vStart, pEnt->s.number, 0x2810011);

  if ( trace.allsolid )
  {
    Com_PrintWarning(CON_CHANNEL_PARSERSCRIPT, "WARNING: Spawn point entity %i is in solid at (%i, %i, %i)\n", pEnt->s.number,
      (signed int)pEnt->r.currentOrigin[0],
      (signed int)pEnt->r.currentOrigin[1],
      (signed int)pEnt->r.currentOrigin[2]);
  }
  G_SetOrigin(pEnt, vStart);
}


char *__cdecl Scr_GetGameTypeNameForScript(const char *pszGameTypeScript)
{
  int i;
//  Com_Printf(CON_CHANNEL_PARSERSCRIPT,"Gametypes:\n");
  for ( i = 0; i < g_scr_data.gametype.iNumGameTypes; ++i )
  {
//    Com_Printf(CON_CHANNEL_PARSERSCRIPT, "%02i: %s\n",i,g_scr_data.gametype.list[i].pszScript);
    if ( !Q_stricmp(g_scr_data.gametype.list[i].pszScript, pszGameTypeScript) )
    {
      return g_scr_data.gametype.list[i].pszName;
    }
  }
  return NULL;
}

qboolean __cdecl Scr_IsValidGameType(const char *pszGameType)
{
  return (qboolean)(Scr_GetGameTypeNameForScript(pszGameType) != NULL);
}

}

