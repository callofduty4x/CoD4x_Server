#pragma once

struct DynEntityProps
{
    const char* name;
    char clientOnly;
    char clipMove;
    char usePhysics;
    char destroyable;
};


extern "C"
{
    extern DynEntityProps dynEntProps[3];
    extern const char* dynEntClassNames[2];
} // extern "C"
