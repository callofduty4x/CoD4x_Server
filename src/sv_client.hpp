#pragma once

#include "q_platform.hpp"

int SV_GetPredictedOriginAndTimeForClientNum(int clientNum, float *origin);

extern "C" void CCDECL SV_FreeClientScriptPers();
