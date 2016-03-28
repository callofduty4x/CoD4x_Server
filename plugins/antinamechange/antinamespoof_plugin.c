#include "../pinc.h"

cvar_t* antinamechange_mindelay;


void Q_strncpyz( char *dest, const char *src, int destsize ) {

	strncpy( dest, src, destsize-1 );
	dest[destsize-1] = 0;
}

int Q_stricmpn (const char *s1, const char *s2, int n) {
	int		c1, c2;

        if ( s1 == NULL ) {
           if ( s2 == NULL )
             return 0;
           else
             return -1;
        }
        else if ( s2==NULL )
          return 1;



	do {
		c1 = *s1++;
		c2 = *s2++;

		if (!n--) {
			return 0;		// strings are equal until end point
		}

		if (c1 != c2) {
			if (c1 >= 'a' && c1 <= 'z') {
				c1 -= ('a' - 'A');
			}
			if (c2 >= 'a' && c2 <= 'z') {
				c2 -= ('a' - 'A');
			}
			if (c1 != c2) {
				return c1 < c2 ? -1 : 1;
			}
		}
	} while (c1);

	return 0;		// strings are equal
}

int Q_strncmp (const char *s1, const char *s2, int n) {
	int		c1, c2;

	do {
		c1 = *s1++;
		c2 = *s2++;

		if (!n--) {
			return 0;		// strings are equal until end point
		}

		if (c1 != c2) {
			return c1 < c2 ? -1 : 1;
		}
	} while (c1);

	return 0;		// strings are equal
}

int Q_stricmp (const char *s1, const char *s2) {
	return (s1 && s2) ? Q_stricmpn (s1, s2, 99999) : -1;
}

PCL int OnInit(){	// Funciton called on server initiation

	antinamechange_mindelay = Plugin_Cvar_RegisterInt("antinamechange_mindelay", 20, 0, 600, 0, "Ammount of time which has to pass until a player can change his name again.");
	return 0;
}

PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 1;
    info->pluginVersion.minor = 0;	// Plugin version
    strncpy(info->fullName,"IceOps antinamechange plugin by Nobody",sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"This plugin is used to prevent namespamming in game.",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to prevent namespamming in game. To personalize the settings, set corresponding cvars. Copyright (c) 2013 IceOps",sizeof(info->longDescription));
}

typedef struct
{
	char playername[MAX_NAME_LENGTH];
	int lasttimechanged;

}playerlist_t;

playerlist_t players[MAX_CLIENTS];


PCL void OnClientUserinfoChanged(client_t* client)
{

	int clientnum = client - clientbase;
	int curtime;

	if(client->state < CS_ACTIVE)
	{
		return;
	}

	//Plugin_Printf("Client num: %d, Old name: %s, New name: %s\n", clientnum, players[clientnum].playername, client->shortname);
	if( Q_stricmp(players[clientnum].playername, client->shortname) != 0) //New playername is not equal to old one
	{
		curtime = Plugin_Milliseconds();

		if( (players[clientnum].lasttimechanged + (antinamechange_mindelay->integer * 1000)) > curtime )
		{
			Plugin_DropClient( clientnum, "Name spoofing is forbidden!\n" );
		}
		Q_strncpyz( players[clientnum].playername, client->shortname, sizeof(players[clientnum].playername) );
		players[clientnum].lasttimechanged = curtime;
	}
}

PCL void OnPlayerDC(client_t* client, const char* reason)
{
	int clientnum = client - clientbase;

	memset(&players[clientnum], 0, sizeof(playerlist_t));

}
