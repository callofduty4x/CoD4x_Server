#pragma once

#include "q_shared.h"

#ifdef __cplusplus
extern "C"{
#endif

void __cdecl CL_AddDebugLine(const float *start, const float *end, const float *color, int depthTest, int duration);
void __cdecl CL_AddDebugStarWithText(const float *point, const float *starColor, const float *textColor, const char *string, float fontsize, int duration);
void __cdecl CL_AddDebugStar(const float *point, const float *color, int duration);
void __cdecl CL_AddDebugString(const float *xyz, const float *color, float scale, const char *text, int duration);
void __cdecl SV_AddDebugStar(unsigned int clnum, const float *point, const float *color, int duration);
void __cdecl SV_AddDebugStarWithText(unsigned int clnum, const float *point, const float *starColor, const float *textColor, const char *string, float fontsize, int duration);
void __cdecl SV_AddDebugLine(unsigned int clnum, const float *start, const float *end, const float *color, int depthTest, int duration);

#ifdef __cplusplus
};
#endif
