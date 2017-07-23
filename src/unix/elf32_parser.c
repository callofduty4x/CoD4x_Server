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
#include <elf.h>
#include <stdlib.h>
#include "../qcommon_io.h" // Com_Printf
#include "../q_shared.h"   // qboolean
#include "../objfile_parser.h"

#define MAX_SYM_STRINGS 128 * 1024

char** ELF32_GetStrTable(void *buff, int imagelen, sharedlib_data_t *text)
{
    Elf32_Ehdr *hdr;
    Elf32_Shdr *shdr;
    char *strtable;
    char **strings;
    qboolean textfound = qfalse;
    qboolean dynstrfound = qfalse;
    int i, j;//, nstrings = 0;
    char *strptr, *endstrptr;

    hdr = buff;
    if(hdr->e_ident[0] != ELFMAG0 || hdr->e_ident[1] != ELFMAG1 || hdr->e_ident[2] != ELFMAG2 || hdr->e_ident[3] != ELFMAG3){
        return NULL;
    }
    if(hdr->e_type != ET_DYN){
        return NULL;
    }
    if((shdr = (Elf32_Shdr *)(buff + hdr->e_shoff)) >= (Elf32_Shdr *)(buff + imagelen - sizeof(Elf32_Shdr))){
        return NULL;
    }
    if(hdr->e_shstrndx!=SHN_UNDEF){
        if(hdr->e_shstrndx!=SHN_XINDEX){     // Typical case, standard elf addressing
            if(hdr->e_shstrndx<=hdr->e_shnum)
                strtable = buff + shdr[hdr->e_shstrndx].sh_offset;
            else{
                Com_Printf(CON_CHANNEL_SYSTEM,"Error: the string table index is too big! String table index: %d, section headers: %d.\n",hdr->e_shstrndx,hdr->e_shnum);
				return NULL;
            }
        }else{        // So called 'elf extended addressing'. Because 'simple' is too mainstream.
            if(shdr[0].sh_link<=hdr->e_shnum)
                strtable = buff + shdr[shdr[0].sh_link].sh_offset;
            else{
                Com_Printf(CON_CHANNEL_SYSTEM,"Error: the string table index is too big! String table index: %d, section headers: %d.\n",shdr[0].sh_link,hdr->e_shnum);
				return NULL;
            }
        }
    }
    else{
        Com_Printf(CON_CHANNEL_SYSTEM,"Could not find the string table.\n");
        return NULL;
    }

    strings = malloc(sizeof(char**) * MAX_SYM_STRINGS);
    //Com_Printf(CON_CHANNEL_SYSTEM,"Debug2\n");
    for(j=0;j<hdr->e_shnum;++j){
        if(strcmp(&strtable[shdr[j].sh_name],".text")==0){
            textfound = qtrue;
            text->size = shdr[j].sh_size;
            text->offset = shdr[j].sh_addr;
            //Com_Printf(CON_CHANNEL_SYSTEM,"Debug: .text section found! Size: %d, address: %d.\n",shdr[j].sh_size,shdr[j].sh_addr);
            if(dynstrfound)
                break;
        }
        else if(strcmp(&strtable[shdr[j].sh_name],".dynstr")==0){
            dynstrfound = qtrue;
            //nstrings = shdr[j].sh_size;
			strptr = shdr[j].sh_offset + buff;
			endstrptr = shdr[j].sh_offset + shdr[j].sh_size + buff;

			for(i = 0; strptr < endstrptr && i < MAX_SYM_STRINGS; i++)
			{
			    strings[i] = strptr;
				while(*strptr != '\0' && strptr < endstrptr)
				{
					strptr++;
				}
				strptr++;
			}

            if(textfound)
                break;
        }
    }
    if(textfound && dynstrfound){
        return strings;
    }else{
		free(strings);
        return NULL;
    }
}
