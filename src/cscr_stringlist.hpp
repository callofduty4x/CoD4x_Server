#pragma once

bool SL_IsDebugging();

#ifdef __cplusplus
extern "C"{
#endif

unsigned int CCDECL SL_GetStringForFloat(float f);
unsigned int CCDECL SL_GetStringForInt(int i);
unsigned int CCDECL SL_GetStringForVector(const float *v);
int CCDECL SL_GetStringLen(unsigned int stringValue);
void CCDECL SL_Init(void);
void CCDECL SL_RemoveRefToString( unsigned int );
const char* SL_ConvertToString(unsigned int index);
int SL_FindString(const char *string);
unsigned int SL_FindLowercaseString(const char *upperstring);
unsigned int CCDECL SL_GetStringOfSize(const char *string, unsigned int user, unsigned int len, int type);
unsigned int CCDECL SL_GetLowercaseString(const char *str, unsigned int type);
unsigned int CCDECL SL_GetString(const char *str, int type);
float* CCDECL Scr_AllocVectorInternal();
float *CCDECL Scr_AllocVector(const float *v);
void CCDECL SL_AddRefToString(unsigned int stringValue);
void CCDECL AddRefToVector(const float *vectorValue);
void CCDECL RemoveRefToVector(const float *vectorValue);
unsigned int CCDECL SL_ConvertFromString(const char *str);
unsigned int CCDECL SL_GetString_(const char *str, unsigned int user, int type);
void SL_SetScriptCompile(bool active);
void CCDECL SL_ShutdownSystem(unsigned int user);

#ifdef __cplusplus
};
#endif
