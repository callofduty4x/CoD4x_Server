#include "stdlib_wrap.hpp"

#include <cmath>


extern "C"
{
    float __cdecl std_ceilf(float x)
    {
        return std::ceil(x);
    }
}
