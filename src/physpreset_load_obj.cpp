#include "physpreset_load_obj.hpp"


extern "C"
{
    char physAlloc[0x80];

    cspField_t physPresetFields[10] =
    {
        { "mass", 0, 6 },
        { "bounce", 4, 6 },
        { "friction", 8, 6 },
        { "isFrictionInfinity", 0x0C, 5 },
        { "bulletForceScale", 0x10, 6 },
        { "explosiveForceScale", 0x14, 6 },
        { "sndAliasPrefix", 0x18, 0 },
        { "piecesSpreadFraction", 0x1C, 6 },
        { "piecesUpwardVelocity", 0x20, 6 },
        { "tempDefaultToCylinder", 0x24, 5 }
    };
} // extern "C"
