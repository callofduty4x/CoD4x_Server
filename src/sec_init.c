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

#define LTM_DESC

#include "sec_common.h"
#include "sec_crypto.h"
#include "tomcrypt/tomcrypt.h"


qboolean initialized = qfalse;
int SEC_HASH_SHA1;
int SEC_HASH_SHA256;
int SEC_HASH_TIGER;

qboolean Sec_Initialized(){
    return initialized;
}

void Sec_Init(void)
{
    int result,i;
    // Connect the math library with the crypt library
	ltc_mp = ltm_desc;
    //Cmd_AddCommand("createCert", Sec_MakeCert_f);

    Com_Printf(CON_CHANNEL_SYSTEM,"--- Crypto Initializing ---\n");

    if(register_hash(&sha1_desc) == -1)
    {
      Com_Error(ERR_FATAL, "Couldn't register hash function SHA1");
    }
    if(register_hash(&sha256_desc) == -1)
    {
      Com_Error(ERR_FATAL, "Couldn't register hash function SHA256");
    }
    if(register_hash(&tiger_desc) == -1)
    {
      Com_Error(ERR_FATAL, "Couldn't register hash function TIGER");
    }

    for(i = 0;i < 3; ++i){
    	result = hash_descriptor[i].test();
    	Com_Printf(CON_CHANNEL_SYSTEM,"Testing %s hash function - %s.\n",hash_descriptor[i].name,result==CRYPT_OK ? "positive" : "negative");
    	if(result != CRYPT_OK){
    	    Com_Error(ERR_FATAL, "Sec module failed to initialize! Error code: %s. Shutting down...\n", Sec_CryptErrStr(result));
        	return;
    	}
      if(!Q_stricmp(hash_descriptor[i].name, "sha1"))
      {
        SEC_HASH_SHA1 = i;
      }else if(!Q_stricmp(hash_descriptor[i].name, "sha256")){
        SEC_HASH_SHA256 = i;
      }else if(!Q_stricmp(hash_descriptor[i].name, "tiger")){
        SEC_HASH_TIGER = i;
      }
    }
    initialized = qtrue;
    Com_Printf(CON_CHANNEL_SYSTEM,"--- Crypto Initialization Complete ---\n");
    return;
}
