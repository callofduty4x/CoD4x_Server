#include "q_shared.h"
#include "misc.h"
#include "scr_vm.h"

const char *propertyNames[] =
{
  "loopsync",
  "nonloopsync",
  "complete",
  "additive",
  "client",
  "separate",
  "forceload"
};

extern "C"{

bool __cdecl Scr_IsIdentifier(const char *token)
{
  while ( *token )
  {
    if ( !I_iscsym(*token) )
    {
      return false;
    }
    ++token;
  }
  return true;
}

unsigned int GetAnimTreeParseProperties()
{
  const char *errormsg, *property;
  parseInfo_t *token;
  unsigned int i;
  int flags;
  const char* token_pos;

  flags = 0;
  while ( 1 )
  {
    token = Com_ParseOnLine(&scrAnimGlob.pos);
    if ( !token->token[0] )
    {
      break;
    }
    property = token->token;
    for ( i = 0; i < 7; ++i )
    {
      if ( !Q_stricmp(property, propertyNames[i]) )
      {
        break;
      }
    }
    switch ( i )
    {
      case 0u:
        flags |= 1u;
        break;
      case 1u:
        flags |= 2u;
        break;
      case 2u:
        flags |= 8u;
        break;
      case 3u:
        flags |= 0x10u;
        break;
      case 4u:
        flags |= 0x20u;
        break;
      case 5u:
        flags |= 0x40u;
        break;
      case 6u:
        flags |= 0x88u;
        break;
      default:
        token_pos = Com_GetLastTokenPos();
        errormsg = va("Unknown XAnimTree anim property: \"%s\"", property);
        Com_EndParseSession();
        CompileError(token_pos - scrAnimGlob.start, "%s", errormsg);
        break;
    }
  }
  return flags;
}


bool __regparm3 AnimTreeParseInternal(unsigned int parentNode, unsigned int names, bool bIncludeParent, bool bLoop, bool bComplete)
{
  unsigned int animName;
  bool bIgnore;
  bool r;
  const char *s;
  parseInfo_t *tok;
  unsigned int animarray, animarrayvar;
  int flags;
  unsigned int currentAnim;
  VariableValue value;
  unsigned int parentId;
  const char* token_pos;
  unsigned int void_string;

  parentId = parentNode;
  animName = 0;
  value.type = 6;
  bIgnore = 0;
  currentAnim = 0;
  flags = 0;
  r = false;

  while ( 1 )
  {
    tok = Com_Parse(&scrAnimGlob.pos);
    if ( !scrAnimGlob.pos )
    {
        r = true;
        break;
    }
    parentNode = parentId;

    if(Scr_IsIdentifier(tok->token))
    {
      if ( bIgnore )
      {
        RemoveVariable(parentNode, animName);
      }
      if ( animName )
      {
        SL_RemoveRefToString(animName);
      }
      animName = SL_GetLowercaseString(tok->token, 4);
      if ( FindVariable(parentNode, animName) )
      {
        token_pos = Com_GetLastTokenPos();
        Com_EndParseSession();
        CompileError(token_pos - scrAnimGlob.start, "%s", "duplicate animation");
      }
      currentAnim = GetVariable(parentNode, animName);
      bIgnore = !bComplete && !FindVariable(names, animName) && !scrAnimGlob.bAnimCheck;
      flags = 0;
      tok = Com_ParseOnLine(&scrAnimGlob.pos);
      if(!tok->token[0])
      {
          continue;
      }
      if ( Scr_IsIdentifier(tok->token) )
      {
          token_pos = Com_GetLastTokenPos();
          Com_EndParseSession();
          CompileError(token_pos - scrAnimGlob.start, "%s", "FIXME: aliases not yet implemented");
      }
      if ( tok->token[0] != ':' || tok->token[1] )
      {
          token_pos = Com_GetLastTokenPos();
          Com_EndParseSession();
          CompileError(token_pos - scrAnimGlob.start, "%s", "bad token");
      }
      flags = GetAnimTreeParseProperties();
      tok = Com_Parse(&scrAnimGlob.pos);
      if ( tok->token[0] != '{' || tok->token[1] )
      {
          token_pos = Com_GetLastTokenPos();
          Com_EndParseSession();
          CompileError(token_pos - scrAnimGlob.start, "%s", "properties cannot be applied to primitive animations");
      }

    }
    if ( tok->token[0] != '{' )
    {
      break;
    }
    if ( tok->token[1] )
    {
      token_pos = Com_GetLastTokenPos();
      Com_EndParseSession();
      CompileError(token_pos - scrAnimGlob.start, "%s", "bad token");
    }
    if ( Com_ParseOnLine(&scrAnimGlob.pos)->token[0] )
    {
      token_pos = Com_GetLastTokenPos();
      Com_EndParseSession();
      CompileError(token_pos - scrAnimGlob.start, "%s", "token not allowed after '{'");
    }
    if ( !currentAnim )
    {
      token_pos = Com_GetLastTokenPos();
      Com_EndParseSession();
      CompileError(token_pos - scrAnimGlob.start, "%s", "no animation specified for this block");
    }
    animarray = GetArray(currentAnim);
    if ( AnimTreeParseInternal(animarray, names, bIgnore == 0, flags & 1, bComplete || (flags & 8 && !bIgnore)) )
    {
      token_pos = Com_GetLastTokenPos();
      Com_EndParseSession();
      CompileError(token_pos - scrAnimGlob.start, "%s", "unexpected end of file");
    }
    if ( (unsigned int)Scr_GetSelf(animarray) )
    {
      value.u.intValue = flags;
      animarrayvar = GetArrayVariable(animarray, 0);
      SetVariableValue(animarrayvar, &value);
      currentAnim = 0;
      bIgnore = 0;
    }
    else
    {
      RemoveVariable(parentId, animName);
      currentAnim = 0;
      bIgnore = 0;
    }
  }
  if(r == false)
  {
    if ( tok->token[0] != '}' || tok->token[1])
    {
      token_pos = Com_GetLastTokenPos();
      Com_EndParseSession();
      CompileError(token_pos - scrAnimGlob.start, "%s", "bad token");
    }
    if ( Com_ParseOnLine(&scrAnimGlob.pos)->token[0] )
    {
      token_pos = Com_GetLastTokenPos();
      Com_EndParseSession();
      CompileError(token_pos - scrAnimGlob.start, "%s", "token not allowed after '}'");
    }
  }

  if ( bIgnore )
  {
    RemoveVariable(parentId, animName);
  }
  if ( animName )
  {
    SL_RemoveRefToString(animName);
  }
  if ( bIncludeParent && !(unsigned int)Scr_GetSelf(parentId) )
  {
    s = "void";
    if ( bLoop )
    {
      s = "void_loop";
    }
    void_string = SL_GetString(s, 4);
    GetVariable(parentId, void_string);
    SL_RemoveRefToString(void_string);
  }
  return r;
}

}