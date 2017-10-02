#include "dobj.h"
#include "misc.h"

void PrintDObjInfo(DObj_t* dobj)
{
	int idx, i, j;
	char* duplicatePartsString;

	if(dobj)
	{
		////////////////////////////////////////////////////////////////////////////////////////////////
		Com_Printf("\nModels:\n");
		if ( dobj->numModels > 0 )
		{
			idx = 0;
			for(j = 0; j < dobj->numModels; ++j)
			{
				Com_Printf("%d: '%s'\n", idx, dobj->models[j]->name);
				idx += dobj->models[j]->numBones;
			}
		}
		///////////////////////////////////////////////////////////////////////////////////////////////
		Com_Printf("\nBones:\n");
		if(dobj->numBones)
		{
			idx = 0;
			for(i = 0; i < dobj->numModels; ++i)
			{
				for(j = 0; j < dobj->models[i]->numBones; ++j)
					Com_Printf("Bone %d: '%s'\n", idx++, SL_ConvertToString(dobj->models[i]->boneNames[j]));
			}
		}
		/////////////////////////////////////////////////////////////////////////////////////
		Com_Printf("\nPart duplicates:\n");
		if(dobj->duplicateParts)
		{
			duplicatePartsString = SL_ConvertToString(dobj->duplicateParts);
			i = 16;
			while(duplicatePartsString[i])
			{
				Com_Printf("%d -> %d\n", duplicatePartsString[i], duplicatePartsString[i + 1]);
				i += 2;
			}
		}
		else
			Com_Printf("\nNo part duplicates.\n");
		Com_Printf("\n");
	}
	else
		Com_Printf("No Dobj\n");
}

signed int (__cdecl *GetDObjPartInfo)(gentity_t *ent, int partNameIdx, DObjPartCacheVectorSet_t *vectorSet) = (signed int(*)(gentity_t*, int, DObjPartCacheVectorSet_t*))0x80CC7BA;
void (*DObjInit)() = (void(*)())0x081ACB00;
void (*DB_LoadDObjs)() = (void(*)())0x0812616C;

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
