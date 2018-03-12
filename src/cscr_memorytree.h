#ifdef __cplusplus
extern "C"{
#endif

byte *__cdecl MT_Alloc(int numBytes, int type);
void __cdecl MT_Free(void *p, int numBytes);
void __cdecl MT_FreeIndex(unsigned int nodeNum, int numBytes);
unsigned int __cdecl MT_AllocIndex(int numBytes, int type);
void __cdecl MT_DumpTree( );
void MT_Init();
bool MT_Realloc(int oldNumBytes, int newNumbytes);
byte* MT_GetRefByIndex(int index);
int MT_GetIndexByRef(byte* p);


#ifdef __cplusplus
};
#endif


