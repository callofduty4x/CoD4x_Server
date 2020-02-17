#include "g_public_mp.hpp"

extern "C"
{
    void CDECL EntHandle_setEnt(EntHandle* self, gentity_s* Ent_)
    {
        self->setEnt(Ent_);
    }
    
    void CDECL EntHandle_Init()
    {
        EntHandle::Init();
    }

    void CDECL EntHandle_Shutdown()
    {
        EntHandle::Shutdown();
    }
}
