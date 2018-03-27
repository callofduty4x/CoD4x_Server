#include "scr_vm.h"
#include "cscr_variable.h"


const char *var_typename[] =
{
        "undefined",
        "object",
        "string",
        "localized string",
        "vector",
        "float",
        "int",
        "codepos",
        "precodepos",
        "function",
        "stack",
        "animation",
        "developer codepos",
        "include codepos",
        "thread",
        "thread",
        "thread",
        "thread",
        "struct",
        "removed entity",
        "entity",
        "array",
        "removed thread"
};


struct __attribute__((aligned (64))) scrVarGlob_t
{
  VariableValueInternal* variableList;
};

struct scrVarDebugPub_t *gScrVarDebugPub = NULL;
struct scrVarDebugPub_t gScrVarDebugPubBuff;

struct scrVarGlob_t gScrVarGlob;
scrVarPub_t gScrVarPub;


struct scr_classStruct_t
{
  uint16_t id;
  uint16_t entArrayId;
  char charId;
  const char *name;
};

struct scr_classStruct_t gScrClassMap[] =
{
  { 0u, 0u, 'e', "entity" },
  { 0u, 0u, 'h', "hudelem" },
  { 0u, 0u, 'p', "pathnode" },
  { 0u, 0u, 'v', "vehiclenode" },
  { 0u, 0u, 'd', "dynentity" }
};
