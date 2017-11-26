#include <cod4x_plugin.h>
#include <cstring>

#define PLUGIN_NAME "alltests"
#define PLUGIN_SHORT "All tests plugin"
#define PLUGIN_LONG "This plugin used to test various plugin handler things and can be used as reference for various functions usage"

void OnPluginLoad(EPluginLoadingResult* pResult_)
{
    trap_Com_Printf("[alltests]: Hello, %s world!\n", "formatted");
    trap_Com_PrintError("[alltests]: Com_PrintError(): Test Com_PrintError %d\n", 1);
    //trap_Cbuf_AddText("developer 2\n");
    trap_Com_DPrintf("[alltests]: Com_DPrintf(): Com_DPrintf %s !\n", "test");
    trap_Com_PrintWarning("[alltests]: Com_PrintWarning(): Com_PrintWarning %s !\n", "test");
    trap_SV_SetConfigString(1000, "defaultweapon");// :D
    char buffer[8192];
    buffer[0] = 0;
    trap_SV_GetConfigString(1000, buffer, sizeof(buffer));
    trap_Com_Printf("[alltests]: SV_GetConfigString(): CS len is %d CS is: %s\n", strlen(buffer), buffer);
    trap_SV_SetStat(0, 0, 800);
    int ret = 0;
    trap_SV_GetStat(0, 0, &ret);
    trap_Com_Printf("[alltests]: SV_GetStat(): %d \n", ret);
    //trap_Com_Error("[alltests]: Com_Error(): Test Com_Error %d\n", 2);
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
