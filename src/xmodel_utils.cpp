#include "xassets.h"
#include "xassets/xmodel.h"
#include "dobj.h"

extern "C"{

int __cdecl XModelGetBoneIndex(XModel *model, unsigned int name, unsigned int offset, uint8_t *index)
{
  unsigned int numBones;
  unsigned int localBoneIndex;
  uint16_t *boneNames;

  assert(index != NULL);

  boneNames = model->boneNames;
  numBones = model->numBones;

  assert(numBones < DOBJ_MAX_PARTS);

  for ( localBoneIndex = 0;name != boneNames[localBoneIndex]; ++localBoneIndex )
  {
    if ( localBoneIndex >= numBones )
    {
      return 0;
    }
  }
  *index = localBoneIndex + offset;
  return 1;
}


}



