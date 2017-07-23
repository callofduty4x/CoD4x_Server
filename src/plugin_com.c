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



#include "plugin_handler.h"

P_P_F qboolean Plugin_IsLoaded(char *name){

    int pID,i;
    //Identify the calling plugin
    pID = PHandler_CallerID();

    if(pID<0){
        Com_Printf(CON_CHANNEL_PLUGINS,"^1Plugin_IsLoaded: Error! Called from an unknown plugin!\n");
        return qfalse;
    }

    for(i=0;i<MAX_PLUGINS;++i){

        if(pluginFunctions.plugins[i].loaded){
            if(Q_strncmp(pluginFunctions.plugins[i].name,name,sizeof(pluginFunctions.plugins[i].name))==0){
                return pluginFunctions.plugins[i].enabled;
            }
        }

    }
    return qfalse;
}
P_P_F version_t *Plugin_GetVersion(char *name)
{
    static pluginInfo_t info;
    int pID,i;
    //Identify the calling plugin
    pID = PHandler_CallerID();

    if(pID<0){
        Com_Printf(CON_CHANNEL_PLUGINS,"^1Plugin_GetVersion: Error! Called from an unknown plugin!\n");
        return NULL;
    }
for(i=0;i<MAX_PLUGINS;++i){

        if(pluginFunctions.plugins[i].loaded){
            if(Q_strncmp(pluginFunctions.plugins[i].name,name,sizeof(pluginFunctions.plugins[i].name))==0){
                (*pluginFunctions.plugins[i].OnInfoRequest)(&info);
                return &(info.pluginVersion);
            }
        }

    }
    return NULL;
}
P_P_F qboolean Plugin_ExportFunction(char *name, void *(*function)()){

    int pID,i;
    //Identify the calling plugin
    pID = PHandler_CallerID();

    if(pID<0){
        Com_Printf(CON_CHANNEL_PLUGINS,"^1Plugin_ExportFunction: Error! Called from an unknown plugin!\n");
        return qfalse;
    }
    if(pluginFunctions.plugins[pID].enabled==qfalse){
        Com_Printf(CON_CHANNEL_PLUGINS,"^3WARNING^7: Plugin_ExportFunction called from a disabled plugin!\n");
        return qfalse;
    }
    if(name==NULL || function==NULL){
        Com_DPrintf(CON_CHANNEL_PLUGINS,"Plugin_ExportFunction: Error - NULL argument! Plugin ID: %d.\n",pID);
        return qfalse; // Null argument!
    }

    // Check if a function with that name is not already exported by this plugin

    for(i=0;i<pluginFunctions.plugins[pID].exports;++i){
        if(strncmp(pluginFunctions.plugins[pID].exportedFunctions[i].name,name,PLUGIN_COM_MAXNAMELEN)!=0){
            Com_Printf(CON_CHANNEL_PLUGINS,"^3WARNING^7: Plugin of ID %d tried to export function \"%s\" twice.\n",pID,name);
            return qfalse;
        }
    }

    //Register the function

    pluginFunctions.plugins[pID].exportedFunctions[pluginFunctions.plugins[pID].exports].function = function;
    Q_strncpyz(pluginFunctions.plugins[pID].exportedFunctions[pluginFunctions.plugins[pID].exports].name,name,PLUGIN_COM_MAXNAMELEN);
    ++pluginFunctions.plugins[pID].exports;
    return qtrue;
}
P_P_F void *Plugin_ImportFunction(char *pluginName, char *name){

    int pID,i,j;
    //Identify the calling plugin
    pID = PHandler_CallerID();

    if(pID<0){
        Com_Printf(CON_CHANNEL_PLUGINS,"^1Plugin_ImportFunction: Error! Called from an unknown plugin!\n");
        return NULL;
    }

    for(i=0;i<MAX_PLUGINS;++i){
        if(strncmp(pluginFunctions.plugins[i].name,pluginName,20)==0){
            for(j=0;j<pluginFunctions.plugins[i].exports;++j){
                if(strncmp(pluginFunctions.plugins[i].exportedFunctions[j].name,name,PLUGIN_COM_MAXNAMELEN)==0){
                    Com_DPrintf(CON_CHANNEL_PLUGINS,"^2Notice:^7 Plugin #%d imported plugin's #%d function \"%s\"\n.",pID,i,name);
                    return pluginFunctions.plugins[i].exportedFunctions[j].function;
                }
            }
            return NULL;
        }
    }
    return NULL;
}
