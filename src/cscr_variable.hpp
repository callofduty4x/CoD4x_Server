#ifndef __CSCR_VARIABLE_H__
#define __CSCR_VARIABLE_H__


#include "scr_vm.hpp"

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


struct __align(4) scrVarDebugPub_t
{
  const char **varUsage;
  uint16_t *extRefCount;
  int *leakCount;
  bool dummy;
};

extern struct scrVarDebugPub_t *gScrVarDebugPub;


extern "C"
{
    extern scrVarPub_t gScrVarPub;
    extern const char* var_typename[];

void CDECL Scr_AddClassField(unsigned int classnum, const char *name, unsigned int offset);
void CDECL Scr_AddArrayKeys(unsigned int parentId);
void CDECL Scr_RemoveClassMap(unsigned int classnum);
unsigned int CDECL Scr_FindField(const char *name, int *type);
int CDECL Scr_GetOffset(unsigned int classnum, const char *name);
void CDECL Scr_FreeEntityNum(int entnum, unsigned int classnum);
void CDECL Scr_AddFields(const char *path, const char *extension);
void CDECL Scr_FreeEntityList( );
void CDECL Scr_AllocGameVariable();
void CDECL Scr_RemoveThreadNotifyName(unsigned int startLocalId);
void CDECL RemoveObjectVariable(unsigned int parentId, unsigned int id);
unsigned int CDECL GetArraySize(unsigned int id);
void CDECL Scr_IncNumScriptThreads();
void CDECL Scr_DecNumScriptThreads();
unsigned int CDECL GetParentLocalId(unsigned int threadId);
void CDECL Scr_SetThreadWaitTime(unsigned int startLocalId, unsigned int waitTime);
unsigned int CDECL GetVariable(unsigned int parentId, unsigned int unsignedValue);
unsigned int CDECL GetNewObjectVariable(unsigned int parentId, unsigned int id);
unsigned int CDECL FindObjectVariable(unsigned int parentId, unsigned int id);
void CDECL Scr_StopThread(unsigned int threadId);
void CDECL SetNewVariableValue(unsigned int id, VariableValue *value);
void CDECL Scr_KillThread(unsigned int parentId);
void CDECL Scr_SetThreadNotifyName(unsigned int startLocalId, unsigned int stringValue);
unsigned int CDECL Scr_GetSelf(unsigned int threadId);
unsigned int CDECL FindObject(unsigned int id);
union VariableUnion *CDECL GetVariableValueAddress(unsigned int id);
unsigned int CDECL FindLastSibling(unsigned int parentId);
unsigned int CDECL Scr_GetVarId(unsigned int index);
unsigned int CDECL GetVariableKeyObject(unsigned int id);
unsigned int CDECL GetValueType(unsigned int id);
void CDECL AddRefToValue(int type, union VariableUnion u);
void CDECL Scr_EvalEquality(VariableValue *value1, VariableValue *value2);
bool CDECL Scr_CastString(VariableValue *value);
void CDECL Scr_KillEndonThread(unsigned int threadId);
unsigned int CDECL GetStartLocalId(unsigned int threadId);
unsigned int CDECL FindNextSibling(unsigned int id);
unsigned int CDECL FindPrevSibling(unsigned int id);
unsigned int Scr_GetObjectType(unsigned int id);
unsigned int CDECL Scr_GetThreadNotifyName(unsigned int startLocalId);
unsigned int CDECL Scr_GetThreadWaitTime(unsigned int startLocalId);
void CDECL Scr_ClearWaitTime(unsigned int startLocalId);
unsigned int CDECL GetSafeParentLocalId(unsigned int threadId);
unsigned int CDECL Scr_GetVariableFieldIndex(unsigned int parentId, unsigned int name);
unsigned int CDECL AllocThread(unsigned int self);
unsigned int CDECL AllocChildThread(unsigned int self, unsigned int parentLocalId);
unsigned int CDECL GetNewObjectVariableReverse(unsigned int parentId, unsigned int id);
void CDECL Scr_DumpScriptVariablesDefault( );
void CDECL Scr_DumpScriptVariablesFull( );
void CDECL Scr_EvalOr(VariableValue *value1, VariableValue *value2);
qboolean CDECL IsFieldObject(unsigned int id);
void CDECL Scr_EvalArray(VariableValue *value, VariableValue *index);
void CDECL SetVariableValue(unsigned int id, VariableValue *value);
unsigned int CDECL Scr_EvalArrayRef(unsigned int parentId);
bool CDECL IsValidArrayIndex(unsigned int unsignedValue);
void CDECL RemoveNextVariable(unsigned int parentId);
void CDECL ClearVariableField(unsigned int parentId, unsigned int name, VariableValue *value);
void CDECL ClearArray(unsigned int parentId, VariableValue *value);
unsigned int CDECL Scr_EvalFieldObject(unsigned int tempVariable, VariableValue *value);
void CDECL Scr_EvalInequality(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalLess(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalGreater(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalGreaterEqual(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalLessEqual(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalShiftLeft(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalShiftRight(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalPlus(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalMinus(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalMultiply(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalDivide(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalMod(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalSizeValue(VariableValue *value);
unsigned int CDECL GetObjectVariable(unsigned int parentId, unsigned int id);
unsigned int CDECL Scr_EvalVariableObject(unsigned int id);
void CDECL Scr_CastBool(VariableValue *value);
void CDECL Scr_EvalBoolNot(VariableValue *value);
void CDECL Scr_EvalBoolComplement(VariableValue *value);
void CDECL Scr_EvalExOr(VariableValue *value1, VariableValue *value2);
void CDECL Scr_EvalAnd(VariableValue *value1, VariableValue *value2);
unsigned int CDECL FindEntityId(int entnum, unsigned int classnum);
void CDECL Scr_CastVector(VariableValue *value);
void CDECL ClearVariableValue(unsigned int id);
void CDECL SetVariableFieldValue(unsigned int id, VariableValue *value);
unsigned int CDECL GetVariableIndexInternal(unsigned int parentId, unsigned int name);
void CDECL RemoveVariableValue(unsigned int parentId, unsigned int index);
unsigned int CDECL GetArrayVariableIndex(unsigned int parentId, unsigned int unsignedValue);
unsigned int CDECL GetInternalVariableIndex(unsigned int unsignedValue);
unsigned int CDECL Scr_GetEntityId(int entnum, unsigned int classnum);
scr_entref_t CDECL Scr_GetEntityIdRef(unsigned int entId);
unsigned int CDECL FindFirstSibling(unsigned int id);
void CDECL SafeRemoveVariable(unsigned int parentId, unsigned int unsignedValue);
void CDECL Scr_ShutdownVariables( );
void CDECL FreeValue(unsigned int id);
void CDECL Scr_CastDebugString(VariableValue *value);
void CDECL Scr_FreeGameVariable(int bComplete);
void CDECL RemoveRefToEmptyObject(unsigned int id);
void CDECL ClearObject(unsigned int parentId);
void Scr_FreeObjects( );
void CDECL Scr_InitClassMap( );
unsigned int CDECL AllocValue( );
void CDECL Scr_EvalBinaryOperator(int op, VariableValue *value1, VariableValue *value2);
int CDECL Scr_GetClassnumForCharId(char charId);
bool CDECL IsObjectFree(unsigned int id);
unsigned int CDECL GetVariableName(unsigned int id);
unsigned int CDECL FindArrayVariable(unsigned int parentId, int intValue);
void CDECL Scr_FreeValue(unsigned int id);
unsigned int CDECL GetArrayVariable(unsigned int parentId, unsigned int unsignedValue);
VariableValue Scr_EvalVariable(unsigned int id);
unsigned int CDECL SGetObjectA( unsigned int );
unsigned int CDECL FindObject( unsigned int );
unsigned int CDECL GetNewVariable( unsigned int, unsigned int );
void CDECL Scr_SetClassMap( unsigned int );
void RemoveRefToValue(int type, union VariableUnion val);
void CDECL Scr_DumpScriptThreads( );
void CDECL RemoveVariable(unsigned int parentId, unsigned int unsignedValue);
unsigned int GetArray(unsigned int id);
unsigned int GetNewArrayVariable(unsigned int parentId, unsigned int unsignedValue);
void CDECL AddRefToObject(unsigned int id);
void CDECL RemoveRefToObject(unsigned int id);
unsigned int CDECL FindVariable(unsigned int parentId, unsigned int unsignedValue);

};

#endif
