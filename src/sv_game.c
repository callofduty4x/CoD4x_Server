/*
===========================================================================
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


#include "qcommon_io.h"
#include "qcommon_mem.h"
#include "entity.h"
#include "player.h"
#include "cvar.h"
#include "server.h"
#include "cm_public.h"
#include "g_public.h"
#include "dobj.h"
#include "xassets/xmodel.h"
#include "xassets/sounds.h"
#include "game/botlib.h"
#include "scr_vm.h"
#include "sys_main.h"
#include "sys_thread.h"

botlib_export_t *botlib_export;

// sv_game.c -- interface to the game dll

// these functions must be used instead of pointer arithmetic, because
// the game allocates gentities with private information after the server shared part
int SV_NumForGentity( gentity_t *ent ) {
	int num;

	num = ( (byte *)ent - (byte *)sv.gentities ) / sv.gentitySize;

	return num;
}

gentity_t *SV_GentityNum( int num ) {
	gentity_t *ent;

	ent = ( gentity_t * )( (byte *)sv.gentities + sv.gentitySize * ( num ) );

	return ent;
}

playerState_t *SV_GameClientNum( int num ) {
	playerState_t   *ps;

	ps = ( playerState_t * )( (byte *)sv.gameClients + sv.gameClientSize * ( num ) );

	return ps;
}

svEntity_t  *SV_SvEntityForGentity( gentity_t *gEnt ) {
	if ( !gEnt || gEnt->s.number < 0 || gEnt->s.number >= MAX_GENTITIES ) {
		Com_Error( ERR_DROP, "SV_SvEntityForGentity: bad gEnt" );
	}
	return &sv.svEntities[ gEnt->s.number ];
}

gentity_t *SV_GEntityForSvEntity( svEntity_t *svEnt ) {
	int num;

	num = svEnt - sv.svEntities;
	return SV_GentityNum( num );
}

void SV_GameSendServerCommand(int clientNum, int cmdtype, const char *cmdstring)
{
  if ( clientNum == -1 )
  {
    SV_SendServerCommand_IW(NULL, cmdtype, "%s", cmdstring);
  }
  else if ( clientNum >= 0 && clientNum < sv_maxclients->integer )
  {
    SV_SendServerCommand_IW(&svs.clients[clientNum], cmdtype, "%s", cmdstring);
  }
}


/*
=================
SV_inPVSIgnorePortals

Does NOT check portalareas
=================
*/
qboolean SV_inPVSIgnorePortals( const vec3_t p1, const vec3_t p2 ) {
	int leafnum;
	int cluster;
	byte    *mask;

	leafnum = CM_PointLeafnum( p1 );
	cluster = CM_LeafCluster( leafnum );
	mask = CM_ClusterPVS( cluster );

	leafnum = CM_PointLeafnum( p2 );
	cluster = CM_LeafCluster( leafnum );

	if ( mask && ( !( mask[cluster >> 3] & ( 1 << ( cluster & 7 ) ) ) ) ) {
		return qfalse;
	}

	return qtrue;
}

#define SKEL_MEM_ALIGNMENT 0x10
char g_sv_skel_memory[262144];
char *g_sv_skel_memory_start;


void __cdecl SV_ResetSkeletonCache()
{
  ++sv.skelTimeStamp;
  if ( !sv.skelTimeStamp )
  {
    ++sv.skelTimeStamp;
  }
  g_sv_skel_memory_start = (char*)(((int)g_sv_skel_memory + (SKEL_MEM_ALIGNMENT -1)) & ~(SKEL_MEM_ALIGNMENT - 1));
  sv.skelMemPos = 0;
}

char *__cdecl SV_AllocSkelMemory(unsigned int size)
{
  static int warnCount_2;
  char *result;

  assert(size > 0); 

  size = (size + 15) & 0xFFFFFFF0;

  //0x3FFF0
  assert(size <= sizeof( g_sv_skel_memory ) - SKEL_MEM_ALIGNMENT);


  assert(g_sv_skel_memory_start != NULL);

  while ( 1 )
  {
    result = &g_sv_skel_memory_start[sv.skelMemPos];
    sv.skelMemPos += size;
    if ( sv.skelMemPos <= 0x3FFF0 )
    {
      break;
    }
    if ( warnCount_2 != sv.skelTimeStamp )
    {
      warnCount_2 = sv.skelTimeStamp;
      Com_PrintWarning(CON_CHANNEL_SERVER, "WARNING: SV_SKEL_MEMORY_SIZE exceeded\n");
    }
    SV_ResetSkeletonCache();
  }
  assert(result != NULL);

  return result;
}



qboolean __cdecl SV_DObjCreateSkelForBone(DObj *obj, int boneIndex)
{
  int size;
  char *buf;

  if ( DObjSkelExists(obj, sv.skelTimeStamp) )
  {
    return DObjSkelIsBoneUpToDate(obj, boneIndex);
  }
  size = DObjGetAllocSkelSize(obj);
  buf = SV_AllocSkelMemory(size);
  DObjCreateSkel(obj, buf, sv.skelTimeStamp);
  return 0;
}



int __cdecl SV_DObjExists(struct gentity_s *ent)
{
  return Com_GetServerDObj(ent->s.number) != 0;
}

int __cdecl SV_DObjGetBoneIndex(struct gentity_s *ent, unsigned int boneName)
{
  DObj *obj;
  char index;

  obj = Com_GetServerDObj(ent->s.number);
  if ( obj )
  {
    index = -2;
    if ( DObjGetBoneIndex(obj, boneName, &index, -1) )
    {
      return (uint8_t)index;
    }
  }
  return -1;
}

struct DObjAnimMat *__cdecl SV_DObjGetMatrixArray(struct gentity_s *ent)
{
  DObj *obj;

  obj = Com_GetServerDObj(ent->s.number);

  assert(obj != NULL);

  return DObjGetRotTransArray(obj);
}

void __cdecl SV_DObjUpdateServerTime(struct gentity_s *ent, float dtime, int bNotify)
{
  DObj *obj;

  obj = Com_GetServerDObj(ent->s.number);
  if ( obj )
  {
    DObjUpdateServerInfo(obj, dtime, bNotify);
  }
}

void __cdecl SV_DObjInitServerTime(struct gentity_s *ent, float dtime)
{
  DObj *obj;

  obj = Com_GetServerDObj(ent->s.number);
  if ( obj )
  {
    DObjInitServerTime(obj, dtime);
  }
}

int __cdecl SV_DObjCreateSkelForBones(DObj *obj, int *partBits)
{
    int len;
    char *buf;

    if ( DObjSkelExists(obj, sv.skelTimeStamp) )
    {
        return DObjSkelAreBonesUpToDate(obj, partBits);
    }
    len = DObjGetAllocSkelSize(obj);
    buf = SV_AllocSkelMemory(len);
    DObjCreateSkel(obj, buf, sv.skelTimeStamp);
    return 0;
}


struct XAnimTree_s *__cdecl SV_DObjGetTree(struct gentity_s *ent)
{
  DObj *obj;

  obj = Com_GetServerDObj(ent->s.number);
  if ( obj )
  {
    return DObjGetTree(obj);
  }
  return NULL;
}


void __cdecl SV_DObjDisplayAnim(struct gentity_s *ent, const char *header)
{
  DObj *obj;

  obj = Com_GetServerDObj(ent->s.number);
  if ( obj )
  {
    DObjDisplayAnim(obj, header);
  }
}


void __cdecl SV_DObjGetBounds(struct gentity_s *ent, float *mins, float *maxs)
{
  DObj *obj;

  obj = Com_GetServerDObj(ent->s.number);

  assert(obj != NULL);

  DObjGetBounds(obj, mins, maxs);
}

void __cdecl SV_DObjDumpInfo(struct gentity_s *ent)
{
  DObj *obj;

  if ( com_developer->integer )
  {
    obj = Com_GetServerDObj(ent->s.number);
    if ( obj )
    {
      DObjDumpInfo(obj);
    }
    else
    {
      Com_Printf(CON_CHANNEL_SERVER, "no model.\n");
    }
  }
}


bool __cdecl SV_SetBrushModel(struct gentity_s *ent)
{
  vec3_t mins;
  vec3_t maxs;

  assert(ent->r.inuse != 0);

  if ( CM_ClipHandleIsValid(ent->s.index) )
  {
    CM_ModelBounds(ent->s.index, mins, maxs);

    VectorCopy(mins, ent->r.mins);
    VectorCopy(maxs, ent->r.maxs);

    ent->r.bmodel = 1;
    ent->r.contents = CM_ContentsOfModel(ent->s.index);
/*
//Backops
    DObj *obj;
    vec3_t mx, mn;


    obj = Com_GetServerDObj(ent->s.number);
    if ( obj )
    {
      if ( ent->r.svFlags & 4 )
      {
        DObjCalcBounds(obj, mn, mx);
        Vec3Min(ent->r.mins, mn, ent->r.mins);
        Vec3Max(ent->r.maxs, mx, ent->r.maxs);
        ent->r.contents |= DObjGetContents(obj);
      }
    }*/

    SV_LinkEntity(ent);
    return true;
  }
  return false;
}

void *__cdecl SV_AllocXModelPrecache(int size)
{
  return Hunk_Alloc(size, "SV_AllocXModelPrecache", 22);
}

void *__cdecl SV_AllocXModelPrecacheColl(int size)
{
  return Hunk_Alloc(size, "SV_AllocXModelPrecacheColl", 28);
}

XModel *__cdecl SV_XModelGet(const char *name)
{
  return XModelPrecache(name, SV_AllocXModelPrecache, SV_AllocXModelPrecacheColl);
}



int __cdecl SV_EntityContact(const float *mins, const float *maxs, struct gentity_s *gEnt)
{
  float dist;
  unsigned int model;
  trace_t trace;
  vec2_t center;

  trace.normal[0] = 0.0;
  trace.normal[1] = 0.0;
  trace.normal[2] = 0.0;

  if ( gEnt->r.svFlags & (0x20 | SVF_DISK))
  {
    if ( gEnt->r.svFlags & 0x20 )
    {
      assert(gEnt->r.mins[2] == 0);

      if ( gEnt->r.currentOrigin[2] < maxs[2] )
      {
        if ( mins[2] < (float)(gEnt->r.currentOrigin[2] + gEnt->r.maxs[2]) )
        {
          center[0] = mins[0] + maxs[0];
          center[1] = mins[1] + maxs[1];
          center[0] = 0.5 * center[0];
          center[1] = 0.5 * center[1];
          dist = maxs[0] - center[0] + gEnt->r.maxs[0];
          return Square(dist) > Vec2DistanceSq(center, gEnt->r.currentOrigin);
        }
      }
      return 0;
    }
    assert(gEnt->r.svFlags & SVF_DISK);

    center[0] = mins[0] + maxs[0];
    center[1] = mins[1] + maxs[1];
    center[0] = 0.5 * center[0];
    center[1] = 0.5 * center[1];

    dist = maxs[0] - center[0] + gEnt->r.maxs[0] - 64.0;
    return Vec2DistanceSq(center, gEnt->r.currentOrigin) >= Square(dist);
  }
  model = SV_ClipHandleForEntity(gEnt);
  CM_TransformedBoxTraceExternal( &trace, vec3_origin, vec3_origin, mins, maxs,
                                model, -1, gEnt->r.currentOrigin, gEnt->r.currentAngles);
  return trace.startsolid;
}

int boxVerts[24][3] =
{
  { 0, 0, 0 },
  { 1, 0, 0 },
  { 0, 0, 0 },
  { 0, 1, 0 },
  { 1, 1, 0 },
  { 1, 0, 0 },
  { 1, 1, 0 },
  { 0, 1, 0 },
  { 0, 0, 1 },
  { 1, 0, 1 },
  { 0, 0, 1 },
  { 0, 1, 1 },
  { 1, 1, 1 },
  { 1, 0, 1 },
  { 1, 1, 1 },
  { 0, 1, 1 },
  { 0, 0, 0 },
  { 0, 0, 1 },
  { 1, 0, 0 },
  { 1, 0, 1 },
  { 0, 1, 0 },
  { 0, 1, 1 },
  { 1, 1, 0 },
  { 1, 1, 1 }
};


void __cdecl CL_AddDebugLine(const float *start, const float *end, const float *color, int depthTest, int duration);

void __cdecl SV_XModelDebugBoxesInternal(struct gentity_s *ent, const float *color, int *partBits, int duration)
{
  struct DObjAnimMat *boneMatrix;
  unsigned int j;
  struct XBoneInfo *boneInfoArray[160];
  int numBones;
  int boneIndex;
  DObj *obj;
  vec3_t start;
  vec3_t end;
  int size;
  vec3_t boneAxis[4];
  int localBoneIndex;
  int (*tempBoxVerts)[3];
  vec3_t org;
  struct XBoneInfo *boneInfo;
  vec3_t axis[3];
  vec3_t vec;
  int modelCount;
  int modelIndex;
  struct XModel* model;

  obj = Com_GetServerDObj(ent->s.number);

  assert(obj != NULL);

  numBones = DObjNumBones(obj);

  assert(numBones <= DOBJ_MAX_PARTS);

  DObjGetBoneInfo(obj, boneInfoArray);
  boneMatrix = DObjGetRotTransArray(obj);
  AnglesToAxis(ent->r.currentAngles, axis);
  modelCount = DObjGetNumModels(obj);
  boneIndex = 0;
  for ( modelIndex = 0; modelIndex < modelCount; ++modelIndex )
  {
    model = DObjGetModel(obj, modelIndex);
    size = XModelNumBones( model );
    if ( DObjIgnoreCollision(obj, modelIndex) )
    {
      boneIndex += size;
      boneMatrix += size;
    }
    else
    {
      localBoneIndex = 0;
      while ( localBoneIndex < size )
      {
        if ( !partBits || partBits[boneIndex >> 5] & (0x80000000 >> (boneIndex & 0x1F)) )
        {

          boneInfo = boneInfoArray[boneIndex];
          tempBoxVerts = boxVerts;

          ConvertQuatToMat(boneMatrix, boneAxis);
          VectorCopy(boneMatrix->trans,boneAxis[3]);

          for ( j = 0; j < 0xC; ++j )
          {
            org[0] = boneInfo->bounds[(*tempBoxVerts)[0]][0];
            org[1] = boneInfo->bounds[(*tempBoxVerts)[1]][1];
            org[2] = boneInfo->bounds[(*tempBoxVerts)[2]][2];
            MatrixTransformVector43(org, boneAxis, vec);
            MatrixTransformVector(vec, axis, start);
            VectorAdd(start, ent->r.currentOrigin, start);

            ++tempBoxVerts;

            org[0] = boneInfo->bounds[(*tempBoxVerts)[0]][0];
            org[1] = boneInfo->bounds[(*tempBoxVerts)[1]][1];
            org[2] = boneInfo->bounds[(*tempBoxVerts)[2]][2];
            MatrixTransformVector43(org, boneAxis, vec);
            MatrixTransformVector(vec, axis, end);
            VectorAdd(end, ent->r.currentOrigin, end);

            ++tempBoxVerts;

            CL_AddDebugLine(start, end, color, 0, duration);
          }
        }
        ++localBoneIndex;
        ++boneMatrix;
        ++boneIndex;
      }
    }
  }
}


void SV_XModelDebugBoxes(struct gentity_s *ent)
{
    SV_XModelDebugBoxesInternal(ent, colorWhite, 0, 0);
}


const char* SV_GetGuid( unsigned int clnum, char* buffer, int len)
{

	if(clnum > sv_maxclients->integer)
		return "";
	if(sv_legacymode->boolean)
	{
	 	return svs.clients[clnum].legacy_pbguid;
	}
	Com_sprintf(buffer, len, "%llu", svs.clients[clnum].playerid);
	return buffer;
}

uint64_t SV_GetPlayerXuid( unsigned int clnum)
{
	if(clnum > sv_maxclients->integer)
		return 0;

	return svs.clients[clnum].playerid;
}


qboolean __cdecl SV_MapExists(const char *name)
{
  char fullpath[MAX_OSPATH];
  const char *basename;

  basename = SV_GetMapBaseName(name);
  Com_GetBspFilename(fullpath, sizeof(fullpath), basename);
  return FS_ReadFile(fullpath, 0) >= 0;
}


void __cdecl SV_LocateGameData(struct gentity_s *gEnts, int numGEntities, int sizeofGEntity_t, struct playerState_s *clients, int sizeofGameClient)
{
  sv.gentities = gEnts;
  sv.gentitySize = sizeofGEntity_t;
  sv.num_entities = numGEntities;
  sv.gameClients = clients;
  sv.gameClientSize = sizeofGameClient;
}


void __cdecl SV_GameDropClient(int clientNum, const char *reason)
{
  assert(sv_maxclients->integer >= 1 && sv_maxclients->integer <= MAX_CLIENTS);

  if ( clientNum >= 0 && clientNum < sv_maxclients->integer )
  {
    SV_DropClient(&svs.clients[clientNum], reason);
  }
}

void __cdecl SV_GetUsercmd(int clientNum, struct usercmd_s *cmd)
{
  assert(clientNum >= 0);
  assert(sv_maxclients->integer >= 1 && sv_maxclients->integer <= MAX_CLIENTS);
  assert(clientNum < sv_maxclients->integer);

  memcpy(cmd, &svs.clients[clientNum].lastUsercmd, sizeof(struct usercmd_s));
}


void __cdecl SV_GetServerinfo(char *buffer, int bufferSize)
{
  const char *infostring;

  if ( bufferSize < 1 )
  {
    Com_Error(ERR_DROP, "SV_GetServerinfo: bufferSize == %i", bufferSize);
  }
  infostring = Cvar_InfoString(CVAR_SERVERINFO);
  Q_strncpyz(buffer, infostring, bufferSize);
}

int __cdecl SV_GetClientPing(int clientNum)
{
  assert(clientNum < sv_maxclients->integer && clientNum >= 0);

  return svs.clients[clientNum].ping;
}

void SV_SetAssignedTeam()
{

}


int __cdecl SV_inSnapshot(const float *origin, int iEntityNum)
{
  int clientcluster;
  float fogOpaqueDistSqrd;
  struct svEntity_s *svEnt;
  int l;
  int leafnum;
  struct gentity_s *ent;
  int i;
  byte *bitvector;

  ent = (struct gentity_s *)((char *)sv.gentities + iEntityNum * sv.gentitySize);
  if ( !ent->r.linked )
  {
    return 0;
  }
  if ( ent->r.broadcastTime )
  {
    return 1;
  }
  if ( ent->r.svFlags & 1 )
  {
    return 0;
  }
  if ( ent->r.svFlags & 0x18 )
  {
    return 1;
  }
  svEnt = SV_SvEntityForGentity(ent);
  leafnum = CM_PointLeafnum(origin);
  if ( !svEnt->numClusters )
  {
    return 0;
  }
  clientcluster = CM_LeafCluster(leafnum);
  bitvector = CM_ClusterPVS(clientcluster);
  l = 0;
  for ( i = 0; i < svEnt->numClusters; ++i )
  {
    l = svEnt->clusternums[i];
    if ( (1 << (l & 7)) & (uint8_t)bitvector[l >> 3] )
    {
      break;
    }
  }
  if ( i == svEnt->numClusters )
  {
    if ( !svEnt->lastCluster )
    {
      return 0;
    }
    while ( l <= svEnt->lastCluster && !((1 << (l & 7)) & (uint8_t)bitvector[l >> 3]) )
    {
      ++l;
    }
    if ( l == svEnt->lastCluster )
    {
      return 0;
    }
  }
  fogOpaqueDistSqrd = G_GetFogOpaqueDistSqrd();
  if ( fogOpaqueDistSqrd != 3.4028235e38 )
  {
    return BoxDistSqrdExceeds(ent->r.absmin, ent->r.absmax, origin, fogOpaqueDistSqrd) == 0;
  }
  return 1;
}

void __cdecl SV_SetGameEndTime(int gameEndTime)
{
  char lastGameEndTime[12];

  SV_GetConfigstring(11, lastGameEndTime, 12);
  if ( abs(atoi(lastGameEndTime) - gameEndTime) > 500 )
  {
    SV_SetConfigstring(11, va("%i", gameEndTime));
  }
}

void __cdecl SV_SetMapCenter(float *mapCenter)
{
  assert(mapCenter);
  VectorCopy(mapCenter, svs.mapCenter);
  SV_SetConfigstring(12, va("%g %g %g", svs.mapCenter[0], svs.mapCenter[1], svs.mapCenter[2]));
}

int SV_GetAssignedTeam()
{
  return 0;
}

void __cdecl SV_MatchEnd()
{
/*
//Only Blackops
  if ( onlinegame )
  {
    if ( onlinegame->boolean )
    {
      Com_DPrintf(CON_CHANNEL_DONT_FILTER, "\n*******SERVER: SV_MatchEnd called, uploading leaderboards.\n");
      SV_CommitClientLeaderboards();
    }
  }
*/
}


void __cdecl SV_SetGametype()
{
  char gametype[64];

  Cvar_RegisterString("g_gametype", "war", 0x24u, "Game Type");
  if ( com_sv_running->boolean && G_GetSavePersist() )
  {
    Q_strncpyz(gametype, sv.gametype, sizeof(gametype));
  }
  else
  {
    Q_strncpyz(gametype, sv_g_gametype->string, sizeof(gametype));
  }
  Q_strlwr(gametype);
/*
  if ( !Scr_IsValidGameType(gametype) )
  {
    Com_Printf(CON_CHANNEL_SERVER, "g_gametype %s is not a valid gametype, defaulting to dm\n", gametype);
    strcpy(gametype, "dm");
  }
*/
  Cvar_SetString(sv_g_gametype, gametype);
}


void __cdecl SV_InitGameVM(int restart, int registerDvars)
{
  int i;
  unsigned int time;

  PIXBeginNamedEvent(-1, "SV_InitGameVM");
  G_ResetEntityParsePoint();
  SV_ResetSkeletonCache();

  assert(sv_maxclients->integer >= 1 && sv_maxclients->integer <= MAX_CLIENTS);

  for ( i = 0; i < sv_maxclients->integer; ++i )
  {
    svs.clients[i].gentity = 0;
  }

/*  Sys_LoadingKeepAlive();*/

  time = Sys_MillisecondsRaw();
  G_InitGame(svs.time, time, restart, registerDvars, sv_fps->integer);
/*
  float sprinttime;

  sprinttime = Cvar_GetFloat("scr_player_sprinttime");
  Cvar_SetFloatByName("player_sprintTime", sprinttime);
  SV_SetConfigstring(3, va("%i", sv_serverId_value));

  Sys_LoadingKeepAlive();

  Com_CvarDump(6, 0);

  if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
  {
    D3DPERF_EndEvent();
  }
*/
}


void __cdecl SV_ShutdownGameVM(int clearScripts)
{

  assert(Sys_IsMainThread());
  PIXBeginNamedEvent(-1, "SV_ShutdownGameVM");
  G_ShutdownGame(clearScripts);
/*  if ( GetCurrentThreadId() == (_DWORD)g_DXDeviceThread && 0 == dword_A8402BC )
  {
    D3DPERF_EndEvent();
  }*/
}

static qboolean gameInitialized;


void __cdecl SV_InitGameProgs(int savepersist)
{
  gameInitialized = 1;
  SV_InitGameVM(0, savepersist == 0);
}


void __cdecl SV_ShutdownGameProgs()
{
  Com_SyncThreads();
  sv.state = SS_DEAD;
  Com_UnloadSoundAliases(SASYS_GAME);
  if ( gameInitialized )
  {
    SV_ShutdownGameVM(1);
    gameInitialized = 0;
  }
}

void __cdecl SV_RestartGameProgs(int savepersist)
{
  Com_SyncThreads();
  SV_ShutdownGameVM(0);
  com_fixedConsolePosition = 0;
  SV_InitGameVM(1, savepersist == 0);
}

qboolean __cdecl SV_GameCommand()
{

  if ( sv.state == SS_GAME )
  {
    return ConsoleCommand();
  }
  return 0;
}


int SV_GameGetMaxClients()
{
	return sv_maxclients->integer;
}

void SV_GameSetUndercoverState(unsigned int clientNum, bool state)
{
  if(clientNum > sv_maxclients->integer)
  {
    return;
  }
  svs.clients[clientNum].undercover = state;
}

const char* SV_GetPlayerName(unsigned int clientNum)
{
  if(clientNum > sv_maxclients->integer)
  {
    return NULL;
  }
  return svs.clients[clientNum].name;
}

const char* SV_GetPlayerClan(unsigned int clientNum)
{
  if(clientNum > sv_maxclients->integer)
  {
    return NULL;
  }
  return svs.clients[clientNum].clantag;
}


svEntity_t  *SV_SvEntityForNum( int num ) {
	if ( num < 0 || num >= MAX_GENTITIES ) {
		Com_Error( ERR_DROP, "SV_SvEntityForNum: bad number" );
	}
	return &sv.svEntities[ num ];
}

int SV_NumForSvEntity( svEntity_t *svEnt ) {
	int num;

	num = svEnt - sv.svEntities;
	return num;
}
