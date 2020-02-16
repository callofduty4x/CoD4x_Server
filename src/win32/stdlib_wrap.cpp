#include "stdlib_wrap.hpp"

#include <cmath>


extern "C"
{
    float __cdecl std_ceilf(float x)
    {
        return std::ceil(x);
    }


    float __cdecl std_asinf(float x)
    {
        return asinf(x);
    }


    void* __cdecl std_new(unsigned int Size_)
    {
        return operator new(Size_);
    }


    void __cdecl std_delete(void* Address_)
    {
        operator delete(Address_);
    }
}

