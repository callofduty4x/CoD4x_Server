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


#include <string.h>
#include <stdlib.h>
#include <windows.h>
#include "../qcommon_io.h" // Com_Printf
#include "../g_shared.h"   // qboolean
#include "../objfile_parser.h"
#include "../sys_cod4defs.h"
#include "../sys_main.h"

void* PE32_FindFileOffset(void *buff, int len, DWORD RVA)
{
	int i;
	DWORD dwSectionRawBase;
	DWORD dwSectionRVA;
	DWORD dwSectionSize;
	
	// get dos header
	IMAGE_DOS_HEADER *dosHeader = (IMAGE_DOS_HEADER*)(buff);
	// get nt header
	IMAGE_NT_HEADERS *ntHeader = (IMAGE_NT_HEADERS*)((DWORD)buff + dosHeader->e_lfanew);
	// iterate through section headers and find the fileoffset for our RVA
	int nSections = ntHeader->FileHeader.NumberOfSections;

	for ( i = 0; i < nSections; i++)
	{
		IMAGE_SECTION_HEADER sectionHeader = *(IMAGE_SECTION_HEADER*) ((DWORD)buff + dosHeader->e_lfanew + sizeof(IMAGE_NT_HEADERS) + i*sizeof(IMAGE_SECTION_HEADER));

		// the values you need
		dwSectionRVA = sectionHeader.VirtualAddress;
		dwSectionSize = sectionHeader.Misc.VirtualSize;
		dwSectionRawBase = sectionHeader.PointerToRawData;
		if( RVA >= dwSectionRVA && RVA < dwSectionRVA + dwSectionSize)
		{ 	
			/* Out of range */
			if(RVA - dwSectionRVA + dwSectionRawBase < dosHeader->e_lfanew + sizeof(IMAGE_NT_HEADERS) || RVA - dwSectionRVA + dwSectionRawBase > len)
			{
				return NULL;
			}
			/* Valid real offset */
			return (void*)(RVA - dwSectionRVA + dwSectionRawBase + (DWORD)buff);
		}
	}
	return NULL;
}


#define MAX_IMPORT_STRINGS 4096

char** PE32_GetStrTable(void *buff, int len, sharedlib_data_t *text)
{
/*
    Elf32_Ehdr *hdr;
    Elf32_Shdr *shdr;
    char *strtable;
    char *strings;
    void *buff;
    qboolean textfound = qfalse;
    qboolean dynstrfound = qfalse;
    int j,nstrings = 0;
    long len;
*/   
	int i;
	WORD dosMagic;
	DWORD peMagic;
	char exefilename[MAX_OSPATH];
	char* exefilenameptr;
	
	char** strings;
	int nstrings;

	((char*)&dosMagic)[0] = 'M';
	((char*)&dosMagic)[1] = 'Z';
	
	((char*)&peMagic)[0] = 'P';
	((char*)&peMagic)[1] = 'E';
	((char*)&peMagic)[2] = '\0';
	((char*)&peMagic)[3] = '\0';
	
	if(len < 0)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"Not a valid PE file\n");
		return NULL;
	}
	// get dos header
	IMAGE_DOS_HEADER *dosHeader = (IMAGE_DOS_HEADER*)(buff);
	if( len <= sizeof(IMAGE_DOS_HEADER) || dosHeader->e_magic != dosMagic)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"Not a valid PE file\n");
		return NULL;
	}
	if(dosHeader->e_lfanew < 0 || dosHeader->e_lfanew + sizeof(IMAGE_NT_HEADERS) > len)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"Not a valid PE file\n");
		return NULL;
	}
	// get nt header
	IMAGE_NT_HEADERS *ntHeader = (IMAGE_NT_HEADERS*)((DWORD)buff + dosHeader->e_lfanew);
	if(ntHeader->Signature != peMagic)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"Not a valid PE file\n");
		return NULL;
	}
	if((DWORD)(&(ntHeader->OptionalHeader)) < (DWORD)buff || (DWORD)(&(ntHeader->OptionalHeader)) + sizeof(IMAGE_OPTIONAL_HEADER) > len + (DWORD)buff)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"Not a valid PE file\n");
		return NULL;
	}
	//get optional header
	IMAGE_OPTIONAL_HEADER *OptionalHeader = &ntHeader->OptionalHeader;
	if((DWORD)(&OptionalHeader->DataDirectory) < (DWORD)buff || (DWORD)(&OptionalHeader->DataDirectory) + 15*sizeof(IMAGE_DATA_DIRECTORY) > len + (DWORD)buff)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"Not a valid PE file\n");
		return NULL;
	}
	//get the DataDirectory
	IMAGE_DATA_DIRECTORY *DataDirectory = OptionalHeader->DataDirectory;
	
	int nSections = ntHeader->FileHeader.NumberOfSections;

	if(dosHeader->e_lfanew + sizeof(IMAGE_NT_HEADERS) + nSections*sizeof(IMAGE_SECTION_HEADER) > len)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"Not a valid PE file\n");
		return NULL;
	}
	
	//get the ImportTable
	DWORD importTabRVA = DataDirectory[1].VirtualAddress;
	//DWORD importTabSize = DataDirectory[1].Size;
	if(importTabRVA == 0)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"PE file has no importtable\n");
		return NULL;
	}
	
	
	IMAGE_IMPORT_DESCRIPTOR *imports = (IMAGE_IMPORT_DESCRIPTOR*)PE32_FindFileOffset(buff, len, importTabRVA);
	IMAGE_THUNK_DATA *Thunk;
	
	if(imports == NULL)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"PE file has an invalid importtable\n");
		return NULL;
	}
	
	/* Hack to import from our running exe file with any name */
	Q_strncpyz(exefilename, Sys_ExeFile(), sizeof(exefilename));
	exefilenameptr = strrchr(exefilename, '\\');
	if(exefilenameptr == NULL)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"An unexpected error in .exe filepath occurred while analysing the PE file\n");		
		return NULL;
	}
	exefilenameptr++;
	if(strlen(exefilenameptr) > MAX_QPATH || strlen(exefilenameptr) < 4)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"An unexpected error in .exe filepath occurred while analysing the PE file\n");		
		return NULL;
	}

	DWORD FuncNameRVA;
	char* FuncName;
	
	/* Assume we have a lot imports but we can not know the number of imports. Just malloc a big block of memory */
	strings = (char **)malloc(MAX_IMPORT_STRINGS * sizeof(char**));
	nstrings = 0;

	do
	{
		char* modulname = PE32_FindFileOffset(buff, len ,imports->Name);
		if(modulname == NULL)
		{
			Com_Printf(CON_CHANNEL_SYSTEM,"PE file has an invalid importtable\n");
			return NULL;
		}
		if(!Q_stricmp(modulname, "_____________________________________________" EXECUTABLE_NAME ".exe"))
		{
			Q_strncpyz(modulname, exefilenameptr, strlen(modulname) +1);
		}
//		Com_Printf(CON_CHANNEL_SYSTEM,"Module: %s\n", modulname);
		if(imports->OriginalFirstThunk > 0)
		{
			Thunk = PE32_FindFileOffset(buff, len, imports->OriginalFirstThunk);
		}else if(imports->FirstThunk > 0){
			Thunk = PE32_FindFileOffset(buff, len, imports->FirstThunk);			
		}else{
			Thunk = NULL;
		}
		if(Thunk != NULL)
		{
			i = 0;
			while( Thunk->u1.Ordinal != 0 && ( (DWORD)Thunk + sizeof(IMAGE_THUNK_DATA) < (DWORD)buff + len) )
			{
				if(Thunk->u1.Ordinal & IMAGE_ORDINAL_FLAG32)
				{
//					Com_Printf(CON_CHANNEL_SYSTEM,"%d: Ordinal: %d\n", i, LOWORD(Thunk->u1.Ordinal));
				}else{
					FuncNameRVA = Thunk->u1.AddressOfData;
					/* Now we have the desired RVA */
					FuncName = (char*)PE32_FindFileOffset(buff, len, FuncNameRVA);
					if(FuncName == NULL)
					{
						Com_Printf(CON_CHANNEL_SYSTEM,"PE file has an invalid importtable\n");
						free(strings);
						return NULL;
					}
					/* Skip the 2 Bit Hint */
					FuncName = &FuncName[2];
					if(nstrings < MAX_IMPORT_STRINGS -1)
					{
						strings[nstrings] = FuncName;
						nstrings ++;
//						Com_Printf(CON_CHANNEL_SYSTEM,"%d: FuncName: %s\n", i, FuncName);
					}
				}
				Thunk++;
				i++;
			}				
		}
		imports++;
	}while(imports->Name != 0 && ((DWORD)imports + sizeof(IMAGE_IMPORT_DESCRIPTOR) < (DWORD)buff + len));
	
	if((DWORD)imports + sizeof(IMAGE_IMPORT_DESCRIPTOR) >= (DWORD)buff + len)
	{
		Com_Printf(CON_CHANNEL_SYSTEM,"PE file has an invalid importtable\n");
		free(strings);
		return NULL;
	}
	strings[nstrings] = NULL;
	return strings;
}
