#include "g_mover.hpp"

extern "C"
{
    char pushed[0xb000];
    char pushed_p[0x80];

    const char* hintStrings[5] =
    {
        "",
        "HINT_NOICON",
        "HINT_ACTIVATE",
        "HINT_HEALTH",
        "HINT_FRIENDLY"
    };

} // extern "C"
