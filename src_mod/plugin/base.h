#pragma once
#include "shared.h"

// Static function to declare syscall storage variable.
inline static TSysCall getSysCall()
{
    static TSysCall g_sysCall = 0;
    return g_sysCall;
}

// Wrapper for a function call.
#define syscall getSysCall() 
