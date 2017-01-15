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

#include "../pinc.h"
#include "q_shared.h"


static cvar_t* identkey;
static cvar_t *screenshothandlerurl;
static int serverport;
static int globaloptions;


PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 1;
    info->pluginVersion.minor = 0;	// Plugin version
    strncpy(info->fullName,"Screenshot transfer plugin by Ninja", sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"Plugin to send screenshots to Screenshot viewer by NeHo.",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to send screenshots to the screenshot presenting site by NeHo.",sizeof(info->longDescription));
}


static int HTTP_DoBlockingQuery(const char *url, char* data, int *len)
{
    int stringlen = strlen(data);
    int outlen;
    int code;

    if(stringlen > *len)
    {
      stringlen = *len;
    }
    ftRequest_t* r = Plugin_HTTP_Request(url, "POST", (byte*)data, stringlen, "Content-Type: application/x-www-form-urlencoded\r\n");

    if(r == NULL)
    {
      return 0;
    }

    if(r->code != 200)
    {
      code = r->code;
      Plugin_HTTP_FreeObj(r);
      return code;
    }

    outlen = r->contentLength;
    if(outlen >= *len)
    {
      outlen = *len;
    }

    memcpy(data, r->extrecvmsg->data + r->headerLength, outlen);
    code = r->code;
    *len = outlen;
    Plugin_HTTP_FreeObj(r);
    return code;
}

PCL int OnInit(){	// Funciton called on server initiation

    char data[8192];
    char portstr[6];
    char sbuf[256];
    int len, code;
    httpPostVals_t values;

    identkey = Plugin_Cvar_RegisterString("nehoscreenshot_identkey", "", 0, "Key used to authenticate on screenshot backend script");
    serverport = Plugin_Cvar_VariableIntegerValue("net_port");
    screenshothandlerurl = Plugin_Cvar_RegisterString("nehoscreenshot_url", "", 0, "URL of the screenshot backend script");

    if(screenshothandlerurl->string[0] == 0 || identkey->string[0] == 0)
    {
      Plugin_PrintError("Init failure. Cvar nehoscreenshot_identkey or nehoscreenshot_url is not set\n");
      return -1;
    }
    data[0] = 0;

    Com_sprintf(portstr, sizeof(portstr), "%hu", serverport);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "command", "HELO");
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "identkey", identkey->string);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "serverport", portstr);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "gamename", "Call of Duty 4 - Modern Warfare X18");
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "gamedir", "cod4");

    Plugin_Cvar_VariableStringBuffer("rcon_password", sbuf, sizeof(sbuf));
    Plugin_HTTP_CreateString_x_www_form_urlencoded(data, sizeof(data), "rcon", sbuf);

    len = sizeof(data);
    code = HTTP_DoBlockingQuery(screenshothandlerurl->string, data, &len);
    if(code != 200)
    {
      if(code > 0)
      {
        Plugin_PrintError("Init failure. Server returned code %u and message %s\n", code, data);
      }else{
        Plugin_PrintError("Init failure. Couldn't connect to server\n");
      }
      return -1;
    }
    if(len < 1 || len >= sizeof(data)) return -1;
    data[len] = 0;

    Plugin_HTTP_ParseFormDataBody(data, &values);
    const char *status = Plugin_HTTP_GetFormDataItem(&values, "status");
    if(Q_stricmpn(status, "okay", 4))
    {
      Plugin_PrintError("Init failure. NeHo's screenshot backend script said:\n");
      Plugin_Printf("Status: %s\n", status);
      return -1;
    }
    const char *options = Plugin_HTTP_GetFormDataItem(&values, "options");
    globaloptions = atoi(options);
    Plugin_Printf("Screenshot sending plugin is ready to work\n");
    return 0;
}

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

	buf = malloc(len+1);
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

static char *base64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";

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
  char tmp[1024];
  int attempts;
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
  querystring = malloc(qsbuflen);
  if(querystring == NULL)
  {
    Plugin_PrintError("SendScreenshotThreadForFile(): malloc failed\n");
    free(data);
    free(sinfo);
    return NULL;
  }

  //Build the query string
  querystring[0] = 0;

  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, qsbuflen, "identkey", identkey->string);

  Com_sprintf(tmp, sizeof(tmp), "%u", serverport);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, qsbuflen, "serverport", tmp);

  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, qsbuflen, "command", "submitshot");

  int stringlen = strlen(querystring);

  strcpy(&querystring[stringlen], "&data=");

  stringlen = strlen(querystring);
  stringlen += Base64Encode(&querystring[stringlen], data, flen);
  free(data);
  len = qsbuflen;

  //3 attempts to get data
  attempts = 0;
  do
  {
    code = HTTP_DoBlockingQuery(screenshothandlerurl->string, querystring, &len);
    ++attempts;
  }while(code == 0 && attempts < 3);

  if(code != 200)
  {
    Plugin_Printf("Screenshot submit plugin: server returned code %d\n", code);
  }else{
    if(len > 0 && len < qsbuflen)
    {
      querystring[len] = 0;
    }
    //Plugin_Printf("Screenshot submit plugin: server returned %s\n", querystring);

    Plugin_HTTP_ParseFormDataBody(querystring, &values);
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
  submitthreadinfo_t *sinfoT = malloc(sizeof(submitthreadinfo_t));
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


//query: guid;
static void* BanUnbanPlayerThread(void* q)
{
  char querystring[8192];
  httpPostVals_t values;
  char tmp[1024];
  int attempts;
  int code;
  int len = sizeof(querystring);
  baninfo_t *baninfo = (baninfo_t*)q;
  char sid[128];
  char pid[128];


  //Buid the query string
  querystring[0] = 0;
  if(baninfo->playerid)
  {
    Com_sprintf(tmp, sizeof(tmp), "%llu", baninfo->playerid);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "playerid", tmp);
  }
  if(baninfo->steamid > 0)
  {
    Com_sprintf(tmp, sizeof(tmp), "%llu", baninfo->steamid);
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "steamid", tmp);
  }

  Com_sprintf(tmp, sizeof(tmp), "%llu", baninfo->adminsteamid);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "adminsteamid", tmp);

  if(baninfo->playername[0])
  {
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "playername", baninfo->playername);
  }
  if(baninfo->message[0])
  {
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "reason", baninfo->message);
  }
  if(baninfo->adr.type >= NA_IP)
  {
    //Plugin_NET_AdrToStringShort is not thread safe. Need own function.
    Plugin_NET_AdrToStringShortMT(&baninfo->adr ,tmp, sizeof(tmp));
    Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "address", tmp);
  }

  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "identkey", identkey->string);

  Com_sprintf(tmp, sizeof(tmp), "%u", serverport);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "serverport", tmp);

  Com_sprintf(tmp, sizeof(tmp), "%d", baninfo->duration);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "timeleft", tmp);
  Plugin_HTTP_CreateString_x_www_form_urlencoded(querystring, sizeof(querystring), "command", "modifyban");

  //3 attempts to put data
  attempts = 0;
  do
  {
    code = HTTP_DoBlockingQuery(screenshothandlerurl->string, querystring, &len);
    ++attempts;
  }while(code == 0 && attempts < 3);

  if(code != 200)
  {
    Plugin_Printf("WebbanlistAPI: server returned code %d\n", code);
  }else{
    Plugin_HTTP_ParseFormDataBody(querystring, &values);
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


static void SendBanUnbanPlayer(baninfo_t *baninfo)
{
  baninfo_t *baninfoT = malloc(sizeof(baninfo_t));
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

PCL void OnPlayerAddBan(baninfo_t* pb)
{
  if(globaloptions & 1)
  {
    SendBanUnbanPlayer(pb);
  }
}