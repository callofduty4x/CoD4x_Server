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
#include "q_shared.h"
#include "qcommon.h"
#include "sec_update.h"
#include "sec_crypto.h"
#include "sec_common.h"
#include "sec_sign.h"
#include "sys_main.h"
#include "msg.h"
#include "sys_net.h"
#include "netchan.h"
#include "filesystem.h"
#include "cmd.h"
#include "cvar.h"
#include "sys_cod4defs.h"
#include "httpftp.h"
#include "sys_thread.h"
//#include <windows.h>
#include <unistd.h>
#include <errno.h>



static char upd_binpath[1024]; //On Windows it is filepath of executable file. On Linux it is current working directory
static char upd_execpath[1024];
static char upd_homepath[1024];

void Sec_SetupPaths()
{
	Q_strncpyz(upd_homepath, fs_homepath->string, sizeof(upd_homepath));
#ifdef _WIN32
	Q_strncpyz(upd_binpath, Sys_BinaryPath(), sizeof(upd_binpath));
#else
	Q_strncpyz(upd_binpath, Sys_Cwd(), sizeof(upd_binpath));
#endif
	Q_strncpyz(upd_execpath, Sys_BinaryPath(), sizeof(upd_execpath));
}

const char* Sec_GetStorePath(const char* path)
{

	char filename[1024];

	const char* f = strrchr(path, '/');

	if(f)
	{
		path = f +1;
	}
	Q_strncpyz(filename, path, sizeof(filename));
	int len = strlen(filename);
	if(len < 4)
	{
		return upd_homepath; //Error should not happen
	}

	if(Q_stricmp(filename + (len -4), ".exe") == 0 || Q_stricmp(filename + (len -4), ".dll") == 0)
	{
		return upd_binpath;
	}

	if(Q_stricmp(filename + (len -3), ".so") == 0 || strstr(filename, ".so.") != NULL)
	{
		return upd_binpath;
	}

	if(strstr(filename, EXECUTABLE_NAME))
	{
		return upd_execpath;
	}
	return upd_homepath;

}

const char* Sec_GetStoreFilename(const char* shortname, char *fullfilepath, int maxpathlen)
{
	const char* p = Sec_GetStorePath(shortname);
	if(strstr(shortname, EXECUTABLE_NAME))
	{
		Com_sprintf(fullfilepath, maxpathlen, "%s/%s", p, Sys_ExeFileShort());
	}else{
		Com_sprintf(fullfilepath, maxpathlen, "%s/%s", p, shortname);
	}
	FS_StripSeperators(fullfilepath);
	FS_ReplaceSeparators(fullfilepath);
	return fullfilepath;
}


char* FS_UpdateGetFilepath( const char *file, char* testpath, int lenpath )
{
	FILE *f;

	if(lenpath < MAX_OSPATH)
		Com_Error(ERR_FATAL, "FS_SV_GetFilepath: Given buffer has less than %d bytes length\n", MAX_OSPATH );

	FS_BuildOSPathForThread(fs_homepath->string, file, "", testpath, 0 );
	FS_StripTrailingSeperator( testpath );

	f = fopen( testpath, "rb" );
	if (f) {
		fclose( f );
		return testpath;
	}

	FS_BuildOSPathForThread(fs_basepath->string, file, "", testpath, 0 );
	FS_StripTrailingSeperator( testpath );

	f = fopen( testpath, "rb" );
	if (f) {
		fclose( f );
		return testpath;
	}
/*
	Q_strncpyz( file, testpath, 0 );
  	FS_ReplaceSeparators(testpath);
	FS_StripTrailingSeperator( testpath );

	f = fopen( testpath, "rb" );
	if (f) {
		fclose( f );
		return testpath;
	}
*/
	return NULL;
}





#define BUFSIZE 10240

char *Sec_StrTok(char *str,char *tokens,int id){
    static char *mem[100] = {NULL};
    char *ptr,*ptr2;
    if(id<0||id>99||tokens==NULL)
	return NULL;
    if(str==NULL){
	if(mem[id]==NULL){
	    return NULL;
	}
	
	for(ptr=mem[id];*ptr != 0;++ptr){
	    //printf("---%c\n",*ptr);
	    for(ptr2=tokens;*ptr2!=0;++ptr2){
		//printf("------%c\n",*ptr2);
		if(*ptr == *ptr2){
		    //printf("DEBUG!!!!!!!! %p:\"%s\", %p:\"%s\",%p:\"%s\".\n\n",ptr,ptr,ptr2,ptr2,mem[id],mem[id]);
		    *ptr=0;
		    ptr2=mem[id];
		    mem[id]=ptr+1;
		    //printf("DEBUG!!!!!!!! %p:\"%s\", %p:\"%s\".\n\n",ptr,ptr,ptr2,ptr2);
		    //__asm__("int $3");
		    return ptr2;
		}
	    }
	}
	if(ptr!=mem[id]){
	    ptr = mem[id];
	}
	else
	    ptr = NULL;
	mem[id]=NULL;
	return ptr;
    }
    else{
    //printf("Debugging: \"%s\"\n",str);
	//mem[id]=str;
	for(ptr=str;*ptr != 0 && mem[id]==NULL;++ptr){
	    for(ptr2=tokens;*ptr2!=0 && mem[id]==NULL;++ptr2){
		if(*ptr != *ptr2){
		    mem[id]=ptr;
		}
	    }
	}
	if(mem[id] == NULL) return NULL;
	return Sec_StrTok(NULL,tokens,id); // BECAUSE I CAN.
    }	
}

void Sec_FreeFileStruct(sec_file_t *file){
    if(file->next != NULL)
	Sec_FreeFileStruct(file->next);
    Sec_Free(file);
}



qboolean Sec_VerifyFile(byte* data, int length, const char* hash)
{
	if(Sec_VerifyMemory(hash, data, length) == qfalse)
	{
		return qfalse;
	}
	return qtrue;
	
/*	
	
	unsigned long size;
	char outhash[129];
	
	size = sizeof(outhash);
	if(!Sec_HashMemory(SEC_HASH_SHA256, data, length, outhash, &size,qfalse))
	{
		return qfalse;
	}

	if(Q_strncmp(hash, outhash, size))
	{
		return qfalse;
	}
	return qtrue;
*/
}

qboolean Sec_BuildNeededList(sec_file_t *argcurrFile)
{
	char name1[1024];
	qboolean isvalid;
	byte* filebuf;
	int len;

	sec_file_t *currFile = argcurrFile;

	while(currFile != NULL)
	{
		currFile->needed = qtrue;

		Sec_GetStoreFilename(currFile->name, name1, sizeof(name1));

		//Does our file already exist?
		len = FS_ReadFileOSPath(name1, (void*)&filebuf);
		
		if(len > 0)
		{	//Is it already the file we need? Then don't download it.
			isvalid = Sec_VerifyFile(filebuf, len, currFile->hash);
			FS_FreeFileOSPath(filebuf);
			if(isvalid)
			{
				currFile->needed = qfalse;
			}
		}
		currFile = currFile->next;
	}

	currFile = argcurrFile;

	while(currFile != NULL)
	{
		if(currFile->needed)
		{
			return qtrue;
		}
		currFile = currFile->next;
	}
	return qfalse;
}


int Sec_DownloadFile(const char* baseurl, sec_file_t *currFile)
{
		qboolean isvalid;
		char buff[1024];
		int transret, len;
	    ftRequest_t* curfileobj;

		char sfnb[1024];
		const char* sfn = Sec_GetStoreFilename(currFile->path, sfnb, sizeof(sfnb));

		Com_sprintf(buff, sizeof(buff), SEC_UPDATE_DOWNLOAD(baseurl, currFile->path));
		
		curfileobj = FileDownloadRequest(buff);
		if(curfileobj == NULL)
		{
			return -1;	
		}

		Com_Printf(CON_CHANNEL_SYSTEM,"Downloading file: \"%s\"\n\n",currFile->name);

		do {
			transret = FileDownloadSendReceive( curfileobj );
#ifndef _WIN32
//				Com_Printf(CON_CHANNEL_SYSTEM,"%s", FileDownloadGenerateProgress( curfileobj ));
#endif
			Sys_SleepUSec(20000);
		} while (transret == 0);
		
		Com_Printf(CON_CHANNEL_SYSTEM,"\n");

		if(transret < 0)
		{
			FileDownloadFreeRequest(curfileobj);
			return -1;
		}

		Q_strncpyz(buff, sfn, sizeof(buff));
		Q_strncat(buff, sizeof(buff),".new");

		if(curfileobj->code != 200){
			Com_PrintError(CON_CHANNEL_SYSTEM,"Downloading has failed! Error code: %d. Update aborted.\n", curfileobj->code);
			FileDownloadFreeRequest(curfileobj);
			return -1;
		}

		if(curfileobj->contentLength != currFile->size)
		{
			Com_PrintError(CON_CHANNEL_SYSTEM,"Downloading has failed! Downloaded file has a different size %d expected %d.\n", curfileobj->contentLength, currFile->size);
			FileDownloadFreeRequest(curfileobj);
			return -1;
		}

		isvalid = Sec_VerifyFile(curfileobj->recvmsg.data + curfileobj->headerLength, curfileobj->contentLength, currFile->hash);

		if(isvalid){
			Com_Printf(CON_CHANNEL_SYSTEM,"Successfully downloaded file \"%s\".\n", currFile->name);
		}else{
			FileDownloadFreeRequest(curfileobj);
			Com_PrintError(CON_CHANNEL_SYSTEM,"File \"%s\" is corrupt!\nUpdate aborted.\n",currFile->name);
			return -1;
		}
		
		Com_Printf(CON_CHANNEL_SYSTEM,"Writing file to %s\n", buff);
		len = FS_WriteFileOSPath(buff, curfileobj->recvmsg.data + curfileobj->headerLength, curfileobj->contentLength);
		if(len != curfileobj->contentLength)
		{
			Com_PrintError(CON_CHANNEL_SYSTEM,"Opening \"%s\" for writing! Update aborted.\n",buff);
			FileDownloadFreeRequest(curfileobj);
			return -1;
		}
		FileDownloadFreeRequest(curfileobj);
		
		return 1;
}

sec_file_t* Sec_ParseLine(const char* line)
{
	
	char* ptr, *ptr2;
	
	ptr = (char*)line;
	
	sec_file_t *currFile;
	
	currFile = Sec_GMalloc(sec_file_t,1);
	
	if(currFile == NULL)
	{
		return currFile;
	}
	
	Com_Memset(currFile,0,sizeof(sec_file_t));
	
	ptr2 = strchr(ptr,' ');
	
	if(ptr2 == NULL){
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Sec_Update: Corrupt data from update server. Update aborted.\nDebug:\"%s\"\n",ptr);
		Sec_FreeFileStruct(currFile);
		return NULL;
	}
	*ptr2++ = 0;
	
	Q_strncpyz(currFile->path,ptr,sizeof(currFile->path));
	
	ptr = ptr2;
	
	ptr2 = strchr(ptr,' ');
	
	if(ptr2 == NULL){
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Sec_Update: Corrupt data from update server. Update aborted.\nDebug:\"%s\"\n",ptr);
		Sec_FreeFileStruct(currFile);
		return NULL;
	}
	
	*ptr2++ = 0;
	
	if(!isInteger(ptr, 0)){
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Sec_Update: Corrupt data from update server - size is not a number. Update aborted.\nDebug:\"%s\"\n",ptr);
		Sec_FreeFileStruct(currFile);
		return NULL;
	}
	
	currFile->size = atoi(ptr);
	
	Q_strncpyz(currFile->hash,ptr2,sizeof(currFile->hash));
	Q_strncpyz(currFile->name,currFile->path, sizeof(currFile->name));
	
	return currFile;
}

qboolean Sec_MakeExecutable(sec_file_t *currFile)
{
	char buff[1024];

	Sec_GetStoreFilename(currFile->name, buff, sizeof(buff));

	Q_strncat(buff, sizeof(buff),".new");

	if(FS_FileExistsOSPath(buff) == qfalse)
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"Can not find file %s\n", buff);
		Com_PrintError(CON_CHANNEL_SYSTEM,"Update has failed!\n");
		return qfalse;
	}

	Com_Printf(CON_CHANNEL_SYSTEM,"Set permissions for: %s\n", buff);
	if(FS_SetPermissionsExec(buff) == qfalse)
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"CRITICAL ERROR: failed to change mode of the file \"%s\"! Aborting, manual installation might be required.\n", buff);
		return qfalse;
	}
	return qtrue;
}


qboolean Sec_RemoveOldInstallfiles(sec_file_t *currFile)
{
	char name1[1024];

	while(currFile != NULL)
	{
		if(!currFile->needed)
		{
			currFile = currFile->next;
			continue;
		}
		
		Sec_GetStoreFilename(currFile->name, name1, sizeof(name1));

		Q_strncat(name1, sizeof(name1), ".new");

		if(FS_FileExistsOSPath(name1))
		{ // Old backupfile exists, delete it!
			Com_Printf(CON_CHANNEL_SYSTEM,"Removing old install file %s...\n", name1);
			FS_RemoveOSPath( name1 );
			if(FS_FileExistsOSPath(name1))
			{
				Com_PrintWarning(CON_CHANNEL_SYSTEM,"Couldn't remove install file: %s\n", name1);
				return qfalse;
			}
		}
		currFile = currFile->next;
	}
	return qtrue;
}



qboolean Sec_RemoveOldBackupfiles(sec_file_t *currFile)
{
	char name1[1024];

	while(currFile != NULL)
	{
		Sec_GetStoreFilename(currFile->name, name1, sizeof(name1));

		Q_strncat(name1, sizeof(name1), ".old");

		if(FS_FileExistsOSPath(name1))
		{ // Old backupfile exists, delete it!
			Com_Printf(CON_CHANNEL_SYSTEM,"Removing backup file %s...\n", name1);
			FS_RemoveOSPath( name1 );
			if(FS_FileExistsOSPath(name1))
			{
				Com_PrintWarning(CON_CHANNEL_SYSTEM,"Couldn't remove backup file: %s\n", name1);
				return qfalse;
			}
		}
		currFile = currFile->next;
	}
	return qtrue;
}

qboolean Sec_Backupfiles(sec_file_t *currFile)
{
	char name1[1024];
	char curfilename[1024];
	qboolean fexist;

	while(currFile != NULL)
	{
		if(!currFile->needed)
		{
			currFile = currFile->next;
			continue;
		}
		
		Sec_GetStoreFilename(currFile->name, curfilename, sizeof(curfilename));
		Q_strncpyz(name1, curfilename, sizeof(name1));
		Q_strncat(name1, sizeof(name1), ".old");

		Com_Printf(CON_CHANNEL_SYSTEM,"Backing up file %s...\n", curfilename);

		FS_RenameOSPath(curfilename, name1);
		fexist = FS_FileExistsOSPath(curfilename);			

		// We couldn't back it up. Raise error
		if(fexist)
		{
			Com_PrintError(CON_CHANNEL_SYSTEM,"Couldn't backup file %s\n", curfilename);
			return qfalse;
		}
		currFile = currFile->next;
	}
	return qtrue;
}

void Sec_UndoBackup(sec_file_t *currFile)
{
	char name1[1024];
	char curfilename[1024];

	while(currFile != NULL)
	{
		if(!currFile->needed)
		{
			currFile = currFile->next;
			continue;
		}
		
		Com_Printf(CON_CHANNEL_SYSTEM,"Undo backup file %s...\n", currFile->name);

		Sec_GetStoreFilename(currFile->name, curfilename, sizeof(curfilename));

		Q_strncpyz(name1, curfilename, sizeof(name1));
		Q_strncat(name1, sizeof(name1), ".old");

		// Check if an backupfile exists with this name
		if(FS_FileExistsOSPath(name1) == qfalse)
		{
			Com_Printf(CON_CHANNEL_SYSTEM,"Backupfile %s not found!\n", name1);
		}else{
			//Backupfile exists, rename it back
			FS_RemoveOSPath(curfilename);
			Com_Printf(CON_CHANNEL_SYSTEM,"Rename from %s to %s\n", name1, curfilename);
			FS_RenameOSPath(name1, curfilename);
		}
		currFile = currFile->next;
	}
}

qboolean Sec_InstallNewFiles(sec_file_t *currFile)
{
	char name1[1024];
	char curfilename[1024];
	
	while(currFile != NULL)
	{
		if(!currFile->needed)
		{
			currFile = currFile->next;
			continue;
		}
		Com_Printf(CON_CHANNEL_SYSTEM,"Install file %s...\n", currFile->name);

		Sec_GetStoreFilename(currFile->name, curfilename, sizeof(curfilename));

		Q_strncpyz(name1, curfilename, sizeof(name1));
		Q_strncat(name1, sizeof(name1), ".new");

		FS_RenameOSPath(name1, curfilename);

		if(!FS_FileExistsOSPath(curfilename))
		{
			Com_PrintError(CON_CHANNEL_SYSTEM,"Failed to rename file %s to %s\n", name1, curfilename);
			Com_PrintError(CON_CHANNEL_SYSTEM,"Update has failed!\n");
			return qfalse;
		}
		currFile = currFile->next;
	}
	return qtrue;
}


FILE* Sec_AutoaupdateLock()
{
	char lockfilename[1024];
	FILE* h;
	time_t start, now;
	FS_BuildOSPathForThread(Sys_BinaryPath(), "autoupdate.lock", "", lockfilename, 0);
	FS_StripTrailingSeperator(lockfilename);
	time(&start);
	
	h = fopen(lockfilename, "wb");

	if(h != NULL){
		return h;
	}
	
	while(h == NULL)
	{
		time(&now);
		if(now - start > 240)
		{//Timeout	    
			return NULL;
		}
		h = fopen(lockfilename, "wb");
		Com_Printf(CON_CHANNEL_SYSTEM,"Autoupdater: waiting for %s to unlock for %d more seconds\n", lockfilename, 240 - (now - start));
		Sys_SleepSec(15);
	}
	fclose( h );
	Sys_SleepSec(15);
	Sys_Restart("System saw an update lock. Will restart now.");	
	return NULL;
	
}


void Sec_AutoupdateUnlock(FILE* h)
{

	if(h != NULL)
	{
		fclose( h );
	}
	
}

cvar_t* sv_updateservers;

void Sec_Update( qboolean getbasefiles ){
    char buff[SEC_UPDATE_INITIALBUFFSIZE];
    char *ptr;
    char baseurl[1024];
	char version[1024];
    sec_file_t files, *currFile = &files;
    int len;
    ftRequest_t* filetransferobj;
    int transret;
	FILE* lockfile;

	struct version_t
	{
		int minor;
		int major;
	};

	struct version_t newversion;
	struct version_t currentversion;

    if(!Sec_Initialized()){
		return;
    }

    Com_Printf(CON_CHANNEL_SYSTEM,"\n-----------------------------\n");
    Com_Printf(CON_CHANNEL_SYSTEM," CoD4X Auto Update\n");
    Com_Printf(CON_CHANNEL_SYSTEM," Current version: %g\n", SEC_VERSION);
    Com_Printf(CON_CHANNEL_SYSTEM," Current subversion: %g\n", Sys_GetCommonVersion());
    Com_Printf(CON_CHANNEL_SYSTEM," Current build: %d\n", Sys_GetBuild());
    Com_Printf(CON_CHANNEL_SYSTEM,"-----------------------------\n\n");

	Sec_SetupPaths();

	sv_updateservers = Cvar_RegisterString("sv_updateservers", "NULL", CVAR_INIT, "Names of the update servers");

    Com_sprintf(buff, sizeof(buff), "%s?mode=11&os=" OS_STRING "&ver=%g", sv_updateservers->string, Sys_GetCommonVersion());

    filetransferobj = FileDownloadRequest( buff );

    if(filetransferobj == NULL){
		return;
    }

	do {
		transret = FileDownloadSendReceive( filetransferobj );
		Sys_SleepUSec(20000);
	} while (transret == 0);

    if(transret < 0)
	{
		FileDownloadFreeRequest(filetransferobj);
		return;
    }
    /* Need to catch errors */
 //   FS_WriteFile("tmp.txt", va("%d", status), 1);

    // TODO: Do something with the status?

//    FS_WriteFile("tmp2.txt", packet.header, packet.headerLength);
//    FS_WriteFile("tmp3.txt", packet.content, packet.contentLength);
    if(filetransferobj->code <= 0){
		Com_PrintError(CON_CHANNEL_SYSTEM,"Receiving data. Error code: %d.\n", filetransferobj->code);
		FileDownloadFreeRequest(filetransferobj);
		return;
    }
    if(filetransferobj->code == 204){
		Com_Printf(CON_CHANNEL_SYSTEM,"\nServer is up to date.\n\n"); //Should not happen anymore. Instead we want to verify all files
		FileDownloadFreeRequest(filetransferobj);
		return;
    }
    else if(filetransferobj->code != 200){
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"The update server's malfunction.\nStatus code: %d.\n", filetransferobj->code);
		FileDownloadFreeRequest(filetransferobj);
		return;
    }

    Com_Memset(&files, 0, sizeof(files));
	
	if(filetransferobj->contentLength >= sizeof(buff))
	{
		len = sizeof(buff) -1;
	}else{
		len = filetransferobj->contentLength;
	}
	
	memcpy(buff, filetransferobj->recvmsg.data + filetransferobj->headerLength, len);
	buff[len] = '\0';

	lockfile = Sec_AutoaupdateLock();
	if(lockfile == NULL)
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Sec_Update: Couldn't acquire a lock for autoupdate. Autoupdate will abort here\n");
		FileDownloadFreeRequest(filetransferobj);
		return;
	}
	
    /* We need to parse filenames etc */
	ptr = Sec_StrTok(buff,"\n",42); // Yes, 42.

	if(ptr == NULL || Q_stricmpn("version: ", ptr, 9))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Sec_Update: Corrupt data from update server. Update aborted.\n");
		FileDownloadFreeRequest(filetransferobj);
		Sec_AutoupdateUnlock(lockfile);
		return;
	}
	Q_strncpyz(version, ptr +9, sizeof(version));

	int l1 = sscanf(Sys_GetCommonVersionString(), "%d.%d", &currentversion.major, &currentversion.minor);
	int l2 = sscanf(version, "%d.%d", &newversion.major, &newversion.minor);
	
	if(l1 != 2 || l2 != 2)
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Sec_Update: Corrupt version strings. Update aborted.\n");
		FileDownloadFreeRequest(filetransferobj);
		Sec_AutoupdateUnlock(lockfile);
		return;
	}

	Com_Printf(CON_CHANNEL_SYSTEM,"New subversion %d.%d\n", newversion.major, newversion.minor);

    ptr = Sec_StrTok(buff,"\n",42); // Yes, 42.

	if(ptr == NULL || Q_stricmpn("baseurl: ", ptr, 9))
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"Sec_Update: Corrupt data from update server. Update aborted.\n");
		FileDownloadFreeRequest(filetransferobj);
		Sec_AutoupdateUnlock(lockfile);
		return;
	}
	Q_strncpyz(baseurl, ptr +9, sizeof(baseurl));
	
	//Parsing update filelist
	while((ptr = Sec_StrTok(NULL,"\n",42)) != NULL)
	{
		currFile->next = Sec_ParseLine(ptr);
		currFile = currFile->next;

		if(currFile == NULL)
		{
			Sec_FreeFileStruct(files.next);
			FileDownloadFreeRequest(filetransferobj);
			Sec_AutoupdateUnlock(lockfile);
			Com_PrintError(CON_CHANNEL_SYSTEM,"Update has failed with: Parser error\n");
			return;
		}
	}
	FileDownloadFreeRequest(filetransferobj);

#ifndef OFFICIAL
	//IF this is a custom build we want to bail out early if this is not really needed
	if(currentversion.major >= newversion.major)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"Update rejected because it is not required.\n");
		Sec_FreeFileStruct(files.next);
		Sec_AutoupdateUnlock(lockfile);
		return;
	}
#endif

	//IF this is a custom build we want to bail out early if this is not really needed
	if(currentversion.major > newversion.major || (currentversion.minor > newversion.minor && currentversion.major == newversion.major))
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"Update rejected because updateserver reports older version.\n");
		Sec_FreeFileStruct(files.next);
		Sec_AutoupdateUnlock(lockfile);
		return;
	}

	if(Sec_RemoveOldInstallfiles(files.next) == qfalse)
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"Update has failed\n");
		Sec_FreeFileStruct(files.next);
		Sec_AutoupdateUnlock(lockfile);
		return;
	}

	if(!Sec_BuildNeededList(files.next))
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"Update not needed. All files are equal.\n");
		Sec_FreeFileStruct(files.next);
		Sec_AutoupdateUnlock(lockfile);
		return;
	}

	sec_file_t *f = files.next;
	while(f != NULL)
	{
		if(!f->needed)
		{
			f = f->next;
			continue;
		}
		switch(Sec_DownloadFile(baseurl, f))
		{
			case 0:
				f = f->next;
				continue;
			case 1:
				break;
			case -1:
			default:
				FileDownloadFreeRequest(filetransferobj);
				Sec_FreeFileStruct(files.next);
				Sec_AutoupdateUnlock(lockfile);
				Com_PrintError(CON_CHANNEL_SYSTEM,"Update has failed\n");
				return;
		}
		if(strstr(f->name, "run"))
		{
			if(Sec_MakeExecutable(f) == qfalse)
			{
				Sec_FreeFileStruct(files.next);
				Sec_AutoupdateUnlock(lockfile);
				Com_PrintError(CON_CHANNEL_SYSTEM,"Update has failed\n");
				return;
			}
		}
		f = f->next;
	}

	//Everything is downloaded and parsed
    Com_Printf(CON_CHANNEL_SYSTEM,"All files downloaded successfully. Applying update...\n");
	//Installing the update files...

	if(Sec_RemoveOldBackupfiles(files.next) == qfalse)
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"Update has failed\n");
		Sec_FreeFileStruct(files.next);
		Sec_AutoupdateUnlock(lockfile);
		return;
	}
	if(Sec_Backupfiles(files.next) == qfalse)
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"Update has failed. Trying to recover...\n");
		Sec_UndoBackup(files.next);
		Sec_FreeFileStruct(files.next);
		Sec_AutoupdateUnlock(lockfile);
		return;
	}
	if(Sec_InstallNewFiles(files.next) == qfalse)
	{
		Com_PrintError(CON_CHANNEL_SYSTEM,"Update has failed. Trying to recover...\n");
		Sec_UndoBackup(files.next);

//		MessageBoxA(NULL, "Couldn't install update", "Couldn't install update", MB_OK);
		
		Sec_AutoupdateUnlock(lockfile);
		Com_Quit_f();
		return;
	}

    //Try just in case we got a copy
    FS_SetPermissionsExec(Sys_ExeFile());

    Sec_FreeFileStruct(files.next);
	Sec_AutoupdateUnlock(lockfile);
	
    Com_Printf(CON_CHANNEL_SYSTEM,"Finalizing update...\n");

    Sys_Restart("System has been updated and will restart now.");

}

