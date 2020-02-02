#pragma once
#include "bg_public.hpp"


struct animStringItem_t
{
    const char* string;
    int hash;
};


enum animScriptConditionTypes_t
{
    ANIM_CONDTYPE_BITFLAGS = 0x0,
    ANIM_CONDTYPE_VALUE = 0x1,
    NUM_ANIM_CONDTYPES = 0x2,
};


struct animConditionTable_t
{
    animScriptConditionTypes_t type;
    animStringItem_t* values;
};

extern "C"
{
    extern bgs_s* bgs;
}
