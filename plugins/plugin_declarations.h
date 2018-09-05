/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

    This file is part of CoD4X Plugin Handler source code.

    CoD4X Plugin Handler source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X Plugin Handler source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/

#define PLUGIN_HANDLER_VERSION_MAJOR 4
#define PLUGIN_HANDLER_VERSION_MINOR 000
//PHandler v. 2.2

enum Plugin_Err{	// To be used as the code argument for Plugin_Error()
    P_ERROR_WARNING,	// Save the error string to serverlog - for minor errors
    P_ERROR_DISABLE,	// Save the error string to serverlog and disable the plugin - for serious errors
    P_ERROR_TERMINATE	// Save the error string to serverlog and close the server - for critical errors
};
typedef enum{
    P_HASH_SHA1,
    P_HASH_SHA256,
    P_HASH_TIGER
}pluginHash_t;

typedef enum{
    P_CIPHER_AES,
    P_CIPHER_SERPENT
}pluginCipher_t;

typedef struct{
    int major;
    int minor;
}version_t;

typedef struct{			        // To be used in OnInfoRequest
    version_t handlerVersion;	// Requested plugin handler version - mandatory field
    version_t pluginVersion;	// Version of your plugin - optional
    char fullName[64];		    // Full plugin name, short name is the filename without extension - optional
    char shortDescription[128];	// Describe in a few words what this plugin does - optional
    char longDescription[1024];	// Full description - optional
}pluginInfo_t;
