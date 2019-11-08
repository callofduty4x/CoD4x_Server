#include "scr_vm.h"
#include "cscr_variable.h"
#include "cscr_animtree.h"
#include "cscr_stringlist.h"
#include "sys_main.h"
#include "cmd.h"
#include "g_shared.h"
#include <setjmp.h>

int g_script_error_level;
jmp_buf g_script_error[33];
char error_message[1024];
cvar_t* logScriptTimes;
cvar_t* scrVmEnableScripts;
int gScrExecuteTime;

extern "C" VariableValue GetEntityFieldValue(unsigned int classnum, int entnum, int offset)
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
//For Linux
__asm__(/* GetEntityFieldValueEx ABI Wrapper */
"GetEntityFieldValueEx:\n"
".globl GetEntityFieldValueEx\n"
"push %ebp\n"
"mov %esp, %ebp\n"
"sub $0x18, %esp\n" //reserve Stack space

"push 0x10(%ebp)\n" //offset
"push 0xc(%ebp)\n" //entnum
"push 0x8(%ebp)\n" //classnum
"lea -0x14(%ebp), %eax\n"
"push %eax\n" //hidden pointer for struct

"call GetEntityFieldValue\n"

"add $0xc, %esp\n" //1st argument stdcall (No add) 2nd, 3rd, 4th argument cdecl (add 12), makes sense, right?

"mov -0x14(%ebp), %eax\n"
"mov -0x10(%ebp), %edx\n"

"add $0x18, %esp\n"
"pop %ebp\n"
"ret\n");

#else
//For MSVC & MinGW
VariableValue __cdecl GetEntityFieldValueEx(unsigned int classnum, int entnum, int offset)
{
  VariableValue result;

  result = GetEntityFieldValue(classnum, entnum, offset);

  return result;
}
#endif


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

  logScriptTimes = Cvar_RegisterBool("logScriptTimes", qfalse, 0, "Log times for every print called from script");
  scrVmEnableScripts = Cvar_RegisterBool("scrVmEnableScripts", qtrue, 0, "Enables script execution");
/*
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


void Scr_ErrorJumpOut()
{
    assert ( (unsigned int)g_script_error_level < ARRAY_COUNT( g_script_error ));
    longjmp(g_script_error[g_script_error_level], -1);
}
/*
int Scr_ErrorJumpOutTarget()
{
    return setjmp(g_script_error[g_script_error_level]);
}*/

jmp_buf* VM_GetJmpBuf()
{
    return &g_script_error[g_script_error_level];
}


void __cdecl Scr_ErrorInternal( )
{   
  assert(gScrVarPub.error_message != NULL);

  if ( !gScrVarPub.evaluate && !gScrCompilePub.script_loading )
  {
    if ( gScrVmPub.function_count || gScrVmPub.debugCode )
    {
        Com_Printf(CON_CHANNEL_LOGFILEONLY, "throwing script exception: %s\n", gScrVarPub.error_message);
        Scr_ErrorJumpOut();
    }
    Sys_Error("%s", gScrVarPub.error_message);
  }
  if ( gScrVmPub.terminal_error )
  {
    Sys_Error("%s", gScrVarPub.error_message);
  }
}

void __cdecl Scr_SetErrorMessage(const char *error)
{
  if ( !gScrVarPub.error_message )
  {
    Q_strncpyz(error_message, error, sizeof(error_message));
    gScrVarPub.error_message = error_message;
  }
}

void __cdecl Scr_Error(const char *error)
{
  Scr_SetErrorMessage(error);
  gScrVmPub.terminal_error = false;
  Scr_ErrorInternal( );
}


void __cdecl Scr_Errorf(const char *fmt, ...)
{
  char buf[MAX_STRING_CHARS];

  va_list argptr;
  va_start(argptr,fmt);
  Q_vsnprintf(buf, sizeof(buf), fmt, argptr);
  va_end (argptr);

  Scr_Error(buf);
}

void __cdecl Scr_TerminalError(const char *error)
{

  Scr_DumpScriptThreads( );
  Scr_DumpScriptVariablesDefault( );
  gScrVmPub.terminal_error = true;
  Scr_SetErrorMessage(error);

  Scr_ErrorInternal( );
}


void __cdecl Scr_ClearOutParams()
{
  while ( gScrVmPub.outparamcount )
  {
    RemoveRefToValue(gScrVmPub.top->type, gScrVmPub.top->u);
    --gScrVmPub.top;
    --gScrVmPub.outparamcount;
  }
}

void __cdecl IncInParam()
{

  assert(((gScrVmPub.top >= gScrVmGlob.eval_stack - 1) && (gScrVmPub.top <= gScrVmGlob.eval_stack)) || ((gScrVmPub.top >= gScrVmPub.stack) && (gScrVmPub.top <= gScrVmPub.maxstack)));

  Scr_ClearOutParams( );

  if ( gScrVmPub.top == gScrVmPub.maxstack )
  {
    Sys_Error("Internal script stack overflow");
  }
  ++gScrVmPub.top;
  ++gScrVmPub.inparamcount;
  assert(((gScrVmPub.top >= gScrVmGlob.eval_stack) && (gScrVmPub.top <= gScrVmGlob.eval_stack + 1)) || ((gScrVmPub.top >= gScrVmPub.stack) && (gScrVmPub.top <= gScrVmPub.maxstack)));

}


void __cdecl Scr_AddString(const char *value)
{
  assert(value != NULL);

  IncInParam( );
  gScrVmPub.top->type = VAR_STRING;
  gScrVmPub.top->u.stringValue = SL_GetString(value, 0);
}

void __cdecl Scr_AddInt(int value)
{
  IncInParam( );
  gScrVmPub.top->type = VAR_INTEGER;
  gScrVmPub.top->u.intValue = value;
}

void __cdecl Scr_AddBool(bool value)
{
  IncInParam( );
  gScrVmPub.top->type = VAR_INTEGER;
  gScrVmPub.top->u.intValue = value;
}

void __cdecl Scr_AddFloat(float value)
{
  IncInParam();
  gScrVmPub.top->type = VAR_FLOAT;
  gScrVmPub.top->u.floatValue = value;
}

void __cdecl Scr_AddAnim(struct scr_anim_s value)
{
  IncInParam();
  gScrVmPub.top->type = VAR_ANIMATION;
  gScrVmPub.top->u.codePosValue = value.linkPointer;
}

void __cdecl Scr_AddUndefined( )
{
  IncInParam();
  gScrVmPub.top->type = VAR_UNDEFINED;
}

void __cdecl Scr_AddObject(unsigned int id)
{
  assert(id != 0);
  assert(Scr_GetObjectType( id ) != VAR_THREAD);
  assert(Scr_GetObjectType( id ) != VAR_NOTIFY_THREAD);
  assert(Scr_GetObjectType( id ) != VAR_TIME_THREAD);
  assert(Scr_GetObjectType( id ) != VAR_CHILD_THREAD);
  assert(Scr_GetObjectType( id ) != VAR_DEAD_THREAD);

  IncInParam();
  gScrVmPub.top->type = VAR_POINTER;
  gScrVmPub.top->u.intValue = id;
  AddRefToObject(id);
}

void __cdecl Scr_AddEntityNum(int entnum, unsigned int classnum)
{
  unsigned int entId;
  const char *varUsagePos;

  varUsagePos = gScrVarPub.varUsagePos;
  if ( !gScrVarPub.varUsagePos )
  {
    gScrVarPub.varUsagePos = "<script entity variable>";
  }
  entId = Scr_GetEntityId(entnum, classnum);
  Scr_AddObject(entId);
  gScrVarPub.varUsagePos = varUsagePos;
}

void __cdecl Scr_AddStruct( )
{
  unsigned int id;

  id = AllocObject();
  Scr_AddObject(id );
  RemoveRefToObject(id);
}

void __cdecl Scr_AddIString(const char *value)
{
  assert(value != NULL);

  IncInParam( );
  gScrVmPub.top->type = VAR_ISTRING;
  gScrVmPub.top->u.stringValue = SL_GetString(value, 0);
}

void __cdecl Scr_AddConstString(unsigned int value)
{
  assert(value != 0);

  IncInParam( );
  gScrVmPub.top->type = VAR_STRING;
  gScrVmPub.top->u.stringValue = value;
  SL_AddRefToString(value);
}

void __cdecl Scr_AddVector(const float *value)
{
  IncInParam();
  gScrVmPub.top->type = VAR_VECTOR;
  gScrVmPub.top->u.vectorValue = Scr_AllocVector(value);
}

void __cdecl Scr_MakeArray( )
{
  IncInParam( );
  gScrVmPub.top->type = VAR_POINTER;
  gScrVmPub.top->u.intValue = Scr_AllocArray( );
}

void __cdecl Scr_AddArray( )
{
  unsigned int arraySize;
  unsigned int id;
  const char *varUsagePos;

  varUsagePos = gScrVarPub.varUsagePos;
  if ( !gScrVarPub.varUsagePos )
  {
    gScrVarPub.varUsagePos = "<script array variable>";
  }

  assert(gScrVmPub.inparamcount);

  --gScrVmPub.top;
  --gScrVmPub.inparamcount;

  assert(gScrVmPub.top->type == VAR_POINTER);

  arraySize = GetArraySize( gScrVmPub.top->u.stringValue);
  id = GetNewArrayVariable( gScrVmPub.top->u.stringValue, arraySize);
  SetNewVariableValue( id, gScrVmPub.top + 1);
  gScrVarPub.varUsagePos = varUsagePos;
}

void __cdecl Scr_AddArrayStringIndexed(unsigned int stringValue)
{
  unsigned int id;

  assert(gScrVmPub.inparamcount != 0);

  --gScrVmPub.top;
  --gScrVmPub.inparamcount;
  assert(gScrVmPub.top->type == VAR_POINTER);

  id = GetNewVariable( gScrVmPub.top->u.stringValue, stringValue);
  SetNewVariableValue( id, gScrVmPub.top + 1);
}


unsigned int __cdecl Scr_GetConstStringIncludeNull(unsigned int index)
{
  if ( index >= gScrVmPub.outparamcount || gScrVmPub.top[-index].type )
  {
    return Scr_GetConstString(index);
  }
  return 0;
}

//Use with Scr_Exce(Ent)Thread
int Scr_GetFunc(unsigned int paramnum)
{
    VariableValue *var;

    if (paramnum >= gScrVmPub.outparamcount)
    {
        Scr_Error(va("parameter %d does not exist", paramnum + 1));
        return -1;
    }

    var = &gScrVmPub.top[-paramnum];
    if (var->type == VAR_FUNCTION)
    {
        int vmRomAddress = var->u.codePosValue - gScrVarPub.programBuffer;
        return vmRomAddress;
    }
    gScrVarPub.error_index = paramnum + 1;
    Scr_Error(va("type %s is not an function", var_typename[var->type]));
    return -1;
}


int Scr_GetInt(unsigned int paramnum)
{
    VariableValue *var;

    if (paramnum >= gScrVmPub.outparamcount)
    {
        Scr_Error(va("parameter %d does not exist", paramnum + 1));
        return 0;
    }

    var = &gScrVmPub.top[-paramnum];
    if (var->type == 6)
    {
        return var->u.intValue;
    }
    gScrVarPub.error_index = paramnum + 1;
    Scr_Error(va("type %s is not an int", var_typename[var->type]));
    return 0;
}

unsigned int Scr_GetObject(unsigned int paramnum)
{
    VariableValue *var;

    if (paramnum >= gScrVmPub.outparamcount)
    {
        Scr_Error(va("parameter %d does not exist", paramnum + 1));
        return 0;
    }

    var = &gScrVmPub.top[-paramnum];
    if (var->type == 1)
    {
        return var->u.pointerValue;
    }
    gScrVarPub.error_index = paramnum + 1;
    Scr_Error(va("type %s is not an object", var_typename[var->type]));
    return 0;
}

bool Scr_ScriptRuntimecheckInfiniteLoop()
{
    int now = Sys_Milliseconds();

    if (now - gScrVmGlob.starttime > 6000)
    {
        Cbuf_AddText("wait 50;map_rotate\n");
        return true;
    }
    return false;
}



void Scr_NotifyInternal(int varNum, int constString, int numArgs)
{
    VariableValue *curArg;
    int z;
    int ctype;

    Scr_ClearOutParams();
    curArg = gScrVmPub.top - numArgs;
    z = gScrVmPub.inparamcount - numArgs;
    if (varNum)
    {
        ctype = curArg->type;
        curArg->type = 8;
        gScrVmPub.inparamcount = 0;
        VM_Notify(varNum, constString, gScrVmPub.top);
        curArg->type = ctype;
    }
    while (gScrVmPub.top != curArg)
    {
        RemoveRefToValue(gScrVmPub.top->type, gScrVmPub.top->u);
        --gScrVmPub.top;
    }
    gScrVmPub.inparamcount = z;
}

void Scr_NotifyLevel(int constString, unsigned int numArgs)
{
    Scr_NotifyInternal(gScrVarPub.levelId, constString, numArgs);
}

void Scr_NotifyNum(int entityNum, unsigned int entType, unsigned int constString, unsigned int numArgs)
{
    int entVarNum;

    entVarNum = FindEntityId(entityNum, entType);

    Scr_NotifyInternal(entVarNum, constString, numArgs);
}

void Scr_Notify(gentity_t *ent, unsigned short constString, unsigned int numArgs)
{
    Scr_NotifyNum(ent->s.number, 0, constString, numArgs);
}

void Scr_InitSystem()
{
    gScrVarPub.timeArrayId = AllocObject();
    gScrVarPub.pauseArrayId = Scr_AllocArray();
    gScrVarPub.levelId = AllocObject();
    gScrVarPub.animId = AllocObject();
    gScrVarPub.time = 0;
    g_script_error_level = -1;
}


void Scr_UpdateDebugger()
{
    
}



int VM_CalcWaitTime(VariableValue *waitval)
{
    int waitTime;
    if ( waitval->type == VAR_FLOAT )
    {
        if ( waitval->u.floatValue < 0.0 )
        {
            Scr_Error("negative wait is not allowed");
            return 1;
        }
        waitTime = f2rint(level.framerate * waitval->u.floatValue);
        if ( !waitTime && waitval->u.floatValue != 0.0 )
        {
          waitTime = 1;
        }
    }
    else if ( waitval->type == VAR_INTEGER )
    {
        if ( waitval->u.intValue < 0.0 )
        {
            Scr_Error("negative wait is not allowed");
            return 1;
        }
        waitTime = waitval->u.intValue * level.framerate;
    }
    else
    {
        gScrVarPub.error_index = 2;
        Scr_Error(va("type %s is not a float", var_typename[waitval->type]));
        waitTime = 1;
    }
    return waitTime;
}


void __cdecl VM_SetTime( )
{
  unsigned int id;

  assert(!(gScrVarPub.time & ~VAR_NAME_LOW_MASK));

  if ( gScrVarPub.timeArrayId )
  {
    id = FindVariable(gScrVarPub.timeArrayId, gScrVarPub.time);
    if ( id )
    {

      assert(logScriptTimes);
      if ( logScriptTimes->boolean )
      {
        Com_Printf(CON_CHANNEL_PARSERSCRIPT, "SET TIME: %d\n", Sys_Milliseconds());
      }

      VM_Resume(FindObject(id));
      SafeRemoveVariable(gScrVarPub.timeArrayId, gScrVarPub.time);
    }
  }
}

void __cdecl Scr_RunCurrentThreads( )
{
  int pre_time;

  if ( scrVmEnableScripts->boolean )
  {
    pre_time = Sys_MillisecondsRaw();
    assert(!gScrVmPub.function_count);
    assert(!gScrVarPub.error_message);
    assert(!gScrVarPub.error_index);
    assert(!gScrVmPub.outparamcount);
    assert(!gScrVmPub.inparamcount);
    assert(gScrVmPub.top == gScrVmPub.stack);

    VM_SetTime();
    gScrExecuteTime += Sys_MillisecondsRaw() - pre_time;
  }
}


void __cdecl Scr_IncTime( )
{
  Scr_RunCurrentThreads();
  Scr_FreeEntityList();

  assert(!(gScrVarPub.time & ~VAR_NAME_LOW_MASK));

  ++gScrVarPub.time;
  gScrVarPub.time &= VAR_NAME_LOW_MASK;
//  gScrVmPub.showError = gScrVmPub.abort_on_error != 0;

}

void __cdecl Scr_DecTime()
{

  assert(!(gScrVarPub.time & ~VAR_NAME_LOW_MASK));

  --gScrVarPub.time;
  gScrVarPub.time &= VAR_NAME_LOW_MASK;
}

};




