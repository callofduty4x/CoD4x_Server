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
#include "tomcrypt/tomcrypt.h"
#include "sec_common.h"


void *Sec_Malloc(size_t size){
    void *ptr = malloc(size);
    if(ptr == NULL){
	printf("ERROR: Sec_Malloc - No memory!\nTerminating...\n");
	exit(666); // Because lack of memory is EVIL!
    }
    return ptr;
}


int SecCryptErr;

char *Sec_CryptErrStr(int code){
    switch(code){

    case CRYPT_OK: return "CRYPT_OK";
    case CRYPT_ERROR: return "CRYPT_ERROR";
    case CRYPT_NOP: return "CRYPT_NOP";

    case CRYPT_INVALID_KEYSIZE: return "CRYPT_INVALID_KEYSIZE";
    case CRYPT_INVALID_ROUNDS: return "CRYPT_INVALID_ROUNDS";
    case CRYPT_FAIL_TESTVECTOR: return "CRYPT_FAIL_TESTVECTOR";

    case CRYPT_BUFFER_OVERFLOW: return "CRYPT_BUFFER_OVERFLOW";
    case CRYPT_INVALID_PACKET: return "CRYPT_INVALID_PACKET";

    case CRYPT_INVALID_PRNGSIZE: return "CRYPT_INVALID_PRNGSIZE";
    case CRYPT_ERROR_READPRNG: return "CRYPT_ERROR_READPRNG";

    case CRYPT_INVALID_CIPHER: return "CRYPT_INVALID_CIPHER";
    case CRYPT_INVALID_HASH: return "CRYPT_INVALID_HASH";
    case CRYPT_INVALID_PRNG: return "CRYPT_INVALID_PRNG";

    case CRYPT_MEM: return "CRYPT_MEM";

    case CRYPT_PK_TYPE_MISMATCH: return "CRYPT_PK_TYPE_MISMATCH";
    case CRYPT_PK_NOT_PRIVATE: return "CRYPT_PK_NOT_PRIVE";

    case CRYPT_INVALID_ARG: return "CRYPT_INVALID_ARG";
    case CRYPT_FILE_NOTFOUND: return "CRYPT_FILE_NOTFOUND";

    case CRYPT_PK_INVALID_TYPE: return "CRYPT_PK_INVALID_TYPE";
    case CRYPT_PK_INVALID_SYSTEM: return "CRYPT_PK_INVALID_SYSTEM";
    case CRYPT_PK_DUP: return "CRYPT_PK_DUP";
    case CRYPT_PK_NOT_FOUND: return "CRYPT_NO_FOUND";
    case CRYPT_PK_INVALID_SIZE: return "CRYPT_INVALID_SIZE";

    case CRYPT_INVALID_PRIME_SIZE: return "CRYPT_INVALID_PRIME_SIZE";
    case CRYPT_PK_INVALID_PADDING: return "CRYPT_PK_INVALID_PADDING";
    default: return "Unknown error";
    }
}
/*
================================
 Hash descriptors from tomcrypt
================================
*/
#if 0
volatile const struct ltc_hash_descriptor sec_sha1_desc =
{
    "sha1",
    2,
    20,
    64,

    /* OID */
   { 1, 3, 14, 3, 2, 26,  },
   6,

    &sha1_init,
    &sha1_process,
    &sha1_done,
    &sha1_test,
    NULL
};

volatile const struct ltc_hash_descriptor sec_sha256_desc =
{
    "sha256",
    0,
    32,
    64,

    /* OID */
   { 2, 16, 840, 1, 101, 3, 4, 2, 1,  },
   9,

    &sha256_init,
    &sha256_process,
    &sha256_done,
    &sha256_test,
    NULL
};

volatile const struct ltc_hash_descriptor sec_tiger_desc =
{
    "tiger",
    1,
    24,
    64,

    /* OID */
   { 1, 3, 6, 1, 4, 1, 11591, 12, 2,  },
   9,

    &tiger_init,
    &tiger_process,
    &tiger_done,
    &tiger_test,
    NULL
};
#endif

/*
unsigned long sec_test = sec_tiger_desc.hashsize;
unsigned long sec_test2 = tiger_desc.hashsize;*/
