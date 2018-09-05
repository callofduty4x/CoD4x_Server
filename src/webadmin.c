/*
 *  webadmin.c
 *  CoD4X18-Server_testing
 *
 *  By Ninja and NNJ
 *
 */

#include "q_shared.h"
#include "httpftp.h"
#include "qcommon_mem.h"
#include "qcommon_io.h"
#include "msg.h"
#include "filesystem.h"
#include "sv_auth.h"
#include "webadmin.h"
#include "server.h"
#include "cmd.h"
#include "g_sv_shared.h"
#include "g_shared.h"
#include "sapi.h"

#include <string.h>

#define TOSTRING(X) #X
#define XA(x) XML_AppendToBuffer(xmlobj, x)
#define XO(x) XML_OpenTag(xmlobj,x,0)
#define XO1(x, x1, x2) XML_OpenTag(xmlobj,x,1, x1, x2)
#define XO2(x, x1, x2, y1, y2) XML_OpenTag(xmlobj,x,2, x1, x2, y1, y2)
#define XO3(x, x1, x2, y1, y2, z1 ,z2) XML_OpenTag(xmlobj,x,3, x1, x2, y1, y2, z1, z2)
#define XO4(x, x1, x2, y1, y2, z1 ,z2, xx1, xx2) XML_OpenTag(xmlobj,x,3, x1, x2, y1, y2, z1, z2, xx1, xx2)
#define XO5(x, x1, x2, y1, y2, z1 ,z2, xx1, xx2, yy1, yy2) XML_OpenTag(xmlobj,x,3, x1, x2, y1, y2, z1, z2, xx1, xx2, yy1, yy2)
#define XC XML_CloseTag(xmlobj)
#define XOLINK(x) XO1( TOSTRING(a), TOSTRING(href) , x)

char* htmlq3colors[] = { "#000000", "#FF0000", "#00FF00", "#FFFF00",
						"#0000FF", "#00FFFF", "#FF00FF", "#A0A0A0",
						"#7B8FB0", "#A69169" };


char* Webadmin_ConvertToHTMLColor(char* qcolorstr, char* hcolorstr, int maxlen)
{

	int colorindex, len, i, y;
	char htmlcolor[128];
	qboolean incolor;

	incolor = qfalse;

	for(i = 0, y = 0; qcolorstr[i] && y < maxlen; ++i)
	{
		if (qcolorstr[i] == '^' && qcolorstr[i+1] <= '9' && qcolorstr[i+1] >= '0')
		{
			if(incolor)
			{
				Q_strncpyz(hcolorstr +y, "</span>", maxlen -y);
				y += 7;
			}
			colorindex = qcolorstr[i+1] - '0';
			len = Com_sprintf(htmlcolor, sizeof(htmlcolor), "<span style=\"color: %s\">", htmlq3colors[colorindex]);
			Q_strncpyz(&hcolorstr[y], htmlcolor, maxlen -y);
			incolor = qtrue;
			y += len;
			i += 1;
		}else{
			hcolorstr[y] = qcolorstr[i];
			++y;
		}


	}
	if(incolor)
	{
		Q_strncpyz(hcolorstr +y, "</span>", maxlen -y);
		y += 7;
	}

	if(y < maxlen)
	{
		hcolorstr[y] = '\0';
	}else {
		hcolorstr[maxlen - 1] = '\0';
	}
	return hcolorstr;
}


const char* Webadmin_GetUrlVal(const char* url, const char* search, char* outputbuf, int outputbuflen)
{
	const char *needle, *value;
	char *outbufterm;
	int len;

	len = strlen(search);

	needle = url;

	while( (needle = strchr(needle +1, '?') ) != NULL )
	{
		if(strncmp(needle +1, search, len) == 0)
		{
			break;
		}
	}

	if(needle == NULL)
	{
		/* In case nothing was found */
		return NULL;
	}

	/* search has been found */
	value = strchr(needle, '=');
	if(value == NULL)
	{
		/* In case url miss the value */
		return NULL;
	}
	Q_strncpyz(outputbuf, value +1, outputbuflen);

	outbufterm = strchr(outputbuf, '?');
	if(outbufterm)
	{
		*outbufterm = '\0';
	}
	return value;
}

void Webadmin_BuildAdminList(xml_t* xmlobj, uint64_t steamid)
{
	int i, cnt;
	char colorbuf[2048];
	authData_admin_t* badmin;
	mvabuf;

	if(Auth_GetClPowerBySteamID(steamid) < Cmd_GetPower("adminlistadmins"))
	{
		XA("Insufficient permissions");
		return;
	}

	XO1("table","class","table table-striped table-bordered cod4xtable");
	XA("<th>Name</th><th>SteamID</th><th>Power</th>");

	for (i = 0, cnt = 0, badmin = Auth_GetAdminFromIndex( i ); badmin != NULL; i++, badmin = Auth_GetAdminFromIndex( i ))
	{
		if(badmin->username[0] == '\0')
		{
			continue;
		}

		XO("tr");

			XO("td");//Name
			XA(Webadmin_ConvertToHTMLColor(badmin->username, colorbuf, sizeof(colorbuf)));
			XC;

			XO("td");//SteamID
			char ssti[128];
			SV_SApiSteamIDToString(badmin->steamid, ssti, sizeof(ssti));
			XA(va("%s", ssti));
			XC;

			XO("td");//Power points
			XA(va("%d", badmin->power));
			XC;

		XC;
		++cnt;
	}
	XC;
	XA(va("%d admins", cnt));

}

void Webadmin_AddAdmin(xml_t* xmlobj, uint64_t steamid, uint64_t adminsteamid, char* password, int power)
{
/*
	mvabuf;

	if(Auth_GetClPowerByUID(uid) < Cmd_GetPower("adminaddadminwithpassword"))
	{
		XA("Insufficient permissions");
		return;
	}

	XA(va("%d admins", cnt));
*/
}


void Webadmin_BuildServerStatus(xml_t* xmlobj, qboolean showfullguid)
{
	int i, numcl;
	client_t* cl;
	char strbuf[MAX_STRING_CHARS];
	char colorbuf[2048];
	mvabuf;
	char teamallies[32];
	char teamaxis[32];
	gclient_t *gclient;
	qboolean teambased = qfalse;
	qboolean ffabased = qfalse;
	char ssti[128];


	numcl = 0;

	for (cl = svs.clients, gclient = level.clients, i = 0; i < sv_maxclients->integer; i++, cl++, gclient++)
	{
		if (cl->state < CS_CONNECTED) {
			continue;
		}

		if(gclient->sess.cs.team == TEAM_RED || gclient->sess.cs.team == TEAM_BLUE)
		{
			teambased = qtrue;
			break;
		}
		if(gclient->sess.cs.team == TEAM_FREE)
		{
			ffabased = qtrue;
			break;
		}
	}


	XO1("table","class","table table-striped table-bordered cod4xtable");
	XA("<th>CID</th><th>Name</th><th>SteamID/PlayerID</th><th>Power</th><th>Score</th><th>Ping</th>");


	if(teambased)
	{


		if(!Q_strncmp(g_TeamName_Axis->string,"MPUI_SPETSNAZ", 13))
			Q_strncpyz(teamaxis, "Spetsnaz", sizeof(teamaxis));
		else if(!Q_strncmp(g_TeamName_Axis->string,"MPUI_OPFOR", 10))
			Q_strncpyz(teamaxis, "Opfor", sizeof(teamaxis));
		else
			Q_strncpyz(teamaxis, g_TeamName_Axis->string, sizeof(teamaxis));

		if(!Q_strncmp(g_TeamName_Allies->string,"MPUI_MARINES", 12))
			Q_strncpyz(teamallies, "Marines", sizeof(teamallies));
		else if(!Q_strncmp(g_TeamName_Allies->string,"MPUI_SAS", 8))
			Q_strncpyz(teamallies, "S.A.S.", sizeof(teamallies));
		else
			Q_strncpyz(teamallies, g_TeamName_Allies->string, sizeof(teamallies));

		XO("tr"); XO1("td", "colspan", "6");
		XA(teamaxis);
		XC; XC;
			for (cl = svs.clients, gclient = level.clients, i = 0; i < sv_maxclients->integer; i++, cl++, gclient++)
			{
				if (cl->state < CS_CONNECTED) {
					continue;
				}

				if(gclient->sess.cs.team != TEAM_RED)
				{
					continue;
				}

				++numcl;

				XO("tr");

					Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", i);//CID
					XA(strbuf);

					XO("td");//Name
					XA(Webadmin_ConvertToHTMLColor(cl->name, colorbuf, sizeof(colorbuf)));
					XC;

					XO("td");
					SV_SApiSteamIDToString(cl->playerid, ssti, sizeof(ssti));
					XA(ssti);
					XC;

					Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", cl->power);//Ping
					XA(strbuf);

					Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", gclient->sess.score);//Score
					XA(strbuf);


					Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", cl->ping);//Ping
					XA(strbuf);
				XC;
			}

		XO("tr"); XO1("td", "colspan", "6");
		XA(teamallies);
		XC; XC;
		for (cl = svs.clients, gclient = level.clients, i = 0; i < sv_maxclients->integer; i++, cl++, gclient++)
		{
			if (cl->state < CS_CONNECTED) {
				continue;
			}

			if(gclient->sess.cs.team != TEAM_BLUE)
			{
				continue;
			}

			++numcl;

			XO("tr");

			Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", i);//CID
			XA(strbuf);

			XO("td");//Name
			XA(Webadmin_ConvertToHTMLColor(cl->name, colorbuf, sizeof(colorbuf)));
			XC;

			XO("td");//GUID
			SV_SApiSteamIDToString(cl->playerid, ssti, sizeof(ssti));
			XA(ssti);
			XC;

			Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", cl->power);//Ping
			XA(strbuf);

			Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", gclient->sess.score);//Score
			XA(strbuf);


			Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", cl->ping);//Ping
			XA(strbuf);
			XC;
		}


	}else if(ffabased){

		XO("tr"); XO1("td", "colspan", "6");
		XA("Players");
		XC; XC;

		for (cl = svs.clients, gclient = level.clients, i = 0; i < sv_maxclients->integer; i++, cl++, gclient++)
		{
			if (cl->state < CS_CONNECTED) {
				continue;
			}

			if(gclient->sess.cs.team != TEAM_FREE)
			{
				continue;
			}

			++numcl;

			XO("tr");

			Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", i);//CID
			XA(strbuf);

			XO("td");//Name
			XA(Webadmin_ConvertToHTMLColor(cl->name, colorbuf, sizeof(colorbuf)));
			XC;

			XO("td");
			SV_SApiSteamIDToString(cl->playerid, ssti, sizeof(ssti));
			XA(ssti);
			XC;

			Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", cl->power);//Ping
			XA(strbuf);

			Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", gclient->sess.score);//Score
			XA(strbuf);


			Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", cl->ping);//Ping
			XA(strbuf);
			XC;
		}

	}
	XO("tr"); XO1("td", "colspan", "6");
	XA("Spectators");
	XC; XC;
	for (cl = svs.clients, gclient = level.clients, i = 0; i < sv_maxclients->integer; i++, cl++, gclient++)
	{
		if (cl->state < CS_CONNECTED) {
			continue;
		}

		if(gclient->sess.cs.team != TEAM_SPECTATOR)
		{
			continue;
		}

		++numcl;

		XO("tr");

		Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", i);//CID
		XA(strbuf);

		XO("td");//Name
		XA(Webadmin_ConvertToHTMLColor(cl->name, colorbuf, sizeof(colorbuf)));
		XC;

		XO("td");
		SV_SApiSteamIDToString(cl->playerid, ssti, sizeof(ssti));
		XA(ssti);
		XC;

		Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", cl->power);//Ping
		XA(strbuf);

		Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", gclient->sess.score);//Score
		XA(strbuf);


		Com_sprintf(strbuf, sizeof(strbuf), "<td>%d</td>", cl->ping);//Ping
		XA(strbuf);
		XC;
	}

	XC;


	XA(va("%d players are on server", numcl));

}


void Webadmin_KickClient( xml_t* xmlobj, httpPostVals_t* values, uint64_t steamid)
{
	const char* arg1;
	const char* reason;
	int cid;

	if(Auth_GetClPowerBySteamID(steamid) < Cmd_GetPower("kick"))
	{
		XA("Insufficient permissions");
		return;
	}

	reason = HTTP_GetFormDataItem(values, "reason");

	if(!reason[0])
	{
		reason = "The admin has no reason given";
	}

	arg1 = HTTP_GetFormDataItem(values, "cid");
	if(arg1[0])
	{
		cid = atoi(arg1);
		if (cid >= 0 && cid < sv_maxclients->integer)
		{
			SV_DropClient(&svs.clients[cid], reason);
		}
	}
}


void Webadmin_BanClient( xml_t* xmlobj, httpPostVals_t* values, uint64_t steamid)
{
	const char* arg1;
	const char* reason;
	int cid;
	char dropmsg[1024];
	mvabuf;
	uint64_t clsteamid;

	if(Auth_GetClPowerBySteamID(steamid) < Cmd_GetPower("permban"))
	{
		XA("Insufficient permissions");
		return;
	}

	reason = HTTP_GetFormDataItem(values, "reason");

	if( reason[0] )
	{
		arg1 = HTTP_GetFormDataItem(values, "cid");
		if( arg1[0] )
		{
			cid = atoi(arg1);
			if (cid >= 0 && cid < sv_maxclients->integer)
			{
				SV_AddBanForClient(&svs.clients[cid], (time_t)-1, (char*)reason);
				//SV_PlayerAddBanByip(&svs.clients[cid].netchan.remoteAddress, (char*)reason, svs.clients[cid].uid, svs.clients[cid].pbguid, uid, -1);
				XA("Banned player");
				XA(svs.clients[cid].name);
				Com_sprintf(dropmsg, sizeof(dropmsg), "You have got banned with the following reason: %s", (char*)reason);
				SV_DropClient(&svs.clients[cid], dropmsg);
			}
		}else if( (arg1 = HTTP_GetFormDataItem(values, "steamid")) && arg1[0] ){
			clsteamid = SV_SApiStringToID(arg1);
			if (clsteamid != 0) {
				SV_AddBanForPlayer(clsteamid, 0, NULL, (time_t)-1, (char*)reason);
				char ssti[128];
				SV_SApiSteamIDToString(clsteamid, ssti, sizeof(ssti));
				XA(va("Banned player with steamid %s", ssti));
			}
		}else if ( (arg1 = HTTP_GetFormDataItem(values, "playerid")) && arg1[0]) {
			if (strlen(arg1) == 32)
			{
				clsteamid = SV_SApiStringToID(arg1);
				SV_AddBanForPlayer(0, clsteamid, NULL, (time_t)-1, (char*)reason);
				XA("Banned player with id ");
				XA(arg1);
			}
		}
	}

}

static xml_t* xmlobjFlush;

void Webadmin_FlushRedirect(char *outputbuf, qboolean lastcommand )
{
	xml_t* xmlobj = xmlobjFlush;

	if(xmlobj == NULL)
	{
		Com_Error(ERR_FATAL, "Webadmin_FlushRedirect has not been initialized");
	}

	XA("<pre>");
	XA(outputbuf);
	XA("</pre>");

}

#define SV_OUTPUTBUF_LENGTH 4096

void Webadmin_ConsoleCommand(xml_t* xmlobj, const char* command, uint64_t steamid)
{
	char sv_outputbuf[SV_OUTPUTBUF_LENGTH];
	char buffer[960];
	char cmd[48];
	int power, i, powercmd;

	power = Cmd_GetInvokerPower();

	if(power < 100)
	{
		i = 0;
		/* Get the current user's power 1st */
		while ( command[i] != ' ' && command[i] != '\0' && command[i] != '\n' && i < 32 ){
			i++;
		}
		if(i > 29 || i < 3) return;

		Q_strncpyz(cmd,command,i+1);

		//Prevent buffer overflow as well as prevent the execution of priveleged commands by using seperator characters
		Q_strncpyz(buffer, command, sizeof(buffer));
		Q_strchrrepl(buffer,';','\0');
		Q_strchrrepl(buffer,'\n','\0');
		Q_strchrrepl(buffer,'\r','\0');
		// start redirecting all print outputs to the packet

		powercmd = Cmd_GetPower(cmd);
		if(powercmd > power)
		{
			XA(" Insufficient permissions! ");
				return;
		}

		xmlobjFlush = xmlobj;
		Com_BeginRedirect (sv_outputbuf, SV_OUTPUTBUF_LENGTH, Webadmin_FlushRedirect);
		Cmd_ExecuteSingleCommand(0,0, buffer);
	}else{
		xmlobjFlush = xmlobj;
		Com_BeginRedirect (sv_outputbuf, SV_OUTPUTBUF_LENGTH, Webadmin_FlushRedirect);
		Cmd_ExecuteSingleCommand(0,0, command);
	}
	Com_EndRedirect();

	xmlobjFlush = NULL;
}


void Webadmin_BuildLoginForm(xml_t* xmlobj, qboolean badtry, const char* banmsg)
{

	XO("p");
		XO1("div", "class", "col-lg-4 col-lg-offset-4");
			XO3("form", "name", "input", "action", "/webadmin", "method", "post");
				XA("<h4>Log In</h4><hr />");
				if(badtry)
				{
					XA("<p><h4 style=\"color: #FF0000\">Invalid Login</h4></p>");
				}
				if(banmsg)
				{
					XA("<p><h4 style=\"color: #FF0000\">");
					XA("Error: You can only login once every 10 seconds");
					XA("</h4></p>");
				}
				XA("<label for=\"username\">Username</label> <input class=\"form-control\" type=\"text\" id=\"username\" name=\"username\">");
				XA("<label for=\"password\">Password</label> <input class=\"form-control\" type=\"password\" id=\"password\" name=\"password\">");
				XA("<br /><button class=\"btn btn-primary\" type=\"submit\">Log In</button>");
			XC;
		XC;
	XC;

}

void Webadmin_BuildMessage(msg_t* msg, const char* username, qboolean invalidloginattempt, const char* banmsg, const char* url, httpPostVals_t* values)
{

	xml_t xmlbase;
	xml_t* xmlobj = &xmlbase;
	char actionval[64];
	char colorbuf[2048];
	const char *postval;
	char netadrstr[128];
	uint64_t steamid;
	int power, oldpower, oldinvokerclnum;
	uint64_t oldinvokersteamid;
	char oldinvokername[64];
	const char* name;

	XML_Init(xmlobj, (char*)msg->data, msg->maxsize, "ISO-8859-1");
	XO("html");
		XO("head");
			XO("title");
				XA("CoD4X Web Server");
			XC;
			XO2("link","href","/files/webadmin.css","rel","stylesheet");XC;
		XC;
		XO("body");
			XO1("div","class","container");
				XO1("div","class","page-header");
					XO("h1");
						XA("CoD4 X v1.8");
						XO("small");
							XA(" Web Server");
						XC;
					XC;
					XO("h3");
						XA(Webadmin_ConvertToHTMLColor(sv_hostname->string, colorbuf, sizeof(colorbuf)));
						XA(" ");
						XA(sv_mapname->string);
					XC;
				XC;

				if(!Q_strncmp(url, "/webadmin", 9))
				{

					if(username == NULL || username[0] == '\0')
					{
						Webadmin_BuildLoginForm(xmlobj, invalidloginattempt, banmsg);

					}else {
						steamid = Auth_GetSteamID(username);
						if(!Q_strncmp(url +9, "/listadmins", 11))
						{
							Webadmin_BuildAdminList(xmlobj, steamid);
						}else {
								XO1("div","class","loginusername");
									XO1("span","class","label label-primary");
										XA("Logged in as: ");XA(username);XA(". &nbsp;");
										XO2("a","href","/webadmin/?action=logout","style","color: #fff");
											XA("Log Out");
										XC;
									XC;
								XC;
							XO1("div", "class", "col-lg-6 right_line");
								XO("h3");XA("Server Status");XC;
								XO("hr");XC;
								Webadmin_BuildServerStatus(xmlobj, qtrue);
							XC;


							XO1("div", "class", "col-lg-6 left_line");
								XO("h3");XA("Command Console");XC;
								XO("hr");XC;
								if(Webadmin_GetUrlVal( url, "action", actionval, sizeof(actionval)))//nnjpls
								{
									if (strcmp(actionval, "logout") == 0) {
										Auth_WipeSessionId(username);

									}else{

										oldpower = Cmd_GetInvokerPower();
										oldinvokerclnum = Cmd_GetInvokerClnum();
										oldinvokersteamid = Cmd_GetInvokerSteamID();
										Cmd_GetInvokerName(oldinvokername, sizeof(oldinvokername));
										power = Auth_GetClPowerBySteamID(steamid);
										name = Auth_GetNameBySteamID(steamid);
										Cmd_SetCurrentInvokerInfo(power, -1, steamid, name);

										if(strcmp(actionval, "sendcmd") == 0){
											postval = HTTP_GetFormDataItem(values, "consolecommand");
											if(postval[0]){
												XO1("div","class","well");
													Webadmin_ConsoleCommand(xmlobj, postval, steamid);
												XC;
											}
										}else if(strcmp(actionval, "banclient") == 0){

											Webadmin_BanClient(xmlobj, values, steamid);
										}else if(strcmp(actionval, "kickclient") == 0){
											Webadmin_KickClient(xmlobj, values, steamid);

										}

										Cmd_SetCurrentInvokerInfo(oldpower, oldinvokerclnum, oldinvokersteamid, oldinvokername);

									}
								}

								XO5("form", "name", "input", "action", "webadmin?action=sendcmd", "method", "post", "class","form-control","id","con_form");
									XA("<label for=\"consolecommand\">Send Command</label> <input type=\"text\" name=\"consolecommand\" id=\"consolecommand\">");
									XA("<button class=\"givesomespace btn btn-primary btn-xs\" type=\"submit\">Send Command</button>");
								XC;
							XC;

						}
					}
				}else if(!Q_strncmp(url, "/status", 7)){
					XO("h3");XA("Server Status");XC;
					XO("hr");XC;
						Webadmin_BuildServerStatus(xmlobj,qfalse);
				}else {
					XO1("h3","align","center");
						XA("Where do you want to go?");
					XC;
					XO1("div","align","center");
						XA("<a href=\"/webadmin\" class=\"btn btn-primary givesomespace\">Web Admin</a>");
						XA("<a href=\"/status\" class=\"btn btn-primary givesomespace\">Server Status</a>");
					XC;
				}
			XO("p");
				XA("Net: ");
				XA(NET_GetHostAddress(netadrstr, sizeof(netadrstr)));
			XC;
			XC;
		XC;
	XC;

	msg->cursize = xmlobj->bufposition;

}


qboolean HTTPCreateWebadminMessage(ftRequest_t* request, msg_t* msg, char* sessionkey, httpPostVals_t* values)
{
	byte *buf;
	char qpath[MAX_QPATH];
	int len;
	const char *session;
	char banmsg[1024];

	buf = NULL;

	MSG_Init(msg, buf, 0);
	Com_Printf(CON_CHANNEL_SERVER,"URL: %s\n", request->url);
	if(!Q_strncmp(request->url, "/files", 6))
	{
		if(request->url[6] != '/' || request->url[7] == '\0')
		{
			return qfalse;
		}
		Com_sprintf(qpath, sizeof(qpath), "/webadmindata/%s", &request->url[7]);

		if(strstr(qpath, "..") != NULL || strstr(qpath, "::") != NULL)
		{
			return qfalse;
		}
		len = FS_ReadFile(qpath, (void**)&buf);

		if(len < 0)
		{
			return qfalse;
		}
		msg->data = buf;
		msg->cursize = len;
		msg->maxsize = len;
		FS_FreeFileKeepBuf( );
		return qtrue;
	}

	len = 0x20000;

	buf = L_Malloc(len);
	if(buf == NULL)
	{
		return qfalse;
	}

	msg->data = buf;
	msg->cursize = 0;
	msg->maxsize = len;

	if (Q_stricmpn(request->url, "/webadmin", 9))
	{
		Webadmin_BuildMessage(msg, NULL, qfalse, NULL ,request->url, values);
		return qtrue;
	}

	qboolean invalidlogin = qfalse;
	const char* username = NULL;
	const char* password = NULL;


	if(SV_PlayerBannedByip(&request->remote, banmsg, sizeof(banmsg)))
	{
		Webadmin_BuildMessage(msg, NULL, qfalse, banmsg, request->url, values);
		return qtrue;
	}

	username = Auth_FindSessionID(sessionkey);

	if(username == NULL)
	{

		username = HTTP_GetFormDataItem(values, "username");
		password = HTTP_GetFormDataItem(values, "password");

		if(username[0] && password[0])
		{
			session = Auth_GetSessionId(username, password);
			if(session == NULL)
			{
				Com_Printf(CON_CHANNEL_SERVER,"^1Invalid login\n");
				invalidlogin = qtrue;
				SV_PlayerAddBanByip(&request->remote, "Invalid login attempt. You have to wait 20 seconds", Com_GetRealtime() + 10);
				username = NULL;
			}else {
				Com_Printf(CON_CHANNEL_SERVER,"^2Successful login with username: %s\n", username);
			}


		}else {
			Com_Printf(CON_CHANNEL_SERVER,"No login!\n");
			session = NULL;
			username = NULL;
		}

		/* not longer than 127 or overflow */
		if(session != NULL)
		{
			strcpy(sessionkey, session);
		}
	}else{
		Com_Printf(CON_CHANNEL_SERVER,"Already logged in as: %s\n", username);
	}

	Webadmin_BuildMessage(msg, username, invalidlogin, NULL, request->url, values);

	return qtrue;
}
