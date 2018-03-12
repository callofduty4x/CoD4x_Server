bool SL_IsDebugging();

#ifdef __cplusplus
extern "C"{
#endif

unsigned int __cdecl SL_GetStringForFloat(float f);
unsigned int __cdecl SL_GetStringForInt(int i);
unsigned int __cdecl SL_GetStringForVector(const float *v);
int __cdecl SL_GetStringLen(unsigned int stringValue);
void __cdecl SL_Init(void);
void __cdecl SL_RemoveRefToString( unsigned int );
const char* SL_ConvertToString(unsigned int index);
int SL_FindString(const char *string);
unsigned int SL_FindLowercaseString(const char *upperstring);
unsigned int __cdecl SL_GetStringOfSize(const char *string, unsigned int user, unsigned int len, int type);
unsigned int __cdecl SL_GetLowercaseString(const char *str, unsigned int type);
unsigned int __cdecl SL_GetString(const char *str, int type);
int REGPARM(2) FindStringOfSize(const char *string, unsigned int size);
byte* MT_GetRefByIndex(int index);
float* __cdecl Scr_AllocVectorInternal();
void __cdecl SL_AddRefToString(unsigned int stringValue);
void __cdecl AddRefToVector(const float *vectorValue);
void __cdecl RemoveRefToVector(const float *vectorValue);
unsigned int __cdecl SL_ConvertFromString(const char *str);
unsigned int __cdecl SL_GetString_(const char *str, unsigned int user, int type);



#ifdef __cplusplus
};
#endif