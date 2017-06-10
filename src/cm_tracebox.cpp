#include "cm_local.h"
#include "cm_public.h"




int intersect_extents_aabb(TraceExtents *extents, const float *mins, const float *maxs, float *enterFrac, float *leaveFrac)
{
  int t;
  float dist1;
  float frac;
  float sign;
  const float *bounds;
  float dist2;

  
  for ( bounds = mins, sign = -1.0; ; bounds = maxs, sign = 1.0 )
  {
	assert(!IS_NAN((bounds)[0]) && !IS_NAN((bounds)[1]) && !IS_NAN((bounds)[2]));

	
    for ( t = 0; t < 3; ++t )
    {
      dist1 = (extents->start[t] - bounds[t]) * sign;
      dist2 = (extents->end[t] - bounds[t]) * sign;
      if ( dist1 <= 0.0 )
      {
        if ( dist2 > 0.0 )
        {
          frac = (dist1 * extents->invDelta[t]) * sign;
          if ( *enterFrac >= frac )
          {
            return 0;
          }
          if ( (frac - *leaveFrac) < 0.0 )
          {
            *leaveFrac = (dist1 * extents->invDelta[t]) * sign;
          }
        }
      }
      else
      {
        if ( dist2 > 0.0 )
        {
          return 0;
        }
        frac = (dist1 * extents->invDelta[t]) * sign;
        if ( frac >= *leaveFrac )
        {
          return 0;
        }
        if ( (*enterFrac - frac) < 0.0 )
        {
          *enterFrac = (dist1 * extents->invDelta[t]) * sign;
        }
      }
    }
    if ( sign == 1.0 )
	{
		break;
	}
  }
  return 1;
}


int intersect_extents_aabb(TraceExtents *extents, const float *mins, const float *maxs, float fraction)
{
	float enterFrac, leaveFrac;
	
	enterFrac = 0.0;
	leaveFrac = fraction;
	return intersect_extents_aabb(extents, mins, maxs, &enterFrac, &leaveFrac);
}


bool intersect_extents_sphere(TraceExtents *extents, const float *origin, float radius, float fraction)
{
  float lengthSq;
  float v9, s;
  float sphereFraction;

  vec3_t m, startOffset, delta;

  VectorSubtract(origin, extents->start, startOffset);
  VectorSubtract(extents->end, extents->start, delta);
  lengthSq = VectorLengthSquared(delta);
  if ( -lengthSq >= 0.0 )
  {
    lengthSq = 1.0;
  }
  
  assert(lengthSq);

  sphereFraction = DotProduct(startOffset, delta) / lengthSq;
  if ( sphereFraction - fraction < 0.0 )
  {
    v9 = sphereFraction / lengthSq;
  }
  else
  {
    v9 = fraction;
  }
  if ( sphereFraction < 0.0 )
  {
    s = v9;
  }
  else
  {
    s = 0.0;
  }
  
  VectorMA(startOffset, -s, delta, m);
  
  return Square(radius) > VectorLengthSquared(m);
}



qboolean CM_TraceBox(TraceExtents *extents, const float *mins, const float *maxs, float fraction)
{
  qboolean r = (qboolean)(!intersect_extents_aabb(extents, mins, maxs, fraction));
  return r;
}

