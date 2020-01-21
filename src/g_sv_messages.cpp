/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

    This file is part of CoD4X18-Server source code.

    CoD4X18-Server source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X18-Server source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/

#if 0

#include "q_shared.h"
#include "qcommon.h"
#include "g_hud.h"
#include "server.h"
#include "qcommon_io.h"
#include "g_sv_shared.h"

#include <string.h>


#define MAX_MESSAGES 63
#define MAX_MSGBUFF 4096


typedef struct{
	char*		ruleStrings[MAX_MESSAGES +1];
	char*		adStrings[MAX_MESSAGES +1];
	char		msgBuff[MAX_MSGBUFF];
}msgDisplay_t;

static msgDisplay_t messages;

static char motdBuff[200];

void G_DestroyMessage(game_hudelem_t* hudelem){

    if(!hudelem || !hudelem->elem.type)
        return;

    ucolor_t color;
    color.i = 0x00FFFFFF;
    G_HudSetFadingOverTime(hudelem, 700, color);
}



void G_ShowMessage(game_hudelem_t* hudelem, const char* rule, int time)
{
    if(!hudelem || !hudelem->elem.type)
        return;

    ucolor_t color;
    color.i = 0xFFFFFFFF;
    G_HudSetFadingOverTime(hudelem, 700, color);
    G_HudSetText(hudelem, rule);
    Com_AddTimedEvent(time+700, G_DestroyMessage, 1, hudelem);
}



void G_PrintRuleForPlayer(client_t *cl){

    if(cl->msgType != 1)
        return;


    char *rule = messages.ruleStrings[cl->currentAd];

    if(rule == NULL){ //No looping, go to adverts

        cl->msgType++;
        return;
    }

    if(!cl->hudMsg)
        G_SetupHudMessagesForPlayer(cl);

    if(!cl->hudMsg)
        return; //Failure to get hudelem

    G_HudSetPosition(cl->hudMsg, 0, 25, HUDSCRNALIGN_CENTER, HUDSCRNALIGN_TOP, HUDALIGN_CENTER, HUDALIGN_TOP);
    G_HudSetFont(cl->hudMsg, 1.6, HUDFONT_DEFAULT);

    G_ShowMessage(cl->hudMsg, rule, 5000);
    cl->currentAd++;
}


void G_PrintAdvertForPlayer(client_t *cl){

    if(cl->msgType != 2)
        return;

    char *ad = messages.adStrings[cl->currentAd];

    if(ad == NULL){
        if(messages.adStrings[0] == NULL){

            if(cl->hudMsg)
                G_HudDestroy(cl->hudMsg); //Nothing to show

            cl->hudMsg = NULL;
            return;
        }
        cl->currentAd = 0;
        ad = messages.adStrings[cl->currentAd];
    }

    if(!cl->hudMsg)
        G_SetupHudMessagesForPlayer(cl);

    if(!cl->hudMsg)
        return; //Failure to get hudelem

    G_HudSetPosition(cl->hudMsg, 0, 0, HUDSCRNALIGN_CENTER, HUDSCRNALIGN_TOP, HUDALIGN_CENTER, HUDALIGN_TOP);
    G_HudSetFont(cl->hudMsg, 1.4, HUDFONT_DEFAULT);

    G_ShowMessage(cl->hudMsg, ad, 8000);
    cl->currentAd++;
}


void G_SetupHudMessagesForPlayer(client_t* cl){

    ucolor_t glowcolor;
    ucolor_t color;

    glowcolor.i = 0x00000000;
    color.i = 0x00FFFFFF;

    if(cl == NULL)
        return;

    if(!cl->hudMsg)
        cl->hudMsg = G_GetNewHudElem(cl - svs.clients);

    if(!cl->hudMsg)
        return;

    G_HudSetColor(cl->hudMsg, color, glowcolor);


    cl->hudMsg->elem.flags = HUDDISPLAY_HIDEINMENU | HUDDISPLAY_FOREGROUND;
    cl->hudMsg->elem.sort = 100;
}




void G_DestroyAdsForPlayer(client_t *cl){

    if(!cl->hudMsg)
        return;

    G_HudDestroy(cl->hudMsg);
    cl->hudMsg = NULL;

}


void G_AddRule(const char* newtext){

    char* textbuf = messages.msgBuff;
    int len;
    int i;


    int newstrlen = strlen(newtext);

    if(newstrlen < 3)
        return;

    //Find an empty slot to reference this string
    for(i = 0; i < MAX_MESSAGES; i++)
    {
        if(messages.ruleStrings[i] == NULL)
            break;
    }
    if(i == MAX_MESSAGES){
        Com_PrintWarning(CON_CHANNEL_SERVER,"Exceeded the limit of %i rules\n", MAX_MESSAGES);
        return;
    }

    int j = 0;

    while(j < MAX_MSGBUFF)
    {

        //Is our text already there
        if(!Q_stricmp(newtext, textbuf))
        {
            return; //Already an added rule
        }

        len = strlen(textbuf);

        if(!len) //No more added textstrings in buffer
            break;

        textbuf = &textbuf[len+1];
        j += (len + 1);
    }

    if(newstrlen >= MAX_MSGBUFF - j){
        Com_PrintWarning(CON_CHANNEL_SERVER,"Exceeded the maximum combined length of all advert and rules\n");
        return;
    }
    //append the new text string to our buffer
    Q_strncpyz(textbuf, newtext, newstrlen+1);
    //Reference it now
    messages.ruleStrings[i] = textbuf;
}





void G_AddAdvert(const char* newtext){

    char* textbuf = messages.msgBuff;
    int len;
    int i;

    int newstrlen = strlen(newtext);

    if(newstrlen < 3)
        return;

    //Find an empty slot to reference this string
    for(i = 0; i < MAX_MESSAGES; i++)
    {
        if(messages.adStrings[i] == NULL)
            break;
    }
    if(i == MAX_MESSAGES){
        Com_PrintWarning(CON_CHANNEL_SERVER,"Exceeded the limit of %i adverts\n", MAX_MESSAGES);
        return;
    }

    int j = 0;

    while(j < MAX_MSGBUFF)
    {

        //Is our text already there
        if(!Q_stricmp(newtext, textbuf))
        {
            return; //Already an added rule
        }

        len = strlen(textbuf);

        if(!len) //No more added textstrings in buffer
            break;

        textbuf = &textbuf[len+1];
        j += (len + 1);
    }

    if(newstrlen >= MAX_MSGBUFF - j){
        Com_PrintWarning(CON_CHANNEL_SERVER,"Exceeded the maximum combined length of all advert and rules\n");
        return;
    }
    //append the new text string to our buffer
    Q_strncpyz(textbuf, newtext, newstrlen+1);
    //Reference it now
    messages.adStrings[i] = textbuf;
}




void G_InitMotd(){

    const char *motd = SV_GetMessageOfTheDay();
    int i = 0;
    int j = 0;
    int lSCounterI = 0;
    int lSCounterO = 0;
    int overallcount = 0;

    char *outputstr = motdBuff;
    const char *inputstr = motd;

    while( inputstr[i] && (overallcount+1) < sizeof(motdBuff)){

        if( inputstr[i] == ' '){ /*Save the positions of the last recent wordspacer*/
            lSCounterI = i;
            lSCounterO = j;
        }

        if(inputstr[i] == '^' && inputstr[i+1] >= '0' && inputstr[i+1] <= '9'){
            i += 2;
            continue;

        }else{

            outputstr[j] = inputstr[i];
        }

        if( j >= 64){

            if(lSCounterO > 40)
            {
                j = lSCounterO;
                i = lSCounterI;
            }

            outputstr[j] = '\n';

            outputstr += j+1;
            inputstr += i+1;
            overallcount++;

            lSCounterO = 0;
            lSCounterI = 0;

            i = 0;
            j = 0;
            continue;
        }
        j++;
        i++;
        overallcount++;
    }
    outputstr[j] = 0;
}



void G_SwitchToRules(client_t *cl){

        cl->msgType++;
}

void G_RemoveMotd(game_hudelem_t* hudelem1, game_hudelem_t* hudelem2){
	G_HudSetMovingOverTime( hudelem1, 800, -800, 90);
	G_HudSetMovingOverTime( hudelem2, 800, 800, 90);
	Com_AddTimedEvent(800, G_HudDestroy, 1, hudelem1);
	Com_AddTimedEvent(800, G_HudDestroy, 1, hudelem2);
}



#define MAX_LENGTH_30 30
#define MAX_LENGTH_20 46
#define MAX_LENGTH_14 66


void G_ShowMotd(unsigned int clnum)
{
    game_hudelem_t* hudelem1;
    game_hudelem_t* hudelem2;

    if(clnum > 63)
        return;

    client_t *cl = &svs.clients[clnum];

    int len = strlen(motdBuff);
    float fontscale;

    if(len < 3){
        cl->msgType++;
        return;//No message of the day
    }
    if(len < 30)
        fontscale = 3.0;

    else if(len < 46)
        fontscale = 2.0;

    else fontscale = 1.4;

    ucolor_t glowcolor;
    ucolor_t color;

    color.i = 0xFFCCFFCC;
    glowcolor.i = 0x0A4C994C;


    hudelem1 = G_GetNewHudElem(clnum);

    if(!hudelem1)
        return;

    hudelem2 = G_GetNewHudElem(clnum);

    if(!hudelem2){
        G_HudDestroy(hudelem1);
        return;
    }


    G_HudSetColor(hudelem1, color, glowcolor);
    G_HudSetColor(hudelem2, color, glowcolor);

    G_HudSetPosition(hudelem1, 800, 90, HUDSCRNALIGN_CENTER, HUDSCRNALIGN_MIDDLE, HUDALIGN_CENTER, HUDALIGN_MIDDLE);
    G_HudSetPosition(hudelem2, -800, 90, HUDSCRNALIGN_CENTER, HUDSCRNALIGN_MIDDLE, HUDALIGN_CENTER, HUDALIGN_MIDDLE);

    G_HudSetFont(hudelem1, fontscale, HUDFONT_OBJECTIVE);
    G_HudSetFont(hudelem2, fontscale, HUDFONT_OBJECTIVE);

    hudelem1->elem.flags = HUDDISPLAY_HIDEINMENU | HUDDISPLAY_FOREGROUND;
    hudelem2->elem.flags = HUDDISPLAY_HIDEINMENU | HUDDISPLAY_FOREGROUND;
    hudelem1->elem.sort = 100;
    hudelem2->elem.sort = 99;

    G_HudSetText(hudelem1, motdBuff);
    G_HudSetText(hudelem2, motdBuff);

    G_HudSetMovingOverTime(hudelem1, 800, 0, 90);
    G_HudSetMovingOverTime(hudelem2, 800, 0, 90);

    Com_AddTimedEvent(10800, G_RemoveMotd, 2, hudelem1, hudelem2);
    Com_AddTimedEvent(15000, G_SwitchToRules, 1, cl);

}


void G_ClearAllMessages()
{
    Com_Memset(&messages, 0, sizeof(msgDisplay_t));
}

#endif