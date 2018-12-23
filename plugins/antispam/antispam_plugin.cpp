/*
Antispam plugin updated to run on newer versions of Cod4x.
Contributors :


# Maintained/Updated by Kingwolf(Usmania) @ Cod4x 2017.
# Originally Made by TheKelm @ Iceops 2013 for cod4x17a.


This plugin is part of the cod4x source code, and is a subset of the cod4x server source code completely,
hence inheriting any legal licenses that it's parent has.
*/

/*
*********************************************  CHANGELOG  *******************************************************************

												--1.0-- 

	1-Public Init. As made my TheKelm@Iceops and cod4x developers.


------------------------------------------------------------------------------------------------------------------------------

												--1.1--

	1-Admin authentication works as expected. Removed deprecated GetPlayerUID and use newer functions for admin authentication
	2- Update Shell and Command prompt scripts for easy compilation
	3- Added README.md for documentation

------------------------------------------------------------------------------------------------------------------------------

												--1.2--

	1- Revamped the algorithm for spam detection and mitigation. Now it works as intended.

------------------------------------------------------------------------------------------------------------------------------

												--2.0--

	1- Fixed non-responsive antispam_maxMessagesPerMinute.
	2- Moved to server based time instead of real time to avoid system specific issues
	3- Added detection of bind spams by players. Now players get chat banned if they are detected using chat bind spams.
	4- Added antispam_bindedspamLimit CVAR to customize the number of spam binds after which the player faces a 3 minute chat
	   ban.

------------------------------------------------------------------------------------------------------------------------------

												--2.1--

	1- Fixed players getting incorrect remaining time on chat ban
	2- Fixed players getting banned on  antispam_bindedspamLimit -1 Limit.
	3- Updated README.md with revised documentation

------------------------------------------------------------------------------------------------------------------------------

												--2.2--

	1- Minor Internal logic fixes

------------------------------------------------------------------------------------------------------------------------------

												--2.3--

	1- Added ChatBanDuration CVAR
	2- Updated README.md for revised documentation
	
------------------------------------------------------------------------------------------------------------------------------
												--2.4--

	1- Fixed players able to send message even when chat banned
	2- Fixed incorrect ban time calculations.
	
------------------------------------------------------------------------------------------------------------------------------

												--2.5 [Release Version]--

	1- Plugin now remembers chat bans for each player.
	2- Fixed mismatched maxspam message limit in cvar and actual execution.
	3- Fixed players with slot number > 0 getting 0's data when connecting once (not sending any message) and then reconnecting.
	
------------------------------------------------------------------------------------------------------------------------------
												--2.6--

	1- Fixed segfault when bots are added to a server
	2- Check for proper playerID authentication before processing anything.
	3- Fixed potentially undefined behaviour with messagecontent binary tree.
	4- Fixed segfault case when a chatbanned player reconnects within the banlimit and then disconnects again.
	5- Fixed memory leaks.
	
	Thanks to volkv for testing extensively.
------------------------------------------------------------------------------------------------------------------------------

*/
 
#include "../pinc.h"
#include <vector>
#include <algorithm>
#include <string>
#include <utility>
#include <map> 
#include <functional>


int ANTISPAM_MAXMESSAGES = 0;
int bindlimit = 5;
int chatbanDuration = 0;


//Forward declarations for userData_t
PCL void OnPlayerGotAuthInfo(netadr_t* from, uint64_t* playerid, uint64_t *steamid, char *rejectmsg, qboolean *returnNow, client_t* cl);
PCL void OnPlayerDC(client_t* client,const char* reason);

class userData_t
{

private:

	bool isBanned;
	int bantime;
	int slotint;

	friend void OnPlayerGotAuthInfo(netadr_t* from, uint64_t* playerid, uint64_t *steamid, char *rejectmsg, qboolean *returnNow, client_t* cl);
	friend void OnPlayerDC(client_t* client,const char* reason);

	std::multimap<int,std::string,std::less<int> > messagecontent; //Deletes messages older than userdefined seconds

	void msgtimecheck(const int& timer)
	{
		for(auto i = (messagecontent).begin();i !=(messagecontent).end();)
		{
			if( ((timer) - (i->first)) > 120)
			{
				i = (messagecontent).erase(i);

			}
				
			else
			{
				++i;
			}
		}
		
	}
	
	
public:
    int lastMessage;
	int messagecounter;
	int counter_time;
	uint64_t playerID;
    std::vector<int> messages;

userData_t()
:isBanned(false),bantime(0),slotint(-1),lastMessage(0),messagecounter(0),counter_time(0),playerID(0)
{
	messages.resize(ANTISPAM_MAXMESSAGES);
}
	bool MessageEnter(const char* message,int timer,int slot)
	{		
		slotint = slot;
	std::string stringmessage = message;
	msgtimecheck(timer);
	int matches = count_if(messagecontent.begin(),messagecontent.end(), [stringmessage,timer,this](auto i) -> bool
	{
		if(i.second == stringmessage)
		{
			return true; 
		}
		else
		{
			return false;
		}
		
	});
//Plugin_ChatPrintf(-1,"Matches : %d",matches);
//Plugin_ChatPrintf(-1,"lastIdenticalMessage : %d",ban_lastidenticalmessage);
		if ((matches >= bindlimit))
		{
			isBanned = true;
			bantime = timer;
			Plugin_ChatPrintf(slotint,"[^3Antispam^7] You are chat banned for ^1%d ^2seconds^7 for bind spamming",((chatbanDuration) - (timer - bantime)) );
			return isBanned;
		}
	messagecontent.insert(make_pair(timer,stringmessage));
		return isBanned;
	}
	
	bool Banned(int timer)
	{
		msgtimecheck(timer);
	//	Plugin_ChatPrintf(-1,"Time : %d",timer);
	

		if(timer - bantime >= chatbanDuration)
		{
			isBanned = false;

			return isBanned;
		}
		else if(isBanned)
		{
			Plugin_ChatPrintf(slotint,"[^3Antispam^7] You are chat banned for ^1%d ^2seconds^7 for bind spamming",(chatbanDuration - (timer - bantime)) );
		}

	return isBanned;
	}

	bool IsPlayerBanned() const
	{
		return isBanned;
	}

	int GetBanTime() const
	{
		return bantime;
	}

	std::multimap<int,std::string,std::less<int> > GetMessageContent() const
	{
		return messagecontent;
	}
	int GetSlot() const
	{
		return slotint;
	}
	userData_t(const userData_t& source)
	{
		this->isBanned = source.IsPlayerBanned();
		this->bantime = source.GetBanTime();
		this->messagecontent = source.GetMessageContent();
		this->lastMessage = source.lastMessage;
		this->messagecounter = source.messagecounter;
		this->counter_time = source.counter_time;
		this->messages = source.messages;
	}

	userData_t& operator=(const userData_t& source)
	{
		this->isBanned = source.IsPlayerBanned();
		this->bantime = source.GetBanTime();
		this->messagecontent = source.GetMessageContent();
		this->lastMessage = source.lastMessage;
		this->messagecounter = source.messagecounter;
		this->counter_time = source.counter_time;
		this->messages = source.messages;
		return *this;
	}
	void clear()
	{
		this->isBanned = false; 
		this->bantime =0;
		this->slotint = -1;
		this->lastMessage = 0;
		this->messagecounter = 0;
		this->counter_time = 0;
		this->playerID = 0;
		fill(this->messages.begin(),this->messages.end() ,0);
		this->messagecontent.clear();
	}
	
};
std::map<uint64_t,userData_t,std::less<uint64_t> > banmemory;

struct antispam_t
{
    std::vector<userData_t> players;
    int maxPlayers;
    cvar_t *maxMPM;
    cvar_t *minAP;
    cvar_t *minMD;
    cvar_t *renMD;
	cvar_t *bindLIM;
	cvar_t* chatbanDuration;

};

antispam_t data;

PCL int OnInit()
{	
	
	data.maxPlayers = Plugin_GetSlotCount();
	data.maxMPM = static_cast<cvar_t*>(Plugin_Cvar_RegisterInt("antispam_maxMessagesPerMinute",6,0,30,0,"Count of maximum messages a player can send in a minute. 0 disables the chat completely."));
	data.minAP = static_cast<cvar_t*> (Plugin_Cvar_RegisterInt("antispam_minAdminPower",50,0,100,0,"Minimum power points to be exempted from spam control. 0 means enabled for everyone."));
	data.minMD = static_cast<cvar_t*>(Plugin_Cvar_RegisterInt("antispam_minMessageDelay",4,0,60,0,"Amount of time after sending a message the player can send one again. 0 disables the limit."));
	data.renMD = static_cast<cvar_t*>(Plugin_Cvar_RegisterBool("antispam_renewedMessageDelay",qfalse,0,"Do messages sent before minMessageDelay which are in buffer make the delay prolonged?"));
	data.bindLIM = static_cast<cvar_t*>(Plugin_Cvar_RegisterInt("antispam_bindspamLimit",4,3,30,0,"Number of detected bind spams sent in the last 2 minutes after which player is chatbanned for messages ."));
	data.chatbanDuration = static_cast<cvar_t*>(Plugin_Cvar_RegisterInt("antispam_chatBanDuration",180,0,3600,0,"The duration of a chat ban in seconds"));
	ANTISPAM_MAXMESSAGES = Plugin_Cvar_GetInteger(data.maxMPM); //  anonymous namespace removed

	data.maxPlayers = Plugin_GetSlotCount();
    bindlimit = data.bindLIM->integer;
	chatbanDuration = data.chatbanDuration->integer;

	//data.players.reserve(data.maxPlayers);
	//data.players.assign(Plugin_GetSlotCount(),userData_t());
	data.players.resize(Plugin_GetSlotCount());
	Plugin_Printf("[^3Antispam^7] Usmania says Plugin is ^2working^7 !\n");
	return 0;
}


PCL void OnMessageSent(char *message,int slot, qboolean *show, int type)
{
	if(!(*show))
	    return;
	if(!message){
	    *show = qfalse;
	    return;
	}
	
	client_t* client = Plugin_GetClientForClientNum(slot);
	if(!client || client->netchan.remoteAddress.type == NA_BOT || client->playerid == 0)
	{
		return;
	}
	int power = client->power;
	if (data.minAP->integer != 0 && (power >= data.minAP->integer)) 
	{
		*show = qtrue;
	    return;
	}

int timer = Plugin_GetServerTime() / 1000; // Real Time acting weirdly,leading to crashed server , replaced with serverTime.


if(data.players[slot].Banned(timer))
{
	*show = qfalse;
	return;
}

//Plugin_ChatPrintf(-1,"Time : %d",timer);

							/*  --------------New Algorithm with more flexibility ------------------------
			Penalizes players for bindspams by keeping track of messages as long as 120 seconds.		*/
													
	

	for(int i = 0; i <ANTISPAM_MAXMESSAGES;++i)
	{
		if( (data.players[slot].messages[i] != 0) && (timer - data.players[slot].messages[i] > data.players[slot].counter_time))
		{
			 data.players[slot].counter_time = timer - data.players[slot].messages[i];
			
			
		}
	}
//Plugin_ChatPrintf(-1," %d",data.players[slot].counter_time);
if( (data.players[slot].messagecounter >= ANTISPAM_MAXMESSAGES) && (data.players[slot].counter_time < 60))
{
		
	    Plugin_ChatPrintf(slot,"[^3AntiSpam^7] You will be allowed to send a message in ^1%d ^2seconds.^7",60 - data.players[slot].counter_time);
		*show = qfalse;
	return;
}	

else if (data.players[slot].counter_time >= 60)
{
	data.players[slot].messagecounter = 0;
	data.players[slot].counter_time = 0;
	std::fill(data.players[slot].messages.begin(),data.players[slot].messages.begin() + ANTISPAM_MAXMESSAGES ,0);
}

	if(data.minMD->integer != 0 && (timer - data.players[slot].lastMessage < data.minMD->integer))
	{
	    *show = qfalse;
	    if(data.renMD->boolean)
		{
		data.players[slot].lastMessage = timer;
		data.players[slot].MessageEnter(message,timer,slot);

			if(data.players[slot].messagecounter < ANTISPAM_MAXMESSAGES)
			{
				data.players[slot].messages[data.players[slot].messagecounter] = timer;
				++(data.players[slot].messagecounter);

			}
			else
			{
				 Plugin_ChatPrintf(slot,"[^3AntiSpam^7] You will be allowed to send a message in ^1%d ^2seconds.^7",60 - data.players[slot].counter_time);
			}

		}
	    return;
	}

	    data.players[slot].messages[data.players[slot].messagecounter] = timer;
	    data.players[slot].lastMessage = timer;

		if(data.players[slot].MessageEnter(message,timer,slot))
		{
		*show = qfalse;
		}
		else
		{
			*show = qtrue;
		}

		if(*show == qtrue)
		{
			++(data.players[slot].messagecounter);
		}
		
		return;
}



PCL void OnPlayerDC(client_t* client,const char* reason)
{
	if(client->netchan.remoteAddress.type == NA_BOT || client->playerid == 0)
	{
		return;
	}
	//Plugin_Printf("Executing OnPlayerDC\n" );
	//Plugin_Printf("Disconnect slotnum in client[0] : %d\n", data.players[0].slotint );

	//auto IDiterator = find_if(data.players.begin(),data.players.end(),[client](auto pointer){return( pointer.playerID == client->playerid);}); -- could this be possilbe bug reported in segfault on DC in 2.5
	//for(auto it = data.players.begin)

	userData_t* IDiterator;

	if(data.players[Plugin_GetClientNumForClient(client)].playerID == client->playerid) // just to be sure you know, incase of some weird swapping of clients without info to antispam
	{
	 IDiterator = &(data.players[Plugin_GetClientNumForClient(client)]);
	}

	else
	{
		data.players[Plugin_GetClientNumForClient(client)].clear();
		return;
	}
	
	uint64_t playerID;
	int slotnum;

	if(IDiterator != NULL)
	{
		playerID = IDiterator->playerID;
		slotnum = IDiterator->GetSlot();
	}

	else
	{
		//Plugin_Printf("Size of vector : %d", data.players.size());
		data.players[Plugin_GetClientNumForClient(client)].clear();
		return;
	}
		//playerID = IDiterator->playerID;
		//slotnum = IDiterator->GetSlot();



	auto iterator = banmemory.find(client->playerid);
	if (data.players[slotnum].IsPlayerBanned())
	{
		//Plugin_Printf("Disconnect : adding ban record\n" );
		//Plugin_ChatPrintf(-1,"disconnect playerID : %d", playerID );

	// What if the player was already banned, and then he reconnects but still there is ban memory --fixed
	if(iterator != banmemory.end()) // Properly overwrite existing banrecord
	{
		banmemory[iterator->first] = data.players[slotnum];
	}
	else
	{
		banmemory.insert(std::make_pair(playerID,data.players[slotnum]));
	}
	
	}

	data.players[slotnum].clear();
	return;
}




PCL void OnPlayerGotAuthInfo(netadr_t* from, uint64_t* playerid, uint64_t *steamid, char *rejectmsg, qboolean *returnNow, client_t* cl)
{
	if(cl->netchan.remoteAddress.type == NA_BOT || *playerid == 0)
	{
		return;
	}
	//Plugin_Printf("Executing OnPlayerConnect\n" );
	int slotnum = Plugin_GetClientNumForClient(cl);
	//Plugin_Printf("Connect clientnum : %d\n",slotnum );
	//Plugin_Printf("Connect playerID : %d\n", data.players[slotnum].playerID );
	data.players[slotnum].playerID = *playerid;
	//	Plugin_Printf("Connect playerID : %d\n", data.players[slotnum].playerID );
	data.players[slotnum].slotint = slotnum;
	//Plugin_Printf("Connect playerID : %d\n", *playerid );
	auto iterator = banmemory.find(*playerid);
	if(iterator != banmemory.end())
	{
		//Plugin_ChatPrintf(-1,"Connect found previous ban record " );
		if(( Plugin_GetServerTime()/1000 - (iterator->second).GetBanTime()) >= (chatbanDuration))
			{
				banmemory.erase(iterator);
				return;
			}
			else if(( Plugin_GetServerTime()/1000 - (iterator->second).GetBanTime()) < (chatbanDuration))
			{
				data.players[slotnum] = iterator->second;
				data.players[slotnum].slotint = slotnum;
				//Plugin_Printf("Reinstating ban for %d,from banmemory: %d\n", *playerid ,(iterator->second).playerID);
			}
		//Plugin_Printf("Slot number of renewed ban %d\n",data.players[slotnum].slotint );
		return;
	}
}

PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 2;
    info->pluginVersion.minor = 6;	// Plugin version
    strncpy(info->fullName,"Cod4X Antispam 2017",sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"This plugin is used to prevent spam in the ingame chat. Made by Usmania ",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to prevent spam in the ingame chat. To personalize the settings, set corresponding cvars.",sizeof(info->longDescription));
}
