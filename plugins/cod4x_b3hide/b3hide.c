#include "../pinc.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#define PLUGIN_NAME "Morning Star Gaming Chat Control Plugin by Brunz"
#define PLUGIN_DESC "This plugin is used to hide b3 or other."
#define PLUGIN_DESC_LONG "Allows setting of prefix variable to match against first character of message sent and hides the respective chat."
#define PLUGIN_VER_MAJ 1
#define PLUGIN_VER_MIN 0

typedef struct {
    int level;
} clientData_t;
clientData_t *clients;

void checkinClient();
static void Cmd_B3Status_f();

qboolean getIntArg(int *var, int arg_i);

xcommand_t client_checkin = checkinClient;

cvar_t *cvar_b3Prefix;
cvar_t *cvar_b3Hide;
cvar_t *cvar_b3HideLvl;

void initSlot(int slot) {
    clientData_t client;
    client.level = 0;
    clients[slot] = client;
}

void checkinClient() {
    int slot;
    int level;
    clientData_t client;

    if(getIntArg(&slot, 1) == qtrue && getIntArg(&level, 2) == qtrue && (slot >= 0 && slot <= Plugin_GetSlotCount())) {
        client.level = level;
        clients[slot] = client;

        if(level >= Plugin_Cvar_GetInteger(cvar_b3HideLvl)) {
            Plugin_BoldPrintf(slot, "^5You are checked in with ^3Level ^2%i.\n^5Your ^3!b3 ^5commands are now ^3hidden!\n", level);
            Plugin_BoldPrintf(slot, "^5Use ^3!auth <password> ^5to complete the ^3authentication.^7\n");
        }
    } else {
        Plugin_Printf("Invalid Arguments, usage:\n");
        Plugin_Printf("checkinlvl <slot> <level>\n");
    }
}

qboolean getIntArg(int *var, int arg_i) {
    char *argstr;
    int j = 0;
    argstr = Plugin_Cmd_Argv(arg_i);
    if(strlen(argstr) == 0) {
        return qfalse;
    }

    for (j = 0; argstr[j]; j++) {
		if (argstr[j] < '0' || argstr[j] > '9') {
			return qfalse;
		}
	}

    *var = atoi(argstr);
    return qtrue;
}

PCL void OnMessageSent(char *message, int slot, qboolean *show, int mode) {
    char tmp[1024];
    Plugin_Cvar_GetString(cvar_b3Prefix, tmp, sizeof(tmp));
    char b3prefix = tmp[0];
    int b3hidelvl = Plugin_Cvar_GetInteger(cvar_b3HideLvl);
    qboolean b3hide = Plugin_Cvar_GetBoolean(cvar_b3Hide);

    int offset = 0;
    if(message[0] == 0x15) {
        offset = 1;
    }

    if(b3hide == qtrue && message[offset] == b3prefix && clients[slot].level >= b3hidelvl) {
            *show = qfalse;
            //Plugin_ChatPrintf(slot, "* %s", message);
    }
}

PCL void OnPlayerConnect(int clientnum, netadr_t* netaddress, char* pbguid, char* userinfo, int authstatus, char* deniedmsg,  int deniedmsgbufmaxlen) {
    initSlot(clientnum);
    return;
}

PCL void OnPlayerDC(client_t* client, const char* reason){
	initSlot(NUMFORCLIENT(client));
    return;
}

PCL int OnInit() {
    int maxclients = Plugin_GetSlotCount();

    if(clients != NULL){
        Plugin_Free(clients);
    }
    clients = (clientData_t *)Plugin_Malloc(sizeof(clientData_t)*maxclients);
    memset(clients,0x00,sizeof(clientData_t)*maxclients);

    int i;
    for(i = 0; i < maxclients; i++) {
        initSlot(i);
    }

    cvar_b3Prefix = Plugin_Cvar_RegisterString("b3Prefix", "!", 0, "Prefix for B3 commands (usually !) to hide");
    cvar_b3Hide = Plugin_Cvar_RegisterBool("b3Hide", qtrue, 0, "Hide B3 commands (1 = On, 0 = Off)");
    cvar_b3HideLvl = Plugin_Cvar_RegisterInt("b3HideLvl", 20, 0, 100, 0, "Hides B3 commands if client's level >= b3HideLvl (default: 20)");

    Plugin_AddCommand("client_checkin", client_checkin, 95);
    Plugin_AddCommand("b3status", Cmd_B3Status_f, 100);
    Plugin_RemoveCommand("status");
    Plugin_AddCommand("status", Cmd_B3Status_f, 100);


    return 0;
}

PCL void OnInfoRequest(pluginInfo_t *info) {
    // Memory pointed by info is allocated by the server binary, just fill in the fields
    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = PLUGIN_VER_MAJ;
    info->pluginVersion.minor = PLUGIN_VER_MIN;	// Plugin version
    strncpy(info->fullName, PLUGIN_NAME,sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription, PLUGIN_DESC,sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription, PLUGIN_DESC_LONG,sizeof(info->longDescription));
}

#define Q_COLOR_ESCAPE	'^'
#define Q_IsColorString(p)	( p && *(p) == Q_COLOR_ESCAPE && *((p)+1) && *((p)+1) != Q_COLOR_ESCAPE )

int Q_PrintStrlen( const char *string ) {
	int			len;
	const char	*p;

	if( !string ) {
		return 0;
	}

	len = 0;
	p = string;
	while( *p ) {
		if( Q_IsColorString( p ) ) {
			p += 2;
			continue;
		}
		p++;
		len++;
	}

	return len;
}

short   ShortSwap (short l)
{
	byte    b1,b2;

	b1 = l&255;
	b2 = (l>>8)&255;

	return (b1<<8) + b2;
}
#define BigShort(x) ShortSwap(x)


static void Cmd_B3Status_f()
{

	int			i, j, l;
	client_t	*cl;
	int			ping;
  char stid[33];
  char address[128];
  char mapnamebuf[256];
  char shortname[16];

    Plugin_Cvar_VariableStringBuffer("mapname", mapnamebuf, sizeof(mapnamebuf));
	
    Plugin_Printf ("map: %s\n", mapnamebuf );
	Plugin_Printf ("num score ping guid                             name            lastmsg address               qport rate\n");
	Plugin_Printf ("--- ----- ---- -------------------------------- --------------- ------- --------------------- ----- -----\n");

	for (i=0; i < MAX_CLIENTS ; i++)
	{
		cl = Plugin_GetClientForClientNum(i);
		if (!cl || !cl->state)
			continue;
        
        clientScoreboard_t score = Plugin_GetClientScoreboard(i); //How does this work? Not returning a pointer?

		Plugin_Printf ("%3i ", i);
		Plugin_Printf ("%5i ", score.score);
		
        if (cl->state < CS_ACTIVE)
            ping = 0;
		else
			ping = cl->ping < 999 ? cl->ping : 999;
        
		Plugin_Printf ("%4i ", ping);

#ifdef _WIN32
        snprintf (stid, sizeof(stid), "%I64u", cl->playerid );
#else
        snprintf (stid, sizeof(stid), "%llu", cl->playerid );
#endif
        Plugin_Printf ("%s", stid );

    	l = 33 - strlen(stid);
    	j = 0;

    		do
    		{
    			Plugin_Printf (" ");
    			j++;
    		} while(j < l);

		strncpy(shortname, cl->name, sizeof(shortname));
		shortname[sizeof(shortname) -1] = 0;
        Plugin_Printf ("%s", shortname);

    		// TTimo adding a ^7 to reset the color
    		// NOTE: colored names in status breaks the padding (WONTFIX)
    		Plugin_Printf ("^7");
    		l = 16 - Q_PrintStrlen(shortname);
    		j = 0;

    		do
    		{
    			Plugin_Printf (" ");
    			j++;
    		} while(j < l);

    

		Plugin_Printf ("%7i ", Plugin_GetServerTime() - cl->lastPacketTime );
		/* Length must be: 000.111.222.123:65535 = 52 */
		if(cl->netchan.remoteAddress.type == NA_IP6)
        {
            //Use the last 4 octets xD
            sprintf(address, "%u.%u.%u.%u:%u",
                cl->netchan.remoteAddress.ip6[12], 
                cl->netchan.remoteAddress.ip6[13], 
                cl->netchan.remoteAddress.ip6[14], 
                cl->netchan.remoteAddress.ip6[15], 
                BigShort(cl->netchan.remoteAddress.port));
        }else{
            Plugin_NET_AdrToStringMT( &cl->netchan.remoteAddress, address, sizeof(address) );
        }

		Plugin_Printf ("%s", address);
		l = 21 - strlen(address);
		j = 0;

		do
		{
			Plugin_Printf(" ");
			j++;
		} while(j < l);

		Plugin_Printf (" %5i", cl->netchan.qport);

		Plugin_Printf (" %5i", cl->rate);

		Plugin_Printf ("\n");
	}
	Plugin_Printf ("\n");
}