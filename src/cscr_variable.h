#ifndef __CSCR_VARIABLE_H__
#define __CSCR_VARIABLE_H__


#include "scr_vm.h"

typedef struct
{
  const char *fieldBuffer;
  uint16_t canonicalStrCount;
  byte developer;
  byte developer_script;
  byte evaluate;
  byte pad[3];
  const char *error_message;
  int error_index;
  unsigned int time;
  unsigned int timeArrayId;
  unsigned int pauseArrayId;
  unsigned int levelId;
  unsigned int gameId;
  unsigned int animId;
  unsigned int freeEntList;
  unsigned int tempVariable;
  byte bInited;
  byte pad2;
  uint16_t savecount;
  unsigned int checksum;
  unsigned int entId;
  unsigned int entFieldName;
  struct HunkUser *programHunkUser;
  const char *programBuffer;
  const char *endScriptBuffer;
  const char *varUsagePos;
  int totalObjectRefCount;
  int numScriptValues;
  int numScriptObjects;
  int numScriptThreads;
  int totalVectorRefCount;
}scrVarPub_t;

extern scrVarPub_t gScrVarPub;

struct __align(4) scrVarDebugPub_t
{
  const char **varUsage;
  uint16_t *extRefCount;
  int *leakCount;
  bool dummy;
};

extern struct scrVarDebugPub_t *gScrVarDebugPub;
extern const char *var_typename[];


#ifdef __cplusplus
extern "C"{
#endif
void __cdecl Scr_AddClassField(unsigned int classnum, const char *name, unsigned int offset);
void __cdecl Scr_AddArrayKeys(unsigned int parentId);
void __cdecl Scr_RemoveClassMap(unsigned int classnum);
unsigned int __cdecl Scr_FindField(const char *name, int *type);
int __cdecl Scr_GetOffset(unsigned int classnum, const char *name);
void __cdecl Scr_FreeEntityNum(int entnum, unsigned int classnum);
void __cdecl Scr_AddFields(const char *path, const char *extension);
void __cdecl Scr_FreeEntityList( );
void __cdecl Scr_AllocGameVariable();
void __cdecl Scr_RemoveThreadNotifyName(unsigned int startLocalId);
void __cdecl RemoveObjectVariable(unsigned int parentId, unsigned int id);
unsigned int __cdecl GetArraySize(unsigned int id);
void __cdecl Scr_IncNumScriptThreads();
void __cdecl Scr_DecNumScriptThreads();
unsigned int __cdecl GetParentLocalId(unsigned int threadId);
void __cdecl Scr_SetThreadWaitTime(unsigned int startLocalId, unsigned int waitTime);
unsigned int __cdecl GetVariable(unsigned int parentId, unsigned int unsignedValue);
unsigned int __cdecl GetNewObjectVariable(unsigned int parentId, unsigned int id);
unsigned int __cdecl FindObjectVariable(unsigned int parentId, unsigned int id);
void __cdecl Scr_StopThread(unsigned int threadId);
void __cdecl SetNewVariableValue(unsigned int id, VariableValue *value);
void __cdecl Scr_KillThread(unsigned int parentId);
void __cdecl Scr_SetThreadNotifyName(unsigned int startLocalId, unsigned int stringValue);
unsigned int __cdecl Scr_GetSelf(unsigned int threadId);
unsigned int __cdecl FindObject(unsigned int id);
union VariableUnion *__cdecl GetVariableValueAddress(unsigned int id);
unsigned int __cdecl FindLastSibling(unsigned int parentId);
unsigned int __cdecl Scr_GetVarId(unsigned int index);
unsigned int __cdecl GetVariableKeyObject(unsigned int id);
unsigned int __cdecl GetValueType(unsigned int id);
void __cdecl AddRefToValue(int type, union VariableUnion u);
void __cdecl Scr_EvalEquality(VariableValue *value1, VariableValue *value2);
bool __cdecl Scr_CastString(VariableValue *value);
void __cdecl Scr_KillEndonThread(unsigned int threadId);
unsigned int __cdecl GetStartLocalId(unsigned int threadId);
unsigned int __cdecl FindNextSibling(unsigned int id);
unsigned int __cdecl FindPrevSibling(unsigned int id);
unsigned int Scr_GetObjectType(unsigned int id);
unsigned int __cdecl Scr_GetThreadNotifyName(unsigned int startLocalId);
unsigned int __cdecl Scr_GetThreadWaitTime(unsigned int startLocalId);
void __cdecl Scr_ClearWaitTime(unsigned int startLocalId);
unsigned int __cdecl GetSafeParentLocalId(unsigned int threadId);
unsigned int __cdecl Scr_GetVariableFieldIndex(unsigned int parentId, unsigned int name);
unsigned int __cdecl AllocThread(unsigned int self);
unsigned int __cdecl AllocChildThread(unsigned int self, unsigned int parentLocalId);
unsigned int __cdecl GetNewObjectVariableReverse(unsigned int parentId, unsigned int id);
void __cdecl Scr_DumpScriptVariablesDefault( );
void __cdecl Scr_DumpScriptVariablesFull( );
void __cdecl Scr_EvalOr(VariableValue *value1, VariableValue *value2);
qboolean __cdecl IsFieldObject(unsigned int id);
void __cdecl Scr_EvalArray(VariableValue *value, VariableValue *index);
void __cdecl SetVariableValue(unsigned int id, VariableValue *value);
unsigned int __cdecl Scr_EvalArrayRef(unsigned int parentId);
bool __cdecl IsValidArrayIndex(unsigned int unsignedValue);
void __cdecl RemoveNextVariable(unsigned int parentId);
void __cdecl ClearVariableField(unsigned int parentId, unsigned int name, VariableValue *value);
void __cdecl ClearArray(unsigned int parentId, VariableValue *value);
unsigned int __cdecl Scr_EvalFieldObject(unsigned int tempVariable, VariableValue *value);
void __cdecl Scr_EvalInequality(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalLess(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalGreater(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalGreaterEqual(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalLessEqual(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalShiftLeft(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalShiftRight(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalPlus(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalMinus(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalMultiply(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalDivide(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalMod(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalSizeValue(VariableValue *value);
unsigned int __cdecl GetObjectVariable(unsigned int parentId, unsigned int id);
unsigned int __cdecl Scr_EvalVariableObject(unsigned int id);
void __cdecl Scr_CastBool(VariableValue *value);
void __cdecl Scr_EvalBoolNot(VariableValue *value);
void __cdecl Scr_EvalBoolComplement(VariableValue *value);
void __cdecl Scr_EvalExOr(VariableValue *value1, VariableValue *value2);
void __cdecl Scr_EvalAnd(VariableValue *value1, VariableValue *value2);
unsigned int __cdecl FindEntityId(int entnum, unsigned int classnum);
void __cdecl Scr_CastVector(VariableValue *value);
void __cdecl ClearVariableValue(unsigned int id);
void __cdecl SetVariableFieldValue(unsigned int id, VariableValue *value);
unsigned int __cdecl GetVariableIndexInternal(unsigned int parentId, unsigned int name);
void __cdecl RemoveVariableValue(unsigned int parentId, unsigned int index);
unsigned int __cdecl GetArrayVariableIndex(unsigned int parentId, unsigned int unsignedValue);
unsigned int __cdecl GetInternalVariableIndex(unsigned int unsignedValue);
unsigned int __cdecl Scr_GetEntityId(int entnum, unsigned int classnum);
scr_entref_t __cdecl Scr_GetEntityIdRef(unsigned int entId);
unsigned int __cdecl FindFirstSibling(unsigned int id);
void __cdecl SafeRemoveVariable(unsigned int parentId, unsigned int unsignedValue);
void __cdecl Scr_ShutdownVariables( );
void __cdecl FreeValue(unsigned int id);
void __cdecl Scr_CastDebugString(VariableValue *value);
void __cdecl Scr_FreeGameVariable(int bComplete);
void __cdecl RemoveRefToEmptyObject(unsigned int id);
void __cdecl ClearObject(unsigned int parentId);
void Scr_FreeObjects( );
void __cdecl Scr_InitClassMap( );
unsigned int __cdecl AllocValue( );
void __cdecl Scr_EvalBinaryOperator(int op, VariableValue *value1, VariableValue *value2);
int __cdecl Scr_GetClassnumForCharId(char charId);
bool __cdecl IsObjectFree(unsigned int id);
unsigned int __cdecl GetVariableName(unsigned int id);
unsigned int __cdecl FindArrayVariable(unsigned int parentId, int intValue);
void __cdecl Scr_FreeValue(unsigned int id);
unsigned int __cdecl GetArrayVariable(unsigned int parentId, unsigned int unsignedValue);
VariableValue Scr_EvalVariable(unsigned int id);
unsigned int __cdecl SGetObjectA( unsigned int );
unsigned int __cdecl FindObject( unsigned int );
unsigned int __cdecl GetNewVariable( unsigned int, unsigned int );
void __cdecl Scr_SetClassMap( unsigned int );
void RemoveRefToValue(int type, union VariableUnion val);
void __cdecl Scr_DumpScriptThreads( );
void __cdecl RemoveVariable(unsigned int parentId, unsigned int unsignedValue);
unsigned int GetArray(unsigned int id);
unsigned int GetNewArrayVariable(unsigned int parentId, unsigned int unsignedValue);
void __cdecl AddRefToObject(unsigned int id);
void __cdecl RemoveRefToObject(unsigned int id);
unsigned int __cdecl FindVariable(unsigned int parentId, unsigned int unsignedValue);

#ifdef __cplusplus
};
#endif

#endif
