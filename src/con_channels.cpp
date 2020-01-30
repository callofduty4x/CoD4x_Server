#include "con_channels.hpp"
#include "cmd.hpp"
#include "cvar.hpp"
#include "qcommon_io.hpp"


void __cdecl Con_FilterAdd(bool show)
{
  signed int arg;
  int argc;

  argc = Cmd_Argc();
  if ( argc >= 2 )
  {
    for ( arg = 1; arg < argc; ++arg )
    {
      Con_FilterShowChannel(CON_DEST_CONSOLE, Cmd_Argv(arg), show);
    }
    cvar_modifiedFlags |= 1u;
  }
  else
  {
    Com_Printf(CON_CHANNEL_DONT_FILTER, "USAGE: %s <channel>\n<channel> may include wildcards */?\n", Cmd_Argv(0));
  }
}

