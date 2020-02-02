#include "g_client_script_cmd_mp.hpp"
#include "g_client_mp.hpp"
#include "g_main_mp.hpp"
#include "server.hpp"


extern "C"
{
    void PlayerCmd_spawn(scr_entref_t arg)
    {
        mvabuf;

        if (arg.classnum)
            return Scr_ObjectError("Not an entity");

        int entityNum = arg.entnum;
        gentity_t *gentity = &g_entities[entityNum];

        if (!gentity->client)
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));

        vec3_t position;
        vec3_t direction;
        Scr_GetVector(0, position);
        Scr_GetVector(1, direction);
        ClientSpawn(gentity, position, direction);
    }

    /*
    ============
    PlayerCmd_GetGuid

    Returns the players Guid.
    Usage: string = self getGuid();
    ============
    */

    void PlayerCmd_GetGuid(scr_entref_t arg)
    {
        mvabuf;

        if (arg.classnum)
            Scr_ObjectError("Not an entity");

        int entityNum = arg.entnum;
        gentity_t *gentity = &g_entities[entityNum];

        if (!gentity->client)
            Scr_ObjectError(va("Entity: %i is not a player", entityNum));

        if (Scr_GetNumParam())
            Scr_Error("Usage: self getGuid()\n");

        char buf[128];
        const char * guid = SV_GetGuid(entityNum, buf, sizeof(buf));

        return Scr_AddString(guid ? guid : "");
    }
}
