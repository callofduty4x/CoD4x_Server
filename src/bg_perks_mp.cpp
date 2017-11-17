#include "q_shared.h"
#include "cvar.h"

cvar_t* perk_weapSpreadMultiplier;
cvar_t* perk_weapReloadMultiplier;
cvar_t* perk_weapRateMultiplier;
cvar_t* perk_extraBreath;
cvar_t* perk_bulletPenetrationMultiplier;
cvar_t* perk_grenadeDeath;
cvar_t* perk_parabolicRadius;
cvar_t* perk_parabolicAngle;
cvar_t* perk_parabolicIcon;
cvar_t* perk_sprintMultiplier;



int BG_GetPerkIndexForName(const char* name){

	const char *perks[] =  {"specialty_gpsjammer", "specialty_bulletaccuracy", "specialty_fastreload", "specialty_rof",
			"specialty_holdbreath", "specialty_bulletpenetration", "specialty_grenadepulldeath",
			"specialty_pistoldeath", "specialty_quieter", "specialty_parabolic", "specialty_longersprint",
			"specialty_detectexplosive", "specialty_explosivedamage", "specialty_exposeenemy",
			"specialty_bulletdamage", "specialty_extraammo", "specialty_twoprimaries",
			"specialty_armorvest", "specialty_fraggrenade", "specialty_specialgrenade", NULL };

        int i;

        if(!name)
            return 20;

        for(i = 0; i < 20; i++){
            if(!Q_stricmp(name, perks[i]))
                break;
        }

        return i;
}


extern "C" void Perks_RegisterDvars()
{
  perk_weapSpreadMultiplier = Cvar_RegisterFloat("perk_weapSpreadMultiplier", 0.64999998, 0.0, 1.0, 0x80u, "Percentage of weapon spread to use");
  perk_weapReloadMultiplier = Cvar_RegisterFloat("perk_weapReloadMultiplier", 0.5, 0.0, 1.0, 0x80u, "Percentage of weapon reload time to use");
  perk_weapRateMultiplier = Cvar_RegisterFloat("perk_weapRateMultiplier", 0.75, 0.0, 1.0, 0x80u, "Percentage of weapon firing rate to use");
  perk_extraBreath = Cvar_RegisterFloat("perk_extraBreath", 5.0, 0.0, 3.4028235e38, 0x80u, "Number of extra seconds a player can hold his breath");
  perk_bulletPenetrationMultiplier = Cvar_RegisterFloat("perk_bulletPenetrationMultiplier", 2.0, 0.0, 30.0, 0x80u, "Multiplier for extra bullet penetration");
  perk_grenadeDeath = Cvar_RegisterString("perk_grenadeDeath", "frag_grenade_short_mp", 0x80u, "Name of the grenade weapon to drop");
  perk_parabolicRadius = Cvar_RegisterFloat("perk_parabolicRadius", 400.0, 0.0, 3.4028235e38, 0x80u, "Eavesdrop perk's effective radius");
  perk_parabolicAngle = Cvar_RegisterFloat("perk_parabolicAngle", 180.0, 0.0, 180.0, 0x80u, "Eavesdrop perk's effective FOV angle");
  perk_parabolicIcon = Cvar_RegisterString("perk_parabolicIcon", "specialty_parabolic", 0x80u, "Eavesdrop icon to use when displaying eavesdropped voice chats");
  perk_sprintMultiplier = Cvar_RegisterFloat("perk_sprintMultiplier", 2.0, 0.0, 3.4028235e38, 0x80u, "Multiplier for player_sprinttime");
}

