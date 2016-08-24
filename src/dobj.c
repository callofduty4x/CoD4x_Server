#include "dobj.h"

void (*PrintDObjInfo)(DObj_t* dobj) = (void(*)(DObj_t*))0x081AE114;
signed int (__cdecl *GetDObjPartInfo)(gentity_t *ent, int partNameIdx, DObjPartCacheVectorSet_t *vectorSet) = (signed int(*)(gentity_t*, int, DObjPartCacheVectorSet_t*))0x80CC7BA;
void (*DObjInit)() = (void(*)())0x081ACB00;

/* GetDObjForEntity
 * 0x08125E32
 * pWord_88E8500 - pointer to a 1024 array elements?
 */
DObj_t* GetDObjForEntity(int entNum)
{
	short int* pWord_88E8500 = (short int*)0x88E8500;
	if ( pWord_88E8500[entNum] )
		return (DObj_t*)(0x88E8D20 + 25 * pWord_88E8500[entNum]);
	return NULL;
}

/* EntHasDObj
 * 0x0817C89E
 */
qboolean EntHasDObj(gentity_t* ent)
{
	return GetDObjForEntity(ent->s.number) != NULL;
}
