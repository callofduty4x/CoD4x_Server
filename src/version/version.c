#include "version.h"

#define SYS_COMMONVERSION 20.0
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
    return 11333377; //sepcial build number ;)
}

const char* Sys_GetBranch()
{
    return STRINGIFY(BUILD_BRANCH);
}

const char* Sys_GetRevision()
{
    return STRINGIFY(BUILD_REVISION);
}
