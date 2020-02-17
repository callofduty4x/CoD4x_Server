#pragma once

bool SL_IsDebugging();

#ifdef __cplusplus
extern "C"{
#endif

unsigned int CDECL SL_GetStringForFloat(float f);
unsigned int CDECL SL_GetStringForInt(int i);
unsigned int CDECL SL_GetStringForVector(const float *v);
int CDECL SL_GetStringLen(unsigned int stringValue);
void CDECL SL_Init(void);
void CDECL SL_RemoveRefToString( unsigned int );
const char* SL_ConvertToString(unsigned int index);
int SL_FindString(const char *string);
unsigned int SL_FindLowercaseString(const char *upperstring);
unsigned int CDECL SL_GetStringOfSize(const char *string, unsigned int user, unsigned int len, int type);
unsigned int CDECL SL_GetLowercaseString(const char *str, unsigned int type);
unsigned int CDECL SL_GetString(const char *str, int type);
float* CDECL Scr_AllocVectorInternal();
float *CDECL Scr_AllocVector(const float *v);
void CDECL SL_AddRefToString(unsigned int stringValue);
void CDECL AddRefToVector(const float *vectorValue);
void CDECL RemoveRefToVector(const float *vectorValue);
unsigned int CDECL SL_ConvertFromString(const char *str);
unsigned int CDECL SL_GetString_(const char *str, unsigned int user, int type);
void SL_SetScriptCompile(bool active);
void CDECL SL_ShutdownSystem(unsigned int user);

#ifdef __cplusplus
};
#endif
