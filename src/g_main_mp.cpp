#include "g_main_mp.hpp"
#include "g_shared.hpp"
#include "qcommon_io.hpp"
#include "qcommon.hpp"
#include "qcommon_logprint.hpp"
#include "qvsnprintf.hpp"
#include "server_public.hpp"
#include "cscr_stringlist.hpp"


level_locals_t level;

cvar_t* g_compassShowEnemies;
cvar_t* bullet_penetrationEnabled;
cvar_t* g_debugLocDamage;
cvar_t* g_dropForwardSpeed;
cvar_t* g_dropHorzSpeedRand;
cvar_t* g_dropUpSpeedBase;
cvar_t* g_dropUpSpeedRand;
cvar_t* g_maxDroppedWeapons;
cvar_t* pickupPrints;
cvar_t* g_minGrenadeDamageSpeed;
cvar_t* g_banIPs;
cvar_t* g_dedicated;
cvar_t* g_antilag;
cvar_t* melee_debug;
cvar_t* g_useholdspawndelay;
cvar_t* g_useholdtime;
cvar_t* player_MGUseRadius;
cvar_t* player_throwbackInnerRadius;
cvar_t* player_throwbackOuterRadius;
cvar_t* g_NoScriptSpam;
cvar_t* g_fogColorReadOnly;
cvar_t* g_fogHalfDistReadOnly;
cvar_t* g_fogStartDistReadOnly;
cvar_t* g_maxclients;
cvar_t* g_debugDamage;
cvar_t* radius_damage_debug;
cvar_t* g_allowVote;
cvar_t* g_cheats;
cvar_t* g_deadChat;
cvar_t* g_oldVoting;
cvar_t* g_gravity;
cvar_t* g_motd;
cvar_t* g_clonePlayerMaxVelocity;
cvar_t* g_knockback;
cvar_t* g_voiceChatTalkingDuration;
cvar_t* g_inactivity;
cvar_t* g_mantleBlockTimeBuffer;
cvar_t* g_playerCollisionEjectSpeed;
cvar_t* g_speed;
cvar_t* g_synchronousClients;
cvar_t* g_ScoresColor_Allies;
cvar_t* g_ScoresColor_Axis;
cvar_t* g_ScoresColor_EnemyTeam;
cvar_t* g_ScoresColor_Free;
cvar_t* g_ScoresColor_MyTeam;
cvar_t* g_ScoresColor_Spectator;
cvar_t* g_TeamColor_Allies;
cvar_t* g_TeamColor_Axis;
cvar_t* g_TeamColor_EnemyTeam;
cvar_t* g_TeamColor_Free;
cvar_t* g_TeamColor_MyTeam;
cvar_t* g_TeamColor_Spectator;
cvar_t* g_TeamIcon_Allies;
cvar_t* g_TeamIcon_Axis;
cvar_t* g_TeamIcon_Free;
cvar_t* g_TeamIcon_Spectator;
cvar_t* g_TeamName_Allies;
cvar_t* g_TeamName_Axis;
cvar_t* g_dumpAnims;
cvar_t* g_entinfo;
cvar_t* g_friendlyNameDist;
cvar_t* g_friendlyfireDist;
cvar_t* g_listEntity;
cvar_t* g_log;
cvar_t* g_logSync;
cvar_t* g_password;
cvar_t* g_redCrosshairs;
cvar_t* g_voteAbstainWeight;
cvar_t* voice_deadChat;
cvar_t* voice_global;
cvar_t* voice_localEcho;
cvar_t* g_gametype;
byte g_clients[0xc6100];
gentity_t g_entities[1024];
bgs_s level_bgs;


const char* g_dedicatedEnumNames[] = { "listen server", "dedicated LAN server", "dedicated internet server" };


extern "C"
{

#define MAX_REDIRECTDESTINATIONS 4

static void (*rd_destinations[MAX_REDIRECTDESTINATIONS])( const char *buffer, int len );

void G_PrintRedirect(char* msg, int len)
{

    int i;

    for(i = 0; i < MAX_REDIRECTDESTINATIONS; i++)
    {
        if(rd_destinations[i] == NULL)
            return;

        rd_destinations[i](msg, len);

    }

}
/*
    To Add:
    HL2Rcon_SourceRconSendGameLog(string, stringlen);
*/

/*
=================
G_LogPrintf

Print to the logfile with a time stamp if it is open
=================
*/
void QDECL __cdecl G_LogPrintf( const char *fmt, ... )
{

	va_list argptr;

	char string[1024];
	int stringlen;
	int min, tens, sec;
	int timelen;


        if ( g_logTimeStampInSeconds->boolean )
        {
          time_t time1970 = Com_GetRealtime( );
          Com_sprintf(string, sizeof( string ), "%d ", time1970);
        }
        else
	{
	  sec = level.time / 1000;
	  min = sec / 60;
	  sec -= min * 60;
	  tens = sec / 10;
	  sec -= tens * 10;
	  Com_sprintf( string, sizeof( string ), "%3i:%i%i ", min, tens, sec );
	}

	timelen = strlen(string);

	va_start( argptr, fmt );
	Q_vsnprintf( string + timelen, sizeof( string ) - timelen, fmt, argptr );
	va_end( argptr );

	stringlen = strlen( string );

	G_PrintRedirect(string, stringlen);

	if ( !level.logFile ) {
		return;
	}

#ifdef _WIN32
	char outstring[2048];
	stringlen = Q_strLF2CRLF(string, outstring, sizeof(outstring) );
	Com_WriteGameLogfile( outstring, stringlen );
#else
	Com_WriteGameLogfile( string, stringlen );
#endif
}


void G_OpenLogFile()
{
  char serverinfo[1024];
  if ( *g_log->string )
  {
    level.logFile = Com_OpenGameLogfile(g_log->string, 'a', (qboolean)g_logSync->boolean);

    if ( level.logFile )
    {
      SV_GetServerinfo(serverinfo, 1024);
      G_LogPrintf("------------------------------------------------------------\n");
      G_LogPrintf("InitGame: %s\\g_logTimeStampInSeconds\\%d\n", serverinfo, g_logTimeStampInSeconds->boolean != 0);
    }
    else
    {
      Com_PrintWarning(CON_CHANNEL_SERVER, "WARNING: Couldn't open logfile: %s\n", g_log->string);
    }
  }
  else
  {
    Com_Printf(CON_CHANNEL_SERVER, "Not logging to disk.\n");
  }

}

void G_CloseLogFile()
{
	Com_CloseGameLogfile();
	level.logFile = 0;
}


float missile_frametime;
extern int helicopter_thinktime;
extern float vehicle_frametime;

void G_InitSomeVariables(int framerate)
{
    level.framerate = framerate;
    missile_frametime = 1.0f / (float)level.framerate;
    helicopter_thinktime = 1000 / level.framerate;
    vehicle_frametime = 1.0f / (float)level.framerate;
}


void __cdecl G_RunThink(struct gentity_s *ent)
{
  void (__cdecl *think)(struct gentity_s *);
  int thinktime;

  thinktime = ent->nextthink;
  if ( thinktime > 0 && thinktime <= level.time )
  {
    ent->nextthink = 0;
    think = entityHandlers[(uint8_t)ent->handler].think;
    if ( !think )
    {
      Com_Error(ERR_DROP, "NULL ent->think");
    }
    think(ent);
  }
}

void G_RunFrameForEntity(struct gentity_s *ent)
{
  assert(ent->r.inuse);

  if ( ent->processedFrame == level.framenum )
  {
    return;
  }
  ent->processedFrame = level.framenum;
  if ( ent->tagInfo )
  {
    assert(ent->tagInfo->parent != NULL);
    assert(ent->tagInfo->parent != ent);
    G_RunFrameForEntity(ent->tagInfo->parent);
  }
  assert(ent->r.inuse);

  assertx(ent->r.maxs[0] >= ent->r.mins[0], "entnum: %d, origin: %g %g %g, classname: %s", ent->s.number, ent->r.currentOrigin[0], ent->r.currentOrigin[1], ent->r.currentOrigin[2], SL_ConvertToString(ent->classname));
  assertx(ent->r.maxs[1] >= ent->r.mins[1], "entnum: %d, origin: %g %g %g, classname: %s", ent->s.number, ent->r.currentOrigin[0], ent->r.currentOrigin[1], ent->r.currentOrigin[2], SL_ConvertToString(ent->classname));
  assertx(ent->r.maxs[2] >= ent->r.mins[2], "entnum: %d, origin: %g %g %g, classname: %s", ent->s.number, ent->r.currentOrigin[0], ent->r.currentOrigin[1], ent->r.currentOrigin[2], SL_ConvertToString(ent->classname));

  if ( ent->s.lerp.eFlags & 0x10000 )
  {
    if ( level.time > ent->s.time2 )
    {
      G_FreeEntity(ent);
      return;
    }
  }
  if ( level.time - ent->eventTime > 300 )
  {
    if ( ent->freeAfterEvent )
    {
      G_FreeEntity(ent);
      return;
    }
    if ( ent->unlinkAfterEvent )
    {
      ent->unlinkAfterEvent = 0;
      SV_UnlinkEntity(ent);
    }
  }
  if ( ent->freeAfterEvent )
  {
    return;
  }
  switch ( ent->s.eType )
  {
    case ET_MISSILE:
      G_RunMissile(ent);
      return;
    case ET_ITEM:
      if ( ent->tagInfo )
      {
        G_GeneralLink(ent);
        G_RunThink(ent);
        return;
      }
      G_RunItem(ent);
      return;
    case ET_PLAYER_CORPSE:
      G_RunCorpse(ent);
      return;
    default:
      break;
  }
  if ( ent->physicsObject )
  {
    G_RunItem(ent);
    return;
  }
  if ( ent->s.eType == ET_SCRIPTMOVER || ent->s.eType == ET_PLANE || ent->s.eType == ET_PRIMARY_LIGHT )
  {
    G_RunMover(ent);
    return;
  }
  if ( ent->client )
  {
    G_RunClient(ent);
    return;
  }
  if ( ent->s.eType == ET_GENERAL && ent->tagInfo )
  {
    G_GeneralLink(ent);
  }
  G_RunThink(ent);
}


void __cdecl G_FreeEntity(gentity_s *gEnt)
{
  struct XAnimTree_s *tree;

  G_EntUnlink(gEnt);
  while ( gEnt->tagChildren )
  {
    G_EntUnlink(gEnt->tagChildren);
  }

  SV_UnlinkEntity(gEnt);
  tree = SV_DObjGetTree(gEnt);
  if ( tree )
  {
    XAnimClearTree(tree);
  }
  Com_SafeServerDObjFree(gEnt->s.number);
  G_FreeEntityRefs(gEnt);
  if ( gEnt->pTurretInfo )
  {
    assert(gEnt->pTurretInfo->inuse);
    G_FreeTurret(gEnt);
    assert(gEnt->pTurretInfo == NULL);
  }
  if ( gEnt->scr_vehicle )
  {
    G_VehFreeEntity(gEnt);
    assert(gEnt->scr_vehicle == NULL);
  }
  if ( gEnt->s.eType == 2 )
  {
    PlayerCorpse_Free(gEnt);
  }

  EntHandleDissociate(gEnt);
  gEnt->r.ownerNum.setEnt( NULL);
  gEnt->parent.setEnt(NULL);
  gEnt->missileTargetEnt.setEnt(NULL);

  Scr_FreeEntity(gEnt);

  int useCount = gEnt->useCount;
  memset(gEnt, 0, sizeof(*gEnt));
  gEnt->eventTime = level.time;

  if ( gEnt - level.gentities >= 72 )
  {
    if ( level.lastFreeEnt )
    {
      level.lastFreeEnt->nextFree = gEnt;
    }
    else
    {
      level.firstFreeEnt = gEnt;
    }
    level.lastFreeEnt = gEnt;
    gEnt->nextFree = 0;
  }
  gEnt->useCount = useCount + 1;
}


};


const entityHandler_t entityHandlers[] =
{
  { NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0 },
  { NULL, NULL, NULL, &Touch_Multi, NULL, NULL, NULL, NULL, 0, 0 },
  { NULL, NULL, NULL, NULL, &hurt_use, NULL, NULL, NULL, 0, 0 },
  { NULL, NULL, NULL, &hurt_touch, &hurt_use, NULL, NULL, NULL, 0, 0 },
  { NULL, NULL, NULL, NULL, &Use_trigger_damage, &Pain_trigger_damage, &Die_trigger_damage, NULL, 0, 0},
  { NULL, &Reached_ScriptMover, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0 },
  { NULL, &Reached_ScriptMover, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0 },
  { &G_ExplodeMissile, NULL, NULL, &Touch_Item_Auto, NULL, NULL, NULL, NULL, 3, 4},
  { &G_TimedObjectThink, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0 },
  { &G_ExplodeMissile, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 6 },
  { NULL, NULL, NULL, NULL, NULL, NULL, &player_die, &G_PlayerController, 0, 0 },
  { NULL, NULL, NULL, NULL, NULL, NULL, &player_die, NULL, 0, 0 },
  { NULL, NULL, NULL, NULL, NULL, NULL, NULL, &G_PlayerController, 0, 0 },
  { &BodyEnd, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0 },
  { &turret_think_init, NULL, NULL, NULL, &turret_use, NULL, NULL, &turret_controller, 0, 0},
  { &turret_think, NULL, NULL, NULL, &turret_use, NULL, NULL, &turret_controller, 0, 0},
  { &DroppedItemClearOwner, NULL, NULL, &Touch_Item_Auto, NULL, NULL, NULL, NULL, 0, 0},
  { &FinishSpawningItem, NULL, NULL, &Touch_Item_Auto, NULL, NULL, NULL, NULL, 0, 0},
  { NULL, NULL, NULL, &Touch_Item_Auto, NULL, NULL, NULL, NULL, 0, 0 },
  { NULL, NULL, NULL, NULL, &use_trigger_use, NULL, NULL, NULL, 0, 0 },
  { NULL, &Reached_ScriptMover, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0 },
  { &G_FreeEntity, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0 },
  { &G_VehEntHandler_Think, NULL, NULL, &G_VehEntHandler_Touch, &G_VehEntHandler_Use, &G_VehEntHandler_Pain, &G_VehEntHandler_Die, &G_VehEntHandler_Controller, 0, 0},
  { &Helicopter_Think, NULL, NULL, NULL, NULL, &Helicopter_Pain, &Helicopter_Die, &Helicopter_Controller, 0, 0}
};


void G_PrintAddRedirect(void (*rd_dest)( const char *, int))
{
    for(int i = 0; i < MAX_REDIRECTDESTINATIONS; i++)
    {
        if(rd_destinations[i] == rd_dest)
            return Com_Error(ERR_FATAL, "G_PrintAddRedirect: Attempt to add an already defined redirect function twice.");

        if(rd_destinations[i] == NULL)
        {
            rd_destinations[i] = rd_dest;
            return;
        }
    }

    Com_Error(ERR_FATAL, "G_PrintAddRedirect: Out of redirect handles. Increase MAX_REDIRECTDESTINATIONS to add more redirect destinations");
}
