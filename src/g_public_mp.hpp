#ifndef __G_PUBLIC_MP_H__
#define __G_PUBLIC_MP_H__

#include "q_shared.hpp"

#ifndef __cplusplus

typedef struct
{
  uint16_t number;
  uint16_t infoIndex;
}EntHandle;

#else

class EntHandle
{
    public:
      bool __cdecl isDefined();
      struct gentity_s* __cdecl ent( );
      int __cdecl entnum( );
      void __cdecl setEnt(struct gentity_s *ent);
      static void __cdecl Shutdown();
      static void __cdecl Init();

      uint16_t number;
      uint16_t infoIndex;

};
void __cdecl EntHandleDissociate(struct gentity_s *ent);

#endif

#include "entity.hpp"
#include "player.hpp"

unsigned int __cdecl GScr_AllocString(const char *s);

#endif