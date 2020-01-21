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



#include "q_shared.h"
#include "qcommon.h"
#include "qcommon_io.h"
#include "qcommon_mem.h"
#include "qcommon_logprint.h"
#include "cvar.h"
#include "cmd.h"
#include "server.h"
#include "punkbuster.h"
#include "nvconfig.h"
#include "sv_auth.h"
#include "sapi.h"

#include <string.h>
#include <stdarg.h>

#define SV_OUTPUTBUF_LENGTH 1024

#ifndef MAXPRINTMSG
#define MAXPRINTMSG 1024
#endif

static client_t *redirectClient;

void SV_RemoteCmdInit()
{

}






/*
=================
SV_ReliableSendRedirect

Sends redirected text of console to client as reliable commands
This is used for RemoteCommand responses while client is connected to server
=================
*/

void SV_ReliableSendRedirect(char *sendbuf, qboolean lastcommand){

    int lastlinebreak;
    int remaining = strlen(sendbuf);
    int	maxlength;
    int i;
    char outputbuf[244];

    if(redirectClient->state < CS_PRIMED)
    {
        return;
    }

    for(; remaining > 0;)
	{	//We have to split the string into smaller packages of max 240 bytes
		//This function tries to ensure that every package ends on the last possible linebreak for better formating
		maxlength = remaining;

		if(maxlength > 240) maxlength = 240;

		for(lastlinebreak=0 ,i=0; i < maxlength; i++){
			outputbuf[i] = sendbuf[i];
			if(outputbuf[i] == '"') outputbuf[i] = 0x27;	//replace all " with ' because no " are accepted
			if(outputbuf[i] == 0x0a) lastlinebreak = i;		//search for the last linebreak
		}
		if(lastlinebreak > 0){
			i = lastlinebreak;	//found a linebreak and send everything until that position
			remaining -= i-1;
			sendbuf += i+1;
			outputbuf[i+1] = 0x00;
		} else {		//Not a linebreak found send full 240 chars
			remaining -= i;
			sendbuf += i;
			outputbuf[i] = 0x00;
		}
		SV_SendServerCommand(redirectClient, "e \"%s\"", outputbuf);
    }
}


qboolean SV_ExecuteRemoteCmd(int clientnum, const char *msg){
	char sv_outputbuf[SV_OUTPUTBUF_LENGTH];
	char cmd[30];
	char buffer[256];
	char *printPtr;
	int i = 0;
	int j = 0;
  uint64_t oldsteamid;
  const char* invname;
  char oldname[64];
  int powercmd;
	int power;
	client_t *cl;
	qboolean critcmd;
  char ssti[128];

	if(clientnum < 0 || clientnum > 63) return qfalse;
	cl = &svs.clients[clientnum];
	redirectClient = cl;

	while ( msg[i] != ' ' && msg[i] != '\0' && msg[i] != '\n' && i < 32 ){
		i++;
	}

	if(i > 29 || i < 3) return qfalse;

	Q_strncpyz(cmd,msg,i+1);


	if(!Q_stricmpn(cmd, "auth", 4)){
		if(!Q_stricmp(cmd, "authChangePassword"))
		{
			Q_strncpyz(cmd, "changePassword", sizeof(cmd));
		}
		else if(!Q_stricmp(cmd, "authSetAdmin"))
		{
			Q_strncpyz(cmd, "AdminAddAdminWithPassword", sizeof(cmd));
		}
		else if(!Q_stricmp(cmd, "authUnsetAdmin"))
		{
			Q_strncpyz(cmd, "AdminRemoveAdmin", sizeof(cmd));
		}
		else if(!Q_stricmp(cmd, "authListAdmins"))
		{
			Q_strncpyz(cmd, "adminListAdmins", sizeof(cmd));
		}
	}else if(!Q_stricmp(cmd, "cmdpowerlist")){
		Q_strncpyz(cmd, "AdminListCommands", sizeof(cmd));
	}else if(!Q_stricmp(cmd, "setCmdMinPower")){
		Q_strncpyz(cmd, "AdminChangeCommandPower", sizeof(cmd));
	}

	//Prevent buffer overflow as well as prevent the execution of priveleged commands by using seperator characters
	Q_strncpyz(buffer,msg,256);
	Q_strchrrepl(buffer,';','\0');
	Q_strchrrepl(buffer,'\n','\0');
	Q_strchrrepl(buffer,'\r','\0');
	// start redirecting all print outputs to the packet

	power = Auth_GetClPower(cl);
	powercmd = Cmd_GetPower(cmd);

    if(strstr(cmd, "password"))
    {
            printPtr = "hiddencmd";
            critcmd = qtrue;
    }else{
	    printPtr = buffer;
            critcmd = qfalse;
    }

  if(Auth_CanPlayerUseCommand(clientnum, cmd) == qfalse) //Is this command whitelisted for this player - by a plugin usually?
  {
    //Not whitelisted then check by powerpoints
    if(powercmd == -1){
              SV_SendServerCommand(redirectClient, "e \"^5Command^2: %s\n^3Command execution failed - Invalid command invoked - Type ^2$cmdlist ^3to get a list of all available commands\"", printPtr);
              return qfalse;
  	}
  	if(powercmd > power){
              SV_SendServerCommand(redirectClient, "e \"^5Command^2: %s\n^3Command execution failed - Insufficient power to execute this command.\n^3Type ^2$cmdlist ^3to get a list of all available commands\"",
              printPtr);
  	    return qtrue;
  	}
  }
  SV_SApiSteamIDToString(cl->steamid, ssti, sizeof(ssti));
  Com_Printf(CON_CHANNEL_SERVER, "Command execution: %s   Invoked by: %s   InvokerSteamID: %s Power: %i\n", printPtr, cl->name, ssti, power);

	Com_BeginRedirect(sv_outputbuf, SV_OUTPUTBUF_LENGTH, SV_ReliableSendRedirect);

	j = Cmd_GetInvokerPower();
  oldsteamid = Cmd_GetInvokerSteamID();
  Cmd_GetInvokerName(oldname, sizeof(oldname));

  invname = Auth_GetNameBySteamID(cl->steamid);
  if(invname == NULL)
  {
      Auth_UpdateName(cl->steamid, cl->name);
      invname = cl->name;
  }

	Cmd_SetCurrentInvokerInfo(power, clientnum, cl->steamid, invname);

	Cmd_ExecuteSingleCommand( 0, 0, buffer );

	if(!critcmd)
	{
		SV_SendServerCommand(redirectClient, "e \"^5Command^2: %s\"", buffer);
	}
	Cmd_SetCurrentInvokerInfo(j, -1, oldsteamid, oldname);

	Com_EndRedirect();
	return qtrue;
}



void SV_PrintAdministrativeLog( const char *fmt, ... ) {

	va_list		argptr;
	char		msg[MAXPRINTMSG];
	char		inputmsg[MAXPRINTMSG];
	struct tm 	*newtime;
	char*		ltime;
  char ssti[64];
  char name[64];
	time_t		realtime;

	va_start (argptr,fmt);
	Q_vsnprintf (inputmsg, sizeof(inputmsg), fmt, argptr);
	va_end (argptr);

	Com_UpdateRealtime();
	realtime = Com_GetRealtime();
	newtime = localtime( &realtime );
	ltime = asctime( newtime );
	ltime[strlen(ltime)-1] = 0;

  if(Cmd_GetInvokerSteamID() != 0)
  {
    SV_SApiSteamIDToString(Cmd_GetInvokerSteamID(), ssti, sizeof(ssti));
  }else{
    ssti[0] = '0';
    ssti[1] = 0;
  }



	Com_sprintf(msg, sizeof(msg), "%s - Admin %s : %s with %i power %s\n", ltime, ssti ,Cmd_GetInvokerName(name, sizeof(name)), Cmd_GetInvokerPower(), inputmsg);

	Com_PrintAdministrativeLog( msg );

}
