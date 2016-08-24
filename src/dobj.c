#include "dobj.h"

void PrintDObjInfo(DObj_t* dobj)
{
	int modelsCount; // eax@2
	  int i_1; // edi@3 MAPDST
	  signed int j; // esi@3
	  XModel_t *xmodel; // ebx@4 MAPDST
	  void *v7; // esi@8
	  int v8; // ecx@8
	  int v9; // eax@8
	  int v10; // ebx@9
	  int v11; // edx@9
	  char *v13; // eax@12
	  char *duplicatePartsString; // eax@15
	  char *i; // ecx@16
	  char v16; // al@17
	  XModel_t **v17; // ecx@17
	  int v18; // esi@18
	  void *v19; // edi@18
	  int v20; // ecx@18
	  int v21; // eax@18
	  int v22; // ebx@19
	  int v23; // edx@19
	  XModel_t *v24; // eax@20
	  int v25; // esi@22
	  XModel_t *v26; // eax@22
	  void *v27; // edi@23
	  int v28; // ecx@23
	  int v29; // ebx@24
	  int v30; // edx@24
	  XModel_t *v31; // eax@25
	  char *v32; // eax@27
	  XModel_t *v33; // [sp+1Ch] [bp-3Ch]@18
	  int modelsCountPlus1; // [sp+20h] [bp-38h]@3
	  int v35; // [sp+24h] [bp-34h]@22
	  char *v36; // [sp+28h] [bp-30h]@22
	  int bonesCount; // [sp+2Ch] [bp-2Ch]@5
	  XModel_t **xmodels; // [sp+30h] [bp-28h]@2 MAPDST
	  int numModels; // [sp+34h] [bp-24h]@7
	  int v40; // [sp+3Ch] [bp-1Ch]@17
	  XModel_t **v41; // [sp+40h] [bp-18h]@17
	  char *v42; // [sp+44h] [bp-14h]@16
	  char *v43; // [sp+48h] [bp-10h]@17

	  if(dobj)
	  {
		Com_Printf("\nModels:\n");
		xmodels = dobj->models;
		modelsCount = dobj->numModels;
		if ( modelsCount > 0 )
		{
		  i_1 = 0;
		  j = 1;
		  modelsCountPlus1 = modelsCount + 1;
		  do
		  {
			xmodel = xmodels[j - 1];
			Com_Printf("%d: '%s'\n", i_1, xmodel->name);
			//i_1 += GetXModelBonesCount(xmodel);
			i_1 += xmodel->numBones;
			++j;
		  }
		  while ( j != modelsCountPlus1 );
		}
		Com_Printf("\nBones:\n");
		bonesCount = dobj->numBones;
		if ( bonesCount > 0 )
		{
		  i_1 = 0;
		  do
		  {
			numModels = dobj->numModels;
			xmodels = dobj->models;
			if ( numModels > 0 )
			{
			  v7 = (*xmodels)->boneNames;
			  v8 = (*xmodels)->numBones;
			  v9 = i_1;
			  if ( v8 > i_1 )
			  {
	LABEL_30:
				v13 = SL_ConvertToString(*((WORD *)v7 + v9));
				goto LABEL_13;
			  }
			  v10 = 0;
			  v11 = 0;
			  while ( 1 )
			  {
				++v10;
				if ( numModels == v10 )
				  break;
				v11 += v8;
				xmodel = dobj->models[v10];
				v7 = xmodel->boneNames;
				v8 = xmodel->numBones;
				v9 = i_1 - v11;
				if ( v8 > i_1 - v11 )
				  goto LABEL_30;
			  }
			}
			v13 = 0;
	LABEL_13:
			Com_Printf("Bone %d: '%s'\n", i_1++, v13);
		  }
		  while ( bonesCount != i_1 );
		}
		if ( dobj->duplicateParts )
		{
		  Com_Printf("\nPart duplicates:\n");
		  duplicatePartsString = SL_ConvertToString(dobj->duplicateParts);
		  if ( duplicatePartsString[16] )
		  {
			v42 = duplicatePartsString;
			for ( i = duplicatePartsString; ; i = v42 )
			{
			  v43 = i;
			  v16 = i[17];
			  v40 = dobj->numModels;
			  v17 = dobj->models;
			  v41 = dobj->models;
			  if ( v40 <= 0 )
			  {
				v35 = (byte)v42[17] - 1;
				v32 = 0;
				v36 = 0;
			  }
			  else
			  {
				v18 = (byte)v16 - 1;
				v33 = *v17;
				v19 = (*v17)->boneNames;
				v20 = (*v17)->numBones;
				v21 = v18;
				if ( v18 < v20 )
				{
	LABEL_35:
				  v36 = SL_ConvertToString(*((WORD *)v19 + v21));
				  v35 = (byte)v42[17] - 1;
				  v40 = dobj->numModels;
				  v41 = dobj->models;
				  if ( v40 <= 0 )
					goto LABEL_27;
				  v25 = (byte)v42[16] - 1;
				  v26 = *dobj->models;
				}
				else
				{
				  v22 = 0;
				  v23 = 0;
				  while ( 1 )
				  {
					++v22;
					if ( v40 == v22 )
					  break;
					v23 += v20;
					v24 = v41[v22];
					v19 = v24->boneNames;
					v20 = v24->numBones;
					v21 = v18 - v23;
					if ( v20 > v18 - v23 )
					  goto LABEL_35;
				  }
				  v35 = (byte)v42[17] - 1;
				  v25 = (byte)v42[16] - 1;
				  v36 = 0;
				  v26 = v33;
				}
				v27 = v26->boneNames;
				v28 = v26->numBones;
				if ( v28 <= v25 )
				{
				  v29 = 0;
				  v30 = 0;
				  while ( 1 )
				  {
					++v29;
					if ( v29 >= v40 )
					  break;
					v30 += v28;
					v31 = v41[v29];
					v27 = v31->boneNames;
					v28 = v31->numBones;
					if ( v28 > v25 - v30 )
					{
					  v25 -= v30;
					  goto LABEL_34;
					}
				  }
	LABEL_27:
				  v32 = 0;
				  goto LABEL_28;
				}
	LABEL_34:
				v32 = SL_ConvertToString(*((WORD *)v27 + v25));
			  }
	LABEL_28:
			  Com_Printf("%d ('%s') -> %d ('%s')\n", (byte)v42[16] - 1, v32, v35, v36);
			  v42 += 2;
			  if ( !v43[18] )
				break;
			}
		  }
		}
		else
		{
		  Com_Printf("\nNo part duplicates.\n");
		}
		Com_Printf("\n");
	  }
	  else
	  {
		Com_Printf("No Dobj\n");
	  }

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
