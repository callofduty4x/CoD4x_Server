#include "phandler.h"
#include "PluginHandler.hpp"
#include "cmds.hpp"

void PHandler_Init()
{
    SV_AddPluginHandlerConsoleCommands();
    GetPluginHandler()->Init();
}
