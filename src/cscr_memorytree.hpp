#pragma once

#ifdef __cplusplus
extern "C"{
#endif

void CDECL MT_DumpTree( );
void MT_Init();
byte *CDECL MT_Alloc(int numBytes, int type);
void CDECL MT_Free(void *p, int numBytes);
bool MT_Realloc(int oldNumBytes, int newNumbytes);

#ifdef __cplusplus
};
#endif


byte* MT_GetRefByIndex(int index);
int MT_GetIndexByRef(byte* p);
void CDECL MT_FreeIndex(unsigned int nodeNum, int numBytes);
unsigned int CDECL MT_AllocIndex(int numBytes, int type);
