#include "con_channels.hpp"

#include "cmd.hpp"
#include "cvar.hpp"
#include "qcommon_io.hpp"


extern "C"
{
    char pcGlob[0x21e0];
    int con_default_console_filter;
    char Con_FilterList_f_VAR[0x14];
    char Con_FilterRemove_f_VAR[0x14];
    char Con_FilterAdd_f_VAR[0x14];
    char Con_ChannelList_f_VAR[0x60];
    char con_gameMsgWindowNFilter[0x1c];
    char con_gameMsgWindowNFilter_Descs[0x180];
    char con_gameMsgWindowNFilter_Names[0x64];

    const char* defaultGameWindowFilters[4] =
    {
        "gamenotify obituary",
        "boldgame",
        "subtitle",
        "",
    };

    const char* builtinChannels[25] =
    {
        "dontfilter",
        "error",
        "gamenotify",
        "boldgame",
        "subtitle",
        "obituary",
        "logfile_only",
        "console_only",
        "gfx",
        "sound",
        "files",
        "devgui",
        "profile",
        "ui",
        "client",
        "server",
        "system",
        "playerweap",
        "ai",
        "anim",
        "physics",
        "fx",
        "leaderboards",
        "parserscript",
        "script"
    };

    void CCDECL Con_FilterAdd(bool show)
    {
        int argc = Cmd_Argc();
        if (argc >= 2)
        {
            for (int arg = 1; arg < argc; ++arg)
                Con_FilterShowChannel(CON_DEST_CONSOLE, Cmd_Argv(arg), show);
            
            cvar_modifiedFlags |= 1u;
        }
        else
            Com_Printf(CON_CHANNEL_DONT_FILTER, "USAGE: %s <channel>\n<channel> may include wildcards */?\n", Cmd_Argv(0));
    }
}
