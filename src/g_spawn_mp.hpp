#pragma once
#include "entity.hpp"
#include "g_fields.hpp"


struct ent_field_t
{
    const char* name;
    int ofs;
    fieldtype_t type;
    void(__cdecl* callback)(gentity_t*, int);
};


struct SpawnFuncEntry
{
    const char* classname;
    void(__cdecl* callback)(gentity_s*);
};


extern "C"
{
    extern ent_field_t ent_fields[11];
    extern SpawnFuncEntry s_bspOrDynamicSpawns[6];
    extern SpawnFuncEntry s_bspOnlySpawns[14];
    
    qboolean G_CallSpawnEntity(gentity_t* ent);
    void Scr_GetEnt();
    void Scr_GetEntArray();
    void CCDECL GScr_AddFieldsForEntity();
    void CCDECL Scr_ReadOnlyField(gentity_s* ent, int offset);
    void CCDECL Scr_SetOrigin(gentity_s* ent, int offset);
    void CCDECL Scr_SetHealth(gentity_s* ent, int offset);
    void CCDECL Scr_SetAngles(gentity_s* ent, int offset);
    void CCDECL SP_info_notnull(gentity_s* self);
    void CCDECL SP_trigger_radius(gentity_s* self);
    void CCDECL SP_script_model(gentity_s* self);
    void CCDECL SP_script_origin(gentity_s* self);

    void CCDECL trigger_use(gentity_s* ent);
    void CCDECL trigger_use_touch(gentity_s* ent);
    void CCDECL SP_trigger_multiple(gentity_s* ent);
    void CCDECL SP_trigger_disk(gentity_s* ent);
    void CCDECL SP_trigger_hurt(gentity_s* ent);
    void CCDECL SP_trigger_once(gentity_s* ent);
    void CCDECL SP_trigger_damage(gentity_s* ent);
    void CCDECL SP_trigger_lookat(gentity_s* ent);
    void CCDECL SP_light(gentity_s* ent);
    void CCDECL SP_turret(gentity_s* ent);
    void CCDECL SP_script_brushmodel(gentity_s* ent);

    void CCDECL G_SetModel(gentity_t* ent, const char* modelname);
}
