#pragma once

#include "qshared.hpp"

extern "C"
{
    void CCDECL CL_AddDebugLine(const float *start, const float *end, const float *color, int depthTest, int duration);
    void CCDECL CL_AddDebugStarWithText(const float *point, const float *starColor, const float *textColor, const char *string, float fontsize, int duration);
    void CCDECL CL_AddDebugStar(const float *point, const float *color, int duration);
    void CCDECL CL_AddDebugString(const float *xyz, const float *color, float scale, const char *text, int duration);
    void CCDECL SV_AddDebugStar(unsigned int clnum, const float *point, const float *color, int duration);
    void CCDECL SV_AddDebugStarWithText(unsigned int clnum, const float *point, const float *starColor, const float *textColor, const char *string, float fontsize, int duration);
    void CCDECL SV_AddDebugLine(unsigned int clnum, const float *start, const float *end, const float *color, int depthTest, int duration);
};
