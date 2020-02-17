#include "g_public_mp.hpp"

extern "C"
{
    void CCDECL EntHandle_setEnt(EntHandle* self, gentity_s* Ent_)
    {
        self->setEnt(Ent_);
    }
    
    void CCDECL EntHandle_Init()
    {
        EntHandle::Init();
    }

    void CCDECL EntHandle_Shutdown()
    {
        EntHandle::Shutdown();
    }
}
