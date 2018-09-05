#include "q_shared.h"
#include "scr_vm.h"
#include "cscr_stringlist.h"
#include "cscr_variable.h"
#include "cscr_animtree.h"

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

struct scrAnimGlob_t
{
  const char *start;
  const char *pos;
  uint16_t using_xanim_lookup[2][128];
  int bAnimCheck;
};

extern struct scrAnimGlob_t gScrAnimGlob;

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
    token = Com_ParseOnLine(&gScrAnimGlob.pos);
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
        CompileError(token_pos - gScrAnimGlob.start, "%s", errormsg);
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
    tok = Com_Parse(&gScrAnimGlob.pos);
    if ( !gScrAnimGlob.pos )
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
        CompileError(token_pos - gScrAnimGlob.start, "%s", "duplicate animation");
      }
      currentAnim = GetVariable(parentNode, animName);
      bIgnore = !bComplete && !FindVariable(names, animName) && !gScrAnimGlob.bAnimCheck;
      flags = 0;
      tok = Com_ParseOnLine(&gScrAnimGlob.pos);
      if(!tok->token[0])
      {
          continue;
      }
      if ( Scr_IsIdentifier(tok->token) )
      {
          token_pos = Com_GetLastTokenPos();
          Com_EndParseSession();
          CompileError(token_pos - gScrAnimGlob.start, "%s", "FIXME: aliases not yet implemented");
      }
      if ( tok->token[0] != ':' || tok->token[1] )
      {
          token_pos = Com_GetLastTokenPos();
          Com_EndParseSession();
          CompileError(token_pos - gScrAnimGlob.start, "%s", "bad token");
      }
      flags = GetAnimTreeParseProperties();
      tok = Com_Parse(&gScrAnimGlob.pos);
      if ( tok->token[0] != '{' || tok->token[1] )
      {
          token_pos = Com_GetLastTokenPos();
          Com_EndParseSession();
          CompileError(token_pos - gScrAnimGlob.start, "%s", "properties cannot be applied to primitive animations");
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
      CompileError(token_pos - gScrAnimGlob.start, "%s", "bad token");
    }
    if ( Com_ParseOnLine(&gScrAnimGlob.pos)->token[0] )
    {
      token_pos = Com_GetLastTokenPos();
      Com_EndParseSession();
      CompileError(token_pos - gScrAnimGlob.start, "%s", "token not allowed after '{'");
    }
    if ( !currentAnim )
    {
      token_pos = Com_GetLastTokenPos();
      Com_EndParseSession();
      CompileError(token_pos - gScrAnimGlob.start, "%s", "no animation specified for this block");
    }
    animarray = GetArray(currentAnim);
    if ( AnimTreeParseInternal(animarray, names, bIgnore == 0, flags & 1, bComplete || (flags & 8 && !bIgnore)) )
    {
      token_pos = Com_GetLastTokenPos();
      Com_EndParseSession();
      CompileError(token_pos - gScrAnimGlob.start, "%s", "unexpected end of file");
    }
    if ( GetArraySize(animarray) )
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
      CompileError(token_pos - gScrAnimGlob.start, "%s", "bad token");
    }
    if ( Com_ParseOnLine(&gScrAnimGlob.pos)->token[0] )
    {
      token_pos = Com_GetLastTokenPos();
      Com_EndParseSession();
      CompileError(token_pos - gScrAnimGlob.start, "%s", "token not allowed after '}'");
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
  if ( bIncludeParent && !GetArraySize(parentId) )
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