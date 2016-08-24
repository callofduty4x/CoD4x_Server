#include "q_shared.h"
#include "q_math.h"
#include <math.h>

void Math_VectorToAngles(vec3_t vector, vec3_t angles)
{
	angles[0] = 0.0;
	angles[1] = 0.0;
	angles[2] = 0.0;

	if ( vector[1] == 0.0 )
	{
		if ( vector[0] == 0.0 )
		{
			angles[0] = 90.0;
			if ( vector[2] > 0.0 )
				angles[0] = 270.0;
		}
	}
	else
	{
		angles[0] = atan2(vector[2], sqrt(vector[0] * vector[0] + vector[1] * vector[1])) * -180.0 / M_PI;
		angles[1] = atan2(vector[1], vector[0]) * 180.0 / M_PI;

		if ( angles[0] < 0.0 )
			angles[0] += 360.0;

		if ( angles[1] < 0.0 )
			angles[1] += 360.0;
	}
}

void Math_AnglesToVectors( const vec3_t angles, vec3_t forward, vec3_t right, vec3_t up )
{
	double angle;
	static float sr, sp, sy, cr, cp, cy;
	// static to help MS compiler fp bugs

	angle = angles[YAW] * (M_PI / 180.0);
	sy = sin(angle);
	cy = cos(angle);

	angle = angles[PITCH] * (M_PI / 180.0);
	sp = sin(angle);
	cp = cos(angle);

	angle = angles[ROLL] * (M_PI / 180.0);
	sr = sin(angle);
	cr = cos(angle);

	if(forward)
	{
		forward[0] = cp * cy;
		forward[1] = cp * sy;
		forward[2] = -sp;
	}
	if(right)
	{
		right[0] = ( -1 * sr * sp * cy + - 1 * cr * -sy );
		right[1] = ( -1 * sr * sp * sy + - 1 * cr * cy );
		right[2] = -1 * sr * cp;
	}
	if (up)
	{
		up[0] = ( cr * sp * cy + - sr * -sy );
		up[1] = ( cr * sp * sy + - sr * cy );
		up[2] = cr * cp;
	}
}



void AddLeanToPosition(float *position, const float fViewYaw, const float fLeanFrac, const float fViewRoll, const float fLeanDist)
{
  float v;
  vec3_t v3ViewAngles;
  vec3_t right;

  if ( fLeanFrac != 0.0 )
  {
    v = fLeanFrac * (2.0 - fabs(fLeanFrac));
    v3ViewAngles[0] = 0.0;
    v3ViewAngles[1] = fViewYaw;
    v3ViewAngles[2] = fViewRoll * v;
    AngleVectors(v3ViewAngles, 0, right, 0);
    VectorMA(position, v * fLeanDist, right, position);
  }
}


int BoxDistSqrdExceeds(const float *absmin, const float *absmax, const float *org, const float fogOpaqueDistSqrd)
{

  float f;
  vec3_t ma;
  vec3_t mi;
  int i;

  mi[0] = absmin[0] - org[0];
  mi[1] = absmin[1] - org[1];
  mi[2] = absmin[2] - org[2];
  ma[0] = absmax[0] - org[0];
  ma[1] = absmax[1] - org[1];
  ma[2] = absmax[2] - org[2];

  for(i = 0, f = 0.0; i < 3; ++i)
  {
	if ( (float)(mi[i] * ma[i]) > 0.0 )
	{
      f = f + fminf(ma[i] * ma[i], mi[i] * mi[i]);
	}
	
  }
  
  if(f > fogOpaqueDistSqrd)
  {
	  return qtrue;
  }
  return qfalse;
}

int BoxOnPlaneSide( vec3_t emins, vec3_t emaxs, struct cplane_s *p ) {
	float dist1, dist2;
	int sides;

// fast axial cases
	if ( p->type < 3 ) {
		if ( p->dist <= emins[p->type] ) {
			return 1;
		}
		if ( p->dist >= emaxs[p->type] ) {
			return 2;
		}
		return 3;
	}

// general case
	switch ( p->signbits )
	{
	case 0:
		dist1 = p->normal[0] * emaxs[0] + p->normal[1] * emaxs[1] + p->normal[2] * emaxs[2];
		dist2 = p->normal[0] * emins[0] + p->normal[1] * emins[1] + p->normal[2] * emins[2];
		break;
	case 1:
		dist1 = p->normal[0] * emins[0] + p->normal[1] * emaxs[1] + p->normal[2] * emaxs[2];
		dist2 = p->normal[0] * emaxs[0] + p->normal[1] * emins[1] + p->normal[2] * emins[2];
		break;
	case 2:
		dist1 = p->normal[0] * emaxs[0] + p->normal[1] * emins[1] + p->normal[2] * emaxs[2];
		dist2 = p->normal[0] * emins[0] + p->normal[1] * emaxs[1] + p->normal[2] * emins[2];
		break;
	case 3:
		dist1 = p->normal[0] * emins[0] + p->normal[1] * emins[1] + p->normal[2] * emaxs[2];
		dist2 = p->normal[0] * emaxs[0] + p->normal[1] * emaxs[1] + p->normal[2] * emins[2];
		break;
	case 4:
		dist1 = p->normal[0] * emaxs[0] + p->normal[1] * emaxs[1] + p->normal[2] * emins[2];
		dist2 = p->normal[0] * emins[0] + p->normal[1] * emins[1] + p->normal[2] * emaxs[2];
		break;
	case 5:
		dist1 = p->normal[0] * emins[0] + p->normal[1] * emaxs[1] + p->normal[2] * emins[2];
		dist2 = p->normal[0] * emaxs[0] + p->normal[1] * emins[1] + p->normal[2] * emaxs[2];
		break;
	case 6:
		dist1 = p->normal[0] * emaxs[0] + p->normal[1] * emins[1] + p->normal[2] * emins[2];
		dist2 = p->normal[0] * emins[0] + p->normal[1] * emaxs[1] + p->normal[2] * emaxs[2];
		break;
	case 7:
		dist1 = p->normal[0] * emins[0] + p->normal[1] * emins[1] + p->normal[2] * emins[2];
		dist2 = p->normal[0] * emaxs[0] + p->normal[1] * emaxs[1] + p->normal[2] * emaxs[2];
		break;
	default:
		dist1 = dist2 = 0;      // shut up compiler
		break;
	}

	sides = 0;
	if ( dist1 >= p->dist ) {
		sides = 1;
	}
	if ( dist2 < p->dist ) {
		sides |= 2;
	}

	return sides;
}

