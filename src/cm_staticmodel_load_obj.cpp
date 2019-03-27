#include "cm_local.h"
#include "q_math.h"
#include "xassets/xmodel.h"


void __cdecl CM_InitStaticModel(cStaticModel_s *staticModel, float *origin, float *angles, float scale)
{
  vec3_t axis[3];

  assert(!IS_NAN((origin)[0]) && !IS_NAN((origin)[1]) && !IS_NAN((origin)[2]));
  assert(!IS_NAN((angles)[0]) && !IS_NAN((angles)[1]) && !IS_NAN((angles)[2]));
  assert(!IS_NAN(scale));

  VectorCopy(origin, staticModel->origin);

  AnglesToAxis(angles, axis);
  MatrixTranspose(axis, staticModel->invScaledAxis);

  VectorScale(staticModel->invScaledAxis[0], 1.0 / scale, staticModel->invScaledAxis[0]);
  VectorScale(staticModel->invScaledAxis[1], 1.0 / scale, staticModel->invScaledAxis[1]);
  VectorScale(staticModel->invScaledAxis[2], 1.0 / scale, staticModel->invScaledAxis[2]);

  VectorScale(axis[0], scale, axis[0]);
  VectorScale(axis[1], scale, axis[1]);
  VectorScale(axis[2], scale, axis[2]);

  if ( XModelGetStaticBounds(staticModel->xmodel, axis, staticModel->absmin, staticModel->absmax) )
  {
    VectorAdd(staticModel->absmin, origin, staticModel->absmin);
    VectorAdd(staticModel->absmax, origin, staticModel->absmax);

    assert(staticModel->absmax[0] - staticModel->absmin[0] >= 0);
    assert(staticModel->absmax[1] - staticModel->absmin[1] >= 0);
    assert(staticModel->absmax[2] - staticModel->absmin[2] >= 0);
  }
}

