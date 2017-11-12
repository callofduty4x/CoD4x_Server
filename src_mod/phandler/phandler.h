///////////////////////////////////////////////////////////////////////////////
// phandler.h/cpp - Plugin handler C++ -> C bridge.
//      Allows you to call plugin handler C++ code from C code.
///////////////////////////////////////////////////////////////////////////////
#pragma once

#ifdef __cplusplus
extern "C" {
#endif

__cdecl void PHandler_Init();
__cdecl void PHandler_Shutdown();

#ifdef __cplusplus
}
#endif
