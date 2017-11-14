#pragma once
#include "sys_main.h"

///////////////////////////////////////////////////////////////////////////////
// DLL/SO storage. To be used in OS-dependent code. Just not to write
// such storage each time for each OS.

///////////////////////////////////////////////////////////////////////////////
// Pushes real library handle to a storage and returns its handle.
// hRealModule_: handle of module returned by LoadLibrary (Windows) or dlopen (Linux).
// Returns: unique server handle of a real library handle.
libHandle_t AddLibraryHandle(void* hRealModule_);

///////////////////////////////////////////////////////////////////////////////
// Removes real library handle from a storage by unique server handle.
// hModule_: server handle of a loaded module.
void RemoveLibraryHandle(libHandle_t hModule_);

///////////////////////////////////////////////////////////////////////////////
// Get real library handle from a storage by unique server handle.
// hModule_: server handle of a loaded module.
// Returns: real library handle.
void* GetLibraryByHandle(libHandle_t hModule_);

///////////////////////////////////////////////////////////////////////////////
// Get max libraries count.
// Return: value >= 0.
unsigned int GetLibrariesMaxCount();
