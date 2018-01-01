#include "q_shared.h"
#include "misc.h"
#include "scr_vm.h"

#define VAR_STAT_MASK 0x60
#define VAR_STAT_FREE 0
#define IsObject(var) ((var->w.status & 0x1F) >= 0xD)

extern const char* var_typename[];

enum scriptVarTypeNew_t
{
  VAR_UNDEFINED = 0x0,
  VAR_BEGIN_REF = 0x1,
  VAR_POINTER = 0x1,
  VAR_STRING = 0x2,
  VAR_ISTRING = 0x3,
  VAR_VECTOR = 0x4,
  VAR_END_REF = 0x5,
  VAR_FLOAT = 0x5,
  VAR_INTEGER = 0x6,
  VAR_CODEPOS = 0x7,
  VAR_PRECODEPOS = 0x8,
  VAR_FUNCTION = 0x9,
  VAR_STACK = 0xA,
  VAR_ANIMATION = 0xB,
  VAR_DEVELOPER_CODEPOS = 0xC,
  VAR_INCLUDE_CODEPOS = 0xD,
  VAR_THREAD = 0xE,
  VAR_NOTIFY_THREAD = 0xF,
  VAR_TIME_THREAD = 0x10,
  VAR_CHILD_THREAD = 0x11,
  VAR_OBJECT = 0x12,
  VAR_DEAD_ENTITY = 0x13,
  VAR_ENTITY = 0x14,
  VAR_ARRAY = 0x15,
  VAR_DEAD_THREAD = 0x16,
  VAR_COUNT = 0x17,
  VAR_THREAD_LIST = 0x18,
  VAR_ENDON_LIST = 0x19
};

#if 0


unsigned int __cdecl Scr_FindArrayIndex(unsigned int parentId, VariableValue *index)
{
  unsigned int id;

  if ( index->type == VAR_INTEGER )
  {
    if ( IsValidArrayIndex(index->u.intValue) )
    {
      return FindArrayVariable(parentId, index->u.intValue);
    }
    Scr_Error(va("array index %d out of range", index->u.intValue));
    AddRefToObject(parentId);
    return 0;
  }
  if ( index->type == VAR_STRING )
  {
    id = FindVariable(parentId, index->u.intValue);
    SL_RemoveRefToString(index->u.intValue);
    return id;
  }
  Scr_Error(va("%s is not an array index", var_typename[index->type]));
  AddRefToObject(parentId);
  return 0;
}


void __cdecl Scr_EvalArray(VariableValue *value, VariableValue *index)
{
  unsigned int arridx;
  char c[2];
  const char *s;
  VariableValueInternal *entryValue;

  assert( value != index);
  switch ( value->type )
  {
    case VAR_BEGIN_REF:

      entryValue = &scrVarGlob.variableList[value->u.intValue + 1];

      assert((entryValue->w.status & VAR_STAT_MASK) != VAR_STAT_FREE);
      assert(IsObject( entryValue ));

      if ( (entryValue->w.status & 0x1F) == 20 )
      {
        arridx = Scr_FindArrayIndex(value->u.intValue, index);
        *index = Scr_EvalVariable(arridx);
        RemoveRefToObject(value->u.intValue);
      }
      else
      {
        scrVarPub.error_index = 1;
        Scr_Error(va("%s is not an array", var_typename[entryValue->w.status & 0x1F]));
      }
      break;
    case VAR_STRING:
      if ( index->type == VAR_INTEGER )
      {
        if ( index->u.intValue < 0 || (s = SL_ConvertToString(value->u.intValue), index->u.intValue >= (signed int)strlen(s)) )
        {
          Scr_Error(va("string index %d out of range", index->u.intValue));
        }
        else
        {
          index->type = VAR_STRING;
          c[0] = s[index->u.intValue];
          c[1] = 0;
          index->u.intValue = SL_GetStringOfSize(c, 0, 2u);
          SL_RemoveRefToString(value->u.intValue);
        }
      }
      else
      {
        Scr_Error(va("%s is not a string index", var_typename[index->type]));
      }
      break;
    case VAR_VECTOR:
      if ( index->type == VAR_INTEGER )
      {
        if ( (unsigned int)index->u.intValue >= 3u )
        {
          Scr_Error(va("vector index %d out of range", index->u.intValue));
        }
        else
        {
          index->type = VAR_FLOAT;
          index->u.floatValue = value->u.vectorValue[(unsigned int)index->u.vectorValue];
          RemoveRefToVector(value->u.vectorValue);
        }
      }
      else
      {
        Scr_Error(va("%s is not a vector index", var_typename[index->type]));
      }
      break;
    default:
      assert(value->type != VAR_STACK);
      scrVarPub.error_index = 1;
      Scr_Error(va("%s is not an array, string, or vector", var_typename[value->type]));
      break;
  }
}

#endif