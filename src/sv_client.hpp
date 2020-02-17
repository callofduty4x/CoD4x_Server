#pragma once

#include "q_platform.hpp"

int SV_GetPredictedOriginAndTimeForClientNum(int clientNum, float *origin);

extern "C" void CDECL SV_FreeClientScriptPers();
