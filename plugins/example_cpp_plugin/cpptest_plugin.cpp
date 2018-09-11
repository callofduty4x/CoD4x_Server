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


/*
============================
    Plugin INClude file
  This contains plugin lib
 This file must be included
============================
*/

#include "../pinc.h"

/*
==================
  Other includes
==================
*/
#include <cstring>
#include <string>

/*
===========================
     OnInit callback
 This is a function called
  right after the plugin
        is loaded.
===========================
*/

PCL int OnInit(){ // Function executed after the plugin is loaded on the server.

    Plugin_Printf("Hello, world! :D\n");
	return 0;	// 0 => Initialization successfull.
}
/*
=========================
    Event callbacks
 Those are not mandatory
=========================
*/
/*PCL void OnPlayerConnect(int slotNum);
PCL void OnPlayerDC(int slotNum);
PCL void OnExitLevel();
PCL void OnMessageSent(char *message);
PCL void OnTenSeconds();
PCL void OnFrame();
PCL void OnClientAuthorized();
PCL void OnClientSpawn();
PCL void OnClientEnterWorld();
PCL void TCPServerPacket();*/

/*
============================
   OnInfoRequest callback
 This function is mandatory
============================
*/

PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version, we request the version compatible with this plugin lib

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 1;
    info->pluginVersion.minor = 0;	// Plugin version
    strncpy(info->fullName,"An example C++ plugin.",sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"This is the plugin's short description.",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This is the plugin's long description.",sizeof(info->longDescription));
}
