#include "DynEntity_load_obj.hpp"


extern "C"
{
    DynEntityProps dynEntProps[3] =
    {
        { "invalid", 0, 0, 0, 0 },
        { "clutter", 1, 0, 1, 0 },
        { "destruct", 1, 0, 1, 1 },
    };

    const char* dynEntClassNames[2] =
    {
        "dyn_brushmodel",
        "dyn_model"
    };
} // extern "C"
