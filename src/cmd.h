/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
    Copyright (C) 1999-2005 Id Software, Inc.

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



#ifndef __CMD_H__
#define __CMD_H__

#include "q_shared.h"

// paramters for command buffer stuffing
typedef enum {
	EXEC_NOW,			// don't return until completed, a VM should NEVER use this,
						// because some commands might cause the VM to be unloaded...
	EXEC_INSERT,		// insert at current position, but don't run yet
	EXEC_APPEND			// add to end of the command buffer (normal case)
} cbufExec_t;


#ifdef __cplusplus
extern "C"{
#endif

typedef void (*xcommand_t)(void);
typedef void (*completionFunc_t)( char *args, int argNum );
void Cmd_Init(void);
void Cmd_TokenizeString(const char* string);
void Cmd_EndTokenizedString();
void Cmd_ExecuteSingleCommand(int unk, int unk2, const char *cmd );
void Cmd_ExecuteString(const char *cmd );
void Cbuf_Init(void);
void Cbuf_Execute();
void Cbuf_ExecuteText(int exec_when, const char* text);
void Cbuf_AddText(const char* text);
void Cbuf_InsertText( const char *text );

qboolean Cmd_AddCommand( const char *cmd_name, xcommand_t function );
qboolean Cmd_AddPCommand( const char *cmd_name, xcommand_t function, int power );
qboolean Cmd_AddHCommand( const char *cmd_name, const char *helptext, xcommand_t function, int power );
qboolean Cmd_AddCommandGeneric( const char *cmd_name, const char *helptext, xcommand_t function, qboolean warn, int power );
qboolean Cmd_RemoveCommand( const char *cmd_name );
qboolean Cmd_SetPower(const char *cmd_name, int power);
int Cmd_GetPower(const char *cmd_name);
void	Cmd_ResetPower();



/*
#define SV_Cmd_TokenizeString Cmd_TokenizeString
#define SV_Cmd_EndTokenizedString Cmd_EndTokenizedString
#define SV_Cmd_Argc Cmd_Argc
#define SV_Cmd_Argv Cmd_Argv
#define SV_Cmd_ArgvBuffer Cmd_ArgvBuffer
*/
void SV_Cmd_TokenizeString(const char* string);
void SV_Cmd_EndTokenizedString();


int	Cmd_Argc( void );
char	*Cmd_Argv( int arg );
char	*Cmd_Args( char* buff, int bufsize );
char	*Cmd_Argsv( int arg, char* buff, int bufsize );
char	*SV_Cmd_Argsv( int arg, char* buff, int bufsize );
void	Cmd_ArgvBuffer( int arg, char *buffer, int bufferLength );
void	Cmd_CommandCompletion( void(*callback)(const char *s), const char* curstring );
void	Cmd_CompleteArgument( const char *command, char *args, int argNum );
void	Cmd_SetCommandCompletionFunc( const char *command, completionFunc_t complete );
void	Cmd_AddCommands(void);
void	Cmd_WritePowerConfig(char* buffer, int size);
qboolean Cmd_InfoSetPower( const char *infostring );

void	Cmd_Vstr_f(void);
void	Cmd_Wait_f(void);
void	Cmd_Exec_f(void);


int Cmd_GetInvokerClnum();
int Cmd_GetInvokerPower();
uint64_t Cmd_GetInvokerSteamID();
const char* Cmd_GetInvokerName(char *buf, int len);
void Cmd_SetCurrentInvokerInfo(int power, int client, uint64_t steamid, const char* name);
void Cmd_ResetInvokerInfo();


#ifdef __cplusplus
};
#endif

#endif
