#include "g_shared.h"
#include "qcommon_io.h"
#include "qcommon.h"
#include "qcommon_logprint.h"

#include "server_public.h"
#include "cscr_stringlist.h"

level_locals_t level;

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


void G_PrintAddRedirect(void (*rd_dest)( const char *, int))
{
    int i;

    for(i = 0; i < MAX_REDIRECTDESTINATIONS; i++)
    {
        if(rd_destinations[i] == rd_dest)
        {
            Com_Error(ERR_FATAL, "G_PrintAddRedirect: Attempt to add an already defined redirect function twice.");
            return;
        }

        if(rd_destinations[i] == NULL)
        {
            rd_destinations[i] = rd_dest;
            return;
        }
    }
    Com_Error(ERR_FATAL, "G_PrintAddRedirect: Out of redirect handles. Increase MAX_REDIRECTDESTINATIONS to add more redirect destinations");
}



/*
=================
G_LogPrintf

Print to the logfile with a time stamp if it is open
=================
*/
__cdecl void QDECL G_LogPrintf( const char *fmt, ... ) {

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


