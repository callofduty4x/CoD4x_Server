#include "q_shared.h"
#include "qcommon_mem.h"
#include "server.h"

extern "C"
{

unsigned int __cdecl SV_GetConfigstringConst(int index)
{
    assertx((unsigned)index < MAX_CONFIGSTRINGS, "ConfigString=%d", index);
    assert(sv.configstrings[index]);

    return sv.configstrings[index];
}


qboolean __cdecl SV_Loaded()
{
  if(sv.state == SS_GAME)
  {
    return qtrue;
  }
  return qfalse;
}


void __cdecl SV_SetUserinfo(int clientIndex, const char *val)
{
  const char *name;

  if ( clientIndex < 0 || clientIndex >= sv_maxclients->integer )
  {
    Com_Error(ERR_DROP, "SV_SetUserinfo: bad index %i\n", clientIndex);
  }
  if ( !val )
  {
    val = "";
  }
  Q_strncpyz(svs.clients[clientIndex].userinfo, val, 1024);
  name = Info_ValueForKey(val, "name");
  Q_strncpyz(svs.clients[clientIndex].name, name, 32);
}


void __cdecl SV_GetUserinfo(int index, char *buffer, int bufferSize)
{
  if ( bufferSize < 1 )
  {
    Com_Error(ERR_DROP, "SV_GetUserinfo: bufferSize == %i", bufferSize);
  }
  if ( index < 0 || index >= sv_maxclients->integer )
  {
    Com_Error(ERR_DROP, "SV_GetUserinfo: bad index %i", index);
  }
  Q_strncpyz(buffer, svs.clients[index].userinfo, bufferSize);
}

void __cdecl SV_SetExpectedHunkUsage(const char *mapname)
{
  int handle;
  char *buf;
  int len;
  parseInfo_t *token;
  const char *buftrav;

  len = FS_FOpenFileByMode("hunkusage.dat", &handle, FS_READ);
  if ( len >= 0 )
  {
    buf = (char *)Z_Malloc(len + 1/*, "SV_SetExpectedHunkUsage", 11*/);
    memset(buf, 0, len + 1);
    FS_Read(buf, len, handle);
    FS_FCloseFile(handle);
    buftrav = buf;
    while ( 1 )
    {
      token = Com_Parse(&buftrav);
      assert(token != NULL);

      if ( !token->token[0] )
      {
        break;
      }
      if ( !Q_stricmp(token->token, mapname) )
      {
        token = Com_Parse(&buftrav);
        if ( token )
        {
          if ( token->token[0] )
          {
            com_expectedHunkUsage = atoi(token->token);
            Z_Free(buf);
            return;
          }
        }
      }
    }
    Z_Free(buf);
  }
}

}
