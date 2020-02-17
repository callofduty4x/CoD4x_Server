#pragma once

#include "qshared.hpp"

extern "C"
{
    void CDECL CL_AddDebugLine(const float *start, const float *end, const float *color, int depthTest, int duration);
    void CDECL CL_AddDebugStarWithText(const float *point, const float *starColor, const float *textColor, const char *string, float fontsize, int duration);
    void CDECL CL_AddDebugStar(const float *point, const float *color, int duration);
    void CDECL CL_AddDebugString(const float *xyz, const float *color, float scale, const char *text, int duration);
    void CDECL SV_AddDebugStar(unsigned int clnum, const float *point, const float *color, int duration);
    void CDECL SV_AddDebugStarWithText(unsigned int clnum, const float *point, const float *starColor, const float *textColor, const char *string, float fontsize, int duration);
    void CDECL SV_AddDebugLine(unsigned int clnum, const float *start, const float *end, const float *color, int depthTest, int duration);
};
