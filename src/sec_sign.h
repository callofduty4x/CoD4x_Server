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
#ifndef SEC_SIGN_H
#define SEC_SIGN_H

#define SEC_SIGN_VER 0x00010000;


#include "q_shared.h"
#include "sec_common.h"
#include "tomcrypt/tomcrypt.h"

#include <time.h>
#include <stdio.h>
#include <stdlib.h>


typedef struct{
    int version;
    int dateIssued;
    int dateExpires;
    char commonName[128];
    char companyName[128];
    rsa_key pubKey;
}sec_cert_t;

typedef struct sec_certificate_s{
    sec_cert_t certificate;
    char signature[257];
    int sigSize;
    struct sec_certificate_s *issuer;
}sec_certificate_t;


qboolean Sec_MakeRsaKey(int size,const rsa_key *key);
qboolean Sec_SignHash(const char *in, size_t inSize, rsa_key *key, char *out, size_t *outSize);
qboolean Sec_VerifyHash(const char *sig, size_t sigSize, const rsa_key *key, const char *hash, int hashSize);
qboolean Sec_MakeCertificate(rsa_key *key, const char *commonName, const char *companyName, int expires, const char *signature, int sigSize, sec_certificate_t *issuer,rsa_key *sigKey,sec_certificate_t *out);
void Sec_ClearCertificate(sec_certificate_t *cert);
qboolean Sec_WriteCertificateToFile(sec_certificate_t *certificate, char *filename);
qboolean Sec_ReadCertificateFromFile(sec_certificate_t *cert, char *filename);
int rsa_decrypt_puplickey_nnj(const unsigned char *in,unsigned long inlen,unsigned char *out,unsigned long *outlen,int *stat, rsa_key *key);
qboolean Sec_VerifyMemory(const char* expectedb64hash, void* memory, int lenmem);
#endif