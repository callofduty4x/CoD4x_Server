#include "../pinc.h"
#include <string.h>
#include <stdio.h>

char* buffer;

PCL int OnInit(){	// Funciton called on server initiation

	int size;
	char path[512];
	//char* buffer;
	size_t result;

	snprintf(path,sizeof(path),"%s/guids.txt",Plugin_Cvar_VariableString("fs_basepath"));
	
	FILE *file = fopen( path, "r" );
	
	if(!file)
	{
		Plugin_Printf("guids.txt does not exist in this dir: %s\n", Plugin_Cvar_VariableString("fs_basepath"));
		return;
	}
	
	fseek(file, 0, SEEK_END);
	
	size = ftell(file);
	
	rewind(file);
	
	buffer = Plugin_Malloc(sizeof(char) * (size + 1));
	
	if(buffer == NULL)
	{
		Plugin_Printf("Memory error\n");
		return;
	}
	
	memset(buffer, 0, sizeof(char) * (size + 1));
	
	result = fread (buffer,1,size,file);
	
	if(result != size)
	{
		Plugin_Printf("Reading has resulted an error\n");
		return;
	}
	
	//Plugin_Printf("Debug from plugin %s", buffer);
	
	fclose (file);
	return 0;
}

PCL void OnInfoRequest(pluginInfo_t *info){	// Function used to obtain information about the plugin
    // Memory pointed by info is allocated by the server binary, just fill in the fields

    // =====  MANDATORY FIELDS  =====
    info->handlerVersion.major = PLUGIN_HANDLER_VERSION_MAJOR;
    info->handlerVersion.minor = PLUGIN_HANDLER_VERSION_MINOR;	// Requested handler version

    // =====  OPTIONAL  FIELDS  =====
    info->pluginVersion.major = 1;
    info->pluginVersion.minor = 0;	// Plugin version
    strncpy(info->fullName,"IceOps clan tag protection plugin by IceOps",sizeof(info->fullName)); //Full plugin name
    strncpy(info->shortDescription,"This plugin is used to prevent people to steal clan tag in the server.",sizeof(info->shortDescription)); // Short plugin description
    strncpy(info->longDescription,"This plugin is used to prevent players from stealing your clan tag in your server.",sizeof(info->longDescription));
}

PCL void OnClientUserinfoChanged(client_t* client)
{
	char* tag = "IceOps"; //Your clan tag here.
	//char* guids = "0000000037f53454f8b59a06e3896cch;000000003b32ea8fbd7d87adbfbadd0e"; //Add GUIDs here
	char* gp = client->pbguid;
	
	//Plugin_Printf("Debug from plugin guid: %s\n", client->pbguid);
	
	int clientnum = client - clientbase;
	
	if(strstr(client->shortname, tag))
	{
		if(strstr(buffer, gp))
		{
			//Plugin_Printf("He is allowed\n");
		}else{
			Plugin_DropClient(clientnum, "You are not allowed to use the tag\n");
			}
	}
}
