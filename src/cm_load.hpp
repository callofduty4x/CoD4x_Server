#pragma once
#include "cm_local.hpp"


extern "C"
{
    extern clipMap_t cm;
    cmodel_t* CM_ClipHandleToModel(clipHandle_t handle);
}
