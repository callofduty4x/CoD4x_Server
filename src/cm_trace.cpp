#include "cm_trace.hpp"
#include "qshared.hpp"
#include "cm_public.hpp"
#include "cm_local.hpp"
#include "sys_thread.hpp"


qboolean CM_TraceBoxInternal(TraceExtents *extents, const float *testvec, float s, float *fraction)
{
    for(int i = 0; i < 3; ++i)
    {
        float d = (extents->start[i] - testvec[i]) * s;
        float o = (extents->end[i] - testvec[i]) * s;
        if ( d <= 0.0 )
        {
            if ( o > 0.0 )
            {
                d = (d * extents->invDelta[i]) * s;
                if ( d <= 0.0 )
                {
                    return qtrue;
                }
                if ( d - *fraction < 0.0 )
                {
                    *fraction = d;
                }
            }
        }
        else if ( o > 0.0 || ((float)(d * extents->invDelta[i]) * s) >= *fraction )
        {
            return qtrue;
        }
    }
    return qfalse;
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

