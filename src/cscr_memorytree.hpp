#pragma once

#ifdef __cplusplus
extern "C"{
#endif

void CCDECL MT_DumpTree( );
void MT_Init();
byte *CCDECL MT_Alloc(int numBytes, int type);
void CCDECL MT_Free(void *p, int numBytes);
bool MT_Realloc(int oldNumBytes, int newNumbytes);

#ifdef __cplusplus
};
#endif


byte* MT_GetRefByIndex(int index);
int MT_GetIndexByRef(byte* p);
void CCDECL MT_FreeIndex(unsigned int nodeNum, int numBytes);
unsigned int CCDECL MT_AllocIndex(int numBytes, int type);
