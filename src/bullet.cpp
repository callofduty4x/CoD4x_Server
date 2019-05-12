#include "client_dedicated.h"
#include "g_shared.h"
#include "cm_public.h"
#include "qcommon_io.h"

extern "C" void G_DebugBulletImpact(gentity_s *attacker, float* start, float* end)
{
    if(g_debugBullets->integer == 0)
    {
        return;
    }
    if(attacker->client == NULL)
    {
        return;
    }

    trace_t trace;
    vec3_t endpos;
    int iClipMask = 0x2806831;

    G_LocationalTrace(&trace, start, end, attacker->s.number, iClipMask, NULL);

    Vec3Lerp(start, end, trace.fraction, endpos);

    SV_AddDebugStar(attacker->s.number, endpos, colorRed, 2);


    if(g_debugBullets->integer < 2)
    {
        return;
    }



    int i;
    gclient_s* cl;
    gclient_s* ik;

    ik = &level.clients[attacker->s.number];

    float bestanglediff = 1000;
    gclient_s* best = NULL;

    //Find player who is most close to the crosshair

    for(i = 0, cl = level.clients; i < level.maxclients; ++i, ++cl)
    {
        if(ik == cl)
        {
            continue;
        }
        if(cl->sess.connected != CON_CONNECTED)
        {
            continue;
        }
        if(cl->sess.sessionState != SESS_STATE_PLAYING){
            continue;
        }
        vec3_t dist;
        VectorSubtract(cl->ps.origin, ik->ps.origin, dist);

        vec3_t viewangles;
        VectorCopy(ik->ps.viewangles, viewangles);

        viewangles[2] = 0;
        vec3_t vright, vup, vfwd;

        AngleVectors(viewangles, vfwd, vright, vup);

        vec3_t transformedAngles;

        transformedAngles[0] = DotProduct(dist, vright);
        transformedAngles[1] = DotProduct(dist, vup);
        transformedAngles[2] = DotProduct(dist, vfwd);


	if(transformedAngles[2] < 0.001)
	{
		continue;
	}
	
	float tanHalfFovX = tan((15)*(M_PI/180.0));
	
	float fScreenX = transformedAngles[0] / tanHalfFovX / transformedAngles[2];
	float fScreenY = transformedAngles[1] / tanHalfFovX / transformedAngles[2];

	if(fabs(fScreenX) > 2 || fabs(fScreenY) > 2)
	{
		continue;
	}


        float newangles = sqrt(fabs(fScreenX) * fabs(fScreenY));

        if(newangles < bestanglediff)
        {

            bestanglediff = newangles;
            best = cl;
        }

    }

    if(best)
    {
	int height = 64;
	int width = 28;
	float* draworigin = g_entities[best->ps.clientNum].r.currentOrigin;

	//draworigin is antilag compensated when active

	vec3_t normal;
	vec3_t tmp = {0 ,0 ,1};

        VectorSubtract(draworigin, ik->ps.origin, normal);
        VectorNormalize(normal);

	vec3_t left, right;

        CrossProduct(normal, tmp, left);
        VectorCopy(left, right);
        VectorInverse(right);

        VectorScale(left, width /2, left);
        VectorScale(right, width /2, right);

        VectorAdd(left, draworigin, left);
        VectorAdd(right, draworigin, right);

        //Draw a box around this player
        vec3_t p[4];
        p[0][0] = left[0];
        p[0][1] = left[1];
        p[0][2] = draworigin[2] + height;

        p[1][0] = right[0];
        p[1][1] = right[1];
        p[1][2] = draworigin[2] + height;


        p[2][0] = left[0];
        p[2][1] = left[1];
        p[2][2] = draworigin[2];

        p[3][0] = right[0];
        p[3][1] = right[1];
        p[3][2] = draworigin[2];

        SV_AddDebugLine(attacker->s.number, p[0], p[1], colorBlue, 0, 2);
        SV_AddDebugLine(attacker->s.number, p[0], p[2], colorBlue, 0, 2);
        SV_AddDebugLine(attacker->s.number, p[1], p[3], colorBlue, 0, 2);
        SV_AddDebugLine(attacker->s.number, p[3], p[2], colorBlue, 0, 2);

    }


}

