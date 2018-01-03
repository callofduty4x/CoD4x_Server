#include "xassets/xmodel.h"
#include "dobj.h"

extern "C"{

int __cdecl XModelGetBoneIndex(XModel *model, unsigned int name, unsigned int offset, uint8_t *index)
{
  unsigned int numBones;
  unsigned int localBoneIndex;
  uint16_t *boneNames;

  int i;

  assert(index != NULL);

  boneNames = model->boneNames;
  numBones = model->numBones;

  assert(numBones < DOBJ_MAX_PARTS);

  for ( localBoneIndex = 0;name != boneNames[localBoneIndex]; ++localBoneIndex )
  {
    if ( localBoneIndex >= numBones )
    {
        Com_Printf(CON_CHANNEL_SYSTEM,"^5Miss bone part %s %d of %s\n", SL_ConvertToString(name), name, model->name);
	for(i = 0; i < numBones; ++i)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"^6%s\n", SL_ConvertToString(boneNames[i]));
	}
      return 0;
    }
  }
  *index = localBoneIndex + offset;
  Com_Printf(CON_CHANNEL_SYSTEM,"^5Found bone part %s of %s\n", SL_ConvertToString(name), model->name);

  return 1;
}

}