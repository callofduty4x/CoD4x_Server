#include "g_weapon.hpp"

#include "qshared.hpp"
#include "qshared.hpp"
#include "g_shared.hpp"
#include "server.hpp"
#include "server_public.hpp"
#include "cscr_stringlist.hpp"
#include "g_main_mp.hpp"
#include "bg_weapons.hpp"

using namespace std;

extern "C"
{
    void __cdecl G_SetupWeaponDef()
    {
        Com_DPrintf(CON_CHANNEL_PLAYERWEAP, "----------------------\n");
        Com_DPrintf(CON_CHANNEL_PLAYERWEAP, "Game: G_SetupWeaponDef\n");
        if ( bg_lastParsedWeaponIndex == 0)
        {
            Com_SetWeaponInfoMemory(1);
            ClearRegisteredItems();
            BG_ClearWeaponDef();
            G_GetWeaponIndexForName("defaultweapon_mp");
        }

        Com_DPrintf(CON_CHANNEL_PLAYERWEAP, "----------------------\n");
    }


    void __cdecl G_AntiLagRewindClientPos(int gameTime, AntilagClientStore *antilagStore)
    {



        if ( g_antilag->boolean == qfalse)
            return;

        assert(antilagStore != NULL);
        memset(antilagStore, 0, sizeof(*antilagStore));
        assert(gameTime > 0);
        if ( level.time - gameTime > 400 )
            gameTime = level.time - 400;

        if ( level.time - gameTime > 1000 / level.framerate )
        {
            bool success[MAX_CLIENTS] = {false};
            vec3_t clientPositions[MAX_CLIENTS] = {{0.0, 0.0, 0.0}};
            vec3_t clientAngles[MAX_CLIENTS] = {{0.0, 0.0, 0.0}};
            if ( SV_GetClientPositionsAtTime(gameTime, clientPositions, clientAngles, success) )
            {
                for (int client = 0; client < level.maxclients; ++client )
                {
                    if ( !success[client] || level.clients[client].sess.connected != CON_CONNECTED || level.clients[client].sess.sessionState )
                        antilagStore->clientMoved[client] = false;
                    else
                    {
                        assert(!isnan(clientPositions[client][0]) && !isnan(clientPositions[client][1]) && !isnan(clientPositions[client][2]));
                        assert(!isnan(clientAngles[client][0]) && !isnan(clientAngles[client][1]) && !isnan(clientAngles[client][2]));

                        VectorCopy(g_entities[client].r.currentOrigin, antilagStore->realClientPositions[client]);
                        assertx(!isnan( antilagStore->realClientPositions[client][0]) &&
                                !isnan(antilagStore->realClientPositions[client][1]) &&
                                !isnan(antilagStore->realClientPositions[client][2]),
                                "client %i's origin is invalid - (%f, %f, %f)", client,
                                antilagStore->realClientPositions[client][0],
                                antilagStore->realClientPositions[client][1],
                                antilagStore->realClientPositions[client][2]);

                        SV_UnlinkEntity(&g_entities[client]);

                        VectorCopy(clientPositions[client], g_entities[client].r.currentOrigin);

                        SV_LinkEntity(&g_entities[client]);
                        antilagStore->clientMoved[client] = true;
                    }
                }
            }
        }
    }


    void __cdecl G_AntiLag_RestoreClientPos(struct AntilagClientStore *antilagStore)
    {
        if ( g_antilag->boolean == qfalse)
            return;

        assert(antilagStore != NULL);

        for (int client = 0; client < level.maxclients; ++client )
        {
            if ( antilagStore->clientMoved[client] )
            {
                assertx(!isnan(antilagStore->realClientPositions[client][0]) &&
                        !isnan(antilagStore->realClientPositions[client][1]) &&
                        !isnan(antilagStore->realClientPositions[client][2]),
                        "client %i's origin is invalid - (%f, %f, %f)", client,
                        antilagStore->realClientPositions[client][0],
                        antilagStore->realClientPositions[client][1],
                        antilagStore->realClientPositions[client][2]);

                //Unlink not in Blackops...
                SV_UnlinkEntity(&g_entities[client]);
                VectorCopy(antilagStore->realClientPositions[client], g_entities[client].r.currentOrigin);
                SV_LinkEntity(&g_entities[client]);
                antilagStore->clientMoved[client] = false;
            }
        }
    }
} // extern "C"

