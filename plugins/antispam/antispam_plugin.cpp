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


*/
 
#include "../pinc.h"
#include <vector>
#include <algorithm>
#include <string>
#include <utility>
#include <map> // usage:multimap. Reason : user may enter rapidly onRNM enabled, providing identical time
#include <functional>
using namespace std;

#define MESSAGETIME 180

int ANTISPAM_MAXMESSAGES = 0;
int bindlimit = 5;
int chatbanDuration = 0;

class userData_t
{
private:
	bool isBanned;
	int bantime;
	int ban_lastidenticalmessage;
	int slotint;
	
	multimap<int,string,greater<int>> messagecontent; //Deletes messages older than userdefined seconds

	void msgtimecheck(const int& timer)
	{
		for(auto i = messagecontent.begin();i !=messagecontent.end();)
		{
			if( ((timer) - (i->first)) > 120)
			{
				i = messagecontent.erase(i);
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
	
    vector<int> messages;

userData_t()
:isBanned(false),bantime(0),ban_lastidenticalmessage(0),slotint(0),lastMessage(0),messagecounter(0),counter_time(0)
{
	messages.resize(ANTISPAM_MAXMESSAGES);
	messagecontent.insert(make_pair(0,""));
}

	//BindCheck(const char* message)
	//{
	//	

//	}

	void MessageEnter(char* message,int timer,int slot)
	{		
		slotint = slot;
	string stringmessage = message;

	int matches = count_if(messagecontent.begin(),messagecontent.end(), [stringmessage,timer,this](auto i) -> bool
	{
		if(i.second == stringmessage)
		{
		if(timer - i.first > this->ban_lastidenticalmessage)
		{
			this->ban_lastidenticalmessage = i.first;
		}
			return true; 
		}
		else
		{
			return false;
		}
		
	});

		if (matches > bindlimit)
		{
			isBanned = true;
			bantime = timer;
			Plugin_ChatPrintf(slotint,"[^3Antispam^7]You are chat banned for bind spamming for %d seconds",(MESSAGETIME - (bantime-ban_lastidenticalmessage)) );
			return;
		}
	messagecontent.insert(make_pair(timer,stringmessage));
		return;
	}
	
	bool Banned(int timer)
	{
		msgtimecheck(timer);

		if(bantime - ban_lastidenticalmessage >=MESSAGETIME)
		{
			isBanned = false;

			return isBanned;
		}
		if(isBanned)
		{
			Plugin_ChatPrintf(slotint,"[^3Antispam^7]You are chat banned for bind spamming for %d seconds",(MESSAGETIME - (bantime-ban_lastidenticalmessage)) );
		}

	return isBanned;
	}
};


struct antispam_t
{

    vector<userData_t*> players;
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
	
	::data.maxPlayers = Plugin_GetSlotCount();
	::data.maxMPM = static_cast<cvar_t*>(Plugin_Cvar_RegisterInt("antispam_maxMessagesPerMinute",5,0,30,0,"Count of maximum messages a player can send in a minute. 0 disables the chat completely."));
	::data.minAP = static_cast<cvar_t*> (Plugin_Cvar_RegisterInt("antispam_minAdminPower",50,0,100,0,"Minimum power points to be exempted from spam control. 0 means enabled for everyone."));
	::data.minMD = static_cast<cvar_t*>(Plugin_Cvar_RegisterInt("antispam_minMessageDelay",4,0,60,0,"Amount of time after sending a message after which the player can chat again. 0 disables the limit."));
	::data.renMD = static_cast<cvar_t*>(Plugin_Cvar_RegisterBool("antispam_renewedMessageDelay",qfalse,0,"Do messages sent before minMessageDelay which are in buffer make the delay prolonged?"));
	::data.bindLIM = static_cast<cvar_t*>(Plugin_Cvar_RegisterInt("antispam_bindedspamLimit",5,3,30,0,"Amount of detected bind spams for which player is chatbanned for messages sent in the last 2 minutes."));
	::data.chatbanDuration = static_cast<cvar_t*>(Plugin_Cvar_RegisterInt("antispam_chatBanDuration",180,0,3600,0,"The duration of a chat ban in seconds"));
	::ANTISPAM_MAXMESSAGES = Plugin_Cvar_GetInteger(::data.maxMPM); // :: for anonymous namespace

	::data.maxPlayers = Plugin_GetSlotCount();
	::data.players.resize(::data.maxPlayers);
    ::bindlimit = ::data.bindLIM->integer;
	::chatbanDuration = ::data.chatbanDuration->integer;
	
	for(int i = 0; i <=::data.maxPlayers;++i)
	{
		::data.players[i] = new userData_t();
	}
	Plugin_ChatPrintf(-1,"[^3Antispam^7] Usmania says Plugin is ^2working^7 !");

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
	int power = client->power;
	if (::data.minAP->integer != 0 && (power >= ::data.minAP->integer)) 
	{
		*show = qtrue;
	    return;
	}

int timer = Plugin_GetServerTime() / 1000; // Real Time acting weirdly,leading to crashed server , replaced with serverTime.


if(::data.players[slot]->Banned(timer))
{
	return;
}

							/*  --------------New Algorithm with more flexibility ------------------------
			Penalizes players for bindspams by keeping track of messages as long as 120 seconds.		*/
													
	

	for(int i = 0; i <ANTISPAM_MAXMESSAGES;++i)
	{
		if( (::data.players[slot]->messages[i] != 0) && (timer - ::data.players[slot]->messages[i] > ::data.players[slot]->counter_time))
		{
			 ::data.players[slot]->counter_time = timer - ::data.players[slot]->messages[i];
			
			
		}
	}
//Plugin_ChatPrintf(-1," %d",::data.players[slot]->counter_time);
if( (::data.players[slot]->messagecounter >= ANTISPAM_MAXMESSAGES) && (::data.players[slot]->counter_time < 60))
{
		
	    Plugin_ChatPrintf(slot,"[^3AntiSpam^7] You will be allowed to send a message in ^1%d ^2seconds.^7",60 - ::data.players[slot]->counter_time);
		*show = qfalse;
	return;
}	

else if (::data.players[slot]->counter_time >= 60)
{
	::data.players[slot]->messagecounter = 0;
	::data.players[slot]->counter_time = 0;
	fill(::data.players[slot]->messages.begin(),::data.players[slot]->messages.begin() + ANTISPAM_MAXMESSAGES ,0);
}

	if(::data.minMD->integer != 0 && (timer - ::data.players[slot]->lastMessage < ::data.minMD->integer))
	{
	    *show = qfalse;
	    if(::data.renMD->boolean)
		{
		::data.players[slot]->lastMessage = timer;
		::data.players[slot]->MessageEnter(message,timer,slot);

			if(::data.players[slot]->messagecounter < ANTISPAM_MAXMESSAGES)
			{
				::data.players[slot]->messages[::data.players[slot]->messagecounter] = timer;
				++(::data.players[slot]->messagecounter);

			}
			else
			{
				 Plugin_ChatPrintf(slot,"[^3AntiSpam^7] You will be allowed to send a message in ^1%d ^2seconds.^7",60 - ::data.players[slot]->counter_time);
			}

		}
	    return;
	}

	    ::data.players[slot]->messages[::data.players[slot]->messagecounter] = timer;
	    ::data.players[slot]->lastMessage = timer;
	    *show = qtrue;
		++(::data.players[slot]->messagecounter);
		::data.players[slot]->MessageEnter(message,timer,slot);
		return;
}



PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 2;
    info->pluginVersion.minor = 3;	// Plugin version
    strncpy(info->fullName,"Cod4X Antispam By TheKelm IceOps",sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"This plugin is used to prevent spam in the ingame chat. ",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to prevent spam in the ingame chat. To personalize the settings, set corresponding cvars. Maintained by Usmania",sizeof(info->longDescription));
}
