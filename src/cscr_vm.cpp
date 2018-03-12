#include "scr_vm.h"
//#include "cscr_variable.h"

VariableValue GetEntityFieldValue(unsigned int classnum, int entnum, int offset)
{
  VariableValue result;

  assert ( !gScrVmPub.inparamcount );
  assert(!gScrVmPub.outparamcount);

  gScrVmPub.top = gScrVmGlob.eval_stack - 1;
  gScrVmGlob.eval_stack[0].type = 0;
  Scr_GetObjectField(classnum, entnum, offset);

  assert(!gScrVmPub.inparamcount || gScrVmPub.inparamcount == 1);
  assert(!gScrVmPub.outparamcount);
  assert(gScrVmPub.top - gScrVmPub.inparamcount == gScrVmGlob.eval_stack - 1);

  gScrVmPub.inparamcount = 0;

  result.u.intValue = gScrVmGlob.eval_stack[0].u.intValue;
  result.type = gScrVmGlob.eval_stack[0].type;

  return result;
}

extern "C"{
    //Fix for weird GNU-GCC ABI
#if defined( __GNUC__ ) && !defined( __MINGW32__ )
//For GCC
void __cdecl GetEntityFieldValueEx(unsigned int classnum, int entnum, int offset)
{
    VariableValue r;
    r = GetEntityFieldValue(classnum, entnum, offset);
    asm volatile (
        "mov 0x4(%%eax), %%edx\n"
        "mov 0x0(%%eax), %%eax\n"
        ::"eax" (&r)
    );
}

#else
//For MSVC & MinGW
VariableValue __cdecl GetEntityFieldValueEx(unsigned int classnum, int entnum, int offset)
{
  VariableValue result;

  result = GetEntityFieldValue(classnum, entnum, offset);

  return result;
}
#endif

#if 0

void __cdecl Scr_ClearErrorMessage( )
{
  gScrVarPub.error_message = 0;
  gScrVmGlob.dialog_error_message = 0;
  gScrVarPub.error_index = 0;
}

void __cdecl Scr_VM_Init( )
{
  gScrVarPub.varUsagePos = "<script init variable>";
  gScrVmPub.maxstack = &gScrVmPub.stack[2047];
  gScrVmPub.top = gScrVmPub.stack;
  gScrVmPub.function_count = 0;
  gScrVmPub.function_frame = gScrVmPub.function_frame_start;
  gScrVmPub.localVars = gScrVmGlob.localVarsStack -1;
  gScrVarPub.evaluate = 0;
  gScrVmPub.debugCode = 0;
  Scr_ClearErrorMessage( );
  gScrVmPub.terminal_error = 0;
  gScrVmPub.outparamcount = 0;
  gScrVmPub.inparamcount = 0;
  gScrVarPub.tempVariable = AllocValue( );
  gScrVarPub.timeArrayId = 0;
  gScrVarPub.pauseArrayId = 0;
  gScrVarPub.levelId = 0;
  gScrVarPub.gameId = 0;
  gScrVarPub.animId = 0;
  gScrVarPub.freeEntList = 0;
  gScrVmPub.stack[0].type = VAR_CODEPOS;
  gScrVmGlob.loading = 0;
  /*
  gScrVmGlob.recordPlace = 0;
  gScrVmGlob.lastFileName = 0;
  gScrVmGlob.lastLine = 0;
  gScrVarPub.ext_threadcount = 0;
  */
  gScrVarPub.numScriptThreads = 0;
  gScrVarPub.varUsagePos = 0;
/*
  logScriptTimes = _Dvar_RegisterBool("logScriptTimes", 0, 0, "Log times for every print called from script");
  scrVmEnableScripts = _Dvar_RegisterBool("scrVmEnableScripts", 1, 0, "Enables script execution");
  scrShowVarUseage = _Dvar_RegisterBool("scrShowVarUseage", 0, 0, "Displays var useage at compile time.");
  scrShowStrUsage = _Dvar_RegisterBool("scrShowStrUsage", 0, 0, "Displays script string usage at compile time.");

*/
/*
  sv_clientside = _Dvar_RegisterBool("sv_clientside", 0, 0, "Used to toggle systems in script on and off on the server.");
*/
//  Cmd_AddCommandInternal("scrProfileInfo", BG_EvalVehicleName, &VM_DumpScriptProfileInfo_VAR);
}

void __cdecl Scr_Init( )
{
  assert(!gScrVarPub.bInited);

  Scr_InitClassMap();
  Scr_VM_Init();

  gScrCompilePub.script_loading = 0;
  gScrAnimPub.animtree_loading = 0;
  gScrCompilePub.scriptsPos = 0;
  /*
  gScrCompilePub.scriptsCount = 0;
  */
  gScrCompilePub.loadedscripts = 0;
  gScrAnimPub.animtrees = 0;
  gScrCompilePub.builtinMeth = 0;
  gScrCompilePub.builtinFunc = 0;
  gScrVarPub.bInited = 1;
}

#endif


};
