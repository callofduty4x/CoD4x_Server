#include "q_shared.h"
#include "scr_vm.h"
#include "g_shared.h"
#include "cscr_stringlist.h"
#include "stringed_interface.h"
#include "bg_public.h"
#include "plugin_handler.h"

#include <ctype.h>


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



void __cdecl Scr_LocalizationError(int iParm, const char *pszErrorMessage)
{
  Scr_ParamError(iParm, pszErrorMessage);
}

void __cdecl Scr_ValidateLocalizedStringRef(int parmIndex, const char *token, int tokenLen)
{
  int charIter;

  assert( token != 0 );
  assert( tokenLen >= 0 );

  if ( tokenLen > 1 )
  {
    for ( charIter = 0; charIter < tokenLen; ++charIter )
    {
      if ( !isalnum(token[charIter]) && token[charIter] != '_' )
      {
        Scr_ParamError(parmIndex, va("Illegal localized string reference: %s must contain only alpha-numeric characters and underscores", token));
      }
    }
  }
}


extern "C"{


void __cdecl GScr_PlaceSpawnPoint(scr_entref_t entref)
{
  gentity_s *pEnt;
  uint16_t groundEntNum;
  trace_t trace;
  vec3_t vEnd;
  vec3_t vStart;

  if ( entref.classnum )
  {
    Scr_ObjectError("not an entity");
    pEnt = 0;
  }
  else
  {
    pEnt = &g_entities[entref.entnum];
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

int __cdecl GScr_GetStatusIconIndex(const char *pszIcon)
{
  int iConfigNum;
  char szConfigString[1024];

  if ( !pszIcon[0] )
  {
    return 0;
  }
  for ( iConfigNum = 0; iConfigNum < MAX_STATUS_ICONS; ++iConfigNum )
  {
    SV_GetConfigstring(iConfigNum + STATUS_ICON_CS, szConfigString, sizeof(szConfigString));
    if ( !Q_stricmp(szConfigString, pszIcon) )
    {
      return iConfigNum + 1;
    }
  }
  Scr_Error(va("Status icon '%s' was not precached\n", pszIcon));
  return 0;
}


int __cdecl GScr_GetHeadIconIndex(const char *pszIcon)
{
  int iConfigNum;
  char szConfigString[1024];

  if ( !pszIcon[0] )
  {
    return 0;
  }
  for ( iConfigNum = 0; iConfigNum < MAX_HEAD_ICONS; ++iConfigNum )
  {
    SV_GetConfigstring(iConfigNum + HEAD_ICON_CS, szConfigString, sizeof(szConfigString));
    if ( !Q_stricmp(szConfigString, pszIcon) )
    {
      return iConfigNum + 1;
    }
  }
  Scr_Error(va("Head icon '%s' was not precached\n", pszIcon));
  return 0;
}


void __cdecl Scr_ConstructMessageString(int firstParmIndex, int lastParmIndex, const char *errorContext, char *string, unsigned int stringLimit)
{
  unsigned int charIndex;
  unsigned int tokenLen;
  int type;
  gentity_t *ent;
  int parmIndex;
  const char *token;
  unsigned int stringLen;

  stringLen = 0;
  for ( parmIndex = firstParmIndex; parmIndex <= lastParmIndex; ++parmIndex )
  {
    type = Scr_GetType(parmIndex);
    if ( type == VAR_ISTRING )
    {
      token = Scr_GetIString(parmIndex);
      tokenLen = strlen(token);
      Scr_ValidateLocalizedStringRef(parmIndex, token, tokenLen);
      if ( stringLen + tokenLen + 1 >= stringLimit )
      {
        Scr_ParamError(parmIndex, va("%s is too long. Max length is %i\n", errorContext, stringLimit));
      }
      if ( stringLen )
      {
        string[stringLen++] = 20;
      }
    }
    else if ( type != VAR_POINTER || Scr_GetPointerType(parmIndex) != VAR_ENTITY )
    {
      token = Scr_GetString(parmIndex);
      tokenLen = strlen(token);
      for ( charIndex = 0; charIndex < tokenLen; ++charIndex )
      {
        if ( token[charIndex] == 20 || token[charIndex] == 21 || token[charIndex] == 22 )
        {
          Scr_ParamError(parmIndex, va("bad escape character (%i) present in string", token[charIndex]));
        }
        if ( isalpha(token[charIndex]) )
        {
          if ( loc_warnings->boolean )
          {
            if ( loc_warningsAsErrors->boolean )
            {
              Scr_LocalizationError(parmIndex, va("non-localized %s strings are not allowed to have letters in them: \"%s\"", errorContext, token));
            }
            else
            {
              Com_PrintWarning(CON_CHANNEL_PLAYERWEAP,
                "WARNING: Non-localized %s string is not allowed to have letters in it. Must be changed over to a localized string: \"%s\"\n",
                errorContext, token);
            }
          }
          break;
        }
      }
      if ( stringLen + tokenLen + 1 >= stringLimit )
      {
        Scr_ParamError(parmIndex, va("%s is too long. Max length is %i\n", errorContext, stringLimit));
      }
      if ( tokenLen )
      {
        string[stringLen++] = 21;
      }
    }
    else
    {
      ent = Scr_GetEntity(parmIndex);
      if ( !ent->client )
      {
        Scr_ParamError(parmIndex, "Entity is not a player");
      }
      token = va("%s^7", CS_DisplayName(&ent->client->sess.cs, 3));
      tokenLen = strlen(token);
      if ( stringLen + tokenLen + 1 >= stringLimit )
      {
        Scr_ParamError(parmIndex, va("%s is too long. Max length is %i\n", errorContext, stringLimit));
      }
      if ( tokenLen )
      {
        string[stringLen++] = 21;
      }
    }
    for ( charIndex = 0; charIndex < tokenLen; ++charIndex )
    {
      if ( token[charIndex] != 20 && token[charIndex] != 21 && token[charIndex] != 22 )
      {
        string[stringLen] = token[charIndex];
      }
      else
      {
        string[stringLen] = '.';
      }
      ++stringLen;
    }
  }
  string[stringLen] = 0;
}



void __cdecl GScr_AddVector(const float *vVec)
{
    if ( vVec )
    {
      Scr_AddVector(vVec);
    }
    else
    {
      Scr_AddUndefined( );
    }
}

void __cdecl GScr_AddEntity(gentity_s *pEnt)
{
    if ( pEnt )
    {
        Scr_AddEntity(pEnt);
    }
    else
    {
      Scr_AddUndefined( );
    }
}



void __cdecl Scr_PlayerKilled(gentity_s *self, gentity_s *inflictor, gentity_s *attacker, int damage, int meansOfDeath, int iWeapon, const float *vDir, hitLocation_t hitLoc, int psTimeOffset, int deathAnimDuration)
{
  PHandler_Event(PLUGINS_ONPLAYERKILLED, self, inflictor, attacker, damage, meansOfDeath, iWeapon, hitLoc);
  uint16_t hitloc;
  const char *weapname;
  uint16_t callback;

  Scr_AddInt(deathAnimDuration);
  Scr_AddInt(psTimeOffset);
  hitloc = G_GetHitLocationString(hitLoc);
  Scr_AddConstString(hitloc);
  GScr_AddVector(vDir);
  weapname = BG_WeaponName(iWeapon);
  Scr_AddString(weapname);
  if ( meansOfDeath >= 0 && meansOfDeath < 16 )
  {
    Scr_AddConstString(*modNames[meansOfDeath]);
  }
  else
  {
    Scr_AddString("badMOD");
  }
  Scr_AddInt(damage);
  GScr_AddEntity(attacker);
  GScr_AddEntity(inflictor);
/*
  int attack = -1;
  int inf = -1;

  if(attacker)
  {
      attack = attacker->s.number;
  }
  if(inflictor)
  {
      inf = inflictor->s.number;
  }


  Com_Printf(CON_CHANNEL_PLAYERWEAP, "Inflictor=%d, Attacker=%d\n", inf, attack);

*/
  callback = Scr_ExecEntThread(self, g_scr_data.gametype.playerkilled, 9u);
  Scr_FreeThread(callback);
}

void __cdecl Scr_PlayerLastStand(gentity_s *self, gentity_s *inflictor, gentity_s *attacker, int damage, int meansOfDeath, int iWeapon, const float *vDir, hitLocation_t hitLoc, int psTimeOffset)
{
  uint16_t cstr;
  const char *weapname;
  uint16_t callback;

  Scr_AddInt(0);
  Scr_AddInt(psTimeOffset);
  cstr = G_GetHitLocationString(hitLoc);
  Scr_AddConstString(cstr);
  GScr_AddVector(vDir);
  weapname = BG_WeaponName(iWeapon);
  Scr_AddString(weapname);
  if ( meansOfDeath >= 0 && meansOfDeath < 16 )
  {
    Scr_AddConstString(*modNames[meansOfDeath]);
  }
  else
  {
    Scr_AddString("badMOD");
  }
  Scr_AddInt(damage);
  GScr_AddEntity(attacker);
  GScr_AddEntity(inflictor);
  callback = Scr_ExecEntThread(self, g_scr_data.gametype.playerlaststand, 9u);
  Scr_FreeThread(callback);

  //Fixing bad scripts not killing player in LastStand callback or setting health > 0
  if(self->health <= 0 && self->client->ps.stats[0] != 0)
  {
    self->flags &= 0xFFFFFFFC;
    self->health = 0;
    self->client->ps.stats[0] = 0;
    player_die(self, inflictor, attacker, 100000, 12, 0, 0, HITLOC_NONE, 0);
  }
}



};


unsigned int __cdecl GScr_AllocString(const char *s)
{
  unsigned int stringVal;

  stringVal = Scr_AllocString(s);
  
  return stringVal;

}


