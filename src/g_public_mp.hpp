#pragma once
#include <cstdint>

#include "q_platform.hpp"


struct gentity_s;

class EntHandle
{
public:
    bool isDefined();
    gentity_s* ent();
    int entnum();
    void setEnt(gentity_s* ent);
    static void Shutdown();
    static void Init();

    uint16_t number;
    uint16_t infoIndex;
};

void CDECL EntHandleDissociate(gentity_s* ent);
unsigned int CDECL GScr_AllocString(const char *s);

extern "C"
{
    void CDECL EntHandle_setEnt(EntHandle* self, gentity_s* Ent_);
    void CDECL EntHandle_Init();
    void CDECL EntHandle_Shutdown();
}
