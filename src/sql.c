#include "q_shared.h"
#include "qcommon_io.h"
#include "qcommon.h"
#include "g_hud.h"
#include "scr_vm.h"
#include "cmd.h"
#include "server.h"
#include "maxmind_geoip.h"
#include "q_platform.h"
#include "g_sv_shared.h"
#include "cvar.h"
#include "misc.h"
#include "sec_crypto.h"
#include "sv_auth.h"
#include "sapi.h"

#include <string.h>
#include <time.h>
#include "plugin_handler.h"

#include <mysql/mysql.h>

void gsc_mysql_version() {
    const char *version = mysql_get_client_info();
    Com_PrintError("MySQL client version: %s\n", version);
    return;
}
