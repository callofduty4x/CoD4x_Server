#include "client_dedicated.h"
#include "g_shared.h"

extern "C" void G_DebugBulletImpact(gentity_s *attacker, float* impactpos)
{
    if(g_debugBullets->boolean == false)
    {
        return;
    }
    if(attacker->client == NULL)
    {
        return;
    }
    
    SV_AddDebugStar(attacker->s.number, impactpos, colorRed, 100);

}