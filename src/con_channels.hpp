#pragma once

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
    void __cdecl Con_FilterAdd(bool show);
    void __cdecl Con_FilterShowChannel(print_msg_dest_t, const char* channelName, bool show);
}
