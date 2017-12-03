#pragma once

enum EAPICode
{
    AC_Com_Printf = 0,
    AC_Com_Error,
    AC_Com_PrintError,
    AC_Com_DPrintf,
    AC_Com_PrintWarning,
    AC_Cbuf_AddText,
    AC_SV_SetConfigString,
    AC_SV_GetConfigString,
    AC_SV_GetStat,
    AC_SV_SetStat,
    AC_RemoveBanByIP,
    AC_AddBanByIP
};

typedef void (*TSysCall)(const EAPICode Code_, ...);

#define DLL_EXPORT __declspec(dllexport)

// No name mangling for C++ code.
#ifdef __cplusplus
    #define DECL_IN_DLL extern "C" DLL_EXPORT
#else
    #define DECL_IN_DLL DLL_EXPORT
#endif

///////////////////////////////////////////////////////////////////////////////
// This structure used by plugin/server to send/receive plugin information.
typedef struct SPluginInfo_t
{                               // To be used in OnInfoRequest
    char fullName[64];          // Full plugin name, short name is the filename without extension - optional
    char shortDescription[128]; // Describe in a few words what this plugin does - optional
    char longDescription[1024]; // Full description - optional
} SPluginInfo_t;

typedef enum EPluginLoadingResult
{
    PLR_OK,         // Plugin loading success.
    PLR_FAILED      // Plugin loading failed for some reason.
}EPluginLoadingResult;
