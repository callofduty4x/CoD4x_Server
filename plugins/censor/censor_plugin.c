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
#include "../pinc.h"
#include "censor.h"

PCL int OnInit(){	// Funciton called on server initiation

	G_SayCensor_Init();

	return 0;
}
PCL void OnMessageSent(char *message, int slot, qboolean *show, int mode){
	G_SayCensor(message);
}
PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 2;
    info->pluginVersion.minor = 0;	// Plugin version
    strncpy(info->fullName,"IceOps message censoring plugin by TheKelm",sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"This plugin is used to censor the ingame chat from swears.",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to censor the ingame chat from swears. The words to be censored should be put in 'badwords.txt' in the server directory.\n\nCopyright (c) 2013 IceOps",sizeof(info->longDescription));
}
