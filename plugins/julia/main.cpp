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
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "q_shared.h"
#include "stringwriter.h"

#define MAX_NAME_LENGTH 33
#define UPDATE_INTERVAL 120 //2 minutes
#define MAX_CACHED_ENTRIES 64

typedef struct banList_s {
    unsigned int lastqueried; //Last time requested info for this player. Used for sorting for oldest
    unsigned int lastupdated; //Last time we have received info about this player from network
    unsigned int lastqueryattempt;
    time_t	expire;
    time_t	created;
    uint64_t steamid;
    uint64_t playerid;
    uint64_t adminsteamid;
    char	reason[512];
    char	playername[MAX_NAME_LENGTH];
    netadr_t remote;
}banList_t;

typedef struct{
  char cmdlist[384];
  uint64_t steamid;
}permissionList_t;

/*** Shared used objects. Access only inside critical sections ****/
static banList_t cachedBanlist[MAX_CACHED_ENTRIES];
static permissionList_t cachedPermissionlist[MAX_CACHED_ENTRIES];
static qboolean cacheupdated; //Parsing the cache if true and check players on server against it
/******************************************************************/

typedef struct
{
  char showbanlistmessage[1024];
}parameters_t;
static parameters_t paramters;
static unsigned int nextServerDataTime;
static cvar_t* identkey;
static cvar_t *banlisthandlerurl;
static int serverport;

static void ClearCachedBan(baninfo_t* baninfo);
static void ListCachedBans_f();
void SendServerChat(int client, const char* message);
static void* SendServerdataThread(void* q);

char* JSONEscape(const char* s, char* outbuf, int maxlen)
{
	char* o = outbuf;
	int i, k;
	
	for(i = 0, k = 0; s[i] != 0 && k < (signed)maxlen -3; ++i, ++k)
	{
		switch(s[i])
		{
			case '\b':
				o[k] = '\\';
				++k;
				o[k] = 'b';
				break;
			case '\f':
				o[k] = '\\';
				++k;
				o[k] = 'f';
				break;
			case '\n':
				o[k] = '\\';
				++k;
				o[k] = 'n';
				break;
			case '\r':
				o[k] = '\\';
				++k;
				o[k] = 'r';
				break;
			case '\t':
				o[k] = '\\';
				++k;
				o[k] = 't';
				break;
			case '\"':
				o[k] = '\\';
				++k;
				o[k] = '\"';
				break;
			case '\\':
				o[k] = '\\';
				++k;
				o[k] = '\\';
				break;
			case '/':
				o[k] = '\\';
				++k;
				o[k] = '/';
				break;
			
			default:
				if(s[i] >= ' ')
				{
					o[k] = s[i];
				}else{
					o[k] = ' ';
				}
		}
	}
	o[k] = '\0';
	return o;
}


static void SV_DumpBanlist_f()
{
    Plugin_Printf("%s\n", paramters.showbanlistmessage);
}


void SM_Chat(const char* line, int clnum)
{
  char chattername[256];
  char cleanname[256];
  int i;

  if(line[0] == 0)
  {
    return;
  }

  if ( clnum >= 0 )
  {
    Q_strncpyz(cleanname, Plugin_GetPlayerName(clnum), sizeof(cleanname));
    Q_CleanStr(cleanname);
    if(Plugin_CanPlayerUseCommand(clnum, "sm_chat"))
    {
        Com_sprintf(chattername, sizeof(chattername), "^3%s", cleanname);
    }else{
        Com_sprintf(chattername, sizeof(chattername), "^2%s", cleanname);
    }
  }else{
    Q_strncpyz(chattername, "^1Console", sizeof(chattername));
  }

  for ( i = 0; i < Plugin_GetSlotCount(); ++i )
  {
    if ( Plugin_CanPlayerUseCommand(i, "sm_chat") || i == clnum)
    {
      Plugin_ChatPrintf(i, "^3[^0AdminChat^3]^7 (%s^7): %s", chattername, line);
    }
  }
}

void SM_Chat_f()
{
  char line[256];

  if ( Plugin_Cmd_Argc() < 2 )
  {
    Plugin_Printf("Usage: sm_chat <Message>\nSends your message to all connected admins\n");
    return;
  }

  Plugin_Cmd_Args(line, sizeof(line));

  int invoker = Plugin_Cmd_GetInvokerSlot();

  SM_Chat(line, invoker);
}

//For using chat with @@ prefix
static void SM_PSay(const char* msg, int source)
{
  int i;
  char message[1024];
  char cleannames[128];
  char cleannamed[128];

  Cmd_TokenizeString(msg);

  if(Cmd_Argc() < 2)
  {
    Plugin_ChatPrintf(source, "Usage: @@player message");
    return;
  }

  client_t* cl = Plugin_SV_Cmd_GetPlayerClByHandle(Cmd_Argv(0));

  if(cl == NULL)
  {
    Plugin_ChatPrintf(source, "No player for %s found", Cmd_Argv(0));
    return;
  }
  if(cl->state < CS_ACTIVE)
  {
    Plugin_ChatPrintf(source, "Player %s is not in active", cl->name);
    return;
  }

  message[0] = '\0';
  for(i = 1; i < Cmd_Argc(); ++i)
  {
    Q_strcat(message, sizeof(message), Cmd_Argv(i));
    Q_strcat(message, sizeof(message), " ");
  }

  int destination = NUMFORCLIENT(cl);

  if(source == destination)
  {
      Plugin_ChatPrintf(source, "Why would you send a message to yourself?");
      return;
  }

  Q_strncpyz(cleannames, Plugin_GetPlayerName(source), sizeof(cleannames));
  Q_strncpyz(cleannamed, cl->name, sizeof(cleannamed));

  Q_CleanStr(cleannames);
  Q_CleanStr(cleannamed);

  Plugin_ChatPrintf(source, "^7%s ^1>> ^7%s: %s", cleannames, cleannamed, message);
  Plugin_ChatPrintf(destination, "^7%s ^1>> ^7%s: %s", cleannames, cleannamed, message);
}

//For invoking command sm_psay
static void SM_PSay_f()
{
  int i;
  char message[1024];

  if(Plugin_Cmd_Argc() < 3)
  {
    Plugin_Printf("Usage: sm_psay <name> <message>\n");
    return;
  }

  const char* name = Plugin_Cmd_Argv(1);
  message[0] = '\0';

  for(i = 2; i < Plugin_Cmd_Argc(); ++i)
  {
    Q_strcat(message, sizeof(message), Plugin_Cmd_Argv(i));
  }

  for(i = 0; i < Plugin_GetSlotCount(); ++i)
  {
    client_t* cl = Plugin_GetClientForClientNum(i);
    if(!cl || cl->state < CS_ACTIVE)
    {
      continue;
    }
    if(strcmp(cl->name, name) == 0)
    {
        Plugin_ChatPrintf(i, "^2Admin{SB} to ^7%s^2: ^7%s", name, message);
    }
  }

}

PCL void OnMessageSent(char* message, int slot, qboolean* show, int mode)
{
    const char* rawmsg;
    int numat = 1;

    SendServerChat(slot, message);

    if(message[0] != '@' && (message[0] != 0x15 || message[1] != '@') )
    {
        return;
    }
    *show = qfalse;

    if(message[0] == 0x15)
        rawmsg = message +2;
    else
        rawmsg = message +1;

    if(rawmsg[0] == '@')
    {
        ++rawmsg;
        ++numat;
    }
    if(rawmsg[0] == '@')
    {
        ++rawmsg;
        ++numat;
    }

    if(numat == 1)
    {
	SM_Chat(rawmsg, slot);
    }else if(numat == 2){
	SM_PSay(rawmsg, slot);
    }
}



/*
 * public domain strtok_r() by Charlie Gordon
 *
 *   from comp.lang.c  9/14/2007
 *
 *      http://groups.google.com/group/comp.lang.c/msg/2ab1ecbb86646684
 *
 *     (Declaration that it's public domain):
 *      http://groups.google.com/group/comp.lang.c/msg/7c7b39328fefab9c
 */
#ifndef strtok_rc
static char* strtok_rc(char *str, const char *delim, char **nextp)
{
    char *ret;

    if (str == NULL)
    {
        str = *nextp;
    }

    str += strspn(str, delim);

    if (*str == '\0')
    {
        return NULL;
    }

    ret = str;

    str += strcspn(str, delim);

    if (*str)
    {
        *str++ = '\0';
    }

    *nextp = str;

    return ret;
}
#endif
PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 1;
    info->pluginVersion.minor = 0;	// Plugin version
    strncpy(info->fullName,"Julia plugin by NeHo", sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"Plugin to work with CoD4xWebAdmin.",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to communicate with CoD4xWebadmin Node JS application by NeHo.",sizeof(info->longDescription));
}


static int HTTP_DoBlockingQuery(const char *url, char* data, char* outdata, int* len)
{
    int stringlen = strlen(data);
    int outlen;
    int code;

    outdata[0] = 0;


    ftRequest_t* r = Plugin_HTTP_Request(url, "POST", (byte*)data, stringlen, "Content-Type: application/json\r\n");

    if(r == NULL)
    {
      return 0;
    }

    if(r->code != 200 && r->contentLength <= 0)
    {
      code = r->code;
      Plugin_HTTP_FreeObj(r);
      return code;
    }

    outlen = r->contentLength;
    if(outlen >= (*len -1))
    {
      outlen = (*len -1);
    }
    *len = outlen;
    memcpy(outdata, r->extrecvmsg->data + r->headerLength, outlen);
    outdata[outlen] = 0;
    code = r->code;
    Plugin_HTTP_FreeObj(r);
    return code;
}




class StringWriter* CreateJSONObject(char* buffer, int buflen)
{
    char tmp[1024];
    class StringWriter* sw = new StringWriter(buffer, buflen);

    sw->Printf("{\n");
    sw->Printf("\t\"time\":%u,\n", Plugin_GetRealtime());
    sw->Printf("\t\"identkey\":\"%s\",\n", JSONEscape(identkey->string, tmp, sizeof(tmp)));
    sw->Printf("\t\"serverport\":%hu,\n", serverport);
    return sw;
}

void FinishJSONObject(class StringWriter* sw)
{
    sw->Printf("}");
}


PCL int OnInit(){	// Funciton called on server initiation

    char data[4096];
    char outdata[4096];

    char sbuf[256];
    char tmp[1024];

    int len, code;
    httpPostVals_t values;


    identkey = (cvar_t*)Plugin_Cvar_RegisterString("julia_identkey", "", 0, "Key used to authenticate on CoD4xWebAdmin serverexec script");
    serverport = Plugin_Cvar_VariableIntegerValue("net_port");
    banlisthandlerurl = (cvar_t*)Plugin_Cvar_RegisterString("julia_url", "", 0, "URL of the CoD4xWebAdmin serverexec script");

    if(banlisthandlerurl->string[0] == 0 || identkey->string[0] == 0)
    {
      Plugin_PrintError("Init failure. Cvar julia_url or julia_identkey is not set\n");
      return -1;
    }
    data[0] = 0;

    class StringWriter* sw = CreateJSONObject(data, sizeof(data));

    sw->Printf("\t\"command\":\"HELO\",\n");
    sw->Printf("\t\"gamename\":\"Call of Duty 4 - Modern Warfare X18\",\n");
    sw->Printf("\t\"gamedir\":\"cod4\",\n");
    sw->Printf("\t\"version\":\"%s\",\n", Plugin_GetCommonVersionString());

    Plugin_Cvar_VariableStringBuffer("rcon_password", sbuf, sizeof(sbuf));

    sw->Printf("\t\"rcon\":\"\%s\"\n", JSONEscape(sbuf, tmp, sizeof(tmp)));

    FinishJSONObject(sw);

    len = sizeof(outdata);
    code = HTTP_DoBlockingQuery(banlisthandlerurl->string, data, outdata, &len);
    if(code != 200)
    {
      Plugin_PrintError("Init failure. Server returned code %u and message %s\n", code, outdata);
      delete sw;
      return -1;
    }
    delete sw;
    Plugin_HTTP_ParseFormDataBody(outdata, &values);
    const char *status = Plugin_HTTP_GetFormDataItem(&values, "status");
    if(Q_stricmp(status, "okay"))
    {
      Plugin_PrintError("Init failure. CoD4xWebAdmin backend script said: %s\n", status);
      return -1;
    }
    Q_strncpyz(paramters.showbanlistmessage, Plugin_HTTP_GetFormDataItem(&values, "showbanlistmessage"), sizeof(paramters.showbanlistmessage));
    Plugin_Printf("Julia plugin is ready to work\n");
    Plugin_AddCommand("dumpbanlist", SV_DumpBanlist_f, 30);
    Plugin_AddCommand("dumpbanlistcache", ListCachedBans_f, 100);
    Plugin_AddCommand("sm_psay", SM_PSay_f, 80);
    Plugin_AddCommand("sm_chat", SM_Chat_f, 30);
    return 0;
}

// ################################################ SCREENSHOTS ########################################################### //

typedef struct
{
  char filepath[1024];
  int clientNum;
  char name[33];
}submitthreadinfo_t;


/*
==============
FS_FCloseFileOSPath

==============
*/
qboolean FS_FCloseFileOSPath( FILE* f ) {

	if (f) {
	    fclose (f);
	    return qtrue;
	}
	return qfalse;
}


/*
================
FS_filelengthOSPath

If this is called on a non-unique FILE (from a pak file),
it will return the size of the pak file, not the expected
size of the file.
================
*/
int FS_filelengthOSPath( FILE* h ) {
	int		pos;
	int		end;

	pos = ftell (h);
	fseek (h, 0, SEEK_END);
	end = ftell (h);
	fseek (h, pos, SEEK_SET);

	return end;
}

/*
===========
FS_FOpenFileReadOSPathUni
search for a file somewhere below the home path, base path or cd path
we search in that order, matching FS_SV_FOpenFileRead order
===========
*/
int FS_FOpenFileReadOSPath( const char *filename, FILE **fp ) {
	char ospath[1024];
	FILE* fh;

	Q_strncpyz( ospath, filename, sizeof( ospath ) );

	fh = fopen( ospath, "rb" );

	if ( !fh ){
		*fp = NULL;
		return -1;
	}

	*fp = fh;

	return FS_filelengthOSPath(fh);
}

/*
=================
FS_ReadOSPath

Properly handles partial reads
=================
*/
int FS_ReadOSPath( void *buffer, int len, FILE* f ) {
	int		block, remaining;
	int		read;
	byte	*buf;

	if ( !f ) {
		return 0;
	}

	buf = (byte *)buffer;

	remaining = len;
	while (remaining) {
		block = remaining;
		read = fread (buf, 1, block, f);
		if (read == 0)
		{
			return len-remaining;	//Com_Error (ERR_FATAL, "FS_Read: 0 bytes read");
		}

		if (read == -1) {
			return -1;
		}

		remaining -= read;
		buf += read;
	}
	return len;

}

/*
============
FS_ReadFileOSPathUni

Filename are relative to the quake search path
a null buffer will just return the file length without loading
============
*/
int FS_ReadFileOSPath( const char *ospath, void **buffer ) {
	byte*	buf;
	int		len;
	FILE*   h;


	if ( !ospath || !ospath[0] ) {
		return 0;
	}

	buf = NULL;	// quiet compiler warning

	// look for it in the filesystem or pack files
	len = FS_FOpenFileReadOSPath( ospath, &h );
	if ( len == -1 ) {
		if ( buffer ) {
			*buffer = NULL;
		}
    Plugin_PrintError("Failed to open file %s for reading\n", ospath);
		return -1;
	}

	if ( !buffer ) {
		FS_FCloseFileOSPath( h );
		return len;
	}

	buf = (byte*)malloc(len+1);
	if(buf == NULL)
	{
    FS_FCloseFileOSPath( h );
		Plugin_PrintError( "FS_ReadFileOSPathUni got no memory\n" );
    return -1;
	}
	*buffer = buf;

	int r = FS_ReadOSPath (buf, len, h);
  if(r < 1)
  {
    FS_FCloseFileOSPath( h );
    free(buf);
    Plugin_PrintError( "FS_ReadFileOSPathUni error reading file\n" );
    return -1;
  }
  if(r != len)
  {
    FS_FCloseFileOSPath( h );
    free(buf);
    Plugin_PrintError( "FS_ReadFileOSPathUni error reading incomplete file\n" );
    return -1;
  }
	// guarantee that it will have a trailing 0 for string operations
	buf[len] = 0;
	FS_FCloseFileOSPath( h );
	return len;
}

void FS_FreeFile(void* buf)
{
    free(buf);
}

static const char *base64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";

int Base64Encode(char* base64out, byte* inbuf, int len)
{
    int bits, i, k, j, y, shift, offset;
    int mask;
    int b64data;

    i = y = 0;

    while(i < len)
    {
        bits = 0;
        /* Read a base64 3 byte block */
        for(k = 0; k < 3 && i < len; ++k, ++i)
        {
            ((byte*)&bits)[2 - k] = inbuf[i];
        }

        mask = 64 - 1;

        for(j = 0, shift = 0; j < 4; ++j, shift += 6)
        {
            offset = (bits & (mask << shift)) >> shift;

            ((byte*)&b64data)[3 - j] = base64[offset];
        }
        *((int*)&base64out[y]) = b64data;
        y += 4;
    }

    if(y < 3)
    {
        return y;
    }

    for(i = 0; k < 3; i++, k++)
    {
        base64out[y - i -1] = '#';
    }
/*
    y -= k;

    for(; k < 3; k++, y += 3)
    {
        base64out[y] = '%';
        base64out[y +1] = '3';
        base64out[y +2] = 'd';
    }*/
    base64out[y] = 0;
    return y;
}

/*
===========
FS_RemoveOSPath

===========
*/
void FS_RemoveOSPath( const char *osPath ) {
	remove( osPath );
}

//query: guid;
static void* SendScreenshotThreadForFile(void* q)
{
  char *querystring;
  httpPostVals_t values;
  int attempts;
  char outdata[4096];
  int code;
  int len = 0;
  submitthreadinfo_t *sinfo = (submitthreadinfo_t*)q;


  byte* data;

  int flen = FS_ReadFileOSPath( sinfo->filepath, (void **)&data );
  if(flen < 1)
  {
    free(sinfo);
    return NULL;
  }
  int qsbuflen = 0x10000 + 2*flen;
  querystring = (char*)malloc(qsbuflen);

  if(querystring == NULL)
  {
    Plugin_PrintError("SendScreenshotThreadForFile(): malloc failed\n");
    free(data);
    free(sinfo);
    return NULL;
  }

  //Build the query string
  querystring[0] = 0;


  class StringWriter* sw = CreateJSONObject(querystring, qsbuflen);

  sw->Printf("\t\"command\":\"submitshot\",\n");

  sw->Printf("\t\"data\":\"");

  int stringlen = Base64Encode(sw->GetBuffer() + sw->GetBufferPos(), data, flen);
  sw->IncBufferPos(stringlen);


  sw->Printf("\"\n");

  FinishJSONObject(sw);

  free(data);
  len = sizeof(outdata);

  delete sw;

  //3 attempts to get data
  attempts = 0;
  do
  {
    code = HTTP_DoBlockingQuery(banlisthandlerurl->string, querystring, outdata, &len);
    ++attempts;
  }while(code == 0 && attempts < 3);

  if(code != 200)
  {
    Plugin_Printf("Screenshot submit plugin: server returned code %d\n", code);
  }else{
    if(len > 0 && len < (signed)sizeof(outdata))
    {
      outdata[len] = 0;
    }
    //Plugin_Printf("Screenshot submit plugin: server returned %s\n", querystring);

    Plugin_HTTP_ParseFormDataBody(outdata, &values);
    const char* status = Plugin_HTTP_GetFormDataItem(&values, "status");
    if(!Q_stricmpn(status, "success", 7))
    {
      Plugin_Printf("Screenshot submitted for %s (%d)\n", sinfo->name, sinfo->clientNum);
      FS_RemoveOSPath( sinfo->filepath );
    }
    if(!Q_stricmpn(status, "failure", 7))
    {
      Plugin_Printf("Failed to submit screenshot\n");
    }
  }
  free(sinfo);
  free(querystring);
  return NULL;
}


static void SendScreenshotForFile(submitthreadinfo_t *sinfo)
{
  submitthreadinfo_t *sinfoT = (submitthreadinfo_t*)malloc(sizeof(submitthreadinfo_t));
  if(sinfoT == NULL)
  {
    return;
  }

  memcpy(sinfoT, sinfo, sizeof(submitthreadinfo_t));


  if(Plugin_CreateNewThread(SendScreenshotThreadForFile, NULL, (void*)sinfoT) == qfalse)
  {
      //On error
      free(sinfoT);
  }
}

PCL void OnScreenshotArrived(client_t* client, const char* path)
{
  Plugin_Printf("OnScreenshotArrived %s...\n", path);
  submitthreadinfo_t sti;
  Q_strncpyz(sti.filepath, path, sizeof(sti.filepath));
  Q_strncpyz(sti.name, client->name, sizeof(sti.name));
  sti.clientNum = NUMFORCLIENT(client);
  SendScreenshotForFile(&sti);
}


// ################################################ SCREENSHOTS END ########################################################### //

// ################################################ JSON Formated players list + server status ########################################################### //


//Untested, I guess NeHo will test it :P
void SendServerChat(int client, const char* message)
{
    char outputbuffer[1024*8];
    char tmp[1024];
    time_t aclock;

	  time(&aclock);

    class StringWriter* sw = CreateJSONObject(outputbuffer, sizeof(outputbuffer));

    client_t* cl = Plugin_GetClientForClientNum(client);

    sw->Printf("\t\"command\":\"userchat\",\n");
    sw->Printf("\t\"client\":\"%d\",\n", client);
    sw->Printf("\t\"message\":\"%s\",\n", JSONEscape(message, tmp, sizeof(tmp)));
    sw->Printf("\t\"time\":\"%d\",\n", aclock);
    
    #ifdef _WIN32
    sw->Printf("\t\"pid\":\"%I64u\",\n", cl->playerid );
    sw->Printf("\t\"sid\":\"%I64u\"\n", cl->steamid );
    #else
    sw->Printf("\t\"pid\":\"%llu\",\n", cl->playerid );
    sw->Printf("\t\"sid\":\"%llu\"\n", cl->steamid );
    #endif

    FinishJSONObject(sw);

    const char* jsonstring = strdup(sw->GetBuffer());
    delete sw;

    if(jsonstring == NULL)
    {
        return;
    }

    //Plugin_Printf("Post=%s\n", jsonstring);

    if(Plugin_CreateNewThread(SendServerdataThread, NULL, (void*)jsonstring) == qfalse)
    {
        free((void*)jsonstring);
    }
}



//query: guid;
static void* SendServerdataThread(void* q)
{
  char querystring[8192];
  char outdata[8192];
  int attempts;
  int code;
  int len = sizeof(outdata);
  const char *argjsonstring = (const char*)q;

  Q_strncpyz(querystring, argjsonstring, sizeof(querystring));
  free(q);

  //Buid the query string! already done (JSON)
  //3 attempts to get data
  attempts = 0;
  do
  {
    code = HTTP_DoBlockingQuery(banlisthandlerurl->string, querystring, outdata, &len);
    ++attempts;
  }while(code == 0 && attempts < 3);

  if(code != 200)
  {
    Plugin_Printf("WebbanlistAPI: server returned code %d\n", code);
  }else{
//    Plugin_Printf("WebbanlistAPI: server returned %s\n", querystring);
  }
  return NULL;
}


#define SERVERDATA_UPDATEINTERVAL (1000*30)


void SendServerData( )
{
    char outputbuffer[1024*8];
    char tmp[1024];
    char mapnamebuf[64];
    char hostnamebuf[256];
    char maxclientsbuf[64];
    char privateclientsbuf[64];
    char mstbuf[64];


    int i, c;
    client_t    *cl;


    unsigned int servertime = Plugin_GetServerTime();

    if(nextServerDataTime > servertime && nextServerDataTime - servertime < 2*SERVERDATA_UPDATEINTERVAL) //Don't send updates more often than SERVERDATA_UPDATEINTERVAL and guard for integer wraparound
    {
        return;
    }

    nextServerDataTime = servertime + SERVERDATA_UPDATEINTERVAL;


    qboolean first;

    class StringWriter* sw = CreateJSONObject(outputbuffer, sizeof(outputbuffer));

    for ( i = 0, c = 0; i < MAX_CLIENTS ; i++ ) {
        cl = Plugin_GetClientForClientNum(i);
        if ( cl && cl->state >= CS_CONNECTED ){
            c++;
        }
    }
    Plugin_Cvar_VariableStringBuffer("mapname", mapnamebuf, sizeof(mapnamebuf));
    Plugin_Cvar_VariableStringBuffer("sv_hostname", hostnamebuf, sizeof(hostnamebuf));
    Plugin_Cvar_VariableStringBuffer("sv_maxclients", maxclientsbuf, sizeof(maxclientsbuf));
    Plugin_Cvar_VariableStringBuffer("sv_privateclients", privateclientsbuf, sizeof(privateclientsbuf));
    Plugin_Cvar_VariableStringBuffer("g_mapstarttime", mstbuf, sizeof(mstbuf));

    sw->Printf("\t\"command\":\"serverstatus\",\n", c);
    sw->Printf("\t\"mapname\":\"%s\",\n", JSONEscape(mapnamebuf, tmp, sizeof(tmp)));
    sw->Printf("\t\"hostname\":\"%s\",\n", JSONEscape(hostnamebuf, tmp, sizeof(tmp)));
    sw->Printf("\t\"maxclients\":%s,\n", maxclientsbuf);
    sw->Printf("\t\"privateclients\":%s,\n", privateclientsbuf);
    sw->Printf("\t\"mapstartime\":\"%s\",\n", JSONEscape(mstbuf, tmp, sizeof(tmp)));
    sw->Printf("\t\"version\":\"%s\",\n", Plugin_GetCommonVersionString());

    sw->Printf("\t\"playercount\":%d,\n", c);
    sw->Printf("\t\"players\":[\n");


    for ( i = 0, first = qtrue; i < MAX_CLIENTS ; i++ ) {
        cl = Plugin_GetClientForClientNum(i);
        if ( !cl || cl->state < CS_CONNECTED ){
            continue;
        }
        clientScoreboard_t score = Plugin_GetClientScoreboard(i); //How does this work? Not returning a pointer?


        if(!first)
        {
            sw->Printf(",\n");
        }
        first = qfalse;

        sw->Printf("\t\t{\n");

        sw->Printf("\t\t\t\"name\":\"%s\",\n", JSONEscape(cl->name, tmp, sizeof(tmp)));
        sw->Printf("\t\t\t\"num\":%d,\n", i);
        sw->Printf("\t\t\t\"score\":%d,\n", score.score);
        sw->Printf("\t\t\t\"kills\":%d,\n", score.kills);
        sw->Printf("\t\t\t\"deaths\":%d,\n", score.deaths);
        sw->Printf("\t\t\t\"assists\":%d,\n", score.assists);

#ifdef _WIN32
        sw->Printf("\t\t\t\"pid\":\"%I64u\",\n", cl->playerid );
        sw->Printf("\t\t\t\"sid\":\"%I64u\"\n", cl->steamid );
#else
        sw->Printf("\t\t\t\"pid\":\"%llu\",\n", cl->playerid );
        sw->Printf("\t\t\t\"sid\":\"%llu\"\n", cl->steamid );
#endif
        sw->Printf("\t\t}");

    }
    if(!first)
    {
        sw->Printf("\n");
    }

    sw->Printf("\t]\n");

    FinishJSONObject(sw);

    const char* jsonstring = strdup(sw->GetBuffer());
    delete sw;

    if(jsonstring == NULL)
    {
        return;
    }

    if(Plugin_CreateNewThread(SendServerdataThread, NULL, (void*)jsonstring) == qfalse)
    {
        free((void*)jsonstring);
    }

}


// ################################################ END JSON SERVER STATUS POST ########################################################### //


static void ListCachedBans_f() //Debug function to test banlist cache
{
  int i;
  char pid[128];
  char aid[128];

  Plugin_EnterCriticalSection();
  Plugin_Printf("------------------------------------------------\n");
  for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
  {
      int timeleft;

      if(cachedBanlist[i].expire == -1)
      {
        timeleft = -1;
      }else{
        timeleft = cachedBanlist[i].expire - Plugin_GetRealtime();
        if(timeleft < 1)
        {
            continue;
        }
      }

      Plugin_SteamIDToString(cachedBanlist[i].playerid, pid, sizeof(pid));
      Plugin_SteamIDToString(cachedBanlist[i].adminsteamid, aid, sizeof(aid));
      Plugin_Printf("%d %s %s %d %s\n", i, pid, aid, timeleft, cachedBanlist[i].reason);
  }
  Plugin_LeaveCriticalSection();
}

static void ClearCachedBan(baninfo_t* baninfo)
{
  int i;

  Plugin_EnterCriticalSection();

  for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
  {
    if((baninfo->playerid && cachedBanlist[i].playerid == baninfo->playerid) || (baninfo->adr.type >= NA_IP && Plugin_NET_CompareBaseAdr(&baninfo->adr, &cachedBanlist[i].remote)))
    {

        memset(&cachedBanlist[i], 0, sizeof(cachedBanlist[i]));
    }
  }
  Plugin_LeaveCriticalSection();
}


static banList_t* CheckForCachedBans(baninfo_t* baninfo) //Will also check for just received bans after querying as the ban info does receive in an independed worker thread
{
  int i;
  char banmsg[512];
  char timelimitmsg[512];
  char pid[128];
  char aid[128];

  Plugin_EnterCriticalSection();

  for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
  {
    if((baninfo->playerid && cachedBanlist[i].playerid == baninfo->playerid) || (baninfo->adr.type >= NA_IP && Plugin_NET_CompareBaseAdr(&baninfo->adr, &cachedBanlist[i].remote)))
    {

      int timeleft;

      if(cachedBanlist[i].expire == -1)
      {
        timeleft = -1;
      }else{
        timeleft = cachedBanlist[i].expire - Plugin_GetRealtime();
        if(timeleft < 1)
        {
            continue;
        }
      }
      //populate the struct
      Q_strncpyz(baninfo->playername, cachedBanlist[i].playername, sizeof(baninfo->playername));
      baninfo->expire = cachedBanlist[i].expire;
      baninfo->created = cachedBanlist[i].created;
      baninfo->steamid = cachedBanlist[i].steamid;
      baninfo->expire = cachedBanlist[i].expire;
      baninfo->playerid = cachedBanlist[i].playerid;
      baninfo->adr = cachedBanlist[i].remote;

      Plugin_SteamIDToString(cachedBanlist[i].playerid, pid, sizeof(pid));
      Plugin_SteamIDToString(cachedBanlist[i].adminsteamid, aid, sizeof(aid));

      Plugin_WriteBanTimelimit(timeleft, timelimitmsg, sizeof(timelimitmsg));
      Com_sprintf(banmsg, sizeof(banmsg), "%s\nYour ID is: %s\nBanning admin ID is: %s\n", cachedBanlist[i].reason, pid, aid);

      Com_sprintf(baninfo->message, sizeof(baninfo->message), "%s%s", banmsg, timelimitmsg);
      cachedBanlist[i].lastqueried = Plugin_GetRealtime();

      break;
    }

  }
  Plugin_LeaveCriticalSection();

  if(i == MAX_CACHED_ENTRIES)
  {
    return NULL;
  }
  return &cachedBanlist[i];
}

//query: guid;
static void* QueryThreadForPlayer(void* q)
{
  char querystring[4096];
  char outdata[4096];

  httpPostVals_t values;
  char tmp[1024];
  char adr[128];

  int attempts;
  int code;
  int len = sizeof(outdata);
  baninfo_t *baninfo = (baninfo_t*)q;
  banList_t b;
  int i, oldest;
  unsigned int oldestTime;

  //Buid the query string
  querystring[0] = 0;


  class StringWriter* sw = CreateJSONObject(querystring, sizeof(querystring));


  sw->Printf("\t\"playerid\":\"%llu\",\n", baninfo->playerid);
  sw->Printf("\t\"steamid\":\"%llu\",\n", baninfo->steamid);
  sw->Printf("\t\"playername\":\"%s\",\n", JSONEscape(baninfo->playername, tmp, sizeof(tmp)));
  adr[0] = 0;
  if(baninfo->adr.type >= NA_IP)
  {
    //Plugin_NET_AdrToStringShort is not thread safe. Need own function.
    Plugin_NET_AdrToStringShortMT(&baninfo->adr ,adr, sizeof(adr));
  }
  sw->Printf("\t\"address\":\"%s\",\n", JSONEscape(adr, tmp, sizeof(tmp)));
  sw->Printf("\t\"command\":\"queryplayer\"\n");

  FinishJSONObject(sw);

  delete sw;


  //3 attempts to get data
  attempts = 0;
  do
  {
    code = HTTP_DoBlockingQuery(banlisthandlerurl->string, querystring, outdata, &len);
    ++attempts;
  }while(code == 0 && attempts < 3);

  if(code != 200)
  {
    Plugin_Printf("WebbanlistAPI: server returned code %d\n", code);
  }else{
//    Plugin_Printf("WebbanlistAPI: server returned %s\n", outdata);

    Plugin_HTTP_ParseFormDataBody(outdata, &values);
    const char* status = Plugin_HTTP_GetFormDataItem(&values, "status");
    if(!Q_stricmpn(status, "Ban Not Found", 13))
    {
        ClearCachedBan(baninfo);
        free(baninfo);
        return NULL;
    }
    if(!Q_stricmp(status, "mute"))
    {
        for(i = 0; i < MAX_CLIENTS; ++i)
        {
            client_t* cl = Plugin_GetClientForClientNum(i);
            if(!cl)
            {
                continue;
            }
            if(cl->state >= CS_CONNECTED && cl->playerid == baninfo->playerid)
            {
                cl->mutelevel = 1; //Only voice - !!!Race condition!!!
            }
        }
        ClearCachedBan(baninfo);
        free(baninfo);
        return NULL;
    }
    if(!Q_stricmp(status, "chat"))
    {
        for(i = 0; i < MAX_CLIENTS; ++i)
        {
            client_t* cl = Plugin_GetClientForClientNum(i);
            if(!cl)
            {
                continue;
            }
            if(cl->state >= CS_CONNECTED && cl->playerid == baninfo->playerid)
            {
                cl->mutelevel = 2; //Voice and chat - !!!Race condition!!!
            }
        }
        ClearCachedBan(baninfo);
        free(baninfo);
        return NULL;
    }
    if(Q_stricmp(status, "active"))//If full ban active don't return here
    {
      free(baninfo);
      return NULL;
    }
    uint64_t playerid = Plugin_StringToSteamID( Plugin_HTTP_GetFormDataItem(&values, "playerid"));
    uint64_t steamid = Plugin_StringToSteamID( Plugin_HTTP_GetFormDataItem(&values, "steamid"));
    uint64_t adminsteamid = Plugin_StringToSteamID( Plugin_HTTP_GetFormDataItem(&values, "adminsteamid"));
    const char* message = Plugin_HTTP_GetFormDataItem(&values, "message");
    time_t	expire = atoi(Plugin_HTTP_GetFormDataItem(&values, "expire"));
    time_t	created = atoi(Plugin_HTTP_GetFormDataItem(&values, "created"));
    const char* playername = Plugin_HTTP_GetFormDataItem(&values, "nick");
    //const char* addressstr = Plugin_HTTP_GetFormDataItem(&values, "address");

    memset(&b, 0, sizeof(b));

    b.expire = expire;
    b.created = created;
    b.steamid = steamid;
    b.adminsteamid = adminsteamid;
    b.playerid = playerid;
    Q_strncpyz(b.reason, message, sizeof(b.reason));
    Q_strncpyz(b.playername, playername, sizeof(b.playername));
    b.lastqueried = Plugin_GetServerTime();
    b.lastupdated = Plugin_GetServerTime();

    Plugin_EnterCriticalSection();

    for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
    {
      if((b.playerid && cachedBanlist[i].playerid == b.playerid) || (b.remote.type >= NA_IP && Plugin_NET_CompareBaseAdr(&b.remote, &cachedBanlist[i].remote)))
      {
          break;
      }
    }

    oldestTime = 0xffffffff;
    oldest = 0;
    if(i == MAX_CACHED_ENTRIES)
    {
      for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
      {
        if(cachedBanlist[i].lastqueried <= oldestTime)
        {
          oldestTime = cachedBanlist[i].lastqueried;
          oldest = i;
        }

      }
      i = oldest;

    }

    if(oldestTime == 0xffffffff)
    {
      b.lastqueryattempt = cachedBanlist[i].lastqueryattempt;
    }

    memcpy(&cachedBanlist[i], &b, sizeof(cachedBanlist[i]));

    cacheupdated = qtrue;

    Plugin_LeaveCriticalSection();
  }
  free(baninfo);
  return NULL;
}



//query: guid;
static void* BanUnbanPlayerThread(void* q)
{
  char querystring[4096];
  char outdata[4096];
  httpPostVals_t values;
  char tmp[1024];
  char adr[128];
  int attempts;
  int i;
  int code;
  int len = sizeof(outdata);
  baninfo_t *baninfo = (baninfo_t*)q;
  char sid[128];
  char pid[128];


  //Buid the query string
  querystring[0] = 0;


  class StringWriter* sw = CreateJSONObject(querystring, sizeof(querystring));


  sw->Printf("\t\"playerid\":\"%llu\",\n", baninfo->playerid);
  sw->Printf("\t\"steamid\":\"%llu\",\n", baninfo->steamid);
  sw->Printf("\t\"adminsteamid\":\"%llu\",\n", baninfo->adminsteamid);

  sw->Printf("\t\"playername\":\"%s\",\n", JSONEscape(baninfo->playername, tmp, sizeof(tmp)));
  sw->Printf("\t\"reason\":\"%s\",\n", JSONEscape(baninfo->message, tmp, sizeof(tmp)));

  adr[0] = 0;
  if(baninfo->adr.type >= NA_IP)
  {
    //Plugin_NET_AdrToStringShort is not thread safe. Need own function.
    Plugin_NET_AdrToStringShortMT(&baninfo->adr ,adr, sizeof(adr));
  }
  sw->Printf("\t\"address\":\"%s\",\n", JSONEscape(adr, tmp, sizeof(tmp)));
  sw->Printf("\t\"timeleft\":%d,\n", baninfo->duration);

  sw->Printf("\t\"command\":\"modifyban\"\n");

  FinishJSONObject(sw);

  delete sw;


  Plugin_Printf("%s\n",querystring );

  //3 attempts to put data
  attempts = 0;
  do
  {
    code = HTTP_DoBlockingQuery(banlisthandlerurl->string, querystring, outdata, &len);
    ++attempts;
  }while(code == 0 && attempts < 3);

  if(code != 200)
  {
    Plugin_Printf("WebbanlistAPI: server returned code %d\n", code);
  }else{
    Plugin_HTTP_ParseFormDataBody(outdata, &values);
    const char* status = Plugin_HTTP_GetFormDataItem(&values, "status");
    const char* message = Plugin_HTTP_GetFormDataItem(&values, "message");
    if(!Q_stricmpn(status, "success", 7))
    {
      //Action completed
      uint64_t playerid = Plugin_StringToSteamID(Plugin_HTTP_GetFormDataItem(&values, "playerid"));
      uint64_t steamid = Plugin_StringToSteamID( Plugin_HTTP_GetFormDataItem(&values, "steamid"));
      const char* playername = Plugin_HTTP_GetFormDataItem(&values, "nick");

      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }else{
        Plugin_Printf("Player ");
        if(playername[0])
        {
          Plugin_Printf("%s ", playername);
        }
        if(playerid)
        {
          Plugin_SteamIDToString(playerid, pid, sizeof(pid));
          Plugin_Printf("with id %s ", pid);
        }
        if(steamid > 0)
        {
          Plugin_SteamIDToString(steamid, sid, sizeof(sid));
          Plugin_Printf("with steamid %s ", sid);
        }
        if(!Q_stricmp(status +7, "_ban"))
        {
          Plugin_Printf("got banned.\n");
        }else{
          Plugin_Printf("got unbanned.\n");
          Plugin_EnterCriticalSection();
          for(i = 0; i < MAX_CACHED_ENTRIES; ++i)
          {
            if((playerid && cachedBanlist[i].playerid == playerid) || (steamid > 0 && steamid == cachedBanlist[i].steamid))
            {
                memset(&cachedBanlist[i], 0, sizeof(cachedBanlist[i]));
            }
          }
          Plugin_LeaveCriticalSection();
        }
      }

    }else if(!Q_stricmp(status, "permission")){
      //Insifficient permissions
      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }else{
        Plugin_Printf("You are not allowed to ban or unban this player\n");
      }
    }else if(!Q_stricmp(status, "notfound")){
      //Not found
      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }else{
        Plugin_Printf("The requested player was not found with the information provided\n");
      }
    }else{
      //unknown return code
      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }else{
        Plugin_Printf("Ban API received unknown status message %s\n", status);
      }
    }
  }

  free(baninfo);
  return NULL;
}



static void SendQueryForPlayer(baninfo_t *baninfo)
{
  baninfo_t *baninfoT = (baninfo_t *)malloc(sizeof(baninfo_t));
  if(baninfoT == NULL)
  {
    return;
  }

  memcpy(baninfoT, baninfo, sizeof(baninfo_t));

  if(Plugin_CreateNewThread(QueryThreadForPlayer, NULL, (void*)baninfoT) == qfalse)
  {
      //On error
      free(baninfoT);
  }

}


//query: steamid;
static void* GetPlayerPermissionsThread(void* q)
{
  char querystring[4096];
  char outdata[4096];
  httpPostVals_t values;
  int attempts;
  int code;
  int len = sizeof(outdata);
  uint64_t steamid = *(uint64_t*)q;

  free(q);

  //Buid the query string
  querystring[0] = 0;

  class StringWriter* sw = CreateJSONObject(querystring, sizeof(querystring));

  sw->Printf("\t\"steamid\":\"%llu\",\n", steamid);
  sw->Printf("\t\"adminsteamid\":\"%llu\",\n", steamid);
  sw->Printf("\t\"command\":\"querypermissions\"\n");

  FinishJSONObject(sw);

  delete sw;


  //3 attempts to put data
  attempts = 0;
  do
  {
    code = HTTP_DoBlockingQuery(banlisthandlerurl->string, querystring, outdata, &len);
    ++attempts;
  }while(code == 0 && attempts < 3);

  if(code != 200)
  {
    Plugin_Printf("WebbanlistAPI: server returned code %d\n", code);
  }else{
    Plugin_HTTP_ParseFormDataBody(outdata, &values);
    const char* status = Plugin_HTTP_GetFormDataItem(&values, "status");
    const char* message = Plugin_HTTP_GetFormDataItem(&values, "message");
    if(!Q_stricmpn(status, "success", 7))
    {
      //Action completed
      uint64_t steamid = Plugin_StringToSteamID( Plugin_HTTP_GetFormDataItem(&values, "steamid"));
      const char* commandlist = Plugin_HTTP_GetFormDataItem(&values, "cmdlist");

      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }

      if(steamid != 0)
      {
        int i;
        Plugin_EnterCriticalSection();
        for(i = 0; i < MAX_CLIENTS; ++i)
        {
          client_t* cl = Plugin_GetClientForClientNum(i);
          if(cl && cl->state >= CS_PRIMED && cl->steamid == steamid)
          {
            break;
          }
        }
        if(i != MAX_CLIENTS)
        {
          strncpy(cachedPermissionlist[i].cmdlist, commandlist, sizeof(cachedPermissionlist[i].cmdlist));
          cachedPermissionlist[i].steamid = steamid;
        }
        cacheupdated = qtrue;
        Plugin_LeaveCriticalSection();
      }

    }else if(!Q_stricmp(status, "permission")){
      //Insifficient permissions
      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }else{
        Plugin_Printf("You are not allowed to query player's permissions\n");
      }
    }else if(!Q_stricmp(status, "notfound")){
      //Default case: Not found
      Plugin_Printf("%s\n", message);
    }else{
      //unknown return code
      if(message[0])
      {
        Plugin_Printf("%s\n", message);
      }else{
        Plugin_Printf("Ban API received unknown status message %s\n", status);
      }
    }
  }
  return NULL;
}


static void SendPermissionQuery(uint64_t steamid)
{
  uint64_t *steamidT = (uint64_t*)malloc(sizeof(uint64_t));
  if(steamidT == NULL)
  {
    return;
  }

  *steamidT = steamid;

  if(Plugin_CreateNewThread(GetPlayerPermissionsThread, NULL, (void*)steamidT) == qfalse)
  {
      //On error
      free(steamidT);
  }

}


PCL void OnPlayerGetBanStatus(baninfo_t* baninfo, char* message, int len)
{
  banList_t* l;
  //Send a query
  SendQueryForPlayer(baninfo);

  l = CheckForCachedBans(baninfo);
  if(l == NULL)
  {
    return;
  }
  //deal with that player here
  Q_strncpyz(message, baninfo->message, len);

}

PCL void OnFrame()
{
  int i;
  baninfo_t baninfo;
  banList_t* l;


  SendServerData( );


  if(cacheupdated == qfalse)
  {
      return;
  }

  Plugin_EnterCriticalSection();

  for(i = 0; i < MAX_CLIENTS; ++i)
  {
    client_t* cl = Plugin_GetClientForClientNum(i);
    if(!cl || cl->state < CS_CONNECTED)
    {
      continue;
    }
    if(cl->state > CS_CONNECTED && cl->steamid)
    {
        if(cachedPermissionlist[i].steamid == cl->steamid)
        {
            char* state, *token;
            char buf[1024];
            strncpy(buf, cachedPermissionlist[i].cmdlist, sizeof(buf));
            state = buf;
            while((token = strtok_rc(state, ";", &state)))
            {
              Plugin_AddCommandForClientToWhitelist(i, token);
              Plugin_Printf("adding %s\n", token);
            }
        }
    }

    baninfo.playerid = cl->playerid;
    baninfo.steamid = cl->steamidPending;
    baninfo.adr = cl->netchan.remoteAddress;
    //strcpy(baninfo.playername, cl->name)
    l = CheckForCachedBans(&baninfo);
    if(l == NULL)
    {
      continue;
    }
    Plugin_DropClient(i, baninfo.message);
  }
  cacheupdated = qfalse;
  Plugin_LeaveCriticalSection();
}


static void SendBanUnbanPlayer(baninfo_t *baninfo)
{
  baninfo_t *baninfoT = (baninfo_t*)malloc(sizeof(baninfo_t));
  if(baninfoT == NULL)
  {
    return;
  }

  memcpy(baninfoT, baninfo, sizeof(baninfo_t));

  if(Plugin_CreateNewThread(BanUnbanPlayerThread, NULL, (void*)baninfoT) == qfalse)
  {
      //On error
      free(baninfoT);
  }

}

PCL void OnClientEnterWorld(client_t* client)
{
  if(client->steamidPending == 0)
  {
    return;
  }
  SendPermissionQuery(client->steamidPending);
}

PCL void OnPlayerRemoveBan(baninfo_t* pb)
{
  SendBanUnbanPlayer(pb);
}


PCL void OnPlayerAddBan(baninfo_t* pb)
{
  SendBanUnbanPlayer(pb);
}
