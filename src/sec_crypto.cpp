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

#include "sec_crypto.h"
#include "sec_common.h"


qboolean Sec_BinaryToHex(char *in,unsigned long inSize,char *out, unsigned long *outSize){
    if(*outSize < inSize * 2+1){
	//printf("Sec_BinaryToHex: DEBUG: %lu, %lu\n",*outSize,inSize * 4);
	SecCryptErr = CRYPT_MEM;
	return qfalse;
    }
    int i,j;
    char hex[17]="0123456789abcdef";
    for(i=0,j=0;i<inSize && j < *outSize;i++,j+=2){
	//Sec_CharToHex(in[i],out+(i*2));
	out[j+1]= hex[in[i]&0xF];
	out[j]= hex[(in[i]>>4)&0xF];
	out[j+2]= 0;
	//printf("%d,%d,%c%c |\n",i,j,out[j],out[j+1]);
    }
    //printf("\n\n");
    return qtrue;

}
qboolean Sec_HashMemory(int algo, void *in, size_t inSize, void *out, long unsigned int *outSize,qboolean binaryOutput){
    //__asm__("int $3");
    if(in == NULL || out == NULL || *outSize < 1 || inSize < 1 || algo >= TAB_SIZE){
	SecCryptErr = CRYPT_INVALID_ARG;
	return qfalse;
    }
    if(!Sec_Initialized()){
	return qfalse;
    }

    hash_state md;
    int result;
    long unsigned int size;
    unsigned char *buff = NULL,*buff2 = NULL;
    struct ltc_hash_descriptor *hs = &hash_descriptor[algo];

    if(hs->name == NULL){
    	SecCryptErr = CRYPT_INVALID_ARG;
    	return qfalse;
    }

    SecCryptErr = CRYPT_OK;
    size = (binaryOutput ? hs->hashsize / 4: hs->hashsize);

    if(size > *outSize){
	SecCryptErr = CRYPT_MEM;
        return qfalse;
    }

    if(!binaryOutput) {buff = (unsigned char *)Sec_Malloc(sizeof(unsigned char) * size); buff2 = buff; }
    else {buff2 = NULL; buff = out; }

    if((result = hs->init(&md)) != CRYPT_OK)		   { Sec_Free(buff2); SecCryptErr = result; return qfalse; }
    if((result = hs->process(&md, in, inSize)) != CRYPT_OK){ Sec_Free(buff2); SecCryptErr = result; return qfalse; }
    if((result = hs->done(&md,buff)) != CRYPT_OK)	   { Sec_Free(buff2); SecCryptErr = result; return qfalse; }

    if(!binaryOutput){
	Sec_BinaryToHex((char *)buff,hs->hashsize,out,outSize);
    }
    else *outSize = hs->hashsize;

    Sec_Free(buff2);

    return (SecCryptErr == CRYPT_OK);
}

qboolean Sec_HashFile(int algo, const char *fname, void *out, long unsigned *outSize,qboolean binaryOutput)
{
    if(fname == NULL || out == NULL || outSize == NULL || *outSize < 1 || algo < 0 || algo >= TAB_SIZE){
	SecCryptErr = CRYPT_INVALID_ARG;
	return qfalse;
    }
    if(!Sec_Initialized()){
	return qfalse;
    }
    hash_state md;
    FILE *fp;
    unsigned char buff[1024];
    unsigned char *ptr;
    int x,result,size;
    struct ltc_hash_descriptor *hs = &hash_descriptor[algo];
    SecCryptErr = CRYPT_OK;

    if(hs->name == NULL){
    	SecCryptErr = CRYPT_INVALID_ARG;
    	return qfalse;
    }

    size = binaryOutput ? hs->hashsize / 4 : hs->hashsize;
    if(size > *outSize){
	SecCryptErr = CRYPT_MEM;
        return qfalse;
    }
    unsigned long dbg = 0;

    if((result = hs->init(&md))!=CRYPT_OK){ SecCryptErr=result; return qfalse; }
    fp = fopen(fname,"rb");
    if(fp==NULL){
	SecCryptErr = CRYPT_INVALID_ARG;
	return qfalse;
    }
    do{
        x = fread(buff, 1, sizeof(buff), fp);

        if ((result = hs->process(&md, buff, x)) != CRYPT_OK){
           SecCryptErr = result;
           fclose(fp);
           return qfalse;
        }
        dbg += x;
    }while (x == sizeof(buff));
    //printf("File size: %lu\n",dbg);
    fclose(fp);
    ptr = binaryOutput ? out : buff;
    if((result = hs->done(&md,buff))!=CRYPT_OK){ SecCryptErr = result; return qfalse; }
    if(!binaryOutput){
	Sec_BinaryToHex((char *)ptr,hs->hashsize,out,outSize);
    }
    else *outSize = hs->hashsize;
    return (SecCryptErr == CRYPT_OK);
}
