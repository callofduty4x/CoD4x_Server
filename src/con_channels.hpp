#pragma once
#include "q_platform.hpp"


enum print_msg_dest_t
{
    CON_DEST_CONSOLE = 0x0,
    CON_DEST_MINICON = 0x1,
    CON_DEST_ERROR = 0x2,
    CON_DEST_GAME_FIRST = 0x3,
    CON_DEST_GAME1 = 0x3,
    CON_DEST_GAME2 = 0x4,
    CON_DEST_GAME3 = 0x5,
    CON_DEST_GAME_LAST = 0x5,
    CON_DEST_COUNT = 0x6,
};

extern "C"
{
    extern char pcGlob[0x21e0];
    extern int con_default_console_filter;
    extern char Con_FilterList_f_VAR[0x14];
    extern char Con_FilterRemove_f_VAR[0x14];
    extern char Con_FilterAdd_f_VAR[0x14];
    extern char Con_ChannelList_f_VAR[0x60];
    extern char con_gameMsgWindowNFilter[0x1c];
    extern char con_gameMsgWindowNFilter_Descs[0x180];
    extern char con_gameMsgWindowNFilter_Names[0x64];

    extern const char* defaultGameWindowFilters[4];
    extern const char* builtinChannels[25];

    void CCDECL Con_FilterAdd(bool show);
    void CCDECL Con_FilterShowChannel(print_msg_dest_t, const char* channelName, bool show);
}
