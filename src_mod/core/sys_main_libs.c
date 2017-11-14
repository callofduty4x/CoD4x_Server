#include "sys_main_libs.h"

#define LIB_STORAGE_SIZE 32

// No need to cache this value.
static inline void** getLibStorage()
{
    static void* g_libStorage[LIB_STORAGE_SIZE];
    return g_libStorage;
}

libHandle_t AddLibraryHandle(void* hRealModule_)
{
    if (!hRealModule_)
        return INVALID_LIB_HANDLE;

    libHandle_t result = INVALID_LIB_HANDLE;
    for (int i = 0; i < LIB_STORAGE_SIZE; ++i)
    {
        if (getLibStorage()[i] == 0)
        {
            result = (libHandle_t)i;
            break;
        }
    }

    if (result == INVALID_LIB_HANDLE)
        return INVALID_LIB_HANDLE;

    getLibStorage()[result] = hRealModule_;
    return result;
}

void RemoveLibraryHandle(libHandle_t hModule_)
{
    if (hModule_ < 0 || hModule_ >= LIB_STORAGE_SIZE)
        return;

    getLibStorage()[hModule_] = NULL;
}

void* GetLibraryByHandle(libHandle_t hModule_)
{
    if (hModule_ < 0 || hModule_ >= LIB_STORAGE_SIZE)
        return NULL;

    return getLibStorage()[hModule_];
}

unsigned int GetLibrariesMaxCount()
{
    return LIB_STORAGE_SIZE;
}
