#include "dobj.hpp"
#include "xassets/xmodel.hpp"
#include "cscr_stringlist.hpp"

using namespace std;
/*
duplicate of void CCDECL DObjDumpInfo(DObj *obj)

void PrintDObjInfo(DObj_t* dobj)
{
	int idx, i, j;
	const char* duplicatePartsString;

	if(dobj)
	{
		////////////////////////////////////////////////////////////////////////////////////////////////
		Com_Printf(CON_FIRST_DEBUG_CHANNEL,"\nModels:\n");
		if ( dobj->numModels > 0 )
		{
			idx = 0;
			for(j = 0; j < dobj->numModels; ++j)
			{
				Com_Printf(CON_FIRST_DEBUG_CHANNEL,"%d: '%s'\n", idx, dobj->models[j]->name);
				idx += dobj->models[j]->numBones;
			}
		}
		///////////////////////////////////////////////////////////////////////////////////////////////
		Com_Printf(CON_FIRST_DEBUG_CHANNEL,"\nBones:\n");
		if(dobj->numBones)
		{
			idx = 0;
			for(i = 0; i < dobj->numModels; ++i)
			{
				for(j = 0; j < dobj->models[i]->numBones; ++j)
					Com_Printf(CON_FIRST_DEBUG_CHANNEL,"Bone %d: '%s'\n", idx++, SL_ConvertToString(dobj->models[i]->boneNames[j]));
			}
		}
		/////////////////////////////////////////////////////////////////////////////////////
		Com_Printf(CON_FIRST_DEBUG_CHANNEL,"\nPart duplicates:\n");
		if(dobj->duplicateParts)
		{
			duplicatePartsString = SL_ConvertToString(dobj->duplicateParts);
			i = 16;
			while(duplicatePartsString[i])
			{
				Com_Printf(CON_FIRST_DEBUG_CHANNEL,"%d -> %d\n", duplicatePartsString[i], duplicatePartsString[i + 1]);
				i += 2;
			}
		}
		else
			Com_Printf(CON_FIRST_DEBUG_CHANNEL,"\nNo part duplicates.\n");
		Com_Printf(CON_FIRST_DEBUG_CHANNEL,"\n");
	}
	else
		Com_Printf(CON_FIRST_DEBUG_CHANNEL,"No Dobj\n");
}
*/

void CCDECL ConvertQuatToMat(DObjAnimMat *mat, vec3_t axis[3])
{
  vec3_t scaledQuat;
  float xx;
  float xy;
  float xz;
  float xw;
  float yy;
  float yz;
  float yw;
  float zz;
  float zw;

  assert(!isnan((mat->quat)[0]) && !isnan((mat->quat)[1]) && !isnan((mat->quat)[2]) && !isnan((mat->quat)[3]));
  assert(!isnan(mat->transWeight));

  VectorScale(mat->quat, mat->transWeight, scaledQuat);
  xx = scaledQuat[0] * mat->quat[0];
  xy = scaledQuat[0] * mat->quat[1];
  xz = scaledQuat[0] * mat->quat[2];
  xw = scaledQuat[0] * mat->quat[3];
  yy = scaledQuat[1] * mat->quat[1];
  yz = scaledQuat[1] * mat->quat[2];
  yw = scaledQuat[1] * mat->quat[3];
  zz = scaledQuat[2] * mat->quat[2];
  zw = scaledQuat[2] * mat->quat[3];
  axis[0][0] = 1.0 - yy + zz;
  axis[0][1] = xy + zw;
  axis[0][2] = xz - yw;
  axis[1][0] = xy - zw;
  axis[1][1] = 1.0 - xx + zz;
  axis[1][2] = yz + xw;
  axis[2][0] = xz + yw;
  axis[2][1] = yz - xw;
  axis[2][2] = 1.0 - xx + yy;
}

