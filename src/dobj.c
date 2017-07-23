#include "dobj.h"

void PrintDObjInfo(DObj_t* dobj)
{
	int idx, i, j;
	char* duplicatePartsString;

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


/* GetDObjForEntity
 * 0x08125E32
 */
DObj_t* GetDObjForEntity(int entNum)
{
	if(SV_ENTITY_DOBJS[entNum])
		return &SV_DOBJ[SV_ENTITY_DOBJS[entNum]];
	return NULL;
}

/* EntHasDObj
 * 0x0817C89E
 */
qboolean EntHasDObj(gentity_t* ent)
{
	return GetDObjForEntity(ent->s.number) != NULL;
}
