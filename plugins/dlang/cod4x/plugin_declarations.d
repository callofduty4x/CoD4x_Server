/* Converted to D from plugin_declarations.h by htod */
module cod4x.plugin_declarations;
/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm of the IceOps-Team

    This file is part of IceOps Plugin Handler source code.

    IceOps Plugin Handler source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    IceOps Plugin Handler source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/

//C     #define PLUGIN_HANDLER_VERSION_MAJOR 2
//C     #define PLUGIN_HANDLER_VERSION_MINOR 302
const PLUGIN_HANDLER_VERSION_MAJOR = 2;
//PHandler v. 2.2
const PLUGIN_HANDLER_VERSION_MINOR = 302;

//C     enum Plugin_Err{	// To be used as the code argument for Plugin_Error()
//C         P_ERROR_WARNING,	// Save the error string to serverlog - for minor errors
//C         P_ERROR_DISABLE,	// Save the error string to serverlog and disable the plugin - for serious errors
//C         P_ERROR_TERMINATE	// Save the error string to serverlog and close the server - for critical errors
//C     };
enum Plugin_Err
{
    P_ERROR_WARNING,
    P_ERROR_DISABLE,
    P_ERROR_TERMINATE,
}
//C     typedef enum{
//C         P_HASH_SHA1,
//C         P_HASH_SHA256,
//C         P_HASH_TIGER
//C     }pluginHash_t;
enum
{
    P_HASH_SHA1,
    P_HASH_SHA256,
    P_HASH_TIGER,
}
extern (C):
alias int pluginHash_t;

//C     typedef enum{
//C         P_CIPHER_AES,
//C         P_CIPHER_SERPENT
//C     }pluginCipher_t;
enum
{
    P_CIPHER_AES,
    P_CIPHER_SERPENT,
}
alias int pluginCipher_t;

//C     typedef struct{
//C         int major;
//C         int minor;
//C     }version_t;
struct version_t
{
    int major;
    int minor;
}

//C     typedef struct{			        // To be used in OnInfoRequest
//C         version_t handlerVersion;	// Requested plugin handler version - mandatory field
//C         version_t pluginVersion;	// Version of your plugin - optional
//C         char fullName[64];		    // Full plugin name, short name is the filename without extension - optional
//C         char shortDescription[128];	// Describe in a few words what this plugin does - optional
//C         char longDescription[1024];	// Full description - optional
//C     }pluginInfo_t;
struct pluginInfo_t
{
    version_t handlerVersion;
    version_t pluginVersion;
    char [64]fullName;
    char [128]shortDescription;
    char [1024]longDescription;
}
