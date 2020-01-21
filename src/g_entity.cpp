#include "q_shared.h"
#include "entity.h"
#include "g_shared.h"
#include "scr_vm.h"



qboolean __cdecl G_SpawnString(SpawnVar *spawnVar, const char *key, const char *defaultString, const char **out)
{
	int i;

	if ( spawnVar->numSpawnVars <= 0 )
	{
		*out = defaultString;
		return 0;
	}

	for(i = 0; i < spawnVar->numSpawnVars; i++)
	{
		if(!Q_stricmp(key, spawnVar->spawnVars[i].key))
		{
			*out = spawnVar->spawnVars[i].value;
			return 1;
		}
	}
	*out = defaultString;
	return 0;
}

qboolean __cdecl G_LevelSpawnString(const char *key, const char *defaultString, const char **out)
{

    return G_SpawnString(&level.spawnVars, key, defaultString, out);

}


void __cdecl G_VehSpawner(gentity_t *ent)
{
    const char* value;
    char vehTypeStr[MAX_QPATH];

    if(level.spawnVars.spawnVarsValid)
    {
        G_LevelSpawnString("vehicletype", 0, &value);

    }else{

        if(Scr_GetNumParam() == 3)
        {
            //Scr_Error("Usage: spawn(\"script_vehicle\", <origin>, <spawnflags>, <vehicletype>)");
            Q_strncpyz(vehTypeStr, "defaultvehicle_mp", sizeof(vehTypeStr));

        }else{

            Q_strncpyz(vehTypeStr, Scr_GetString(3), sizeof(vehTypeStr));

            if(Scr_GetNumParam() == 5)
            {
                G_SetModel(ent, Scr_GetString(4));
            }

        }
        value = vehTypeStr;
    }

    SpawnVehicle( ent, value );
}

void __cdecl G_VehCollmapSpawner(gentity_t *ent)
{

    ent->r.contents = 0;
    ent->s.eType = 15;

}

