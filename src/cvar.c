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
// cvar.c -- dynamic variable tracking

#include "q_shared.h"
#include "qcommon.h"
#include "qcommon_io.h"
#include "qcommon_mem.h"
#include "cvar.h"
#include "cmd.h"
#include "cmd_completion.h"
#include "filesystem.h"
#include "sys_main.h"
#include "sys_thread.h"
// nothing outside the Cvar_*() functions should modify these fields!

#include <string.h>
#include <ctype.h>
#include <assert.h>
#include <math.h>
#include <limits.h>
#include <float.h>


cvar_t		*cvar_vars;
cvar_t		*cvar_cheats;
int		cvar_modifiedFlags;
qboolean	cvar_archivedset = qfalse;
qboolean	cheating_enabled;

static char nullstring[1] = {0};

#define	MAX_CVARS	8192
cvar_t		cvar_indexes[MAX_CVARS];
int			cvar_numIndexes;

#define FILE_HASH_SIZE		512
static	cvar_t*		hashTable[FILE_HASH_SIZE];


static int Cvar_SetVariant( cvar_t *var, CvarValue value ,qboolean force );
void Cvar_ValueToStr(cvar_t const *cvar, char* bufvalue, int sizevalue, char* bufreset, int sizereset, char* buflatch, int sizelatch);

/*
================
return a hash value for the filename
================
*/
static long generateHashValue( const char *fname ) {
	int		i;
	long	hash;
	char	letter;

	hash = 0;
	i = 0;
	while (fname[i] != '\0') {
		letter = tolower(fname[i]);
		hash+=(long)(letter)*(i+119);
		i++;
	}
	hash &= (FILE_HASH_SIZE-1);
	return hash;
}


void Cvar_AddFlags(cvar_t* var, unsigned short flags)
{
	Sys_EnterCriticalSection(CRITSECT_CVAR);
	var->flags |= flags;
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
}

void Cvar_ClearFlags(cvar_t* var, unsigned short flags)
{
	Sys_EnterCriticalSection(CRITSECT_CVAR);
	var->flags &= ~flags;
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
}

/*
============
Cvar_ValidateString
============
*/
qboolean Cvar_ValidateString( const char *s ) {
	if ( !s ) {
		return qfalse;
	}
	if ( strchr( s, '\\' ) ) {
		return qfalse;
	}
	if ( strchr( s, '\"' ) ) {
		return qfalse;
	}
	if ( strchr( s, ';' ) ) {
		return qfalse;
	}
	return qtrue;
}

/*
============
Cvar_FindVar
============
*/
cvar_t *Cvar_FindVar( const char *var_name ) {
	cvar_t	*var;
	long hash;

	hash = generateHashValue(var_name);

	for (var=hashTable[hash] ; var ; var=var->hashNext) {
		if (!Q_stricmp(var_name, var->name)) {
			return var;
		}
	}

	return NULL;
}

/*
============
Cvar_VariableValue
============
*/
float Cvar_VariableValueInternal( const char *var_name ) {
	cvar_t	*var;

	var = Cvar_FindVar (var_name);
	if (!var)
		return 0.0;
	if(var->type == CVAR_FLOAT)
		return var->value;
	if(var->type == CVAR_INT)
		return (float)var->integer;
	if(var->type == CVAR_STRING && var->string)
		return atof(var->string);
	return 0.0;
}
float Cvar_VariableValue( const char *var_name )
{
	Sys_EnterCriticalSection(CRITSECT_CVAR);
	float v = Cvar_VariableValueInternal(var_name);
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
	return v;
}
/*
============
Cvar_VariableIntegerValue
============
*/
int Cvar_VariableIntegerValueInternal( const char *var_name ) {
	cvar_t	*var;

	var = Cvar_FindVar (var_name);
	if (!var)
		return 0;
	if(var->type == CVAR_BOOL)
		return var->boolean;
	if(var->type == CVAR_FLOAT)
		return (int)var->value;
	if(var->type == CVAR_INT)
		return var->integer;
	if(var->type == CVAR_STRING && var->string)
		return atoi(var->string);
	return 0;
}

int Cvar_VariableIntegerValue( const char *var_name )
{
	Sys_EnterCriticalSection(CRITSECT_CVAR);
	int i = Cvar_VariableIntegerValueInternal(var_name);
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
	return i;
}


/*
============
Cvar_VariableBooleanValue
============
*/
qboolean Cvar_VariableBooleanValueInternal( const char *var_name ) {
	cvar_t	*var;
	int aival;

	var = Cvar_FindVar (var_name);
	if (!var)
		return 0;
	if(var->type == CVAR_BOOL)
		return var->boolean;
	if(var->type == CVAR_FLOAT)
	{
		if(var->value != 0.0)
			return qfalse;
		else
			return qtrue;
	}
	if(var->type == CVAR_INT)
	{
		if(var->integer == 0)
			return qfalse;
		else
			return qtrue;
	}
	if(var->type == CVAR_STRING && var->string)
	{
		aival = atoi(var->string);
		if(aival)
			return qtrue;
		else
			return qfalse;
	}
	return 0;
}
qboolean Cvar_VariableBooleanValue( const char *var_name )
{
	Sys_EnterCriticalSection(CRITSECT_CVAR);
	qboolean b = Cvar_VariableBooleanValueInternal(var_name);
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
	return b;
}


/*
============
Cvar_VariableString
============
*/
char *Cvar_VariableString( const char *var_name ) {
	cvar_t *var;

	var = Cvar_FindVar (var_name);
	if (!var)
		return "";

	return Cvar_DisplayableValue(var);
}


/*
============
Cvar_VariableStringBuffer
============
*/
const char* Cvar_VariableStringBuffer( const char *var_name, char *buffer, int bufsize ) {
	cvar_t *var;
	Sys_EnterCriticalSection(CRITSECT_CVAR);

	var = Cvar_FindVar (var_name);
	if (!var) {
		*buffer = 0;
	}
	else {
		Cvar_DisplayableValueMT(var, buffer, bufsize );
	}
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
	return buffer;
}

/*

	switch(value)
	{
		case CVAR_BOOL:

		case CVAR_FLOAT:

		case CVAR_VEC2:
		case CVAR_VEC3:
		case CVAR_VEC4:
		case CVAR_INT:
		case CVAR_ENUM:
		case CVAR_STRING:
		case CVAR_COLOR:

		default:
			Com_Error( ERR_FATAL, "Cvar_Register: Invalid type" );
	}

*/


/*
============
Cvar_CommandCompletion
============
*/
void	Cvar_CommandCompletion( void(*callback)(const char *s) ) {
	cvar_t		*cvar;

	for ( cvar = cvar_vars ; cvar ; cvar = cvar->next ) {
		callback( cvar->name );
	}
}


static qboolean Cvar_ClampToLimits(cvarType_t type, CvarValue *value, CvarLimits *limits)
{
	qboolean retval = qtrue;
	static const char* enumFailDummy[2];
	int i;

	switch(type)
	{
		case CVAR_BOOL:
			if((*value).boolean > 1)
			{
				(*value).boolean = 0;
				return qfalse;
			}
			return retval;
		case CVAR_FLOAT:
			if(isnan((*limits).fmax) || isnan((*limits).fmin) || isnan((*value).floatval))
			{
				(*value).floatval = 0.0;
				(*limits).fmax = 0.0;
				(*limits).fmin = 0.0;
				return qfalse;
			}
			if((*limits).fmax < (*limits).fmin)
			{
				(*limits).fmax = (*limits).fmin;
				retval = qfalse;
			}
			if((*value).floatval < (*limits).fmin)
			{
				(*value).floatval = (*limits).fmin;
				return qfalse;
			}
			if((*value).floatval > (*limits).fmax)
			{
				(*value).floatval = (*limits).fmax;
				return qfalse;
			}
			return retval;
		case CVAR_VEC2:
			for(i = 0; i < 2; i++)
			{
				if(isnan((*value).vec2[i]))
				{
					(*value).vec2[i] = 0.0;
					retval = qfalse;
				}
				if((*value).vec2[i] < (*limits).fmin)
				{
					(*value).vec2[i] = (*limits).fmin;
					retval = qfalse;
				}
				if((*value).vec2[i] > (*limits).fmax)
				{
					(*value).vec2[i] = (*limits).fmax;
					retval = qfalse;
				}
			}
			return retval;
		case CVAR_VEC3:
			for(i = 0; i < 3; i++)
			{
				if(isnan((*value).vec3[i]))
				{
					(*value).vec3[i] = 0.0;
					retval = qfalse;
				}
				if((*value).vec3[i] < (*limits).fmin)
				{
					(*value).vec3[i] = (*limits).fmin;
					retval = qfalse;
				}
				if((*value).vec3[i] > (*limits).fmax)
				{
					(*value).vec3[i] = (*limits).fmax;
					retval = qfalse;
				}
			}
			return retval;
		case CVAR_VEC4:
			for(i = 0; i < 4; i++)
			{
				if(isnan((*value).vec4[i]))
				{
					(*value).vec4[i] = 0.0;
					retval = qfalse;
				}
				if((*value).vec4[i] < (*limits).fmin)
				{
					(*value).vec4[i] = (*limits).fmin;
					retval = qfalse;
				}
				if((*value).vec4[i] > (*limits).fmax)
				{
					(*value).vec4[i] = (*limits).fmax;
					retval = qfalse;
				}
			}
			return retval;
		case CVAR_COLOR:
			return retval;
		case CVAR_ENUM:
			enumFailDummy[0] = "";
			enumFailDummy[1] = NULL;
			if((*limits).enumStr == NULL)
			{
				(*limits).enumStr = enumFailDummy;
				(*value).integer = 0;
				return qfalse;
			}
			for(i = 0; (*limits).enumStr[i] != NULL && i < (*value).integer; i++ );
			if(i != (*value).integer)
			{
				(*value).integer = 0;
				return qfalse;
			}
			return qtrue;
		case CVAR_INT:
			if((*limits).imax < (*limits).imin)
			{
				(*limits).imax = (*limits).imin;
				retval = qfalse;
			}
			if((*value).integer < (*limits).imin)
			{
				(*value).integer = (*limits).imin;
				return qfalse;
			}
			if((*value).integer > (*limits).imax)
			{
				(*value).integer = (*limits).imax;
				return qfalse;
			}
			return retval;
		case CVAR_STRING:
			/* Always valid */
			if((*value).string == NULL)
			{
				(*value).string = nullstring;
				return qfalse;
			}
			return qtrue;
		default:
			Com_Error( ERR_FATAL, "Cvar_Register: Invalid type" );
			return qfalse;
	}

}



static qboolean Cvar_ValidateNewVar(const char* var_name, cvarType_t type, CvarValue *value, CvarLimits *limits)
{
	if ( !var_name ) {
		Com_Error( ERR_FATAL, "Cvar_Register: NULL parameter" );
		return qfalse;
	}

	if ( !Cvar_ValidateString( var_name ) ) {
		Com_Error( ERR_FATAL, "Cvar_Register: invalid cvar name string: %s\n", var_name );
		return qfalse;
	}
	return Cvar_ClampToLimits(type, value, limits);

}
/*

Unlinking is broken


void Cvar_Deallocate( cvar_t *var )
{
	cvar_t *othervar, **back;

	if(var->type == CVAR_STRING)
	{
		if(var->string != NULL)
		{
			FreeString( var->string );
			var->string = NULL;
		}
		if(var->resetString != NULL)
		{
			FreeString( var->resetString );
			var->resetString = NULL;
		}
		if(var->latchedString != NULL)
		{
			FreeString( var->latchedString );
			var->latchedString = NULL;
		}
	}
	if ( var->name ) {
		FreeString( var->name );
		var->name = NULL;
	}
	if ( var->description ) {
		FreeString( var->description );
		var->description = NULL;
	}

	back = &cvar_vars;
	while ( 1 ) {
		othervar = *back;
		if ( !othervar ) {
			// command wasn't active
			Com_Error(ERR_FATAL, "Cvar_Deallocate: Tried to unlink a cvar which does not exist");
			return;
		}
		if ( var == othervar ) {
			*back = var->next;
			return;
		}
		back = &othervar->next;
	}
}

*/

void Cvar_FreeStrings( cvar_t *var )
{
	Sys_EnterCriticalSection(CRITSECT_CVAR);

	if(var->type == CVAR_STRING)
	{
		if(var->string != NULL)
		{
			if(var->string != nullstring)
				FreeString( var->string );
			var->string = NULL;
		}
		if(var->resetString != NULL)
		{
			if( var->resetString != nullstring)
				FreeString( var->resetString );
			var->resetString = NULL;
		}
		if(var->latchedString != NULL )
		{
			if(var->latchedString != nullstring)
				FreeString( var->latchedString );
			var->latchedString = NULL;
		}
	}
	if ( var->name ) {
		FreeString( var->name );
		var->name = NULL;
	}
	if ( var->description ) {
		if(var->description != nullstring)
			FreeString( var->description );
		var->description = NULL;
	}
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
}

/*
============
Cvar_Register

If the variable already exists, the value will not be set unless CVAR_ROM
The flags will be or'ed in if the variable exists.
============
*/


static cvar_t *Cvar_Register(const char* var_name, cvarType_t type, unsigned short flags, CvarValue value, CvarLimits limits, const char *description)
{
	cvar_t *var;
	qboolean isvalid;
	long	hash;
	cvar_t* safenext;
	cvar_t* safehashNext;
	char latchedStr[8192];

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	isvalid = Cvar_ValidateNewVar(var_name, type, &value, &limits);

	if(isvalid == qfalse)
	{
		Com_Error( ERR_FATAL, "Cvar_Register: invalid cvar value or type for: %s\n", var_name );
		Sys_LeaveCriticalSection(CRITSECT_CVAR);
		return NULL;
	}

	var = Cvar_FindVar(var_name);

	if( var && ( ( (flags & CVAR_ROM) || (flags & CVAR_CHEAT && !cheating_enabled)) && var->flags & CVAR_USER_CREATED))
	{
		Cvar_FreeStrings( var );
	}else if ( var ) {
		/*
		This is Reregister
		if the C code is now specifying a variable that the user already
		set a value for, take the new value as the reset value
		*/
		if(var->type != type && !(var->flags & CVAR_USER_CREATED))
		{
			Com_Error( ERR_FATAL, "Cvar_Register: Tried to reregister an already registered Cvar \'%s\' as a different type\n", var_name );
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return NULL;
		}
		/* Get the old value from string var */
		/* We change the type of a user created Cvar. Free the strings and keep the current value for later eval */

		Cvar_ValueToStr(var, NULL, 0, NULL, 0, latchedStr, sizeof(latchedStr));

		if(var->type == CVAR_STRING)
		{
			if(var->resetString && var->resetString != nullstring)
				FreeString(var->resetString);
			if(var->latchedString && var->latchedString != nullstring)
				FreeString(var->latchedString);
			if(var->string && var->string != nullstring)
				FreeString(var->string);
			var->string = var->latchedString = var->resetString = NULL;
		}

		if ( ( var->flags & CVAR_USER_CREATED ) && !( flags & CVAR_USER_CREATED ) )
		{
			var->flags &= ~CVAR_USER_CREATED;
			cvar_modifiedFlags |= flags;
		}
		/* Apply the new reset values and limits */
		switch(type)
		{
			case CVAR_BOOL:
				var->resetBoolean = value.boolean;
				break;
			case CVAR_FLOAT:
				var->resetFloatval = value.floatval;
				var->limits = limits;
				break;
			case CVAR_VEC2:
			case CVAR_VEC3:
			case CVAR_VEC4:
				var->limits = limits;
				memcpy(var->resetVec4, value.vec4, sizeof(var->resetVec4));
				break;
			case CVAR_COLOR:
				var->resetColor = value.color;
				break;
			case CVAR_ENUM:
				var->resetInteger = value.integer;
				var->limits.imin = 0;
				var->limits.enumStr = limits.enumStr;
				break;
			case CVAR_INT:
				var->resetInteger = value.integer;
				var->limits = limits;
				break;
			case CVAR_STRING:
				var->resetString = CopyString( value.string );
		}

		if ( var->description && var->description != nullstring)
		{
			FreeString( var->description );
		}
		/* Apply the new description */
		if(description && description[0])
		{
			var->description = CopyString(description);
		}
		else
			var->description = nullstring;

		Cvar_AddFlags(var, flags);
		var->type = type;

		// Take the latched value now
		Cvar_Set2( var_name, latchedStr, qtrue );
		Cvar_ClampToLimits(var->type, &var->current, &var->limits);

		Sys_LeaveCriticalSection(CRITSECT_CVAR);
		return var;
	}
	if(!var)
	{
		//Doing some stuff for a new var
		if ( cvar_numIndexes >= MAX_CVARS ) {
			Com_Error( ERR_FATAL, "MAX_CVARS" );
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return NULL;
		}

		var = &cvar_indexes[cvar_numIndexes];
		cvar_numIndexes++;

		Com_Memset(var, 0, sizeof(cvar_t));
		var->name = CopyString (var_name);
		// link the variable in
		var->next = cvar_vars;
		cvar_vars = var;
		hash = generateHashValue(var_name);
		var->hashNext = hashTable[hash];
		hashTable[hash] = var;

	}else{
		safenext = var->next;
		safehashNext = var->hashNext;

		Com_Memset(var, 0, sizeof(cvar_t));
		var->name = CopyString (var_name);

		// variable is already linked in
		var->next = safenext;
		var->hashNext = safehashNext;
	}

	if(description && description[0])
		var->description = CopyString(description);
	else
		var->description = nullstring;

	var->flags = flags;
	var->type = type;
	var->modified = qtrue; /* Is this true ?*/

	switch(type)
	{
		case CVAR_BOOL:
			var->boolean = value.boolean;
			var->resetBoolean = value.boolean;
			var->latchedBoolean = value.boolean;
			break;
		case CVAR_FLOAT:
			var->floatval = value.floatval;
			var->resetFloatval = value.floatval;
			var->latchedFloatval = value.floatval;
			var->limits = limits;
			break;
		case CVAR_VEC2:
		case CVAR_VEC3:
		case CVAR_VEC4:
			var->limits = limits;
			memcpy(var->vec4, value.vec4, sizeof(var->vec4));
			memcpy(var->resetVec4, value.vec4, sizeof(var->resetVec4));
			memcpy(var->latchedVec4, value.vec4, sizeof(var->latchedVec4));
			break;
		case CVAR_COLOR:
			var->color = value.color;
			var->resetColor = value.color;
			var->latchedColor = value.color;
			break;
		case CVAR_ENUM:
			var->integer = value.integer;
			var->resetInteger = value.integer;
			var->latchedInteger = value.integer;
			var->limits.imin = 0;
			var->limits.enumStr = limits.enumStr;
			break;
		case CVAR_INT:
			var->integer = value.integer;
			var->resetInteger = value.integer;
			var->latchedInteger = value.integer;
			var->limits = limits;
			break;
		case CVAR_STRING:
			var->string = CopyString( value.string );
			var->resetString = CopyString( value.string );
			var->latchedString = CopyString( value.string );
	}
	cvar_modifiedFlags |= var->flags;
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
	return var;
}



/*
============
Cvar_SetVariant
============
*/
static int Cvar_SetVariant( cvar_t *var, CvarValue value ,qboolean force ) {

	int latched = 0;
	int i;

	if (!var)
		return 0;

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	if(force == qfalse)
	{
		if(var->flags & CVAR_ROM)
		{
			Com_Printf(CON_CHANNEL_CVAR,"%s is read only.\n", var->name);
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return 0;
		}

		if (var->flags & CVAR_INIT)
		{
			Com_Printf(CON_CHANNEL_CVAR,"%s is write protected.\n", var->name);
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return 0;
		}

		if ( (var->flags & CVAR_CHEAT) && !cvar_cheats->boolean )
		{
			Com_Printf(CON_CHANNEL_CVAR,"%s is cheat protected.\n", var->name);
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return 0;
		}

		if(var->flags & CVAR_LATCH)
		{
			Com_Printf(CON_CHANNEL_CVAR,"%s will be changed upon restarting.\n", var->name);
			latched = 1;
		}
	}

	switch(var->type){
		case CVAR_BOOL:
			if((var->boolean && value.boolean) || (!var->boolean && !value.boolean))
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return 0;
			}
			if(value.boolean){
				if(!latched) var->boolean = 1;
				var->latchedBoolean = 1;
			}else{
				if(!latched) var->boolean = 0;
				var->latchedBoolean = 0;
			}
			break;
		case CVAR_FLOAT:
			if(var->floatval == value.floatval)
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return 0;
			}
			if(isnan(value.floatval))
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return -1;
			}
			if(value.floatval < var->limits.fmin || value.floatval > var->limits.fmax)
			{
				Com_Printf(CON_CHANNEL_CVAR,"\'%g\' is not a valid value for cvar '%s'\n", value.floatval, var->name);
				Com_Printf(CON_CHANNEL_CVAR,"Domain is any float in range between \'%g\' and \'%g\'\n", var->limits.fmin, var->limits.fmax);
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return -1;
			}
			if(!latched) var->floatval = value.floatval;
			var->latchedFloatval = value.floatval;
			break;
		case CVAR_VEC2:
			for(i = 0; i < 2; i++)
			{
				if(isnan(value.vec2[i]))
				{
					Sys_LeaveCriticalSection(CRITSECT_CVAR);
					return -1;
				}
				if(value.vec2[i] < var->limits.fmin || value.vec2[i] > var->limits.fmax)
				{
					Com_Printf(CON_CHANNEL_CVAR,"\'%g\' is not a valid value for cvar '%s'\n", value.vec2[i], var->name);
					Com_Printf(CON_CHANNEL_CVAR,"Domain is any float in range between \'%g\' and \'%g\'\n", var->limits.fmin, var->limits.fmax);
					Sys_LeaveCriticalSection(CRITSECT_CVAR);
					return -1;
				}
			}
			for(i = 0; i < 2; i++)
			{
				if(!latched) var->vec2[i] = value.vec2[i];
				var->latchedVec2[i] = value.vec2[i];
			}
			break;
		case CVAR_VEC3:
			for(i = 0; i < 3; i++)
			{
				if(isnan(value.vec3[i]))
				{
					Sys_LeaveCriticalSection(CRITSECT_CVAR);
					return -1;
				}
				if(value.vec3[i] < var->limits.fmin || value.vec3[i] > var->limits.fmax)
				{
					Com_Printf(CON_CHANNEL_CVAR,"\'%g\' is not a valid value for cvar '%s'\n", value.vec3[i], var->name);
					Com_Printf(CON_CHANNEL_CVAR,"Domain is any float in range between \'%g\' and \'%g\'\n", var->limits.fmin, var->limits.fmax);
					Sys_LeaveCriticalSection(CRITSECT_CVAR);
					return -1;
				}
			}
			for(i = 0; i < 3; i++)
			{
				if(!latched) var->vec3[i] = value.vec3[i];
				var->latchedVec3[i] = value.vec3[i];
			}
			break;
		case CVAR_VEC4:
			for(i = 0; i < 4; i++)
			{
				if(isnan(value.vec4[i]))
				{
					Sys_LeaveCriticalSection(CRITSECT_CVAR);
					return -1;
				}
				if(value.vec4[i] < var->limits.fmin || value.vec4[i] > var->limits.fmax)
				{
					Com_Printf(CON_CHANNEL_CVAR,"\'%g\' is not a valid value for cvar '%s'\n", value.vec4[i], var->name);
					Com_Printf(CON_CHANNEL_CVAR,"Domain is any float in range between \'%g\' and \'%g\'\n", var->limits.fmin, var->limits.fmax);
					Sys_LeaveCriticalSection(CRITSECT_CVAR);
					return -1;
				}
			}
			for(i = 0; i < 4; i++)
			{
				if(!latched) var->vec4[i] = value.vec4[i];
				var->latchedVec4[i] = value.vec4[i];
			}
			break;
		case CVAR_COLOR:
			if(!latched) var->color = value.color;
			var->latchedColor = value.color;
			break;
		case CVAR_ENUM:
			if(var->integer == value.integer)
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return 0;
			}
			if(var->limits.enumStr == NULL)
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return -1;
			}
			for(i = 0; var->limits.enumStr[i] != NULL && i != value.integer; i++ );
			if(var->limits.enumStr[i] == NULL)
			{
				Com_Printf(CON_CHANNEL_CVAR,"\'%d\' is not a valid value for cvar '%s'\n", value.integer, var->name);
				Com_Printf(CON_CHANNEL_CVAR,"  Domain is one of the following:\n");
				for(i = 0; var->limits.enumStr[i] != NULL; i++ ){
					Com_Printf(CON_CHANNEL_CVAR,"   %d: %s\n",i, var->limits.enumStr[i]);
				}
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return -1;
			}
			if(!latched) var->integer = value.integer;
			var->latchedInteger = value.integer;
			break;
		case CVAR_INT:
			if(var->integer == value.integer)
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return 0;
			}
			if(value.integer < var->limits.imin || value.integer > var->limits.imax)
			{
				Com_Printf(CON_CHANNEL_CVAR,"\'%d\' is not a valid value for cvar '%s'\n", value.integer, var->name);
				Com_Printf(CON_CHANNEL_CVAR,"  Domain is any integer in range between \'%d\' and \'%d\'\n", var->limits.imin, var->limits.imax);
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return -1;
			}
			if(!latched) var->integer = value.integer;
			var->latchedInteger = value.integer;
			break;
		case CVAR_STRING:
			if(!value.string)
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return 0;
			}
			if(var->string && !Q_stricmp(var->string, value.string))
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return 0;
			}
			if(!latched)
			{
				if(var->string && var->string != nullstring)
					FreeString(var->string);

				var->string = CopyString( value.string );
			}

			if(var->latchedString && var->latchedString != nullstring)
				FreeString(var->latchedString);

			var->latchedString = CopyString( value.string );
	}
	// note what types of cvars have been modified (userinfo, archive, serverinfo, systeminfo)
	cvar_modifiedFlags |= var->flags;
	var->modified = qtrue;
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
	return 1;
}


/*
============
Cvar_Set2
============
*/
void Cvar_Set2( const char *var_name, const char *valueStr, qboolean force ) {
	cvar_t	*var;

	int integer;
	float floatval;
	CvarValue value;
	CvarLimits limits;
	vec4_t colorConv;

	if ( !Cvar_ValidateString( var_name ) ) {
		Com_Printf(CON_CHANNEL_CVAR,"invalid cvar name string: %s\n", var_name );
		return;
	}

	if(valueStr == NULL)
		return;

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	var = Cvar_FindVar(var_name);
	if(var)
	{
		if(!force){
			if(var->flags & CVAR_ROM)
			{
				Com_Printf(CON_CHANNEL_CVAR,"%s is read only.\n", var->name);
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			if (var->flags & CVAR_INIT)
			{
				Com_Printf(CON_CHANNEL_CVAR,"%s is write protected.\n", var->name);
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
		}
		/* Get the type */
		switch(var->type){
		case CVAR_BOOL:
			if(isInteger(valueStr, 0)){
				integer = atoi(valueStr);
				value.boolean = integer;
				Cvar_SetVariant( var, value, force );
			}else if(!Q_stricmp(valueStr, "true")){
				integer = 1;
				value.boolean = integer;
				Cvar_SetVariant( var, value, force );
			}else if(!Q_stricmp(valueStr, "false")){
				integer = 0;
				value.boolean = integer;
				Cvar_SetVariant( var, value, force );
			}
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return;
		case CVAR_FLOAT:
			if(isFloat(valueStr, 0))
			{
				floatval = atof(valueStr);
				value.floatval = floatval;
				Cvar_SetVariant( var, value, force );
			}
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return;
		case CVAR_VEC2:
			if(isVector(valueStr, 0, 2))
			{
				strToVect(valueStr ,value.vec2, 2);
				Cvar_SetVariant( var, value, force );
			}
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return;
		case CVAR_VEC3:
			if(isVector(valueStr, 0, 3))
			{
				strToVect(valueStr ,value.vec3, 3);
				Cvar_SetVariant( var, value, force );
			}
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return;
		case CVAR_COLOR:
			if(isVector(valueStr, 0, 4))
			{
				strToVect(valueStr ,colorConv, 4);
				value.color.rgba[3] = (byte)((float)0xff * colorConv[3]);
			}else if(isVector(valueStr, 0, 3)){
				strToVect(valueStr ,colorConv, 3);
				value.color.rgba[3] = 0x0;
			}else{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			value.color.rgba[0] = (byte)((float)0xff * colorConv[0]);
			value.color.rgba[1] = (byte)((float)0xff * colorConv[1]);
			value.color.rgba[2] = (byte)((float)0xff * colorConv[2]);
			Cvar_SetVariant( var, value, force );
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return;
		case CVAR_VEC4:
			if(isVector(valueStr, 0, 4))
			{
				strToVect(valueStr ,value.vec4, 4);
				Cvar_SetVariant( var, value, force );
			}
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return;
		case CVAR_ENUM:
		case CVAR_INT:
			if(isInteger(valueStr, 0))
			{
				integer = atoi(valueStr);
				value.integer = integer;
				Cvar_SetVariant( var, value, force );
			}
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return;
		case CVAR_STRING:
			value.string = valueStr;
			Cvar_SetVariant( var, value, force );
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return;
		}
	}
	/*
	Seems like we want to create a new cvar. Only string type is supported
	*/
	value.string = valueStr;
	limits.imin = 0;
	limits.imax = 0;
	// create it
	if ( !force ) {
		Cvar_Register( var_name, CVAR_STRING, CVAR_USER_CREATED, value, limits, "");
	} else {
		Cvar_Register( var_name, CVAR_STRING, 0, value, limits, "");
	}
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
}

/*
============
Cvar_SetWithType
============
*/
void Cvar_SetWithType( const char *var_name, CvarValue value, cvarType_t type, qboolean force ) {
	cvar_t	*var;

	CvarLimits limits;

	if ( !Cvar_ValidateString( var_name ) ) {
		Com_Printf(CON_CHANNEL_CVAR,"invalid cvar name string: %s\n", var_name );
		return;
	}

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	var = Cvar_FindVar(var_name);

	if(var)
	{
		if(type == var->type)
		{
			Cvar_SetVariant( var, value, force );
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return;
		}else if(force && !(var->flags & CVAR_USER_CREATED)){
			Com_Error(ERR_FATAL, "Cvar_SetWithType: Existing Cvar %s has a different type. Old type: %d New type: %d", var->name, var->type, type);
			Sys_LeaveCriticalSection(CRITSECT_CVAR);
			return;
		}
	}

	limits.imin = 0;
	limits.imax = 0;
	if(type == CVAR_INT)
	{
		limits.imin = INT_MIN;
		limits.imax = INT_MAX;
	}else if(type == CVAR_FLOAT){
		limits.fmin = -FLT_MAX;
		limits.fmax = +FLT_MAX;
	}
	// create it
	if ( !force ) {
		Cvar_Register( var_name, CVAR_STRING, CVAR_USER_CREATED, value, limits, "External Cvar");
	} else {
		Cvar_Register( var_name, CVAR_STRING, 0, value, limits, "External Cvar");
	}
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
}




/*
============
Cvar_Set
============
*/
void Cvar_Set( const char *var_name, const char *value) {
	Cvar_Set2 (var_name, value, qtrue);
}

/*
============
Cvar_SetAllowCheat
============
*/
void Cvar_SetAllowCheatOnly( const char *var_name, const char *value) {

	cvar_t* var;

	var = Cvar_FindVar(var_name);
	if(var && var->flags & CVAR_CHEAT)
	{
		Cvar_ClearFlags(var, CVAR_CHEAT);
		Cvar_Set2 (var_name, value, qfalse);
		Cvar_AddFlags(var, CVAR_CHEAT);
	}else{
		Cvar_Set2 (var_name, value, qfalse);
	}
}

void Cvar_SetStringByName( const char* var_name, const char* value) {
	CvarValue cval;
	cval.string = value;
	Cvar_SetWithType( var_name, cval, CVAR_STRING, qtrue );
}


/*
============
Cvar_SetLatched

============
*/
void Cvar_SetLatched( const char *var_name, const char *value) {
	Cvar_Set2 (var_name, value, qfalse);
}

/*
============
Cvar_SetFloat
============
*/
void Cvar_SetFloat( cvar_t* cvar, float value) {
	CvarValue cval;
	cval.floatval = value;
	Cvar_SetVariant( cvar, cval , qtrue);
}

void Cvar_SetFloatByName( const char* var_name, float value) {
	CvarValue cval;
	cval.floatval = value;
	Cvar_SetWithType( var_name, cval, CVAR_FLOAT, qtrue );
}

/*
============
Cvar_SetInt
============
*/
void Cvar_SetInt( cvar_t* cvar, int value){
	CvarValue cval;
	cval.integer = value;
	Cvar_SetVariant( cvar, cval , qtrue);
}

void Cvar_SetIntByName( const char* var_name, int value){
	CvarValue cval;
	cval.integer = value;
	Cvar_SetWithType( var_name, cval, CVAR_INT, qtrue );
}

/*
============
Cvar_SetEnum
============
*/
void Cvar_SetEnum( cvar_t* cvar, int value){
	CvarValue cval;
	cval.integer = value;
	Cvar_SetVariant( cvar, cval , qtrue);
}


/*
============
Cvar_SetBool
============
*/
void Cvar_SetBool( cvar_t* cvar, qboolean value){
	CvarValue cval;
	cval.boolean = value;
	Cvar_SetVariant( cvar, cval , qtrue);
}

void Cvar_SetBoolByName( const char* var_name, qboolean value){
	CvarValue cval;
	cval.boolean = value;
	Cvar_SetWithType( var_name, cval, CVAR_BOOL, qtrue );
}


/*
============
Cvar_SetString
============
*/
void Cvar_SetString( cvar_t* cvar, const char* value){
	CvarValue cval;
	cval.string = value;
	Cvar_SetVariant( cvar, cval , qtrue);
}

/*
============
Cvar_SetVec2
============
*/
void Cvar_SetVec2( cvar_t* cvar, float x, float y){
	CvarValue cval;
	cval.vec2[0] = x;
	cval.vec2[1] = y;
	Cvar_SetVariant( cvar, cval , qtrue);
}

/*
============
Cvar_SetVec3
============
*/
void Cvar_SetVec3( cvar_t* cvar, float x, float y, float z){
	CvarValue cval;
	cval.vec3[0] = x;
	cval.vec3[1] = y;
	cval.vec3[2] = z;
	Cvar_SetVariant( cvar, cval , qtrue);
}

/*
============
Cvar_SetVec4
============
*/
void Cvar_SetVec4( cvar_t* cvar, float x, float y, float z, float imag){
	CvarValue cval;
	cval.vec4[0] = x;
	cval.vec4[1] = y;
	cval.vec4[2] = z;
	cval.vec4[3] = imag;
	Cvar_SetVariant( cvar, cval , qtrue);
}

/*
============
Cvar_SetColor
============
*/
void Cvar_SetColor( cvar_t* cvar, float r, float g, float b, float alpha){
	CvarValue cval;

	cval.color.rgba[0] = (byte)((float)0xff * r);
	cval.color.rgba[1] = (byte)((float)0xff * g);
	cval.color.rgba[2] = (byte)((float)0xff * b);
	cval.color.rgba[3] = (byte)((float)0xff * alpha);

	Cvar_SetVariant( cvar, cval , qtrue);
}


/*
============
Cvar_ResetVar
============
*/
void Cvar_ResetVar( cvar_t* var ) {

	CvarValue cval;

	if(!var)
		return;

	switch(var->type)
	{
		case CVAR_BOOL:
			cval.boolean = var->resetBoolean;
			break;
		case CVAR_FLOAT:
			cval.floatval = var->resetFloatval;
			break;
		case CVAR_VEC2:
		case CVAR_VEC3:
		case CVAR_VEC4:
			cval.vec4[0] = var->resetVec4[0];
			cval.vec4[1] = var->resetVec4[1];
			cval.vec4[2] = var->resetVec4[2];
			cval.vec4[3] = var->resetVec4[3];
			break;
		case CVAR_COLOR:
			cval.color = var->resetColor;
			break;
		case CVAR_INT:
		case CVAR_ENUM:
			cval.integer = var->resetInteger;
			break;
		case CVAR_STRING:
			cval.string = var->resetString;
			break;
		default:
			Com_Error( ERR_FATAL, "Cvar_Register: Invalid type" );
	}
	Cvar_SetVariant( var, cval , qtrue);
}


/*
============
Cvar_Reset
============
*/
void Cvar_Reset( const char *var_name )
{

	cvar_t *var;

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	var = Cvar_FindVar(var_name);

	Cvar_ResetVar( var );
	Sys_LeaveCriticalSection(CRITSECT_CVAR);

}



/*
============
Cvar_SetCheatState

Any testing variables will be reset to the safe values
============
*/
void Cvar_SetCheatState( void ) {

    cvar_t	*var;
    CvarValue cval;
		Sys_EnterCriticalSection(CRITSECT_CVAR);

	// set all default vars to the safe value
    for ( var = cvar_vars ; var ; var = var->next ) {
				if ( var->flags & CVAR_CHEAT )
				{
						// the CVAR_LATCHED|CVAR_CHEAT vars might escape the reset here
						// because of a different var->latchedString
						switch(var->type)
						{
						case CVAR_BOOL:
							cval.boolean = var->resetBoolean;
							break;
						case CVAR_FLOAT:
							cval.floatval = var->resetFloatval;
							break;
						case CVAR_VEC2:
						case CVAR_VEC3:
						case CVAR_VEC4:
							cval.vec4[0] = var->resetVec4[0];
							cval.vec4[1] = var->resetVec4[1];
							cval.vec4[2] = var->resetVec4[2];
							cval.vec4[3] = var->resetVec4[3];
							break;
						case CVAR_COLOR:
							cval.color = var->resetColor;
							break;
						case CVAR_INT:
						case CVAR_ENUM:
							cval.integer = var->resetInteger;
							break;
						case CVAR_STRING:
							cval.string = var->resetString;
							break;
						default:
							continue;
						}
						if(var->flags & CVAR_LATCH)
							Cvar_SetVariant( var, cval , qfalse); /* Don't force latched Cvars as this can be dangerous */
						else
							Cvar_SetVariant( var, cval , qtrue);
			}
    }
		Sys_LeaveCriticalSection(CRITSECT_CVAR);

}


void Cvar_ValueToStr(cvar_t const *cvar, char* bufvalue, int sizevalue, char* bufreset, int sizereset, char* buflatch, int sizelatch)
{
	int i;

	if(!cvar)
	{
		if(buflatch) buflatch[0] = '\0';
		if(bufreset) bufreset[0] = '\0';
		if(bufvalue) bufvalue[0] = '\0';
		return;
	}

	switch(cvar->type)
		{
		case CVAR_BOOL:
			if(bufvalue)
			{
				if(cvar->boolean)
//					Com_sprintf(bufvalue, sizevalue, "true");
					Com_sprintf(bufvalue, sizevalue, "1");
				else
//					Com_sprintf(bufvalue, sizevalue, "false");
					Com_sprintf(bufvalue, sizevalue, "0");
			}
			if(bufreset)
			{
				if(cvar->resetBoolean)
//					Com_sprintf(bufreset, sizereset, "true");
					Com_sprintf(bufreset, sizereset, "1");
				else
//					Com_sprintf(bufreset, sizereset, "false");
					Com_sprintf(bufreset, sizereset, "0");
			}
			if(buflatch)
			{
				if(cvar->latchedBoolean)
//					Com_sprintf(buflatch, sizelatch, "true");
					Com_sprintf(buflatch, sizelatch, "1");
				else
//					Com_sprintf(buflatch, sizelatch, "false");
					Com_sprintf(buflatch, sizelatch, "0");
			}
			return;
		case CVAR_FLOAT:
			if(bufvalue) Com_sprintf(bufvalue, sizevalue, "%g", cvar->floatval);
			if(bufreset) Com_sprintf(bufreset, sizereset, "%g", cvar->resetFloatval);
			if(buflatch) Com_sprintf(buflatch, sizelatch, "%g", cvar->latchedFloatval);
			return;
		case CVAR_VEC2:
			if(bufvalue) Com_sprintf(bufvalue, sizevalue, "%g %g", cvar->vec2[0], cvar->vec2[1]);
			if(bufreset) Com_sprintf(bufreset, sizereset, "%g %g", cvar->resetVec2[0], cvar->resetVec2[1]);
			if(buflatch) Com_sprintf(buflatch, sizelatch, "%g %g", cvar->latchedVec2[0], cvar->latchedVec2[1]);
			return;
		case CVAR_VEC3:
			if(bufvalue) Com_sprintf(bufvalue, sizevalue, "%g %g %g", cvar->vec3[0], cvar->vec3[1], cvar->vec3[2]);
			if(bufreset) Com_sprintf(bufreset, sizereset, "%g %g %g", cvar->resetVec3[0], cvar->resetVec3[1], cvar->resetVec3[2]);
			if(buflatch) Com_sprintf(buflatch, sizelatch, "%g %g %g", cvar->latchedVec3[0], cvar->latchedVec3[1], cvar->latchedVec3[2]);
			return;
		case CVAR_VEC4:
			if(bufvalue) Com_sprintf(bufvalue, sizevalue, "%g %g %g %g", cvar->vec4[0], cvar->vec4[1], cvar->vec4[2], cvar->vec4[3]);
			if(bufreset) Com_sprintf(bufreset, sizereset, "%g %g %g %g", cvar->resetVec4[0], cvar->resetVec4[1], cvar->resetVec4[2], cvar->resetVec4[3]);
			if(buflatch) Com_sprintf(buflatch, sizelatch, "%g %g %g %g", cvar->latchedVec4[0], cvar->latchedVec4[1], cvar->latchedVec4[2], cvar->latchedVec4[3]);
			return;
		case CVAR_COLOR:
			if(bufvalue) Com_sprintf(bufvalue, sizevalue, "%.3g %.3g %.3g %.3g", (float)cvar->color.rgba[0] / (float)0xff, (float)cvar->color.rgba[1] / (float)0xff, (float)cvar->color.rgba[2] / (float)0xff, (float)cvar->color.rgba[3] / (float)0xff);
			if(bufreset) Com_sprintf(bufreset, sizereset, "%.3g %.3g %.3g %.3g", (float)cvar->resetColor.rgba[0] / (float)0xff, (float)cvar->resetColor.rgba[1] / (float)0xff, (float)cvar->resetColor.rgba[2] / (float)0xff, (float)cvar->resetColor.rgba[3] / (float)0xff);
			if(buflatch) Com_sprintf(buflatch, sizelatch, "%.3g %.3g %.3g %.3g", (float)cvar->latchedColor.rgba[0] / (float)0xff, (float)cvar->latchedColor.rgba[1] / (float)0xff, (float)cvar->latchedColor.rgba[2] / (float)0xff, (float)cvar->latchedColor.rgba[3] / (float)0xff);
			return;
		case CVAR_INT:
			if(bufvalue) Com_sprintf(bufvalue, sizevalue, "%d", cvar->integer);
			if(bufreset) Com_sprintf(bufreset, sizereset, "%d", cvar->resetInteger);
			if(buflatch) Com_sprintf(buflatch, sizelatch, "%d", cvar->latchedInteger);
			return;
		case CVAR_STRING:
			if(bufvalue) Com_sprintf(bufvalue, sizevalue, "%s", cvar->string);
			if(bufreset) Com_sprintf(bufreset, sizereset, "%s", cvar->resetString);
			if(buflatch) Com_sprintf(buflatch, sizelatch, "%s", cvar->latchedString);
			return;
		case CVAR_ENUM:
			if(cvar->limits.enumStr)
			{
				if(bufvalue)
				{
					for(i = 0; cvar->limits.enumStr[i] != NULL && i != cvar->integer; i++ );
					if(cvar->limits.enumStr[i] != NULL)
						Com_sprintf(bufvalue, sizevalue, "%s", cvar->limits.enumStr[i]);
					else
						Com_sprintf(bufvalue, sizevalue, "Out of Range value");
				}
				if(bufreset)
				{
					for(i = 0; cvar->limits.enumStr[i] != NULL && i != cvar->resetInteger; i++ );
					if(cvar->limits.enumStr[i] != NULL)
						Com_sprintf(bufreset, sizereset, "%s", cvar->limits.enumStr[i]);
					else
						Com_sprintf(bufreset, sizereset, "Out of Range value");
				}
				if(buflatch)
				{
					for(i = 0; cvar->limits.enumStr[i] != NULL && i != cvar->latchedInteger; i++ );
					if(cvar->limits.enumStr[i] != NULL)
						Com_sprintf(buflatch, sizelatch, "%s", cvar->limits.enumStr[i]);
					else
						Com_sprintf(buflatch, sizelatch, "Out of Range value");
				}
			}
			return;
		default:
			if(bufvalue) bufvalue[0] = '\0';
			if(bufreset) bufreset[0] = '\0';
			if(buflatch) buflatch[0] = '\0';
			return;
	}


}

/*
============
Cvar_Command

Handles variable inspection and changing from the console
============
*/
qboolean Cvar_Command( void ) {
	cvar_t			*v;

	char value[8192];
	char reset[8192];
	char latch[8192];

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	// check variables
	v = Cvar_FindVar (Cmd_Argv(0));
	if (!v) {
		Sys_LeaveCriticalSection(CRITSECT_CVAR);
		return qfalse;
	}

	// perform a variable print or set
	if ( Cmd_Argc() == 1 ) {
		Cvar_ValueToStr(v, value, sizeof(value), reset, sizeof(reset), latch, sizeof(latch));

		if(v->description != NULL)
			Com_Printf(CON_CHANNEL_CVAR,"\"%s\" is: \"%s" S_COLOR_WHITE "\" default: \"%s" S_COLOR_WHITE "\" info: \"%s" S_COLOR_WHITE "\"\n", v->name, value, reset, v->description );
		else
			Com_Printf(CON_CHANNEL_CVAR,"\"%s\" is: \"%s" S_COLOR_WHITE "\" default: \"%s" S_COLOR_WHITE "\"\n", v->name, value, reset );

		if ( Q_stricmp(value, latch) ) {
			Com_Printf(CON_CHANNEL_CVAR, "latched: \"%s\"\n", latch );
		}
		Sys_LeaveCriticalSection(CRITSECT_CVAR);
		return qtrue;
	}

	// set the value if forcing isn't required
	Cvar_Set2 (v->name, Cmd_Argv(1), qfalse);
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
	return qtrue;
}


/*
============
Cvar_Toggle_f

Toggles a cvar for easy single key binding
============
*/
void Cvar_Toggle_f( void ) {
	int		v;
	mvabuf;

	if ( Cmd_Argc() != 2 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"usage: toggle <variable>\n");
		return;
	}

	v = Cvar_VariableValue( Cmd_Argv( 1 ) );
	v = !v;

	Cvar_Set2 (Cmd_Argv(1), va("%i", v), qfalse);
}


/*
============
Cvar_Set_f

Allows setting and defining of arbitrary cvars from console, even if they
weren't declared in C code.
============
*/
void Cvar_Set_f( void ) {
	int		i, c, l, len;
	char	combined[8192];

	c = Cmd_Argc();
	if ( c < 3 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"usage: set <variable> <value>\n");
		return;
	}

	combined[0] = 0;
	l = 0;
	for ( i = 2 ; i < c ; i++ ) {
		len = strlen ( Cmd_Argv( i ) + 1 );
		if ( l + len >= sizeof(combined) - 2 ) {
			break;
		}
		strcat( combined, Cmd_Argv( i ) );
		if ( i != c-1 ) {
			strcat( combined, " " );
		}
		l += len;
	}
	Cvar_Set2 (Cmd_Argv(1), combined, qfalse);
}


/*
============
Cvar_SetFromCvar_f

Allows setting and defining of arbitrary cvars from console, even if they
weren't declared in C code.
============
*/
void Cvar_SetFromCvar_f( void ) {
	int c;
	cvar_t* v;
	char value[8192];

	c = Cmd_Argc();
	if ( c < 3 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"usage: setfromcvar <dest_cvar> <source_cvar>\n");
		return;
	}

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	v = Cvar_FindVar( Cmd_Argv( 2 ) );

	if(!v)
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER,"cvar %s does not exist\n", Cmd_Argv( 2 ));
		Sys_LeaveCriticalSection(CRITSECT_CVAR);
		return;
	}

	Cvar_ValueToStr(v, value, sizeof(value), NULL, 0, NULL, 0);
	Sys_LeaveCriticalSection(CRITSECT_CVAR);

	Cvar_Set2 (Cmd_Argv(1), value, qfalse);
}

/*
============
Cvar_SetToTime_f

Allows setting and defining of arbitrary cvars from console, even if they
weren't declared in C code.
============
*/
void Cvar_SetToTime_f( void ) {
	int c, t;
	char value[32];

	c = Cmd_Argc();
	if ( c != 2 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"usage: setcvartotime <variablename>\n");
		return;
	}

	t = Sys_Milliseconds();

	Com_sprintf(value, sizeof(value), "%d", t);

	Cvar_Set2 (Cmd_Argv(1), value, qfalse);
}

/*
============
Cvar_SetU_f

As Cvar_Set, but also flags it as userinfo
============
*/
void Cvar_SetU_f( void ) {
	cvar_t	*v;

	if ( Cmd_Argc() < 3 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"usage: setu <variable> <value>\n");
		return;
	}
	Cvar_Set_f();

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	v = Cvar_FindVar( Cmd_Argv( 1 ) );
	if ( !v ) {
		Sys_LeaveCriticalSection(CRITSECT_CVAR);
		return;
	}
	Cvar_AddFlags(v, CVAR_USERINFO);
	Sys_LeaveCriticalSection(CRITSECT_CVAR);

}

/*
============
Cvar_SetS_f

As Cvar_Set, but also flags it as userinfo
============
*/
void Cvar_SetS_f( void ) {
	cvar_t	*v;

	if ( Cmd_Argc() < 3 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"usage: sets <variable> <value>\n");
		return;
	}
	Cvar_Set_f();

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	v = Cvar_FindVar( Cmd_Argv( 1 ) );
	if ( !v ) {
		Sys_LeaveCriticalSection(CRITSECT_CVAR);
		return;
	}
	Cvar_AddFlags(v, CVAR_SERVERINFO);
	Sys_LeaveCriticalSection(CRITSECT_CVAR);

}

/*
============
Cvar_SetA_f

As Cvar_Set, but also flags it as archived
============
*/
void Cvar_SetA_f( void ) {
	cvar_t	*v;

	if ( Cmd_Argc() < 3 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"usage: seta <variable> <value>\n");
		return;
	}
	Cvar_Set_f();

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	v = Cvar_FindVar( Cmd_Argv( 1 ) );
	if ( !v ) {
		Sys_LeaveCriticalSection(CRITSECT_CVAR);
		return;
	}
	Cvar_AddFlags(v, CVAR_ARCHIVE);
	cvar_archivedset = qtrue;
	Sys_LeaveCriticalSection(CRITSECT_CVAR);

}

/*
============
Cvar_Reset_f
============
*/
void Cvar_Reset_f( void ) {
	if ( Cmd_Argc() != 2 ) {
		Com_Printf(CON_CHANNEL_DONT_FILTER,"usage: reset <variable>\n");
		return;
	}
	Cvar_Reset( Cmd_Argv( 1 ) );
}

/*
============
Cvar_WriteVariables

Appends lines containing "set variable value" for all variables
with the archive flag set to qtrue.
============
*/
void Cvar_WriteVariables(fileHandle_t f)
{
	cvar_t	*var;
	char	bufferval[8192];
	char	bufferlatch[8192];
	char	buffer[8192];

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	for (var = cvar_vars; var; var = var->next)
	{
		if( var->flags & CVAR_ARCHIVE ) {

			Cvar_ValueToStr(var, bufferval, sizeof(bufferval), NULL, 0, bufferlatch, sizeof(bufferlatch));

			// write the latched value, even if it hasn't taken effect yet
			if ( bufferlatch[0] ) {
				if( strlen( var->name ) + strlen( bufferlatch ) + 10 > sizeof( buffer ) ) {
					Com_Printf(CON_CHANNEL_CVAR, S_COLOR_YELLOW "WARNING: value of variable "
							"\"%s\" too long to write to file\n", var->name );
					continue;
				}
				Com_sprintf (buffer, sizeof(buffer), "seta %s \"%s\"\n", var->name, bufferlatch);
			} else {
				if( strlen( var->name ) + strlen( bufferval ) + 10 > sizeof( buffer ) ) {
					Com_Printf(CON_CHANNEL_CVAR, S_COLOR_YELLOW "WARNING: value of variable "
							"\"%s\" too long to write to file\n", var->name );
					continue;
				}
				Com_sprintf (buffer, sizeof(buffer), "seta %s \"%s\"\n", var->name, bufferval);
			}
			FS_Write( buffer, strlen( buffer ), f );
		}
	}
	Sys_LeaveCriticalSection(CRITSECT_CVAR);

}



/*
============
Cvar_List_f
============
*/
void Cvar_List_f( void ) {
	cvar_t	*var;
	int	i;
	char	*match;
	char value[1024];

	if ( Cmd_Argc() > 1 ) {
		match = Cmd_Argv( 1 );
		Com_Printf(CON_CHANNEL_DONT_FILTER,"Displaying all cvars starting with: %s\n", match);
	} else {
		match = NULL;
	}
	Com_Printf(CON_CHANNEL_DONT_FILTER,"====================================== Cvar List ======================================\n");

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	i = 0;
	for (var = cvar_vars ; var ; var = var->next, i++)
	{
		if (match && !Com_Filter(match, var->name, qfalse)) continue;

		if (var->flags & CVAR_SERVERINFO) {
			Com_Printf(CON_CHANNEL_DONT_FILTER,"S");
		} else {
			Com_Printf(CON_CHANNEL_DONT_FILTER," ");
		}
		if (var->flags & CVAR_USERINFO) {
			Com_Printf(CON_CHANNEL_DONT_FILTER,"U");
		} else {
			Com_Printf(CON_CHANNEL_DONT_FILTER," ");
		}
		if (var->flags & CVAR_ROM) {
			Com_Printf(CON_CHANNEL_DONT_FILTER,"R");
		} else {
			Com_Printf(CON_CHANNEL_DONT_FILTER," ");
		}
		if (var->flags & CVAR_INIT) {
			Com_Printf(CON_CHANNEL_DONT_FILTER,"I");
		} else {
			Com_Printf(CON_CHANNEL_DONT_FILTER," ");
		}
		if (var->flags & CVAR_ARCHIVE) {
			Com_Printf(CON_CHANNEL_DONT_FILTER,"A");
		} else {
			Com_Printf(CON_CHANNEL_DONT_FILTER," ");
		}
		if (var->flags & CVAR_LATCH) {
			Com_Printf(CON_CHANNEL_DONT_FILTER,"L");
		} else {
			Com_Printf(CON_CHANNEL_DONT_FILTER," ");
		}
		if (var->flags & CVAR_CHEAT) {
			Com_Printf(CON_CHANNEL_DONT_FILTER,"C");
		} else {
			Com_Printf(CON_CHANNEL_DONT_FILTER," ");
		}
		Cvar_ValueToStr(var, value, sizeof(value), NULL, 0, NULL, 0);
		Com_Printf(CON_CHANNEL_DONT_FILTER," %s \"%s\"\n", var->name, value);
	}

	Sys_LeaveCriticalSection(CRITSECT_CVAR);

	Com_Printf(CON_CHANNEL_DONT_FILTER,"\n%i total cvars\n", i);
	Com_Printf(CON_CHANNEL_DONT_FILTER,"%i cvar indexes\n", cvar_numIndexes);
	Com_Printf(CON_CHANNEL_DONT_FILTER,"==================================== End Cvar List ====================================\n");
}

/*
============
Cvar_Restart_f

Resets all cvars to their hardcoded values
============
*/
void Cvar_Restart_f( void ) {
	cvar_t	*var;
	cvar_t	**prev;

	Sys_EnterCriticalSection(CRITSECT_CVAR);

	prev = &cvar_vars;
	while ( 1 ) {
		var = *prev;
		if ( !var ) {
			break;
		}

		// don't mess with rom values, or some inter-module
		// communication will get broken (com_cl_running, etc)
		if ( var->flags & ( CVAR_ROM | CVAR_INIT | CVAR_NORESTART ) ) {
			prev = &var->next;
			continue;
		}

		// throw out any variables the user created
		if ( var->flags & CVAR_USER_CREATED ) {
			*prev = var->next;

			if(var->type == CVAR_STRING)
			{
				if(var->string != NULL)
				{
					if(var->string != nullstring)
						FreeString( var->string );
					var->string = NULL;
				}
				if(var->resetString != NULL)
				{
					if(var->resetString != nullstring)
						FreeString( var->resetString );
					var->resetString = NULL;
				}
				if(var->latchedString != NULL)
				{
					if(var->latchedString != nullstring)
						FreeString( var->latchedString );
					var->latchedString = NULL;
				}
			}
			if ( var->name ) {
				FreeString( var->name );
				var->name = NULL;
			}
			if ( var->description ) {
				if(var->description != nullstring)
					FreeString( var->description );
				var->description = NULL;
			}
			// clear the var completely, since we
			// can't remove the index from the list
			Com_Memset( var, 0, sizeof( cvar_t ) );
			continue;
		}

		Cvar_Reset( var->name );

		prev = &var->next;
	}
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
}

/*
=====================
Cvar_InfoString
=====================
*/
char	*Cvar_InfoString( int bit ) {
	static char	info[MAX_INFO_STRING];
	char value[8192];

	cvar_t	*var;

	info[0] = 0;
	Sys_EnterCriticalSection(CRITSECT_CVAR);

	for (var = cvar_vars ; var ; var = var->next) {
		if (var->flags & bit) {
			if(var->type != CVAR_BOOL)
				Cvar_ValueToStr(var, value, sizeof(value), NULL, 0, NULL, 0);
			else
				Com_sprintf(value, sizeof(value), "%d", var->boolean);
			Info_SetValueForKey (info, var->name, value);
		}
	}
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
	return info;
}


/*
=====================
Cvar_InfoString_Big

  handles large info strings ( CS_SYSTEMINFO )
=====================
*/

char	*Cvar_InfoString_Big( int bit, char* buf, int len )
{
	char	info[BIG_INFO_STRING];
	char value[8192];

	cvar_t	*var;

	info[0] = 0;
	Sys_EnterCriticalSection(CRITSECT_CVAR);

	for (var = cvar_vars ; var ; var = var->next) {
		if (var->flags & bit) {
			if(var->type != CVAR_BOOL)
				Cvar_ValueToStr(var, value, sizeof(value), NULL, 0, NULL, 0);
			else
				Com_sprintf(value, sizeof(value), "%d", var->boolean);
			BigInfo_SetValueForKey (info, var->name, value);
		}
	}

	Q_strncpyz(buf, info, len);
	Sys_LeaveCriticalSection(CRITSECT_CVAR);

	return buf;
}



/*
=====================
Cvar_ForEach
=====================
*/
void Cvar_ForEach( void (*callback)(cvar_t const*, void*), void* handoverarg )
{
	cvar_t	*var;
	Sys_EnterCriticalSection(CRITSECT_CVAR);

	for (var = cvar_vars ; var ; var = var->next) {
		callback(var, handoverarg);
	}
	Sys_LeaveCriticalSection(CRITSECT_CVAR);

}


/*
=====================
Cvar_DisplayableValue
=====================
*/
char	*Cvar_DisplayableValue( cvar_t const *var) {
	static char value[8192];

	if(!var)
		value[0] = '\0';
	else
		Cvar_ValueToStr(var, value, sizeof(value), NULL, 0, NULL, 0);

	return value;
}

char	*Cvar_DisplayableValueMT( cvar_t const *var, char* value, int maxlen) {

	if(!var)
		value[0] = '\0';
	else
		Cvar_ValueToStr(var, value, maxlen, NULL, 0, NULL, 0);

	return value;
}

/*
=====================
Cvar_GetVariantString
=====================
*/
char	*Cvar_GetVariantString( const char* cvar_name ) {

	cvar_t	const *var = Cvar_FindVar(cvar_name);
	if(var == NULL)
		return "";

	return Cvar_DisplayableValue( var );
}


/*
=====================
Cvar_InfoStringBuffer
=====================
*/
void Cvar_InfoStringBuffer( int bit, char* buff, int buffsize ) {
	Q_strncpyz(buff,Cvar_InfoString(bit),buffsize);
}


/*
==================
Cvar_CompleteCvarName
==================
*/
void Cvar_CompleteCvarName( char *args, int argNum )
{
	if( argNum == 2 )
	{
		// Skip "<cmd> "
		char *p = Com_SkipTokens( args, 1, " " );

		if( p > args )
			Field_CompleteCommand( p, qfalse, qtrue );
	}
}


cvar_t* Cvar_RegisterString(const char* name, const char* string, unsigned short flags, const char* description){

	cvar_t* cvar;
	CvarLimits limits;
	CvarValue value;

	limits.imin = 0;
	limits.imax = 0;

	value.string = string;

	cvar = Cvar_Register(name, CVAR_STRING, flags, value, limits, description);
	return cvar;
}

cvar_t* Cvar_RegisterBool(const char* name, qboolean boolean, unsigned short flags, const char* description){

	cvar_t* cvar;
	CvarLimits limits;
	CvarValue value;

	limits.imin = 0;
	limits.imax = 0;

	value.boolean = boolean;

	cvar = Cvar_Register(name, CVAR_BOOL, flags, value, limits, description);
	return cvar;
}

cvar_t* Cvar_RegisterInt(const char* name, int integer, int min, int max, unsigned short flags, const char* description){

	cvar_t* cvar;
	CvarLimits limits;
	CvarValue value;

	limits.imin = min;
	limits.imax = max;

	value.integer = integer;

	cvar = Cvar_Register(name, CVAR_INT, flags, value, limits, description);
	return cvar;
}


cvar_t* Cvar_RegisterFloat(const char* name, float val, float min, float max, unsigned short flags, const char* description){

	cvar_t* cvar;
	CvarLimits limits;
	CvarValue value;

	limits.fmin = min;
	limits.fmax = max;

	value.floatval = val;

	cvar = Cvar_Register(name, CVAR_FLOAT, flags, value, limits, description);

	return cvar;

}

cvar_t* Cvar_RegisterVec2(const char* name, float x, float y, float min, float max, unsigned short flags, const char* description){

	cvar_t* cvar;
	CvarLimits limits;
	CvarValue value;

	limits.fmin = min;
	limits.fmax = max;

	value.vec2[0] = x;
	value.vec2[1] = y;

	cvar = Cvar_Register(name, CVAR_VEC2, flags, value, limits, description);

	return cvar;

}

cvar_t* Cvar_RegisterVec3(const char* name, float x, float y, float z, float min, float max, unsigned short flags, const char* description){

	cvar_t* cvar;
	CvarLimits limits;
	CvarValue value;

	limits.fmin = min;
	limits.fmax = max;

	value.vec3[0] = x;
	value.vec3[1] = y;
	value.vec3[2] = z;

	cvar = Cvar_Register(name, CVAR_VEC3, flags, value, limits, description);

	return cvar;

}

cvar_t* Cvar_RegisterVec4(const char* name, float x, float y, float z, float imag, float min, float max, unsigned short flags, const char* description){

	cvar_t* cvar;
	CvarLimits limits;
	CvarValue value;

	limits.fmin = min;
	limits.fmax = max;

	value.vec4[0] = x;
	value.vec4[1] = y;
	value.vec4[2] = z;
	value.vec4[3] = imag;

	cvar = Cvar_Register(name, CVAR_VEC4, flags, value, limits, description);

	return cvar;

}

cvar_t* Cvar_RegisterColor(const char* name, float r, float g, float b, float alpha, unsigned short flags, const char* description){

	cvar_t* cvar;
	CvarLimits limits;
	CvarValue value;

	limits.fmin = 0.0;
	limits.fmax = 0.0;

	value.color.rgba[0] = (byte)(0xff * r);
	value.color.rgba[1] = (byte)(0xff * g);
	value.color.rgba[2] = (byte)(0xff * b);
	value.color.rgba[3] = (byte)(0xff * alpha);

	cvar = Cvar_Register(name, CVAR_COLOR, flags, value, limits, description);

	return cvar;

}


cvar_t* Cvar_RegisterEnum(const char* name, const char** strings, int integer, unsigned short flags, const char* description){

	cvar_t* cvar;
	CvarLimits limits;
	CvarValue value;

	assert(strings[0] != NULL);

	limits.imin = 0;
	limits.enumStr = strings;

	value.integer = integer;

	cvar = Cvar_Register(name, CVAR_ENUM, flags, value, limits, description);

	return cvar;

}


void Cvar_ClearModified(cvar_t* cvar)
{
	cvar->modified = 0;
}

/*
============
Cvar_Init

Reads in all archived cvars
============
*/

void Cvar_Init (void)
{
	Cmd_AddCommand ("toggle", Cvar_Toggle_f);
	Cmd_SetCommandCompletionFunc( "toggle", Cvar_CompleteCvarName );
	Cmd_AddPCommand ("set", Cvar_Set_f, 98);
	Cmd_SetCommandCompletionFunc( "set", Cvar_CompleteCvarName );
	Cmd_AddCommand ("sets", Cvar_SetS_f);
	Cmd_SetCommandCompletionFunc( "sets", Cvar_CompleteCvarName );
	Cmd_AddCommand ("seta", Cvar_SetA_f);
	Cmd_SetCommandCompletionFunc( "seta", Cvar_CompleteCvarName );
	Cmd_AddCommand ("setfromcvar", Cvar_SetFromCvar_f);
	Cmd_SetCommandCompletionFunc( "setfromcvar", Cvar_CompleteCvarName );
	Cmd_AddCommand ("setcvartotime", Cvar_SetToTime_f);
	Cmd_SetCommandCompletionFunc( "setcvartotime", Cvar_CompleteCvarName );
	Cmd_AddCommand ("reset", Cvar_Reset_f);
	Cmd_SetCommandCompletionFunc( "reset", Cvar_CompleteCvarName );
	Cmd_AddCommand ("setu", Cvar_SetU_f);
	Cmd_SetCommandCompletionFunc( "setu", Cvar_CompleteCvarName );
	Cmd_AddPCommand ("cvarlist", Cvar_List_f, 98);
	cvar_cheats = Cvar_RegisterBool("cvar_cheats", qfalse, CVAR_INIT, "Enable cheating");
	cheating_enabled = cvar_cheats->boolean;
}



void Cvar_ChangeResetValue(cvar_t* var, CvarValue value)
{

	int i;
	Sys_EnterCriticalSection(CRITSECT_CVAR);

	switch(var->type){
		case CVAR_BOOL:
			if((var->resetBoolean && value.boolean) || (!var->resetBoolean && !value.boolean))
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			if(value.boolean){
				var->resetBoolean = 1;
			}else{
				var->resetBoolean = 0;
			}
			break;
		case CVAR_FLOAT:
			if(var->resetFloatval == value.floatval)
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			if(isnan(value.floatval))
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			if(value.floatval < var->limits.fmin || value.floatval > var->limits.fmax)
			{
				Com_Printf(CON_CHANNEL_CVAR,"\'%g\' is not a valid value for cvar '%s'\n", value.floatval, var->name);
				Com_Printf(CON_CHANNEL_CVAR,"Domain is any float in range between \'%g\' and \'%g\'\n", var->limits.fmin, var->limits.fmax);
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			var->resetFloatval = value.floatval;
			break;
		case CVAR_VEC2:
			for(i = 0; i < 2; i++)
			{
				if(isnan(value.vec2[i]))
				{
					Sys_LeaveCriticalSection(CRITSECT_CVAR);
					return;
				}
				var->resetVec2[i] = value.vec2[i];
			}
			break;
		case CVAR_VEC3:
			for(i = 0; i < 3; i++)
			{
				if(isnan(value.vec3[i]))
				{
					Sys_LeaveCriticalSection(CRITSECT_CVAR);
					return;
				}
				var->resetVec3[i] = value.vec3[i];
			}
			break;
		case CVAR_COLOR:
		case CVAR_VEC4:
			for(i = 0; i < 4; i++)
			{
				if(isnan(value.vec4[i]))
				{
					Sys_LeaveCriticalSection(CRITSECT_CVAR);
					return;
				}
				var->resetVec4[i] = value.vec4[i];
			}
			break;
		case CVAR_ENUM:
			if(var->resetInteger == value.integer)
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			if(var->limits.enumStr == NULL)
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			for(i = 0; var->limits.enumStr[i] != NULL && i != value.integer; i++ );
			if(var->limits.enumStr[i] == NULL)
			{
				Com_Printf(CON_CHANNEL_CVAR,"\'%d\' is not a valid value for cvar '%s'\n", value.integer, var->name);
				Com_Printf(CON_CHANNEL_CVAR,"  Domain is one of the following:\n");
				for(i = 0; var->limits.enumStr[i] != NULL; i++ )
					Com_Printf(CON_CHANNEL_CVAR,"   %d: %s\n", i, var->limits.enumStr[i]);

				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			var->resetInteger = value.integer;
			break;
		case CVAR_INT:
			if(var->resetInteger == value.integer)
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			if(value.integer < var->limits.imin || value.integer > var->limits.imax)
			{
				Com_Printf(CON_CHANNEL_CVAR,"\'%d\' is not a valid value for cvar '%s'\n", value.integer, var->name);
				Com_Printf(CON_CHANNEL_CVAR,"  Domain is any integer in range between \'%d\' and \'%d\'\n", var->limits.imin, var->limits.imax);
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			var->resetInteger = value.integer;
			break;
		case CVAR_STRING:
			if(!value.string)
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			if(var->resetString && !Q_stricmp(var->resetString, value.string))
			{
				Sys_LeaveCriticalSection(CRITSECT_CVAR);
				return;
			}
			if(var->resetString && var->resetString != nullstring)
				FreeString(var->resetString);

			var->resetString = CopyString( value.string );
	}
	Sys_LeaveCriticalSection(CRITSECT_CVAR);

}



void Cvar_AddFlagsByName(const char* var_name, unsigned short flags)
{
	Sys_EnterCriticalSection(CRITSECT_CVAR);
	cvar_t	*var = Cvar_FindVar(var_name);
	if(!var)
	{
		Com_PrintError(CON_CHANNEL_CVAR,"Cvar_AddFlagsByName: Cvar %s does not exist\n", var_name);
	}
	Cvar_AddFlags(var, flags);
	Sys_LeaveCriticalSection(CRITSECT_CVAR);

}

void Cvar_ClearFlagsForEach(unsigned short flags)
{
	cvar_t	*var;
	Sys_EnterCriticalSection(CRITSECT_CVAR);

	for (var = cvar_vars ; var ; var = var->next) {
		Cvar_ClearFlags(var, flags);
	}
	Sys_LeaveCriticalSection(CRITSECT_CVAR);

}

qboolean Cvar_IsDefined(const char* cvarname)
{
	Sys_EnterCriticalSection(CRITSECT_CVAR);
	cvar_t* v = Cvar_FindVar(cvarname);
	Sys_LeaveCriticalSection(CRITSECT_CVAR);
	if(v)
	{
		return qtrue;
	}
	return qfalse;
}

bool __cdecl Cvar_IsValidName(const char *dvarName)
{
  char nameChar;
  int index;

  if ( dvarName )
  {
    for ( index = 0; dvarName[index]; ++index )
    {
      nameChar = dvarName[index];
      if ( !isalnum(nameChar) && nameChar != '_' )
      {
        return false;
      }
    }
    return true;
  }
  return false;
}


void __cdecl Cvar_SetFromStringByName(const char* name, const char* value)
{
    Cvar_Set(name, value);
}

const char* __cdecl Cvar_EnumToString(cvar_t* var)
{
	return Cvar_DisplayableValue(var);
}


int __cdecl Com_SaveDvarsToBuffer(const char **dvarnames, unsigned int numDvars, char *buffer, unsigned int bufsize)
{
  const char *string;
  int ret;
  int written;
  unsigned int i;
  cvar_t *dvar;

  ret = 1;
  for ( i = 0; i < numDvars; ++i )
  {
    dvar = Cvar_FindVar(dvarnames[i]);

    assert(dvar);

    string = Cvar_DisplayableValue(dvar);
    written = Com_sprintf(buffer, bufsize, "%s \"%s\"\n", dvar->name, string);
    if ( written < 0 )
    {
      return 0;
    }
    buffer += written;
    bufsize -= written;
  }
  return ret;
}
