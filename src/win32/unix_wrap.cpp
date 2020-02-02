#include "unix_wrap.hpp"

extern "C"
{
    void __cdecl _Unwind_Resume(struct _Unwind_Exception* object)
    {}
}
