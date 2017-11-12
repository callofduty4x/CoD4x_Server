#include <cod4x_plugin.h>
#include <cstring>

#define PLUGIN_NAME "alltests"
#define PLUGIN_SHORT "All tests plugin"
#define PLUGIN_LONG "This plugin used to test various plugin handler things and can be used as reference for various functions usage"

void OnPluginLoad(EPluginLoadingResult* pResult_)
{
    trap_Com_Printf("[alltests]: Hello, %s world!\n", "formatted");
    *pResult_ = PLR_OK;
}

void OnPluginUnload()
{
    trap_Com_Printf("[alltests]: Goodbye, cruel world!\n");
}

void OnInfoRequest(SPluginInfo_t* pPluginInfo_)
{
    strcpy(pPluginInfo_->fullName, PLUGIN_NAME);
    strcpy(pPluginInfo_->shortDescription, PLUGIN_SHORT);
    strcpy(pPluginInfo_->longDescription, PLUGIN_LONG);
}
