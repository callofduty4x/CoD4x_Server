
#include "q_shared.h"
#include "q_math.h"
#include <math.h>


vec4_t colorBlack = {0, 0, 0, 1};

vec4_t colorRed = {1, 0, 0, 1};
vec4_t colorMdRed = { 0.5, 0.0, 0.0, 1.0 };
vec4_t colorDkRed = { 0.25, 0.0, 0.0, 1.0 };

vec4_t colorGreen = {0, 1, 0, 1};
vec4_t colorLtGreen = { 0, 0.75, 0, 1 };
vec4_t colorMdGreen = { 0, 0.5, 0, 1 };
vec4_t colorDkGreen = { 0, 0.25, 0, 1 };

vec4_t colorBlue = {0, 0, 1, 1};
vec4_t colorLtBlue = {0.5, 0.5, 1.0, 1};
vec4_t colorMdBlue = {0, 0, 0.5, 1};

vec4_t colorYellow = {1, 1, 0, 1};
vec4_t colorDkYellow = {0.25, 0.25, 0, 1};
vec4_t colorMdYellow = {0.5, 0.5, 0, 1};
vec4_t colorLtYellow = {0.75, 0.75, 0, 1};

vec4_t colorMagenta = {1, 0, 1, 1};

vec4_t colorCyan = {0, 1, 1, 1};
vec4_t colorLtCyan = {0, 0.75, 0.75, 1};
vec4_t colorMdCyan = {0, 0.5, 0.5, 1};
vec4_t colorDkCyan = {0, 0.25, 0.25, 1};

vec4_t colorWhite = {1, 1, 1, 1};

vec4_t colorLtGrey = {0.75, 0.75, 0.75, 1};
vec4_t colorMdGrey = {0.5, 0.5, 0.5, 1};
vec4_t colorDkGrey = {0.25, 0.25, 0.25, 1};

vec4_t colorOrange = {1.0, 0.7, 0.0, 1};
vec4_t colorLtOrange = {0.75, 0.525, 0.0, 1};

vec4_t colorWhiteFaded = {1.0, 1.0, 1.0, 0.75};
vec4_t colorGreenFaded = {0, 1, 0, 0.75};
vec4_t colorRedFaded = {0.75, 0.25, 0, 0.75};
vec4_t colorBlackBlank = {0, 0, 0, 0};

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
			pitch = 270;
		} else {
			pitch = 90;
		}
	} else {
		yaw = ( atan2( value1[1], value1[0] ) * 180 / M_PI );
		if(yaw < 0.0)
		{
			yaw += 360.0;
		}
		forward = sqrt( value1[0] * value1[0] + value1[1] * value1[1] );
		pitch = ( -atan2( value1[2], forward ) * 180 / M_PI );
		if(pitch < 0.0)
		{
			pitch += 360.0;
		}

	}

	angles[PITCH] = pitch;
	angles[YAW] = yaw;
	angles[ROLL] = 0;
}


vec_t __cdecl vectosignedpitch(const vec3_t vec)
{
  float t;

  if ( 0.0 != vec[1] || 0.0 != vec[0] )
  {
    t = atan2(vec[2], sqrt(vec[1] * vec[1] + vec[0] * vec[0]));
    return t * -180.0 / M_PI;
  }
  if ( -vec[2] < 0.0 )
  {
    return -90.0;
  }
  return 90.0;
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

#ifndef BSPC

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


#endif
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


vec_t Vec2Normalize( vec3_t v ) {
	float length, ilength;

	length = v[0] * v[0] + v[1] * v[1];
	length = sqrt( length );

	if ( length ) {
		ilength = 1 / length;
		v[0] *= ilength;
		v[1] *= ilength;
	}

	return length;
}


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

vec_t Vec4Normalize( vec4_t v ) {
	float length, ilength;

	length = v[0] * v[0] + v[1] * v[1] + v[2] * v[2] + v[3] * v[3];
	length = sqrt( length );

	if ( length ) {
		ilength = 1 / length;
		v[0] *= ilength;
		v[1] *= ilength;
		v[2] *= ilength;
		v[3] *= ilength;
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

 	assert(!IS_NAN(angles[0]) && !IS_NAN(angles[1]) && !IS_NAN(angles[2]));

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

void __cdecl AnglesToAxis(const vec3_t angles, vec3_t axis[3])
{
  float cy;
  float angle;
  float sr;
  float sp;
  float cr;
  float cp;
  float sy;

  angle = angles[1] * 0.017453292;
  cy = cos(angle);
  sy = sin(angle);
  angle = angles[0] * 0.017453292;
  cp = cos(angle);
  sp = sin(angle);
  angle = angles[2] * 0.017453292;
  cr = cos(angle);
  sr = sin(angle);

  axis[0][0] = cp * cy;
  axis[0][1] = cp * sy;
  axis[0][2] = -sp;
  axis[1][0] = sr * sp * cy - sy * cr;
  axis[1][1] = sr * sp * sy + cr * cy;
  axis[1][2] = sr * cp;
  axis[2][0] = cr * sp * cy + (-sr) * (-sy);
  axis[2][1] = cr * sp * sy - sr * cy;
  axis[2][2] = cr * cp;
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
  float length, result;

  length = VectorLength(v);
  result = length;
  if ( length <= 0.0 )
  {
    length = 1.0;
  }
  VectorScale(v, 1.0 / length, out);
  return result;
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



/*
================
MatrixMultiply
================
*/
void MatrixMultiply( float in1[3][3], float in2[3][3], float out[3][3] ) {
	out[0][0] = in1[0][0] * in2[0][0] + in1[0][1] * in2[1][0] + in1[0][2] * in2[2][0];
	out[0][1] = in1[0][0] * in2[0][1] + in1[0][1] * in2[1][1] + in1[0][2] * in2[2][1];
	out[0][2] = in1[0][0] * in2[0][2] + in1[0][1] * in2[1][2] + in1[0][2] * in2[2][2];
	out[1][0] = in1[1][0] * in2[0][0] + in1[1][1] * in2[1][0] + in1[1][2] * in2[2][0];
	out[1][1] = in1[1][0] * in2[0][1] + in1[1][1] * in2[1][1] + in1[1][2] * in2[2][1];
	out[1][2] = in1[1][0] * in2[0][2] + in1[1][1] * in2[1][2] + in1[1][2] * in2[2][2];
	out[2][0] = in1[2][0] * in2[0][0] + in1[2][1] * in2[1][0] + in1[2][2] * in2[2][0];
	out[2][1] = in1[2][0] * in2[0][1] + in1[2][1] * in2[1][1] + in1[2][2] * in2[2][1];
	out[2][2] = in1[2][0] * in2[0][2] + in1[2][1] * in2[1][2] + in1[2][2] * in2[2][2];
}



void __cdecl MatrixMultiply43(const float (*in1)[3], const float (*in2)[3], float (*out)[3])
{
  assert((void*)in1 != (void*)out);
  assert((void*)in2 != (void*)out);

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
  assert( (void*)in != (void*)out);

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

void __cdecl MatrixTransformVector43(const vec3_t in1, const float in2[4][3], vec3_t out)
{
  assert( in1 != out);
  out[0] = in1[0] * in2[0][0] + in1[1] * in2[1][0] + in1[2] * in2[2][0] + in2[3][0];
  out[1] = in1[0] * in2[0][1] + in1[1] * in2[1][1] + in1[2] * in2[2][1] + in2[3][1];
  out[2] = in1[0] * in2[0][2] + in1[1] * in2[1][2] + in1[2] * in2[2][2] + in2[3][2];
}

void __cdecl MatrixTransposeTransformVector(const float *in1, const vec3_t in2[3], float *out)
{
  assert( in1 != out);

  out[0] = in1[0] * in2[0][0] + in1[1] * in2[0][1] + in1[2] * in2[0][2];
  out[1] = in1[0] * in2[1][0] + in1[1] * in2[1][1] + in1[2] * in2[1][2];
  out[2] = in1[0] * in2[2][0] + in1[1] * in2[2][1] + in1[2] * in2[2][2];
}

void __cdecl MatrixTransposeTransformVector43(const vec3_t in1, const float in2[4][3], vec3_t out)
{
  vec3_t temp;

  assert( in1 != out);

  VectorSubtract(in1, in2[3], temp);

  out[0] = DotProduct(in2[0], temp);
  out[1] = DotProduct(in2[1], temp);
  out[2] = DotProduct(in2[2], temp);
}

void __cdecl AxisToQuat(vec3_t mat[3], float *out)
{
  float invLength;
  float test[4][4];
  int best;
  float testSizeSq;
  test[0][0] = mat[1][2] - mat[2][1];
  test[0][1] = mat[2][0] - mat[0][2];
  test[0][2] = mat[0][1] - mat[1][0];
  test[0][3] = mat[0][0] + mat[1][1] + mat[2][2] + 1.0;
  testSizeSq = Vec4LengthSq(test[0]);
  if ( testSizeSq < 1.0 )
  {
    test[1][0] = mat[2][0] + mat[0][2];
    test[1][1] = mat[2][1] + mat[1][2];
    test[1][2] = mat[2][2] - mat[1][1] - mat[0][0] + 1.0;
    test[1][3] = test[0][2];
    testSizeSq = Vec4LengthSq(test[1]);
    if ( testSizeSq < 1.0 )
    {
      test[2][0] = mat[0][0] - mat[1][1] - mat[2][2] + 1.0;
      test[2][1] = mat[1][0] + mat[0][1];
      test[2][2] = test[0][0];
      test[2][3] = test[1][0];
      testSizeSq = Vec4LengthSq(test[2]);
      if ( testSizeSq < 1.0 )
      {
        test[3][0] = test[2][1];
        test[3][1] = mat[1][1] - mat[0][0] - mat[2][2] + 1.0;
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
  vec3_t axis[3];

  AnglesToAxis(angles, axis);
  AxisToQuat(axis, quat);
}

/*
=================
AxisToAngles
=================
*/
void AxisToAngles( vec3_t axis[3], vec3_t angles )
{
	long double a;
	vec3_t right;
	float temp;
	float pitch;
	float fCos;
	float fSin;

	// first get the pitch and yaw from the forward vector
	vectoangles( axis[0], angles );

	// now get the roll from the right vector
	VectorCopy( axis[1], right );

	// get the angle difference between the tmpAxis[2] and axis[2] after they have been reverse-rotated
	a = (-angles[YAW] * 0.017453292);
	fCos = cos(a);
	fSin = sin(a);

	temp = fCos * right[0] - fSin * right[1];
	right[1] = fSin * right[0] + fCos * right[1];

	a = -angles[0] * 0.017453292;
	fCos = cos(a);
	fSin = sin(a);

	right[0] = (fSin * right[2]) + (fCos * temp);
	right[2] = (fCos * right[2]) - (fSin * temp);

	// now find the angles, the PITCH is effectively our ROLL
	pitch = vectosignedpitch(right);

	if ( right[1] >= 0.0 )
	{
		angles[ROLL] = -pitch;
		return;
	}
        if ( pitch >= 0.0 )
        {
		angles[ROLL] = pitch - 180.0;
		return;
        }
	angles[ROLL] = pitch + 180.0;

}


qboolean __cdecl VecNCompareCustomEpsilon(const float *v0, const float *v1, float epsilon, int coordCount)
{
  int i;

  for ( i = 0; i < coordCount; ++i )
  {
    if ( (v0[i] - v1[i]) * (v0[i] - v1[i]) > epsilon * epsilon )
        return 0;
  }
  return 1;
}


void __cdecl AxisTransformVec3(const vec3_t axes[3], const vec3_t vec, vec3_t out)
{
  out[0] = vec[0] * axes[0][0] + vec[1] * axes[1][0] + vec[2] * axes[2][0];
  out[1] = vec[0] * axes[0][1] + vec[1] * axes[1][1] + vec[2] * axes[2][1];
  out[2] = vec[0] * axes[0][2] + vec[1] * axes[1][2] + vec[2] * axes[2][2];
}



float identityMatrix44[] =
{  1.0, 0.0, 0.0, 0.0,
   0.0, 1.0, 0.0, 0.0,
   0.0, 0.0, 1.0, 0.0,
   0.0, 0.0, 0.0, 1.0
};

float identityMatrix33[] =
{  1.0, 0.0, 0.0,
   0.0, 1.0, 0.0,
   0.0, 0.0, 1.0,
};


void __cdecl MatrixIdentity44(float (*out)[4])
{
  assert(out != NULL);
  memcpy(out, identityMatrix44, sizeof(identityMatrix44));
}


void __cdecl MatrixIdentity33(float (*out)[3])
{
  assert(out != NULL);
  memcpy(out, identityMatrix33, sizeof(identityMatrix33));
}


void __cdecl QuatToAxis(const float *quat, vec3_t axis[3])
{
  float scaledX;
  float xy;
  float xz;
  float xw;
  float scaledY;
  float yz;
  float yw;
  float zw;
  float yy;
  float zz;
  float xx;
  float magSqr;
  vec3_t v;

  xx = quat[0] * quat[0];
  yy = quat[1] * quat[1];
  zz = quat[2] * quat[2];
  magSqr = xx + yy + zz + (quat[3] * quat[3]);

  assert(magSqr > 0.0f);

  v[0] = xx * (2.0 / magSqr);
  v[1] = yy * (2.0 / magSqr);
  v[2] = zz * (2.0 / magSqr);
  scaledX = (2.0 / magSqr) * quat[0];
  xy = scaledX * quat[1];
  xz = scaledX * quat[2];
  xw = scaledX * quat[3];
  scaledY = (2.0 / magSqr) * quat[1];
  yz = scaledY * quat[2];
  yw = scaledY * quat[3];
  zw = (2.0 / magSqr) * quat[2] * quat[3];
  axis[0][0] = 1.0 - (v[1] + v[2]);
  axis[0][1] = xy + zw;
  axis[0][2] = xz - yw;
  axis[1][0] = xy - zw;
  axis[1][1] = 1.0 - (v[0] + v[2]);
  axis[1][2] = yz + xw;
  axis[2][0] = xz + yw;
  axis[2][1] = yz - xw;
  axis[2][2] = 1.0 - (v[0] + v[1]);
}

void __cdecl Vec4Lerp(const float *from, const float *to, float frac, float *result)
{
  result[0] = (to[0] - from[0]) * frac + from[0];
  result[1] = (to[1] - from[1]) * frac + from[1];
  result[2] = (to[2] - from[2]) * frac + from[2];
  result[3] = (to[3] - from[3]) * frac + from[3];
}

void __cdecl Vec3Lerp(const float *from, const float *to, float frac, float *result)
{
  result[0] = (to[0] - from[0]) * frac + from[0];
  result[1] = (to[1] - from[1]) * frac + from[1];
  result[2] = (to[2] - from[2]) * frac + from[2];
}

void __cdecl QuatLerp(const float *qa, const float *qb, float frac, float *out)
{
  if ( DotProduct4(qa, qb) < 0.0 )
  {
    VectorNegate4(qb, out);
    Vec4Lerp(qa, out, frac, out);
  }
  else
  {
    Vec4Lerp(qa, qb, frac, out);
  }
}


static int sRandSeed;

unsigned int __cdecl ms_rand()
{
  sRandSeed = 214013 * sRandSeed + 2531011;
  return ((unsigned int)sRandSeed >> 16) & 0x7FFF;
}

void __cdecl ms_srand(int seed)
{
  sRandSeed = seed;
}

long double __cdecl randomf()
{
  return ((float)(signed int)ms_rand() * 0.000030517578f);
}


long double crandom()
{
  unsigned int is;

  is = ms_rand();
  return ((float)is * 0.000030517578 * 2.0 - 1.0);
}

static unsigned int holdrand;

double __cdecl flrand(float min, float max)
{
  float result;

  holdrand = 214013 * holdrand + 2531011;
  result = (holdrand >> 17);
  return ((max - min) * result) / 32768.0 + min;
}

void __cdecl Rand_Init(int seed)
{
  holdrand = seed;
}

int __cdecl irand(int min, int max)
{
  holdrand = 214013 * holdrand + 2531011;
  return ((holdrand >> 17) * (max - min) >> 15) + min;
}


qboolean __cdecl IntersectPlanes(const float **plane, float *xyz)
{
  double determinant;

  determinant = ((plane[1][1] * plane[2][2] - plane[2][1] * plane[1][2]) * plane[0][0])
              + ((plane[2][1] * plane[0][2] - plane[0][1] * plane[2][2]) * plane[1][0])
              + ((plane[0][1] * plane[1][2] - plane[1][1] * plane[0][2]) * plane[2][0]);

  if ( fabs(determinant) >= 0.001000000047497451 )
  {

    double revdet = 1.0 / determinant;

    xyz[0] = ((plane[1][1] * plane[2][2] - plane[2][1] * plane[1][2]) * plane[0][3])
            + ((plane[2][1] * plane[0][2] - plane[0][1] * plane[2][2]) * plane[1][3])
            + ((plane[0][1] * plane[1][2] - plane[1][1] * plane[0][2]) * plane[2][3]);

    xyz[1] = ((plane[1][2] * plane[2][0] - plane[2][2] * plane[1][0]) * plane[0][3])
            + ((plane[2][2] * plane[0][0] - plane[0][2] * plane[2][0]) * plane[1][3])
            + ((plane[0][2] * plane[1][0] - plane[1][2] * plane[0][0]) * plane[2][3]);

    xyz[2] = ((plane[1][0] * plane[2][1] - plane[2][0] * plane[1][1]) * plane[0][3])
            + ((plane[2][0] * plane[0][1] - plane[0][0] * plane[2][1]) * plane[1][3])
            + ((plane[0][0] * plane[1][1] - plane[1][0] * plane[0][1]) * plane[2][3]);

    VectorScale(xyz, revdet, xyz);

    return 1;
  }
  return 0;
}


void __cdecl Vec3Cross(const vec3_t v0, const vec3_t v1, vec3_t cross)
{
    assert(v0 != cross);
    assert(v1 != cross);

    cross[0] = v0[1] * v1[2] - v0[2] * v1[1];
    cross[1] = v0[2] * v1[0] - v0[0] * v1[2];
    cross[2] = v0[0] * v1[1] - v0[1] * v1[0];
}

#ifndef BSPC

qboolean __cdecl PlaneFromPoints(float *plane, const float *v0, const float *v1, const float *v2)
{
  vec3_t v2_v0;
  vec3_t v1_v0;
  float length;
  float lengthSq;

  VectorSubtract(v1, v0, v1_v0);
  VectorSubtract(v2, v0, v2_v0);
  Vec3Cross(v2_v0, v1_v0, plane);

  lengthSq = VectorLengthSquared(plane);

  if ( lengthSq == 0 ){
    return 0;
  }

  if(lengthSq < 2.0 && (VectorLengthSquared(v2_v0) * VectorLengthSquared(v1_v0) * 0.0000010000001) >= lengthSq)
  {
    VectorSubtract(v2, v1, v1_v0);
    VectorSubtract(v0, v1, v2_v0);
    Vec3Cross(v2_v0, v1_v0, plane);
    if((VectorLengthSquared(v2_v0) * VectorLengthSquared(v1_v0) * 0.0000010000001) >= lengthSq)
    {
        return 0;
    }
  }
  length = sqrt(lengthSq);
  plane[0] = plane[0] / length;
  plane[1] = plane[1] / length;
  plane[2] = plane[2] / length;
  plane[3] = DotProduct(v0, plane);
  return 1;
}

#endif

vec_t Q_rint( vec_t in ) {
	return floor( in + 0.5 );
}



void __cdecl SnapPointToIntersectingPlanes(const float **planes, float *xyz, float snapGrid, float snapEpsilon)
{
  vec3_t snapped;
  float baseError;
  float maxBaseError;
  float snapError;
  float maxSnapError;
  float rounded;
  int axis;
  int planeIndex;

  for ( axis = 0; axis < 3; ++axis )
  {
    rounded = (signed int)((xyz[axis] / snapGrid) + 9.313225746154785e-10) * snapGrid;
    if ( snapEpsilon <= fabs(rounded - xyz[axis]))
    {
      snapped[axis] = xyz[axis];
    }else{
      snapped[axis] = rounded;
    }
  }

  if ( !VectorCompare(xyz, snapped) )
  {
    maxSnapError = 0.0;
    maxBaseError = snapEpsilon;
    for ( planeIndex = 0; planeIndex < 3; ++planeIndex )
    {

      snapError = fabs(DotProduct(planes[planeIndex], snapped) - planes[planeIndex][3]);

      if ( snapError > maxSnapError ){
        maxSnapError = snapError;
      }

      baseError = fabs(DotProduct(planes[planeIndex], xyz) - planes[planeIndex][3]);

      if ( baseError > maxBaseError ){
        maxBaseError = baseError;
      }
    }
    if ( maxBaseError > maxSnapError )
    {
      VectorCopy(snapped, xyz);
    }
  }
}

void __cdecl ShrinkBoundsToHeight(vec3_t mins, vec3_t maxs)
{
  vec3_t d;

  VectorSubtract(maxs, mins, d);
  if ( d[0] > d[2] )
  {
    mins[0] += (d[0] - d[2]) * 0.5;
    maxs[0] -= (d[0] - d[2]) * 0.5;
  }
  if ( d[1] > d[2] )
  {
    mins[1] += (d[1] - d[2]) * 0.5;
    maxs[1] -= (d[1] - d[2]) * 0.5;
  }
}


void __cdecl ClearBounds(vec3_t mins, vec3_t maxs)
{
  mins[0] = 131072.0;
  mins[1] = 131072.0;
  mins[2] = 131072.0;
  maxs[0] = -131072.0;
  maxs[1] = -131072.0;
  maxs[2] = -131072.0;
}

void __cdecl ExpandBounds(const vec3_t addedmins, const vec3_t addedmaxs, vec3_t mins, vec3_t maxs)
{
  if ( mins[0] > addedmins[0] )
  {
    mins[0] = addedmins[0];
  }
  if ( addedmaxs[0] > maxs[0] )
  {
    maxs[0] = addedmaxs[0];
  }
  if ( mins[1] > addedmins[1] )
  {
    mins[1] = addedmins[1];
  }
  if ( addedmaxs[1] > maxs[1] )
  {
    maxs[1] = addedmaxs[1];
  }
  if ( mins[2] > addedmins[2] )
  {
    mins[2] = addedmins[2];
  }
  if ( addedmaxs[2] > maxs[2] )
  {
    maxs[2] = addedmaxs[2];
  }
}


void __cdecl AddPointToBounds(const vec3_t v, vec3_t mins, vec3_t maxs)
{
  if ( mins[0] > v[0] )
  {
    mins[0] = v[0];
  }
  if ( v[0] > maxs[0] )
  {
    maxs[0] = v[0];
  }
  if ( mins[1] > v[1] )
  {
    mins[1] = v[1];
  }
  if ( v[1] > maxs[1] )
  {
    maxs[1] = v[1];
  }
  if ( mins[2] > v[2] )
  {
    mins[2] = v[2];
  }
  if ( v[2] > maxs[2] )
  {
    maxs[2] = v[2];
  }
}



/*
=================
AngleNormalize360

returns angle normalized to the range [0 <= angle < 360]
=================
*/

double __cdecl AngleNormalize360(const float angle)
{
  float sa;
  float result;

  sa = angle * 0.0027777778;
  result = (sa - floor(sa)) * 360.0;

  if ( (result - 360.0) < 0.0 )
  {
    return result;
  }

  return result - 360.0;
}


/*
=================
AngleNormalize180

returns angle normalized to the range [-180 < angle <= 180]
=================
*/
float AngleNormalize180 ( float angle ) {
    angle = AngleNormalize360( angle );
    if ( angle > 180.0 ) {
	angle -= 360.0;
    }
    return angle;
}

double __cdecl AngleDelta(const float angle1, const float angle2)
{
  return AngleNormalize180(angle1 - angle2);
}

/*
=====================
Q_acos

the msvc acos doesn't always return a value between -PI and PI:

int i;
i = 1065353246;
acos(*(float*) &i) == -1.#IND0
=====================
*/
float Q_acos( float c ) {
        float angle;

        angle = acos( c );

        if ( angle > M_PI ) {
                return (float)M_PI;
        }
        if ( angle < -M_PI ) {
                return (float)M_PI;
        }
        return angle;
}


float vectoyaw( const vec3_t vec ) {
        float yaw;

        if ( vec[YAW] == 0 && vec[PITCH] == 0 ) {
                return 0.0;
        }
        yaw = ( atan2( vec[YAW], vec[PITCH] ) * 180 / M_PI );

        if(yaw >= 0.0)
        {
            return yaw;
        }
        return yaw + 360;
}


void __cdecl YawVectors2D(const float yaw, vec2_t forward, vec2_t right)
{
  float cy;
  float angle;
  float sy;

  angle = yaw * 0.017453292;
  cy = cos(angle);
  sy = sin(angle);
  if ( forward )
  {
    forward[0] = cy;
    forward[1] = sy;
  }
  if ( right )
  {
    right[0] = sy;
    right[1] = -cy;
  }
}


void __cdecl YawVectors(const float yaw, vec3_t forward, vec3_t right)
{
  float cy;
  float angle;
  float sy;

  angle = yaw * 0.017453292;
  cy = cos(angle);
  sy = sin(angle);
  if ( forward )
  {
    forward[0] = cy;
    forward[1] = sy;
    forward[2] = 0.0;
  }
  if ( right )
  {
    right[0] = sy;
    right[1] = -cy;
    right[2] = 0.0;
  }
}


double __cdecl DiffTrack(float tgt, float cur, float rate, float deltaTime)
{
  float step;
  float d, ad;

  d = tgt - cur;

  step = rate * d * deltaTime;
  ad = fabs(d);
  if( ad <= 0.001 || fabs(step) > ad)
  {
    return tgt;
  }
  return cur + step;
}



double __cdecl PitchForYawOnNormal(const float fYaw, const vec3_t normal)
{
  vec3_t forward;

  assert(!IS_NAN(fYaw));
	assert(!IS_NAN(normal[0]) && !IS_NAN(normal[1]) && !IS_NAN(normal[2]));
  assert(normal[0] != 0.0 || normal[1] != 0.0 || normal[2] != 0.0);

  YawVectors(fYaw, forward, 0);

  if ( normal[2] != 0 )
  {
    forward[2] = (normal[0] * forward[0] + normal[1] * forward[1]) / normal[2];
    return atan(forward[2]) * 180.0 / M_PI;
  }
  return 270.0;
}


void __cdecl AnglesSubtract(const vec3_t v1, const vec3_t v2, vec3_t v3)
{
  v3[0] = AngleNormalize180(v1[0] - v2[0]);
  v3[1] = AngleNormalize180(v1[1] - v2[1]);
  v3[2] = AngleNormalize180(v1[2] - v2[2]);
}

double __cdecl DiffTrackAngle(float tgt, float cur, float rate, float deltaTime)
{
  float angle;

  while ( (tgt - cur) > 180.0 )
  {
    tgt = tgt - 360.0;
  }
  while ( (tgt - cur) < -180.0 )
  {
    tgt = tgt + 360.0;
  }
  angle = DiffTrack(tgt, cur, rate, deltaTime);
  return AngleNormalize180(angle);
}

float Abs(const vec3_t v)
{
    return VectorLength(v);
}

bool __cdecl Vec3IsNormalized(const float *v)
{
  if(fabs(VectorLengthSquared(v) - 1.0) < 0.0020000001)
  {
    return true;
  }
  return false;
}


bool __cdecl Vec4IsNormalized(const float *v)
{
  if(fabs(Vec4LengthSq(v) - 1.0) < 0.0020000001)
  {
    return true;
  }
  return false;
}


void __cdecl ProjectPointOnPlane(const float *p, const float *normal, float *dst)
{
  float d;

  assertx(Vec3IsNormalized(normal), "(%g %g %g) len %g", normal[0], normal[1], normal[2], Abs(normal));

  d = -(DotProduct(normal, p));
  dst[0] = (d * normal[0]) + p[0];
  dst[1] = (d * normal[1]) + p[1];
  dst[2] = (d * normal[2]) + p[2];
}


//Lame?!
void __cdecl Sys_SnapVector(vec3_t v)
{
    v[0] = f2rint(v[0]);
    v[1] = f2rint(v[1]);
    v[2] = f2rint(v[2]);

}

void __cdecl MatrixTransformVector(const vec3_t in1, const float in2[3][3], vec3_t out)
{
  assert( in1 != out);

  out[0] = in1[0] * in2[0][0] + in1[1] * in2[1][0] + in1[2] * in2[2][0];
  out[1] = in1[0] * in2[0][1] + in1[1] * in2[1][1] + in1[2] * in2[2][1];
  out[2] = in1[0] * in2[0][2] + in1[1] * in2[1][2] + in1[2] * in2[2][2];
}

void __cdecl MatrixInverseOrthogonal43(const float in[4][3], float out[4][3])
{
  vec3_t origin;

  MatrixTranspose(in, out);
  origin[0] = 0.0 - in[3][0];
  origin[1] = 0.0 - in[3][1];
  origin[2] = 0.0 - in[3][2];
  MatrixTransformVector(origin, (const float (*)[3])out, out[3]);
}

void __cdecl PerpendicularVector(const vec3_t src, vec3_t dst)
{
  int pos;
  vec3_t srcSq;

  assert(Vec3IsNormalized( src ));

  srcSq[0] = Square(src[0]);
  srcSq[1] = Square(src[1]);
  srcSq[2] = Square(src[2]);
  pos = srcSq[0] > srcSq[1];
  if ( srcSq[pos] > srcSq[2] ){
    pos = 2;
  }
  VectorScale(src, -src[pos], dst);
  dst[pos] = dst[pos] + 1.0;
  Vec3Normalize(dst);
}


void __cdecl ExpandBoundsToWidth(float *mins, float *maxs)
{
  float diff;
  float s;
  vec3_t size;

  assert(maxs[0] >= mins[0]);
  assert(maxs[1] >= mins[1]);
  assert(maxs[2] >= mins[2]);

  VectorSubtract(maxs, mins, size);

  if ( (size[0] - size[1]) < 0.0 ){
    s = size[1];
  }else{
    s = size[0];
  }
  if ( s > size[2] )
  {
    diff = (s - size[2]) * 0.5;
    mins[2] = mins[2] - diff;
    maxs[2] = maxs[2] + diff;
  }
}

double __cdecl LinearTrack(float tgt, float cur, float rate, float deltaTime)
{
  float err;
  float step;

  err = tgt - cur;
  if ( err <= 0.0 )
  {
    step = -rate * deltaTime;
  }
  else
  {
    step = rate * deltaTime;
  }

  if ( fabs(err) <= 0.001 )
  {
    return tgt;
  }

  if ( fabs(step) <= fabs(err))
  {
    return cur + step;
  }
  return tgt;
}


double __cdecl LinearTrackAngle(float tgt, float cur, float rate, float deltaTime)
{
  float angle;

  while ( (tgt - cur) > 180.0 )
  {
    tgt = tgt - 360.0;
  }
  while ( (tgt - cur) < -180.0 )
  {
    tgt = tgt + 360.0;
  }
  angle = LinearTrack(tgt, cur, rate, deltaTime);
  return AngleNormalize180(angle);
}


void __cdecl ExtendBounds(vec3_t mins, vec3_t maxs, const vec3_t offset)
{
  if ( offset[0] <= 0.0 )
  {
    mins[0] = mins[0] + offset[0];
  }
  else
  {
    maxs[0] = maxs[0] + offset[0];
  }
  if ( offset[1] <= 0.0 )
  {
    mins[1] = mins[1] + offset[1];
  }
  else
  {
    maxs[1] = maxs[1] + offset[1];
  }
  if ( offset[2] <= 0.0 )
  {
    mins[2] = mins[2] + offset[2];
  }
  else
  {
    maxs[2] = maxs[2] + offset[2];
  }
}



vec3_t bytedirs[162] =
{
  { -0.52573103,  0.0,  0.85065103 },
  { -0.44286299,  0.238856,  0.86418802 },
  { -0.29524201,  0.0,  0.955423 },
  { -0.309017,  0.5,  0.809017 },
  { -0.16246,  0.26286599,  0.951056 },
  {  0.0,  0.0,  1.0 },
  {  0.0,  0.85065103,  0.52573103 },
  { -0.14762101,  0.71656698,  0.68171799 },
  {  0.14762101,  0.71656698,  0.68171799 },
  {  0.0,  0.52573103,  0.85065103 },
  {  0.309017,  0.5,  0.809017 },
  {  0.52573103,  0.0,  0.85065103 },
  {  0.29524201,  0.0,  0.955423 },
  {  0.44286299,  0.238856,  0.86418802 },
  {  0.16246,  0.26286599,  0.951056 },
  { -0.68171799,  0.14762101,  0.71656698 },
  { -0.809017,  0.309017,  0.5 },
  { -0.58778501,  0.42532501,  0.688191 },
  { -0.85065103,  0.52573103,  0.0 },
  { -0.86418802,  0.44286299,  0.238856 },
  { -0.71656698,  0.68171799,  0.14762101 },
  { -0.688191,  0.58778501,  0.42532501 },
  { -0.5,  0.809017,  0.309017 },
  { -0.238856,  0.86418802,  0.44286299 },
  { -0.42532501,  0.688191,  0.58778501 },
  { -0.71656698,  0.68171799, -0.14762101 },
  { -0.5,  0.809017, -0.309017 },
  { -0.52573103,  0.85065103,  0.0 },
  {  0.0,  0.85065103, -0.52573103 },
  { -0.238856,  0.86418802, -0.44286299 },
  {  0.0,  0.955423, -0.29524201 },
  { -0.26286599,  0.951056, -0.16246 },
  {  0.0,  1.0,  0.0 },
  {  0.0,  0.955423,  0.29524201 },
  { -0.26286599,  0.951056,  0.16246 },
  {  0.238856,  0.86418802,  0.44286299 },
  {  0.26286599,  0.951056,  0.16246 },
  {  0.5,  0.809017,  0.309017 },
  {  0.238856,  0.86418802, -0.44286299 },
  {  0.26286599,  0.951056, -0.16246 },
  {  0.5,  0.809017, -0.309017 },
  {  0.85065103,  0.52573103,  0.0 },
  {  0.71656698,  0.68171799,  0.14762101 },
  {  0.71656698,  0.68171799, -0.14762101 },
  {  0.52573103,  0.85065103,  0.0 },
  {  0.42532501,  0.688191,  0.58778501 },
  {  0.86418802,  0.44286299,  0.238856 },
  {  0.688191,  0.58778501,  0.42532501 },
  {  0.809017,  0.309017,  0.5 },
  {  0.68171799,  0.14762101,  0.71656698 },
  {  0.58778501,  0.42532501,  0.688191 },
  {  0.955423,  0.29524201,  0.0 },
  {  1.0,  0.0,  0.0 },
  {  0.951056,  0.16246,  0.26286599 },
  {  0.85065103, -0.52573103,  0.0 },
  {  0.955423, -0.29524201,  0.0 },
  {  0.86418802, -0.44286299,  0.238856 },
  {  0.951056, -0.16246,  0.26286599 },
  {  0.809017, -0.309017,  0.5 },
  {  0.68171799, -0.14762101,  0.71656698 },
  {  0.85065103,  0.0,  0.52573103 },
  {  0.86418802,  0.44286299, -0.238856 },
  {  0.809017,  0.309017, -0.5 },
  {  0.951056,  0.16246, -0.26286599 },
  {  0.52573103,  0.0, -0.85065103 },
  {  0.68171799,  0.14762101, -0.71656698 },
  {  0.68171799, -0.14762101, -0.71656698 },
  {  0.85065103,  0.0, -0.52573103 },
  {  0.809017, -0.309017, -0.5 },
  {  0.86418802, -0.44286299, -0.238856 },
  {  0.951056, -0.16246, -0.26286599 },
  {  0.14762101,  0.71656698, -0.68171799 },
  {  0.309017,  0.5, -0.809017 },
  {  0.42532501,  0.688191, -0.58778501 },
  {  0.44286299,  0.238856, -0.86418802 },
  {  0.58778501,  0.42532501, -0.688191 },
  {  0.688191,  0.58778501, -0.42532501 },
  { -0.14762101,  0.71656698, -0.68171799 },
  { -0.309017,  0.5, -0.809017 },
  {  0.0,  0.52573103, -0.85065103 },
  { -0.52573103,  0.0, -0.85065103 },
  { -0.44286299,  0.238856, -0.86418802 },
  { -0.29524201,  0.0, -0.955423 },
  { -0.16246,  0.26286599, -0.951056 },
  {  0.0,  0.0, -1.0 },
  {  0.29524201,  0.0, -0.955423 },
  {  0.16246,  0.26286599, -0.951056 },
  { -0.44286299, -0.238856, -0.86418802 },
  { -0.309017, -0.5, -0.809017 },
  { -0.16246, -0.26286599, -0.951056 },
  {  0.0, -0.85065103, -0.52573103 },
  { -0.14762101, -0.71656698, -0.68171799 },
  {  0.14762101, -0.71656698, -0.68171799 },
  {  0.0, -0.52573103, -0.85065103 },
  {  0.309017, -0.5, -0.809017 },
  {  0.44286299, -0.238856, -0.86418802 },
  {  0.16246, -0.26286599, -0.951056 },
  {  0.238856, -0.86418802, -0.44286299 },
  {  0.5, -0.809017, -0.309017 },
  {  0.42532501, -0.688191, -0.58778501 },
  {  0.71656698, -0.68171799, -0.14762101 },
  {  0.688191, -0.58778501, -0.42532501 },
  {  0.58778501, -0.42532501, -0.688191 },
  {  0.0, -0.955423, -0.29524201 },
  {  0.0, -1.0,  0.0 },
  {  0.26286599, -0.951056, -0.16246 },
  {  0.0, -0.85065103,  0.52573103 },
  {  0.0, -0.955423,  0.29524201 },
  {  0.238856, -0.86418802,  0.44286299 },
  {  0.26286599, -0.951056,  0.16246 },
  {  0.5, -0.809017,  0.309017 },
  {  0.71656698, -0.68171799,  0.14762101 },
  {  0.52573103, -0.85065103,  0.0 },
  { -0.238856, -0.86418802, -0.44286299 },
  { -0.5, -0.809017, -0.309017 },
  { -0.26286599, -0.951056, -0.16246 },
  { -0.85065103, -0.52573103,  0.0 },
  { -0.71656698, -0.68171799, -0.14762101 },
  { -0.71656698, -0.68171799,  0.14762101 },
  { -0.52573103, -0.85065103,  0.0 },
  { -0.5, -0.809017,  0.309017 },
  { -0.238856, -0.86418802,  0.44286299 },
  { -0.26286599, -0.951056,  0.16246 },
  { -0.86418802, -0.44286299,  0.238856 },
  { -0.809017, -0.309017,  0.5 },
  { -0.688191, -0.58778501,  0.42532501 },
  { -0.68171799, -0.14762101,  0.71656698 },
  { -0.44286299, -0.238856,  0.86418802 },
  { -0.58778501, -0.42532501,  0.688191 },
  { -0.309017, -0.5,  0.809017 },
  { -0.14762101, -0.71656698,  0.68171799 },
  { -0.42532501, -0.688191,  0.58778501 },
  { -0.16246, -0.26286599,  0.951056 },
  {  0.44286299, -0.238856,  0.86418802 },
  {  0.16246, -0.26286599,  0.951056 },
  {  0.309017, -0.5,  0.809017 },
  {  0.14762101, -0.71656698,  0.68171799 },
  {  0.0, -0.52573103,  0.85065103 },
  {  0.42532501, -0.688191,  0.58778501 },
  {  0.58778501, -0.42532501,  0.688191 },
  {  0.688191, -0.58778501,  0.42532501 },
  { -0.955423,  0.29524201,  0.0 },
  { -0.951056,  0.16246,  0.26286599 },
  { -1.0,  0.0,  0.0 },
  { -0.85065103,  0.0,  0.52573103 },
  { -0.955423, -0.29524201,  0.0 },
  { -0.951056, -0.16246,  0.26286599 },
  { -0.86418802,  0.44286299, -0.238856 },
  { -0.951056,  0.16246, -0.26286599 },
  { -0.809017,  0.309017, -0.5 },
  { -0.86418802, -0.44286299, -0.238856 },
  { -0.951056, -0.16246, -0.26286599 },
  { -0.809017, -0.309017, -0.5 },
  { -0.68171799,  0.14762101, -0.71656698 },
  { -0.68171799, -0.14762101, -0.71656698 },
  { -0.85065103,  0.0, -0.52573103 },
  { -0.688191,  0.58778501, -0.42532501 },
  { -0.58778501,  0.42532501, -0.688191 },
  { -0.42532501,  0.688191, -0.58778501 },
  { -0.42532501, -0.688191, -0.58778501 },
  { -0.58778501, -0.42532501, -0.688191 },
  { -0.688191, -0.58778501, -0.42532501 }
};


byte __cdecl DirToByte(const vec3_t dir)
{
    byte best;
    unsigned int i;
    float bestd;

    if(!dir)
    {
        return 0;
    }

    bestd = 0.0;
    best = 0;
    for ( i = 0; i < sizeof(bytedirs)/sizeof(bytedirs[0]); ++i )
    {
      if ((dir[0] * bytedirs[i][0] + dir[1] * bytedirs[i][1] + dir[2] * bytedirs[i][2]) > bestd )
      {
        bestd = dir[0] * bytedirs[i][0] + dir[1] * bytedirs[i][1] + dir[2] * bytedirs[i][2];
        best = i;
      }
    }
    return best;
}

void __cdecl ByteToDir(const int b, vec3_t dir)
{
  if ( b >= 0 && b < sizeof(bytedirs)/sizeof(bytedirs[0]) )
  {
    VectorCopy(bytedirs[b], dir);
  }
  else
  {
    VectorCopy(vec3_origin, dir);
  }
}

double __cdecl Vec2DistanceSq(const float *v0, const float *v1)
{
  return Square(v1[0] - v0[0]) + Square(v1[1] - v0[1]);
}

double __cdecl Vec2Distance(const float *v0, const float *v1)
{
  return sqrt(Square(v1[0] - v0[0]) + Square(v1[1] - v0[1]));
}


void __cdecl VectorAngleMultiply(float *vec, float angle)
{
  long double a;
  float temp;
  float x;
  float y;

  a = (angle * 0.017453292);
  x = cos(a);
  y = sin(a);
  temp = (vec[0] * x) - (vec[1] * y);
  vec[1] = (vec[1] * x) + (vec[0] * y);
  vec[0] = temp;
}

double vectopitch(const float *vec)
{
  double forward;
  float at;
  float a;

  if ( 0.0 != vec[1] || 0.0 != vec[0] )
  {
    at = atan2(vec[2], sqrt(Square(vec[1]) + Square(vec[0])));
    a = at * -180.0 / M_PI;
    if ( a < 0.0 )
    {
      forward = a + 360.0;
    }
    else
    {
      forward = a + 0.0;
    }
  }
  else if ( -vec[2] < 0.0 )
  {
    forward = 270.0;
  }
  else
  {
    forward = 90.0;
  }
  return forward;
}

double __cdecl ColorNormalize(const float *in, float *out)
{
  float max;

  max = fmaxf(in[0], in[1]);
  max = fmaxf(max, in[2]);

  if ( max != 0.0 )
  {
    VectorScale(in, 1.0/max, out);
    return max;
  }
  out[2] = 1.0;
  out[1] = 1.0;
  out[0] = 1.0;
  return 0.0;
}

double vectosignedyaw(float *vec)
{
  float at;
  double yaw;

  if ( 0.0 != vec[1] || 0.0 != vec[0] )
  {
    at = atan2(vec[1], vec[0]);
    yaw = at * 180.0 / M_PI;
    assert(yaw >= -180);
    assert(yaw <= 180);
    return yaw;
  }
  return 0.0;
}

double RotationToYaw(float *rot)
{
  float zz;
  float r;
  float v4;
  float v6;
  float v7;

  zz = rot[0] * rot[0];
  r = rot[1] * rot[1] + zz;

  assert(r != 0);

  v4 = 2.0 / r;
  v6 = rot[1] * rot[0] * v4;
  v7 = 1.0 - zz * v4;
  return atan2(v6, v7) * 57.2957763671875;
}


void __cdecl YawToAxis(float yaw, vec3_t axis[3])
{
  vec3_t right;

  YawVectors(yaw, axis[0], right);
  axis[2][0] = 0.0;
  axis[2][1] = 0.0;
  axis[2][2] = 1.0;
  axis[1][0] = 0.0 - right[0];
  axis[1][1] = 0.0 - right[1];
  axis[1][2] = 0.0 - right[2];
}


void __cdecl QuatSlerp(const float *from, const float *to, float frac, float *result)
{
    float dot;
    float scaleFrom;
    float scaleTo;
    float acd;
    float sacd;

    dot = from[0] * to[0] + from[1] * to[1] + from[2] * to[2] + from[3] * to[3];

    if ( dot <= 0.95 )
    {
        acd = acos(dot);
        sacd = sin(acd);
        scaleTo = sin(acd * frac) / sacd;
        scaleFrom = sin(1.0 - (acd * frac)) / sacd;
    }
    else
    {
        scaleFrom = 1.0 - frac;
        scaleTo = frac;
    }
    result[0] = scaleFrom * from[0] + scaleTo * to[0];
    result[1] = scaleFrom * from[1] + scaleTo * to[1];
    result[2] = scaleFrom * from[2] + scaleTo * to[2];
    result[3] = scaleFrom * from[3] + scaleTo * to[3];
}

void __cdecl UnitQuatToForward(const float *quat, float *forward)
{
  assert(Vec4IsNormalized( quat ));

  forward[0] = 1.0 - (quat[1] * quat[1] + quat[2] * quat[2]) * 2.0;
  forward[1] = (quat[0] * quat[1] + quat[2] * quat[3]) * 2.0;
  forward[2] = (quat[0] * quat[2] - quat[1] * quat[3]) * 2.0;
}

void __cdecl SnapAngles(float *vAngles)
{
  float delta;
  int rounded;
  int i;

  for ( i = 0; i < 3; ++i )
  {
    rounded = (signed int)(vAngles[i] + 9.313225746154785e-10);
    delta = (float)rounded - vAngles[i];
    if ( Square(delta) < 0.0000010000001 )
    {
      vAngles[i] = (float)rounded;
    }
  }
}


void __cdecl NearestPitchAndYawOnPlane(const float *angles, const float *normal, float *result)
{
  vec3_t projected;
  vec3_t forward;

  assert(normal[0] != 0.0 || normal[1] != 0.0 || normal[2] != 0.0);

  AngleVectors(angles, forward, 0, 0);
  ProjectPointOnPlane(forward, normal, projected);
  vectoangles(projected, result);
}

double __cdecl Vec3DistanceSq(const float *p1, const float *p2)
{
  vec3_t d;

  VectorSubtract(p2, p1, d);
  return VectorLengthSquared( d );
}

/*
================
CreateRotationMatrix
================
*/
void CreateRotationMatrix( const vec3_t angles, vec3_t matrix[3] ) {
	AngleVectors( angles, matrix[0], matrix[1], matrix[2] );
	VectorInverse( matrix[1] );
}

/*
================
RotatePoint
================
*/
void RotatePoint( vec3_t point, const vec3_t matrix[3] ) {
	vec3_t tvec;

	VectorCopy( point, tvec );
	point[0] = DotProduct( matrix[0], tvec );
	point[1] = DotProduct( matrix[1], tvec );
	point[2] = DotProduct( matrix[2], tvec );
}


