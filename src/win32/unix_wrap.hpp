#pragma once

#include "../q_platform.hpp"

struct _Unwind_Exception;

extern "C"
{
    void CCDECL System_Unwind_Resume(_Unwind_Exception* object);
}
