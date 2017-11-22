module cod4x.structs;

import std.conv;
import cod4x.plugin_declarations;

const PLUGIN_HANDLER_VERSION_MAJOR = 2;
const PLUGIN_HANDLER_VERSION_MINOR = 302;

alias qboolean = int;

align(1) struct pluginInfo_t{			        // To be used in OnInfoRequest
align(1):
    version_t handlerVersion;	// Requested plugin handler version - mandatory field
    version_t pluginVersion;	// Version of your plugin - optional
    char[64] fullName;		    // Full plugin name, short name is the filename without extension - optional
    char[128] shortDescription;	// Describe in a few words what this plugin does - optional
    char[1024] longDescription;	// Full description - optional
}

enum netadrtype_t {
	NA_BAD = 0,					// an address lookup failed
	NA_BOT = 0,
	NA_LOOPBACK = 2,
	NA_BROADCAST = 3,
	NA_IP = 4,
	NA_IP6 = 5,
	NA_TCP = 6,
	NA_TCP6 = 7,
	NA_MULTICAST6 = 8,
	NA_UNSPEC = 9,
	NA_DOWN = 10,
} ;

enum netsrc_t {
	NS_CLIENT,
	NS_SERVER
} ;

const NET_ADDRSTRMAXLEN = 48;	// maximum length of an IPv6 address string including trailing '\0'
