#include "q_shared.h"
#include "q_math.h"
#include <math.h>

void Math_VectorToAngles(vec3_t vector, vec3_t angles)
{
    angles[0] = 0.0;
    angles[1] = 0.0;
    angles[2] = 0.0;

    if (vector[1] == 0.0)
    {
        if (vector[0] == 0.0)
        {
            angles[0] = 90.0;
            if (vector[2] > 0.0)
                angles[0] = 270.0;
        }
    }
    else
    {
        angles[0] = atan2(vector[2], sqrt(vector[0] * vector[0] +
                                          vector[1] * vector[1])) *
                                          -180.0 / M_PI;
        angles[1] = atan2(vector[1], vector[0]) * 180.0 / M_PI;

        if (angles[0] < 0.0)
            angles[0] += 360.0;

        if (angles[1] < 0.0)
            angles[1] += 360.0;
    }
}



void vectoangles( const vec3_t value1, vec3_t angles ) {
	float forward;
	float yaw, pitch;

	if ( value1[1] == 0 && value1[0] == 0 ) {
		yaw = 0;
		if ( value1[2] > 0 ) {
			pitch = 90;
		} else {
			pitch = 270;
		}
	} else {
		if ( value1[0] ) {
			yaw = ( atan2( value1[1], value1[0] ) * 180 / M_PI );
		} else if ( value1[1] > 0 )   {
			yaw = 90;
		} else {
			yaw = 270;
		}
		if ( yaw < 0 ) {
			yaw += 360;
		}

		forward = sqrt( value1[0] * value1[0] + value1[1] * value1[1] );
		pitch = ( atan2( value1[2], forward ) * 180 / M_PI );
		if ( pitch < 0 ) {
			pitch += 360;
		}
	}

	angles[PITCH] = -pitch;
	angles[YAW] = yaw;
	angles[ROLL] = 0;
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
    if(up)
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

    if (fLeanFrac != 0.0)
    {
        v = fLeanFrac * (2.0 - fabs(fLeanFrac));
        v3ViewAngles[0] = 0.0;
        v3ViewAngles[1] = fViewYaw;
        v3ViewAngles[2] = fViewRoll * v;
        Math_AnglesToVectors(v3ViewAngles, 0, right, 0);
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
        if ((float)(mi[i] * ma[i]) > 0.0)
            f = f + fminf(ma[i] * ma[i], mi[i] * mi[i]);
    }

    if(f > fogOpaqueDistSqrd)
        return qtrue;

    return qfalse;
}

int BoxOnPlaneSide( vec3_t emins, vec3_t emaxs, struct cplane_s *p ) {
    float dist1, dist2;
    int sides;

    // fast axial cases
    if (p->type < 3)
    {
        if (p->dist <= emins[p->type])
            return 1;

        if (p->dist >= emaxs[p->type])
            return 2;

        return 3;
    }

    // general case
    switch (p->signbits)
    {
        case 0:
            dist1 = p->normal[0] * emaxs[0] + p->normal[1] * emaxs[1] +
                    p->normal[2] * emaxs[2];
            dist2 = p->normal[0] * emins[0] + p->normal[1] * emins[1] +
                    p->normal[2] * emins[2];
            break;
        case 1:
            dist1 = p->normal[0] * emins[0] + p->normal[1] * emaxs[1] +
                    p->normal[2] * emaxs[2];
            dist2 = p->normal[0] * emaxs[0] + p->normal[1] * emins[1] +
                    p->normal[2] * emins[2];
            break;
        case 2:
            dist1 = p->normal[0] * emaxs[0] + p->normal[1] * emins[1] +
                    p->normal[2] * emaxs[2];
            dist2 = p->normal[0] * emins[0] + p->normal[1] * emaxs[1] +
                    p->normal[2] * emins[2];
            break;
        case 3:
            dist1 = p->normal[0] * emins[0] + p->normal[1] * emins[1] +
                    p->normal[2] * emaxs[2];
            dist2 = p->normal[0] * emaxs[0] + p->normal[1] * emaxs[1] +
                    p->normal[2] * emins[2];
            break;
        case 4:
            dist1 = p->normal[0] * emaxs[0] + p->normal[1] * emaxs[1] +
                    p->normal[2] * emins[2];
            dist2 = p->normal[0] * emins[0] + p->normal[1] * emins[1] +
                    p->normal[2] * emaxs[2];
            break;
        case 5:
            dist1 = p->normal[0] * emins[0] + p->normal[1] * emaxs[1] +
                    p->normal[2] * emins[2];
            dist2 = p->normal[0] * emaxs[0] + p->normal[1] * emins[1] +
                    p->normal[2] * emaxs[2];
            break;
        case 6:
            dist1 = p->normal[0] * emaxs[0] + p->normal[1] * emins[1] +
                    p->normal[2] * emins[2];
            dist2 = p->normal[0] * emins[0] + p->normal[1] * emaxs[1] +
                    p->normal[2] * emaxs[2];
            break;
        case 7:
            dist1 = p->normal[0] * emins[0] + p->normal[1] * emins[1] +
                    p->normal[2] * emins[2];
            dist2 = p->normal[0] * emaxs[0] + p->normal[1] * emaxs[1] +
                    p->normal[2] * emaxs[2];
            break;
        default:
            dist1 = dist2 = 0; /* Shut up compiler. */
            break;
    }

    sides = 0;
    if (dist1 >= p->dist)
        sides = 1;

    if (dist2 < p->dist)
        sides |= 2;

    return sides;
}

/* Returns maximum absolute value of vector's components. */
float vec2_maxabs(vec2_t v)
{
    vec2_t v_abs;
    v_abs[0] = fabs(v[0]);
    v_abs[1] = fabs(v[1]);

    if (v_abs[0] > v_abs[1])
        return v_abs[0];

    return v_abs[1];
}

vec3_t vec3_origin = {0,0,0};


vec_t Vec3Normalize( vec3_t v ) {
	float length, ilength;

	length = v[0] * v[0] + v[1] * v[1] + v[2] * v[2];
	length = sqrt( length );

	if ( length ) {
		ilength = 1 / length;
		v[0] *= ilength;
		v[1] *= ilength;
		v[2] *= ilength;
	}

	return length;
}

vec_t VectorLength( const vec3_t v ) {
	return sqrt( v[0] * v[0] + v[1] * v[1] + v[2] * v[2] );
}

vec_t Vec2Length( const vec2_t v ) {
	return sqrt( v[0] * v[0] + v[1] * v[1] );
}

vec_t VectorLengthSquared( const vec3_t v ) {
	return ( v[0] * v[0] + v[1] * v[1] + v[2] * v[2] );
}

vec_t Vec4LengthSq( const vec4_t v)
{
	return ( v[0] * v[0] + v[1] * v[1] + v[2] * v[2] + v[3] * v[3] );
}

void VectorInverse( vec3_t v ) {
	v[0] = -v[0];
	v[1] = -v[1];
	v[2] = -v[2];
}


void AngleVectors( const vec3_t angles, vec3_t forward, vec3_t right, vec3_t up ) {
	float angle;
	static float sr, sp, sy, cr, cp, cy;
	// static to help MS compiler fp bugs

	angle = angles[YAW] * ( M_PI * 2 / 360 );
	sy = sin( angle );
	cy = cos( angle );
	angle = angles[PITCH] * ( M_PI * 2 / 360 );
	sp = sin( angle );
	cp = cos( angle );
	angle = angles[ROLL] * ( M_PI * 2 / 360 );
	sr = sin( angle );
	cr = cos( angle );

	if ( forward ) {
		forward[0] = cp * cy;
		forward[1] = cp * sy;
		forward[2] = -sp;
	}
	if ( right ) {
		right[0] = ( -1 * sr * sp * cy + - 1 * cr * -sy );
		right[1] = ( -1 * sr * sp * sy + - 1 * cr * cy );
		right[2] = -1 * sr * cp;
	}
	if ( up ) {
		up[0] = ( cr * sp * cy + - sr * -sy );
		up[1] = ( cr * sp * sy + - sr * cy );
		up[2] = cr * cp;
	}
}

int VectorCompare( const vec3_t v1, const vec3_t v2 ) {
	if ( v1[0] != v2[0] || v1[1] != v2[1] || v1[2] != v2[2] ) {
		return 0;
	}

	return 1;
}


float VectorDistance( vec3_t v1, vec3_t v2 ) {
	vec3_t dir;

	VectorSubtract( v2, v1, dir );
	return VectorLength( dir );
}


vec_t VectorNormalize2( const vec3_t v, vec3_t out ) {
	float length, ilength;

	length = v[0] * v[0] + v[1] * v[1] + v[2] * v[2];
	length = sqrt( length );

	if ( length ) {
		ilength = 1 / length;
		out[0] = v[0] * ilength;
		out[1] = v[1] * ilength;
		out[2] = v[2] * ilength;
	} else {
		VectorClear( out );
	}

	return length;

}

vec_t Distance( const vec3_t p1, const vec3_t p2 ) {
	vec3_t v;

	VectorSubtract( p2, p1, v );
	return VectorLength( v );
}

/*
=================
RadiusFromBounds
=================
*/
float RadiusFromBounds( const vec3_t mins, const vec3_t maxs ) {
	int i;
	vec3_t corner;
	float a, b;

	for ( i = 0 ; i < 3 ; i++ ) {
		a = fabs( mins[i] );
		b = fabs( maxs[i] );
		corner[i] = a > b ? a : b;
	}

	return VectorLength( corner );
}


/*
=================
AnglesToAxis
=================
*/
void AnglesToAxis( const vec3_t angles, vec3_t axis[3] ) {
	vec3_t right;

	// angle vectors returns "right" instead of "y axis"
	AngleVectors( angles, axis[0], right, axis[2] );
	VectorSubtract( vec3_origin, right, axis[1] );
}

void AxisClear( vec3_t axis[3] ) {
	axis[0][0] = 1;
	axis[0][1] = 0;
	axis[0][2] = 0;
	axis[1][0] = 0;
	axis[1][1] = 1;
	axis[1][2] = 0;
	axis[2][0] = 0;
	axis[2][1] = 0;
	axis[2][2] = 1;
}

void AxisCopy( vec3_t in[3], vec3_t out[3] ) {
	VectorCopy( in[0], out[0] );
	VectorCopy( in[1], out[1] );
	VectorCopy( in[2], out[2] );
}

/*
================
ProjectPointOntoVector
================
*/
void ProjectPointOntoVector( vec3_t point, vec3_t vStart, vec3_t vEnd, vec3_t vProj ) {
	vec3_t pVec, vec;

	VectorSubtract( point, vStart, pVec );
	VectorSubtract( vEnd, vStart, vec );
	VectorNormalize( vec );
	// project onto the directional vector for this segment
	VectorMA( vStart, DotProduct( pVec, vec ), vec, vProj );
}


vec_t Vec3NormalizeTo( const vec3_t v, vec3_t out )
{
  float length;

  length = VectorLength(v);
  if ( length == 0.0 )
  {
    length = 1.0;
  }
  VectorScale(v, length, out);
  return length;
}

double __cdecl Vec2NormalizeTo(const float *v, float *out)
{
  float length;

  length = Vec2Length(v);
  if ( length == 0.0 )
  {
    length = 1.0;
  }
  Vec2Scale(v, length, out);
  return length;
}

void __cdecl MatrixMultiply43(const float (*in1)[3], const float (*in2)[3], float (*out)[3])
{
  assert(in1 != out);
  assert(in2 != out);

  (*out)[0] = (((*in1)[0] * (*in2)[0]) + ((*in1)[1] * (*in2)[3])) + ((*in1)[2] * (*in2)[6]);
  (*out)[3] = (((*in1)[3] * (*in2)[0]) + ((*in1)[4] * (*in2)[3])) + ((*in1)[5] * (*in2)[6]);
  (*out)[6] = (((*in1)[6] * (*in2)[0]) + ((*in1)[7] * (*in2)[3])) + ((*in1)[8] * (*in2)[6]);
  (*out)[1] = (((*in1)[0] * (*in2)[1]) + ((*in1)[1] * (*in2)[4])) + ((*in1)[2] * (*in2)[7]);
  (*out)[4] = (((*in1)[3] * (*in2)[1]) + ((*in1)[4] * (*in2)[4])) + ((*in1)[5] * (*in2)[7]);
  (*out)[7] = (((*in1)[6] * (*in2)[1]) + ((*in1)[7] * (*in2)[4])) + ((*in1)[8] * (*in2)[7]);
  (*out)[2] = (((*in1)[0] * (*in2)[2]) + ((*in1)[1] * (*in2)[5])) + ((*in1)[2] * (*in2)[8]);
  (*out)[5] = (((*in1)[3] * (*in2)[2]) + ((*in1)[4] * (*in2)[5])) + ((*in1)[5] * (*in2)[8]);
  (*out)[8] = (((*in1)[6] * (*in2)[2]) + ((*in1)[7] * (*in2)[5])) + ((*in1)[8] * (*in2)[8]);
  (*out)[9] = ((((*in1)[9] * (*in2)[0]) + ((*in1)[10] * (*in2)[3])) + ((*in1)[11] * (*in2)[6])) + (*in2)[9];
  (*out)[10] = ((((*in1)[9] * (*in2)[1]) + ((*in1)[10] * (*in2)[4])) + ((*in1)[11] * (*in2)[7])) + (*in2)[10];
  (*out)[11] = ((((*in1)[9] * (*in2)[2]) + ((*in1)[10] * (*in2)[5])) + ((*in1)[11] * (*in2)[8])) + (*in2)[11];
}


void __cdecl MatrixTranspose(const float (*in)[3], float (*out)[3])
{
  assert( in != out);

  (*out)[0] = (*in)[0];
  (*out)[1] = (*in)[3];
  (*out)[2] = (*in)[6];
  (*out)[3] = (*in)[1];
  (*out)[4] = (*in)[4];
  (*out)[5] = (*in)[7];
  (*out)[6] = (*in)[2];
  (*out)[7] = (*in)[5];
  (*out)[8] = (*in)[8];
}

void __cdecl MatrixTransposeTransformVector(const float *in1, const float (*in2)[3], float *out)
{
  assert( in1 != out);

  out[0] = ((*in1 * (*in2)[0]) + (in1[1] * (*in2)[1])) + (in1[2] * (*in2)[2]);
  out[1] = ((*in1 * (*in2)[3]) + (in1[1] * (*in2)[4])) + (in1[2] * (*in2)[5]);
  out[2] = ((*in1 * (*in2)[6]) + (in1[1] * (*in2)[7])) + (in1[2] * (*in2)[8]);
}


void __cdecl AxisToQuat(const float (*mat)[3], float *out)
{
  float invLength;
  float test[4][4];
  int best;
  float testSizeSq;
  test[0][0] = (*mat)[5] - (*mat)[7];
  test[0][1] = (*mat)[6] - (*mat)[2];
  test[0][2] = (*mat)[1] - (*mat)[3];
  test[0][3] = (*mat)[0] + (*mat)[4] + (*mat)[8] + 1.0;
  testSizeSq = Vec4LengthSq(test[0]);
  if ( testSizeSq < 1.0 )
  {
    test[1][0] = (*mat)[6] + (*mat)[2];
    test[1][1] = (*mat)[7] + (*mat)[5];
    test[1][2] = (*mat)[8] - (*mat)[4] - (*mat)[0] + 1.0;
    test[1][3] = test[0][2];
    testSizeSq = Vec4LengthSq(test[1]);
    if ( testSizeSq < 1.0 )
    {
      test[2][0] = (*mat)[0] - (*mat)[4] - (*mat)[8] + 1.0;
      test[2][1] = (*mat)[3] + (*mat)[1];
      test[2][2] = test[0][0];
      test[2][3] = test[1][0];
      testSizeSq = Vec4LengthSq(test[2]);
      if ( testSizeSq < 1.0 )
      {
        test[3][0] = test[2][1];
        test[3][1] = (*mat)[4] - (*mat)[0] - (*mat)[8] + 1.0;
        test[3][2] = test[0][1];
        test[3][3] = test[1][1];
        testSizeSq = Vec4LengthSq(test[3]);
        assertx(testSizeSq >= 1.0f, "(testSizeSq) = %g", testSizeSq);
        best = 3;
      }
      else
      {
        best = 2;
      }
    }
    else
    {
      best = 1;
    }
  }
  else
  {
    best = 0;
  }

  assert(testSizeSq);

  invLength = 1.0 / sqrt(testSizeSq);

  VectorScale4(test[best], invLength, out);

}

void __cdecl AnglesToQuat(const float *angles, float *quat)
{
  float axis[3][3];

  AnglesToAxis(angles, axis);
  AxisToQuat(axis, quat);
}

