#pragma once
///////////////////////////////////////////////////////////////////////////////
// Main plugin file to be included in plugin's source code.
// Purpose: declare/define version dependent plugin functions wrappers and declare plugin event handlers.
//#include "plugin_shared.h"
#include "base.h"
#include "events.h"
#include "traps.h"

// Define plugin entry point and its default action.
DECL_IN_DLL inline void pluginEntry(const TSysCall SysCall_)
{
    static TSysCall g_sysCall = SysCall_;
    (void)g_sysCall; // Get rid of unused variable warning because it's used in trap_* functions.
}
