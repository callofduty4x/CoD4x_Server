#pragma once

enum EAPICode
{
    AC_Com_Printf = 0
};

typedef void (*TSysCall)(const EAPICode Code_, ...);

#define DLL_EXPORT __declspec(dllexport)

// No name mangling for C++ code.
#ifdef __cplusplus
    #define DECL_IN_DLL extern "C" DLL_EXPORT
#else
    #define DECL_IN_DLL DLL_EXPORT
#endif
