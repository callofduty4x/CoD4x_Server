#include "stdlib_wrap.hpp"

#include <cmath>


extern "C"
{
    float CCDECL std_ceilf(float x)
    {
        return std::ceil(x);
    }


    float CCDECL std_asinf(float x)
    {
        return asinf(x);
    }


    void* CCDECL std_new(unsigned int Size_)
    {
        return operator new(Size_);
    }


    void CCDECL std_delete(void* Address_)
    {
        operator delete(Address_);
    }
}

