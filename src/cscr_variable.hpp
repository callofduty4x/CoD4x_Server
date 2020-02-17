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

void CCDECL Scr_AddClassField(unsigned int classnum, const char *name, unsigned int offset);
void CCDECL Scr_AddArrayKeys(unsigned int parentId);
void CCDECL Scr_RemoveClassMap(unsigned int classnum);
unsigned int CCDECL Scr_FindField(const char *name, int *type);
int CCDECL Scr_GetOffset(unsigned int classnum, const char *name);
void CCDECL Scr_FreeEntityNum(int entnum, unsigned int classnum);
void CCDECL Scr_AddFields(const char *path, const char *extension);
void CCDECL Scr_FreeEntityList( );
void CCDECL Scr_AllocGameVariable();
void CCDECL Scr_RemoveThreadNotifyName(unsigned int startLocalId);
void CCDECL RemoveObjectVariable(unsigned int parentId, unsigned int id);
unsigned int CCDECL GetArraySize(unsigned int id);
void CCDECL Scr_IncNumScriptThreads();
void CCDECL Scr_DecNumScriptThreads();
unsigned int CCDECL GetParentLocalId(unsigned int threadId);
void CCDECL Scr_SetThreadWaitTime(unsigned int startLocalId, unsigned int waitTime);
unsigned int CCDECL GetVariable(unsigned int parentId, unsigned int unsignedValue);
unsigned int CCDECL GetNewObjectVariable(unsigned int parentId, unsigned int id);
unsigned int CCDECL FindObjectVariable(unsigned int parentId, unsigned int id);
void CCDECL Scr_StopThread(unsigned int threadId);
void CCDECL SetNewVariableValue(unsigned int id, VariableValue *value);
void CCDECL Scr_KillThread(unsigned int parentId);
void CCDECL Scr_SetThreadNotifyName(unsigned int startLocalId, unsigned int stringValue);
unsigned int CCDECL Scr_GetSelf(unsigned int threadId);
unsigned int CCDECL FindObject(unsigned int id);
union VariableUnion *CCDECL GetVariableValueAddress(unsigned int id);
unsigned int CCDECL FindLastSibling(unsigned int parentId);
unsigned int CCDECL Scr_GetVarId(unsigned int index);
unsigned int CCDECL GetVariableKeyObject(unsigned int id);
unsigned int CCDECL GetValueType(unsigned int id);
void CCDECL AddRefToValue(int type, union VariableUnion u);
void CCDECL Scr_EvalEquality(VariableValue *value1, VariableValue *value2);
bool CCDECL Scr_CastString(VariableValue *value);
void CCDECL Scr_KillEndonThread(unsigned int threadId);
unsigned int CCDECL GetStartLocalId(unsigned int threadId);
unsigned int CCDECL FindNextSibling(unsigned int id);
unsigned int CCDECL FindPrevSibling(unsigned int id);
unsigned int Scr_GetObjectType(unsigned int id);
unsigned int CCDECL Scr_GetThreadNotifyName(unsigned int startLocalId);
unsigned int CCDECL Scr_GetThreadWaitTime(unsigned int startLocalId);
void CCDECL Scr_ClearWaitTime(unsigned int startLocalId);
unsigned int CCDECL GetSafeParentLocalId(unsigned int threadId);
unsigned int CCDECL Scr_GetVariableFieldIndex(unsigned int parentId, unsigned int name);
unsigned int CCDECL AllocThread(unsigned int self);
unsigned int CCDECL AllocChildThread(unsigned int self, unsigned int parentLocalId);
unsigned int CCDECL GetNewObjectVariableReverse(unsigned int parentId, unsigned int id);
void CCDECL Scr_DumpScriptVariablesDefault( );
void CCDECL Scr_DumpScriptVariablesFull( );
void CCDECL Scr_EvalOr(VariableValue *value1, VariableValue *value2);
qboolean CCDECL IsFieldObject(unsigned int id);
void CCDECL Scr_EvalArray(VariableValue *value, VariableValue *index);
void CCDECL SetVariableValue(unsigned int id, VariableValue *value);
unsigned int CCDECL Scr_EvalArrayRef(unsigned int parentId);
bool CCDECL IsValidArrayIndex(unsigned int unsignedValue);
void CCDECL RemoveNextVariable(unsigned int parentId);
void CCDECL ClearVariableField(unsigned int parentId, unsigned int name, VariableValue *value);
void CCDECL ClearArray(unsigned int parentId, VariableValue *value);
unsigned int CCDECL Scr_EvalFieldObject(unsigned int tempVariable, VariableValue *value);
void CCDECL Scr_EvalInequality(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalLess(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalGreater(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalGreaterEqual(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalLessEqual(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalShiftLeft(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalShiftRight(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalPlus(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalMinus(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalMultiply(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalDivide(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalMod(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalSizeValue(VariableValue *value);
unsigned int CCDECL GetObjectVariable(unsigned int parentId, unsigned int id);
unsigned int CCDECL Scr_EvalVariableObject(unsigned int id);
void CCDECL Scr_CastBool(VariableValue *value);
void CCDECL Scr_EvalBoolNot(VariableValue *value);
void CCDECL Scr_EvalBoolComplement(VariableValue *value);
void CCDECL Scr_EvalExOr(VariableValue *value1, VariableValue *value2);
void CCDECL Scr_EvalAnd(VariableValue *value1, VariableValue *value2);
unsigned int CCDECL FindEntityId(int entnum, unsigned int classnum);
void CCDECL Scr_CastVector(VariableValue *value);
void CCDECL ClearVariableValue(unsigned int id);
void CCDECL SetVariableFieldValue(unsigned int id, VariableValue *value);
unsigned int CCDECL GetVariableIndexInternal(unsigned int parentId, unsigned int name);
void CCDECL RemoveVariableValue(unsigned int parentId, unsigned int index);
unsigned int CCDECL GetArrayVariableIndex(unsigned int parentId, unsigned int unsignedValue);
unsigned int CCDECL GetInternalVariableIndex(unsigned int unsignedValue);
unsigned int CCDECL Scr_GetEntityId(int entnum, unsigned int classnum);
scr_entref_t CCDECL Scr_GetEntityIdRef(unsigned int entId);
unsigned int CCDECL FindFirstSibling(unsigned int id);
void CCDECL SafeRemoveVariable(unsigned int parentId, unsigned int unsignedValue);
void CCDECL Scr_ShutdownVariables( );
void CCDECL FreeValue(unsigned int id);
void CCDECL Scr_CastDebugString(VariableValue *value);
void CCDECL Scr_FreeGameVariable(int bComplete);
void CCDECL RemoveRefToEmptyObject(unsigned int id);
void CCDECL ClearObject(unsigned int parentId);
void Scr_FreeObjects( );
void CCDECL Scr_InitClassMap( );
unsigned int CCDECL AllocValue( );
void CCDECL Scr_EvalBinaryOperator(int op, VariableValue *value1, VariableValue *value2);
int CCDECL Scr_GetClassnumForCharId(char charId);
bool CCDECL IsObjectFree(unsigned int id);
unsigned int CCDECL GetVariableName(unsigned int id);
unsigned int CCDECL FindArrayVariable(unsigned int parentId, int intValue);
void CCDECL Scr_FreeValue(unsigned int id);
unsigned int CCDECL GetArrayVariable(unsigned int parentId, unsigned int unsignedValue);
VariableValue Scr_EvalVariable(unsigned int id);
unsigned int CCDECL SGetObjectA( unsigned int );
unsigned int CCDECL FindObject( unsigned int );
unsigned int CCDECL GetNewVariable( unsigned int, unsigned int );
void CCDECL Scr_SetClassMap( unsigned int );
void RemoveRefToValue(int type, union VariableUnion val);
void CCDECL Scr_DumpScriptThreads( );
void CCDECL RemoveVariable(unsigned int parentId, unsigned int unsignedValue);
unsigned int GetArray(unsigned int id);
unsigned int GetNewArrayVariable(unsigned int parentId, unsigned int unsignedValue);
void CCDECL AddRefToObject(unsigned int id);
void CCDECL RemoveRefToObject(unsigned int id);
unsigned int CCDECL FindVariable(unsigned int parentId, unsigned int unsignedValue);

};

#endif
