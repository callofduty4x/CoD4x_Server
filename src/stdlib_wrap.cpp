#include "stdlib_wrap.hpp"

#include <cmath>


extern "C"
{
    float CDECL std_ceilf(float x)
    {
        return std::ceil(x);
    }


    float CDECL std_asinf(float x)
    {
        return asinf(x);
    }


    void* CDECL std_new(unsigned int Size_)
    {
        return operator new(Size_);
    }


    void CDECL std_delete(void* Address_)
    {
        operator delete(Address_);
    }
}

