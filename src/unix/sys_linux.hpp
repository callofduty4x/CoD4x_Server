#pragma once

#include "../q_platform.hpp"

struct _Unwind_Exception;

extern "C"
{
    void __cdecl System_Unwind_Resume(_Unwind_Exception* object);
}
