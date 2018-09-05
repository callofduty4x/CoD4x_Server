#include "scr_vm.h"
#include "g_shared.h"
#include "g_fields.h"
#include "player.h"
#include "g_public_mp.h"


void __cdecl Scr_GetGenericField2(const void *data, fieldtype_t type, int ofs)
{
  uint16_t str;
  vec3_t vec;
  const char* b = (char*)data;

  switch ( type )
  {
    case F_INT:
      Scr_AddInt(*(uint32_t*)&b[ofs]);
      break;
    case F_FLOAT:
      Scr_AddFloat(*(float *)&b[ofs]);
      break;
    case F_LSTRING:
      Scr_AddString((const char*)&b[ofs]);
      break;
    case F_STRING:
      str = *(uint16_t *)&b[ofs];
      if ( str )
      {
        Scr_AddConstString(str);
      }
      break;
    case F_VECTOR:
      Scr_AddVector((const float *)&b[ofs]);
      break;
    case F_VECTORHACK:
      vec[0] = 0.0;
      vec[1] = *(float *)&b[ofs];
      vec[2] = 0.0;
      Scr_AddVector(vec);
      break;
    default:
      return;
  }
}

extern "C"{

void __cdecl Scr_GetGenericField(const void *data, fieldtype_t type, int ofs)
{
  unsigned int id; 
  EntHandle *entHandle;
  gentity_s* ent;
  const char* b = (char*)data;

  switch ( type )
  {
    case F_ENTITY:
      ent = (gentity_s*)&b[ofs];
      if ( ent->s.number )
      {
        Scr_AddEntity(ent);
      }
      break;
    case F_ENTHANDLE:
      entHandle = (EntHandle *)&b[ofs];

      if ( entHandle->isDefined( ))
      {
        Scr_AddEntity(entHandle->ent());
      }
      break;
    case F_OBJECT:
      id = *(uint16_t *)&b[ofs];
      if ( id )
      {
        Scr_AddObject(id);
      }
      break;
    case F_MODEL:
      Scr_AddConstString(G_ModelName(*(uint16_t *)&b[ofs]));
      break;
    default:
      Scr_GetGenericField2(b, type, ofs);
      break;
  }
}


void __cdecl Scr_SetGenericField(void *data, fieldtype_t type, int ofs)
{
  char* b = (char*)data;
  unsigned int cs;
  gentity_s** ent;
  gentity_s* pent;
  EntHandle* entHandle;
  vec3_t vec;
  scr_entref_t refEnt;

  switch ( type )
  {
    case F_INT:
      *(uint32_t *)&b[ofs] = Scr_GetInt(0);
      break;
    case F_FLOAT:
      *(float *)&b[ofs] = Scr_GetFloat(0);
      break;
    case F_STRING:
      cs = Scr_GetConstStringIncludeNull(0);
      Scr_SetString((uint16_t *)&b[ofs], cs);
      break;
    case F_VECTOR:
      Scr_GetVector(0, vec);
      VectorCopy(vec, (float *)&b[ofs]);
      break;
    case F_VECTORHACK:
      Scr_GetVector(0, vec);
      *(float *)&b[ofs] = vec[1];
      break;
    case F_ENTITY:
        ent = (gentity_s**)&b[ofs];
        if ( Scr_GetType(0) == VAR_UNDEFINED)
        {
          *ent = NULL;
          break;
        }
        refEnt = Scr_GetEntityRef(0);
        if(refEnt.classnum)
        {
          *ent = NULL;
          break;
        }
        *ent = &g_entities[refEnt.entnum];
        break;
    case F_ENTHANDLE:
        entHandle = (EntHandle*)&b[ofs];
        if ( Scr_GetType(0) == VAR_UNDEFINED)
        {
          pent = NULL;
        }else{
            refEnt = Scr_GetEntityRef(0);
            if(refEnt.classnum)
            {
                pent = NULL;
            }else{
                pent = &g_entities[refEnt.entnum];
            }
        }
        entHandle->setEnt(pent);
        break;

    default:
      return;
  }
}

}
