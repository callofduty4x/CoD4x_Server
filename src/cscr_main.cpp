#include "q_shared.h"
#include "scr_vm.h"
#include "cscr_main.h"
#include "cscr_stringlist.h"
#include "cscr_variable.h"
#include "cscr_animtree.h"
#include "qcommon_mem.h"


extern "C"{

void __cdecl Scr_EndLoadAnimTrees( );

qboolean __cdecl Scr_IsInOpcodeMemory(const char *pos)
{
    assert(gScrVarPub.programBuffer);
    assert(pos);

  if(pos - gScrVarPub.programBuffer < (signed)gScrCompilePub.programLen)
  {
      return qtrue;
  }
  return qfalse;
}

int __cdecl Scr_GetFunctionHandle(const char *filename, const char *name)
{
  unsigned int name2;
  VariableValue pos;
  unsigned int str;
  int codepos;
  unsigned int posId;
  unsigned int filePosId;
  unsigned int id;

  assert(gScrCompilePub.scriptsPos);
  assert(strlen( filename ) < MAX_QPATH);

  name2 = Scr_CreateCanonicalFilename(filename);
  filePosId = FindVariable(gScrCompilePub.scriptsPos, name2);
  SL_RemoveRefToString(name2);
  if ( !filePosId )
  {
    return 0;
  }
  id = FindObject(filePosId);

  assert(id != 0);

  str = SL_FindLowercaseString(name);
  if ( !str )
  {
    return 0;
  }
  posId = FindVariable(id, str);
  if ( !posId )
  {
    return 0;
  }
//CoD4...
  if(GetValueType(posId) != VAR_POINTER)
  {
      return 0;
  }
  posId = FindVariable(FindObject(posId), 1);

//End cod4 stuff

  pos = Scr_EvalVariable(posId);
  assert(pos.type == VAR_CODEPOS || pos.type == VAR_DEVELOPER_CODEPOS);

  if ( !Scr_IsInOpcodeMemory(pos.u.codePosValue) )
  {
    return 0;
  }
  codepos = pos.u.codePosValue - gScrVarPub.programBuffer;
  assert ( pos.u.codePosValue > gScrVarPub.programBuffer);
  return codepos;
}


void __cdecl Scr_EndLoadScripts( )
{
/*
  if ( scrShowVarUseage->current.enabled )
  {
    Com_Printf(CON_CHANNEL_SCRIPT, "---\nHigh ref count : %i\nDeepest include level %i\n",
      *(_DWORD *)(*((_DWORD *)NtCurrentTeb()->ThreadLocalStoragePointer + _tls_index) + 8256),
      *(_DWORD *)(*((_DWORD *)NtCurrentTeb()->ThreadLocalStoragePointer + _tls_index) + 8252));
  }
*/
//  Scr_EndLoadEvaluate( );
  SL_ShutdownSystem(2u);
#ifdef BLACKOPS
  if ( com_sv_running->boolean )
  {
    Scr_InitDebugger( );
  }
#endif
  gScrCompilePub.script_loading = 0;

  assert(gScrCompilePub.loadedscripts);
  ClearObject(gScrCompilePub.loadedscripts);

  if ( gScrVarDebugPub )
  {
    --gScrVarDebugPub->extRefCount[gScrCompilePub.loadedscripts];
  }

  RemoveRefToObject(gScrCompilePub.loadedscripts);
  gScrCompilePub.loadedscripts = 0;

  assert(gScrCompilePub.scriptsPos);
  ClearObject(gScrCompilePub.scriptsPos);


  if ( gScrVarDebugPub )
  {
    --gScrVarDebugPub->extRefCount[gScrCompilePub.scriptsPos];
  }

  RemoveRefToObject(gScrCompilePub.scriptsPos);
  gScrCompilePub.scriptsPos = 0;

#ifdef BLACKOPS
  assert(gScrCompilePub.scriptsCount);
  ClearObject(gScrCompilePub.scriptsCount);

  if ( gScrVarDebugPub )
  {
    --gScrVarDebugPub->extRefCount[gScrCompilePub.scriptsCount];
  }

  RemoveRefToObject(gScrCompilePub.scriptsCount);
  gScrCompilePub.scriptsCount = 0;
#endif

  assert(gScrCompilePub.builtinFunc);
  ClearObject(gScrCompilePub.builtinFunc);

  if ( gScrVarDebugPub )
  {
    --gScrVarDebugPub->extRefCount[gScrCompilePub.builtinFunc];
  }

  RemoveRefToObject(gScrCompilePub.builtinFunc);
  gScrCompilePub.builtinFunc = 0;

  assert(gScrCompilePub.builtinMeth);
  ClearObject(gScrCompilePub.builtinMeth);

  if ( gScrVarDebugPub )
  {
    --gScrVarDebugPub->extRefCount[gScrCompilePub.builtinMeth];
  }

  RemoveRefToObject(gScrCompilePub.builtinMeth);
  gScrCompilePub.builtinMeth = 0;
}


void __cdecl Scr_FreeScripts( )
{
//  Hunk_CheckTempMemoryClear();
  if ( gScrCompilePub.script_loading )
  {
    gScrCompilePub.script_loading = 0;
    Scr_EndLoadScripts();
  }
  if ( gScrAnimPub.animtree_loading )
  {
    gScrAnimPub.animtree_loading = 0;
    Scr_EndLoadAnimTrees();
  }
/*
  Scr_ShutdownDebugger();
  Scr_ShutdownDebuggerMain();
  Scr_ShutdownEvaluate();
*/
  SL_ShutdownSystem(1u);
  Scr_ShutdownOpcodeLookup( );
  if ( gScrVarPub.programHunkUser )
  {
    Hunk_UserDestroy(gScrVarPub.programHunkUser);
    gScrVarPub.programHunkUser = 0;
  }
  gScrVarPub.programBuffer = 0;
  gScrCompilePub.programLen = 0;
  gScrVarPub.endScriptBuffer = 0;
  gScrVarPub.checksum = 0;
  gScrAnimPub.xanim_num[0] = 0;
  gScrAnimPub.xanim_num[1] = 0;
}

};

