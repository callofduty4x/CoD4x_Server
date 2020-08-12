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


#ifndef __CVAR_H__
#define __CVAR_H__

#include "q_shared.h"
#include "q_shared.h"

// nothing outside the Cvar_*() functions should modify these fields!

typedef enum{
    CVAR_BOOL,
    CVAR_FLOAT,
    CVAR_VEC2,
    CVAR_VEC3,
    CVAR_VEC4,
    CVAR_INT,
    CVAR_ENUM,
    CVAR_STRING,
    CVAR_COLOR
}cvarType_t;


typedef struct{
		int integer;
		const char** strings;
}EnumValueStr_t;

typedef union{
		float floatval;
		int integer;
		const char* string;
		byte boolean;
		vec4_t vec4;
		vec3_t vec3;
		vec2_t vec2;
		ucolor_t color;
		EnumValueStr_t enumval; /* For Cvar_Register and Cvar_ValidateNewVar only */
}CvarValue;


typedef struct{
	union{
		int imin;
		float fmin;
	};
	union{
		int imax;
		float fmax;
		const char** enumStr; //Not everywhere valid!
	};
}CvarLimits;


typedef struct cvar_s {
	char *name;
	char *description;
	short int flags;
	byte type;
	byte modified;
	union{
		float floatval;
		float value;
		int integer;
		char* string;
		byte boolean;
		vec2_t vec2;
		vec3_t vec3;
		vec4_t vec4;
		ucolor_t color;
		CvarValue current;
	};
	union{
		float latchedFloatval;
		int latchedInteger;
		char* latchedString;
		byte latchedBoolean;
		vec2_t latchedVec2;
		vec3_t latchedVec3;
		vec4_t latchedVec4;
		ucolor_t latchedColor;
		CvarValue latched;
	};
	union{
		float resetFloatval;
		int resetInteger;
		char* resetString;
		byte resetBoolean;
		vec2_t resetVec2;
		vec3_t resetVec3;
		vec4_t resetVec4;
		ucolor_t resetColor;
		CvarValue reset;
	};
	CvarLimits limits;
	
	struct cvar_s *next;
	struct cvar_s *hashNext;
} cvar_t;


extern int cvar_modifiedFlags;

#ifdef __cplusplus
extern "C"
{
#endif
//Defines Cvarrelated functions inside executable file
cvar_t* Cvar_RegisterString(const char *var_name, const char *var_value, unsigned short flags, const char *var_description);
cvar_t* Cvar_RegisterBool(const char *var_name, qboolean var_value, unsigned short flags, const char *var_description);
cvar_t* Cvar_RegisterInt(const char *var_name, int var_value, int min_value, int max_value, unsigned short flags, const char *var_description);
cvar_t* Cvar_RegisterEnum(const char *var_name, const char** valnames, int defaultval, unsigned short flags, const char *var_description);
cvar_t* Cvar_RegisterFloat(const char *var_name, float var_value, float min_value, float max_value, unsigned short flags, const char *var_description);
cvar_t* Cvar_RegisterVec2(const char* name, float x, float y, float min, float max, unsigned short flags, const char* description);
cvar_t* Cvar_RegisterVec3(const char* name, float x, float y, float z, float min, float max, unsigned short flags, const char* description);
cvar_t* Cvar_RegisterVec4(const char* name, float x, float y, float z, float imag, float min, float max, unsigned short flags, const char* description);
cvar_t* Cvar_RegisterColor(const char* name, float r, float g, float b, float alpha, unsigned short flags, const char* description);

void Cvar_SetInt(cvar_t* var, int val);
void Cvar_SetBool(cvar_t* var, qboolean val);
void Cvar_SetString(cvar_t* var, char const* string);
void Cvar_SetFloat(cvar_t* var, float val);
void Cvar_SetVec2( cvar_t* cvar, float x, float y);
void Cvar_SetVec3( cvar_t* cvar, float x, float y, float z);
void Cvar_SetVec4( cvar_t* cvar, float x, float y, float z, float imag);
void Cvar_SetColor( cvar_t* cvar, float red, float green, float blue, float alpha);
void Cvar_Set_f(void);
void Cvar_SetS_f(void);
void Cvar_Toggle_f(void);
void Cvar_TogglePrint_f(void);
void Cvar_SetA_f(void);
void Cvar_SetFromCvar_f(void);
void Cvar_SetFromLocalizedStr_f(void);
void Cvar_SetToTime_f(void);
void Cvar_Reset_f(void);
void Cvar_ResetVar(cvar_t* var);
void Cvar_List_f(void);
void Cvar_Dump_f(void);
void Cvar_RegisterBool_f(void);
void Cvar_RegisterInt_f(void);
void Cvar_RegisterFloat_f(void);
void Cvar_SetU_f(void);
qboolean Cvar_Command( void );
int  g_cvar_valueforkey(char* key);
char* Cvar_InfoString(int bit);
char* Cvar_InfoString_IW_Wrapper(int dummy, int bit);
char* Cvar_InfoString_Big(int bit, char*, int);
void Cvar_ForEach(void (*callback)(cvar_t const*, void* passedhere), void* passback);
char* Cvar_DisplayableValue(cvar_t const*);
char* Cvar_DisplayableValueMT( cvar_t const *var, char* value, int maxlen);
char* Cvar_GetVariantString(const char* name);
cvar_t* Cvar_FindMalleableVar(const char* name);
void Cvar_Init(void);
void Cvar_CommandCompletion( void(*callback)(const char *s) );
float Cvar_VariableValue( const char *var_name );
int Cvar_VariableIntegerValue( const char *var_name );
qboolean Cvar_VariableBooleanValue( const char *var_name );
void Cvar_Set( const char *var_name, const char *value);
void Cvar_Set2( const char *var_name, const char *value, qboolean force);
void Cvar_SetAllowCheatOnly( const char *var_name, const char *value);
void Cvar_Reset( const char *var_name );
void Cvar_SetCheatState( void );

void Cvar_SetFloatByName( const char* var_name, float value);
void Cvar_SetIntByName( const char* var_name, int value);
void Cvar_SetBoolByName( const char* var_name, qboolean value);
void Cvar_SetStringByName( const char* var_name, const char* val);
cvar_t *Cvar_FindVar( const char *var_name );
qboolean Cvar_ValidateString( const char *s );
void Cvar_AddFlags(cvar_t* var, unsigned short flags);
void Cvar_AddFlagsByName(const char* var_name, unsigned short flags);
const char* Cvar_VariableStringBuffer( const char *var_name, char *buffer, int bufsize );
cvar_t* Cvar_GetNext(cvar_t* cvar, short flags);
void Cvar_WriteVariables(fileHandle_t fh);
void Cvar_SetLatched(const char* name, const char* value);
void Cvar_ClearFlagsForEach(unsigned short flags);
void Cvar_ClearModified(cvar_t* cvar);
qboolean Cvar_IsDefined(const char* varname);
#ifdef __cplusplus
}
#endif

#define Cvar_GetInt Cvar_VariableIntegerValue
#define Cvar_GetFloat Cvar_VariableValue
#define Cvar_GetBool Cvar_VariableBooleanValue
#define Dvar_InfoString(X,Y) Cvar_InfoString(Y)

/*
void __cdecl Cvar_SetInt(cvar_t const* var, int val);
void __cdecl Cvar_SetBool(cvar_t const* var, qboolean val);
void __cdecl Cvar_SetString(cvar_t const* var, char const* string);
void __cdecl Cvar_SetFloat(cvar_t const* var, float val);
void __cdecl Cvar_Set_f(void);
void __cdecl Cvar_SetS_f(void);
void __cdecl Cvar_Toggle_f(void);
void __cdecl Cvar_TogglePrint_f(void);
void __cdecl Cvar_SetA_f(void);
void __cdecl Cvar_SetFromCvar_f(void);
void __cdecl Cvar_SetFromLocalizedStr_f(void);
void __cdecl Cvar_SetToTime_f(void);
void __cdecl Cvar_Reset_f(void);
void __cdecl Cvar_List_f(void);
void __cdecl Cvar_Dump_f(void);
void __cdecl Cvar_RegisterBool_f(void);
void __cdecl Cvar_RegisterInt_f(void);
void __cdecl Cvar_RegisterFloat_f(void);
void __cdecl Cvar_SetU_f(void);
int __cdecl g_cvar_valueforkey(char* key);
char* __cdecl Cvar_InfoString(int unk, int bit);
void __cdecl Cvar_ForEach(void (*callback)(cvar_t const*, void* passedhere), void* passback);
char* __cdecl Cvar_DisplayableValue(cvar_t const*);
char* __cdecl Cvar_GetVariantString(const char* name);
cvar_t* __regparm1 Cvar_FindMalleableVar(const char* name);
void Cvar_Init(void);
*/


//defines Cvarflags
#define CVAR_TEMP		0
#define	CVAR_ARCHIVE		1	// set to cause it to be saved to vars.rc
								// used for system variables, not for player
								// specific configurations
#define	CVAR_USERINFO		2	// sent to server on connect or change
#define	CVAR_SERVERINFO		4	// sent in response to front end requests
#define	CVAR_SYSTEMINFO		8	// these cvars will be duplicated on all clients
#define	CVAR_INIT		16	// don't allow change from console at all,
								// but can be set from the command line
#define	CVAR_LATCH		32	// will only change when C code next does
								// a Cvar_Get(), so it can't be changed
								// without proper initialization.  modified
								// will be set, even though the value hasn't
								// changed yet
#define	CVAR_ROM		64	// display only, cannot be set by user at all
#define CVAR_CHEAT		128	// can not be changed if cheats are disabled
#define	CVAR_CONFIG		256	// setting this will create a configstring which sets the client cvar too
#define CVAR_NORESTART		1024	// do not clear when a cvar_restart is issued
#define	CVAR_USER_CREATED	16384	// created by a set command

// TODO: replace 8192 integer to this symbol in cvar.c
#define CVAR_STRING_SIZE 8192
#endif
