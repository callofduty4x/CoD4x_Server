#include "q_shared.hpp"
#include "cm_public.hpp"
#include "cm_local.hpp"
#include "sys_thread.hpp"


/*
==================
CM_BoxTrace
==================
*/
/*
void CM_BoxTrace( trace_t *results, const vec3_t start, const vec3_t end,
				  const vec3_t mins, const vec3_t maxs,
				  clipHandle_t model, int brushmask ) {
    memset(results, 0, sizeof(trace_t));
    results->fraction = 1.0;
	CM_Trace( results, start, end, mins, maxs, model, brushmask );
}


*/
qboolean CM_TraceBoxInternal(TraceExtents *extents, const float *testvec, float s, float *fraction)
{
	int i;
	float d, o;
	
	for(i = 0; i < 3; ++i)
    {
	  d = (extents->start[i] - testvec[i]) * s;
      o = (extents->end[i] - testvec[i]) * s;
      if ( d <= 0.0 )
      {
        if ( o > 0.0 )
        {
			d = (d * extents->invDelta[i]) * s;
			if ( d <= 0.0 )
			{
				return 1;
			}
		    if ( d - *fraction < 0.0 )
			{
				*fraction = d;
			}
        }
      }
      else if ( o > 0.0 || ((float)(d * extents->invDelta[i]) * s) >= *fraction )
      {
        return 1;
      }
    }
	return 0;
}

qboolean CM_TraceBox(TraceExtents *extents, const float *mins, const float *maxs, float fraction)
{
  float lfraction = fraction;

  if(CM_TraceBoxInternal(extents, mins, -1.0, &lfraction) == qtrue)
  {
      return qtrue;
  }
  if(CM_TraceBoxInternal(extents, maxs, 1.0, &lfraction) == qtrue)
  {
      return qtrue;
  }
  return qfalse;
}

