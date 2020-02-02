#include "g_public_mp.hpp"

extern "C"
{
    void __cdecl EntHandle_setEnt(EntHandle* self, gentity_s* Ent_)
    {
        self->setEnt(Ent_);
    }
    
    void __cdecl EntHandle_Init()
    {
        EntHandle::Init();
    }

    void __cdecl EntHandle_Shutdown()
    {
        EntHandle::Shutdown();
    }
}
