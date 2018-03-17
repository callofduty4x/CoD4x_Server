#include "entity.h"



class EntHandle
{
    public:
        bool __cdecl isDefined();
        gentity_s* __cdecl ent( );
        void __cdecl setEnt(gentity_s *ent);
        static void __cdecl Shutdown();
        static void __cdecl Init();

        uint16_t number;
        uint16_t infoIndex;

};

unsigned int __cdecl GScr_AllocString(const char *s);
