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




#include "misc.h"
#include "q_shared.h"
#include "qcommon.h"
#include "qcommon_io.h"
#include "g_sv_shared.h"
#include "punkbuster.h"
#include "hl2rcon.h"
#include "cvar.h"

#include <string.h>
#include <stdarg.h>
#include <ctype.h>

void AddRedirectLocations()
{
/*
    To Add:
#ifdef PUNKBUSTER
    PbCaptureConsoleOutput(msg, MAXPRINTMSG);
#endif
*/

/*
    HL2Rcon_SourceRconSendConsole( msg, msglen);
    Com_PrintUDP( msg, msglen );
*/


}

qboolean __cdecl Com_LoadDvarsFromBuffer(const char **inputbuf, unsigned int length, const char *data_p, const char *filename)
{
    struct parseInfo_t *cvar_name, *line;
    int i, count;
    char buf[16384];

    Com_Memset(buf, 0, sizeof(buf));

    for(i = 0; i < length; i++)
    {
         Cvar_Reset(inputbuf[i]);
    }
	Com_BeginParseSession(filename);
	count = 0;

	while ( (cvar_name = Com_Parse(&data_p)) && cvar_name->token[0])
	{
		for(i = 0; i < length; i++)
		{
			if(!Q_stricmp(cvar_name->token, inputbuf[i]))
				break;
		}
		if(i == length)
		{
			if(com_developer && com_developer->integer)
			{
				Com_PrintWarning(CON_CHANNEL_CVAR,"WARNING: unknown cvar '%s' in file '%s'\n", cvar_name->token, filename);
			}
			Com_SkipRestOfLine(&data_p);
		}else{
			line = Com_ParseOnLine(&data_p);
			if(com_developer && com_developer->integer)
			{
				Cvar_Set(inputbuf[i], line->token);
			}else{
				if((!Q_strncmp(inputbuf[i],"bg_shock_viewKickPeriod", 23) || !Q_strncmp(inputbuf[i],"bg_shock_viewKickFadeTime", 25)) && (line->token[0] == '0' && line->token[1] == '\0'))
				{
					/* Quite this spam */
				}else{
					Cvar_Set(inputbuf[i], line->token);
				}
			}
			if ( !buf[i] )
			{
				buf[i] = 1;
				++count;
			}
		}
	}
	Com_EndParseSession();

	if ( length == count )
	{
		/* No Errors */
		return 1;
	}

	Com_PrintError(CON_CHANNEL_CVAR,"ERROR: the following cvars were not specified in file '%s'\n", filename);
	for(i = 0; i < length; i++)
	{
		while ( buf[i] && i < length )
		{
			++i;
		}
		if(i < length)
			Com_PrintError(CON_CHANNEL_CVAR,"  %s\n", inputbuf[i]);
	}
	return 0;
}

void dError (int num, const char *msg, ...)
{
  va_list ap;
  char buf[2048];

  va_start (ap, msg);
  Q_vsnprintf(buf, sizeof(buf), msg, ap);
  va_end(ap);

  if(num)
  {
    Com_Error(ERR_FATAL, "\nODE Error %d: %s\n", num, buf);
  }else{
    Com_Error(ERR_FATAL, "\nODE Error: %s\n", buf);
  }
}

void dMessage (int num, const char *msg, ...)
{
  va_list ap;
  char buf[2048];

  va_start (ap, msg);
  Q_vsnprintf(buf, sizeof(buf), msg, ap);
  va_end(ap);

  if(num)
  {
    Com_PrintError(CON_CHANNEL_PHYS,"\nODE Message %d: %s\n", num, buf);
  }else{
    Com_PrintError(CON_CHANNEL_PHYS,"\nODE Message: %s\n", buf);
  }
}


void Com_StdErrorStub(int e, const char* fmt, ...)
{

    va_list ap;
    char buf[2048];

    va_start (ap, fmt);
    Q_vsnprintf(buf, sizeof(buf), fmt, ap);
    va_end(ap);

    Com_Error(ERR_FATAL, "%s", buf);

}
