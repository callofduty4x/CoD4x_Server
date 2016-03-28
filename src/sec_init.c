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

qboolean Sec_Initialized(){
    return initialized;
}

void Sec_Init(void)
{
    int result,i;
    // Connect the math library with the crypt library
	ltc_mp = ltm_desc;
    //Cmd_AddCommand("createCert", Sec_MakeCert_f);
    sec_hashes[SEC_HASH_SHA1].name="SHA1";
    sec_hashes[SEC_HASH_SHA1].ID=SEC_HASH_SHA1;
    sec_hashes[SEC_HASH_SHA1].hashsize=20;
    sec_hashes[SEC_HASH_SHA1].blocksize=64;
    
    sec_hashes[SEC_HASH_SHA1].OID[0]=1;
    sec_hashes[SEC_HASH_SHA1].OID[1]=3;
    sec_hashes[SEC_HASH_SHA1].OID[2]=14;
    sec_hashes[SEC_HASH_SHA1].OID[3]=3;
    sec_hashes[SEC_HASH_SHA1].OID[4]=2;
    sec_hashes[SEC_HASH_SHA1].OID[5]=26;
        
    sec_hashes[SEC_HASH_SHA1].OIDlen=6;
    sec_hashes[SEC_HASH_SHA1].init=&sha1_init;
    sec_hashes[SEC_HASH_SHA1].process=&sha1_process;
    sec_hashes[SEC_HASH_SHA1].done=&sha1_done;
    sec_hashes[SEC_HASH_SHA1].test=&sha1_test;
    sec_hashes[SEC_HASH_SHA1].hmac_block=NULL;
    
    /* ------------------------------------------------------------ */
    
    sec_hashes[SEC_HASH_SHA256].name="SHA256";
    sec_hashes[SEC_HASH_SHA256].ID=SEC_HASH_SHA256;
    sec_hashes[SEC_HASH_SHA256].hashsize=32;
    sec_hashes[SEC_HASH_SHA256].blocksize=64;
    
    sec_hashes[SEC_HASH_SHA256].OID[0]=2;
    sec_hashes[SEC_HASH_SHA256].OID[1]=16;
    sec_hashes[SEC_HASH_SHA256].OID[2]=840;
    sec_hashes[SEC_HASH_SHA256].OID[3]=1;
    sec_hashes[SEC_HASH_SHA256].OID[4]=101;
    sec_hashes[SEC_HASH_SHA256].OID[5]=3;
    sec_hashes[SEC_HASH_SHA256].OID[6]=4;
    sec_hashes[SEC_HASH_SHA256].OID[7]=2;
    sec_hashes[SEC_HASH_SHA256].OID[8]=1;  
    
    sec_hashes[SEC_HASH_SHA256].OIDlen=9;
    sec_hashes[SEC_HASH_SHA256].init=&sha256_init;
    sec_hashes[SEC_HASH_SHA256].process=&sha256_process;
    sec_hashes[SEC_HASH_SHA256].done=&sha256_done;
    sec_hashes[SEC_HASH_SHA256].test=&sha256_test;
    sec_hashes[SEC_HASH_SHA256].hmac_block=NULL;

    /* ------------------------------------------------------------ */    
    
    sec_hashes[SEC_HASH_TIGER].name="tiger";
    sec_hashes[SEC_HASH_TIGER].ID=SEC_HASH_TIGER;
    sec_hashes[SEC_HASH_TIGER].hashsize=24;
    sec_hashes[SEC_HASH_TIGER].blocksize=64;
    
    sec_hashes[SEC_HASH_TIGER].OID[0]=1;
    sec_hashes[SEC_HASH_TIGER].OID[1]=3;
    sec_hashes[SEC_HASH_TIGER].OID[2]=6;
    sec_hashes[SEC_HASH_TIGER].OID[3]=1;
    sec_hashes[SEC_HASH_TIGER].OID[4]=4;
    sec_hashes[SEC_HASH_TIGER].OID[5]=1;
    sec_hashes[SEC_HASH_TIGER].OID[6]=11591;
    sec_hashes[SEC_HASH_TIGER].OID[7]=12;
    sec_hashes[SEC_HASH_TIGER].OID[8]=2;
    
    
    sec_hashes[SEC_HASH_TIGER].OIDlen=9;
    sec_hashes[SEC_HASH_TIGER].init=&tiger_init;
    sec_hashes[SEC_HASH_TIGER].process=&tiger_process;
    sec_hashes[SEC_HASH_TIGER].done=&tiger_done;
    sec_hashes[SEC_HASH_TIGER].test=&tiger_test;
    sec_hashes[SEC_HASH_TIGER].hmac_block=NULL;
    SecCryptErr = CRYPT_OK;
    
    Com_Printf("--- Crypto Initializing ---\n");
    for(i = 0;i<SEC_HASH_SIZE__;++i){
	result = sec_hashes[i].test();
	Com_Printf("Testing %s hash function - %s.\n",sec_hashes[i].name,result==CRYPT_OK ? "positive" : "negative");
	if(result != CRYPT_OK){
	    Com_Error(ERR_FATAL, "Sec module failed to initialize! Error code: %s. Shutting down...\n", Sec_CryptErrStr(result));
    	    return;
	}
    }
    initialized = qtrue;
    Com_Printf("--- Crypto Initialization Complete ---\n");
    return;
}