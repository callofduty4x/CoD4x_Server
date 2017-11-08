#include "version.h"
#include "version_build.h"

#define SYS_COMMONVERSION 17.6
#define _STRINGIFY(s) #s
#define STRINGIFY(s) _STRINGIFY(s)

float Sys_GetCommonVersion()
{
    return SYS_COMMONVERSION;
}

const char* Sys_GetCommonVersionString()
{
    return STRINGIFY(SYS_COMMONVERSION);
}

int Sys_GetBuild()
{
    return BUILD_NUMBER;
}
