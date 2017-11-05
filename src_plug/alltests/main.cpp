#include <cod4x_plugin.h>

void onPluginLoad()
{
    trap_Com_Printf("[alltests]: Hello, %s world!", "formatted");
}

void onPluginUnload()
{
    trap_Com_Printf("[alltests]: Goodbye, cruel world!");
}
