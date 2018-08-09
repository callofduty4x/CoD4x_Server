#include <time.h>
#include "../pinc.h"

#define ANTISPAM_MAXMESSAGES 30

typedef struct{
    int lastMessage;
    int messages[ANTISPAM_MAXMESSAGES];
}userData_t;

typedef struct{
    userData_t *players;
    int maxPlayers;
    cvar_t *maxMPM;
    cvar_t *minAP;
    cvar_t *minMD;
    cvar_t *renMD;
}antispam_t;

antispam_t data;
void Antispam_Initialize()
{
    if(data.players != NULL){
	Plugin_Free(data.players); // just in case, Plugin_Free is safe to be called on unknown pointers and on already freed pointers
    }
    data.maxPlayers = Plugin_GetSlotCount();
    data.players = (userData_t *)Plugin_Malloc(sizeof(userData_t)*data.maxPlayers);
    memset(data.players,0x00,sizeof(userData_t)*data.maxPlayers);
}

PCL int OnInit(){	// Funciton called on server initiation

	//G_SayCensor_Init();
	data.maxPlayers = Plugin_GetSlotCount();
	data.maxMPM = Plugin_Cvar_RegisterFloat("antispam_maxMessagesPerMinute",8,0,30,0,"Count of maximum messages a player can send in a minute. 0 disables the chat completely.");
	data.minAP = Plugin_Cvar_RegisterInt("antispam_minAdminPower",50,0,100,0,"Minimum power points which disable the player. 0 means enabled for everyone.");
	data.minMD = Plugin_Cvar_RegisterInt("antispam_minMessageDelay",4,0,60,0,"Ammount of time after sending a message after which the player can chat again. 0 disables the limit.");
	data.renMD = Plugin_Cvar_RegisterBool("antispam_renewedMessageDelay",qfalse,0,"Do messages sent before minMessageDelay passes make the delay prolonged?");
	Antispam_Initialize();
	return 0;
}
PCL void OnMessageSent(char *message,int slot, qboolean *show, int type){
	if(!(*show))
	    return;
	if(!message){
	    *show = qfalse;
	    return;
	}
	int uid = Plugin_GetPlayerUid(slot);
	time_t t = time(NULL);
	if(data.minAP->integer != 0 && uid >= data.minAP->integer){
	    return;
	}
	//Plugin_ChatPrintf(slot,"Debug: minMD = %d, time = %d, lastMessage = %d, t - lastMessage = %d\n",data.minMD->integer,t,data.players[slot].lastMessage,t - data.players[slot].lastMessage);
	if(data.minMD->integer != 0 && (t - data.players[slot].lastMessage < data.minMD->integer)){
	    *show = qfalse;
	    if(data.renMD->boolean)
		data.players[slot].lastMessage = t;
	    return;
	}
	// Max messages per minute check
	int i,j=0;
	for(i=0;( i<ANTISPAM_MAXMESSAGES) && (data.players[slot].messages[i] != 0) && (t - data.players[slot].messages[i] > 60);++i);
	// the loop above iterates on the messages array until it's end, value of 0 or message older than 1 minute
	// now the i value holds the number of messages in the messages array which are older than 60 seconds + 1
	// we need to remove those
	if(i!=0){
	    for(j=0;j<ANTISPAM_MAXMESSAGES && i<ANTISPAM_MAXMESSAGES && data.players[slot].messages[j] != 0;++i,++j){
		data.players[slot].messages[j] = data.players[slot].messages[i];
		data.players[slot].messages[i] = 0;
	    }
	}
	Plugin_ChatPrintf(slot,"Debug: %d, %d, %d, %d.\n",j,i,data.maxMPM->integer,data.maxMPM->latchedinteger);
	for(i=j;i<ANTISPAM_MAXMESSAGES;++i){
	    data.players[slot].messages[i] = 0;
	}

	// j now holds the value of how many messages this player has sent in the last 60 seconds. If it is too much - dont show the msg
	// if it is ok - show the message and add time to messages[j]
	if(j<data.maxMPM->integer){
	    data.players[slot].messages[j] = t;
	    data.players[slot].lastMessage = t;
	    *show = qtrue;
	}
	else{
	    *show = qfalse;
	    Plugin_ChatPrintf(slot,"^2AntiSpam: you can send next chat message in %d seconds.",60 - t - data.players[slot].messages[0]);
	}
}
PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 1;
    info->pluginVersion.minor = 0;	// Plugin version
    strncpy(info->fullName,"IceOps antispam plugin by TheKelm",sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"This plugin is used to prevent spam in the ingame chat.",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to prevent spam in the ingame chat. To personalize the settings, set corresponding cvars. Copyright (c) 2013 IceOps",sizeof(info->longDescription));
}

