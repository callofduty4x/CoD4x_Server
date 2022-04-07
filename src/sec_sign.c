
#include "qcommon.h"
#include "sec_sign.h"
#include "sec_crypto.h"
#include "tomcrypt/math/tommath.h"


qboolean Sec_MakeRsaKey(int size,const rsa_key *key){
    int res = rsa_make_key(NULL,0,size,65537,(rsa_key *)key);
    return res;
}

qboolean Sec_SignHash(const char *in, size_t inSize, rsa_key *key, char *out, size_t *outSize){
    long unsigned int is = inSize,os = *outSize;
    int res = rsa_sign_hash_ex((const unsigned char *)in,is,(unsigned char *)out,&os,LTC_LTC_PKCS_1_V1_5,NULL,0,0,16,key);
    *outSize = os;
    return res;
}

qboolean Sec_VerifyHash(const char *sig, size_t sigSize, const rsa_key *key, const char *hash, int hashSize){
    int n = 0;
    int res = rsa_verify_hash_ex((const unsigned char *)sig,sigSize,(const unsigned char *)hash,hashSize,LTC_LTC_PKCS_1_V1_5,0,16,&n,(rsa_key *)key);
    return (n == 1 && res == CRYPT_OK)? qtrue : qfalse;
}


qboolean Sec_MakeCertificate(rsa_key *key, const char *commonName, const char *companyName, int expires, const char *signature, int sigSize, sec_certificate_t *issuer,rsa_key *sigKey,sec_certificate_t *out){
    
    hash_state md;
    char hash[257];
    size_t len;
    
    const struct ltc_hash_descriptor *desc = &sha256_desc;
    
    
    memset(out,0,sizeof(sec_certificate_t));
    out->certificate.version = SEC_SIGN_VER;
    strcpy(out->certificate.commonName,commonName);
    strcpy(out->certificate.companyName,companyName);
    out->certificate.dateExpires = expires;
    out->certificate.dateIssued = time(NULL);
    desc->init(&md);
    desc->process(&md,(const unsigned char *)&(out->certificate),sizeof(sec_cert_t));
    desc->done(&md,(unsigned char *)hash);
    hash[256]=0;
    out->certificate.pubKey.type = PK_PUBLIC;
    mp_copy(out->certificate.pubKey.N,key->N);
    mp_copy(out->certificate.pubKey.e,key->e);
    
    len = sizeof(out->signature);
    if(issuer != NULL){
	if(!Sec_SignHash(hash,sizeof(hash),sigKey,out->signature,&len)){
	    return qfalse;
	}
	out->sigSize = len;
	out->issuer = issuer;
    }
    return qtrue;
}
void Sec_ClearCertificate(sec_certificate_t *cert){
    mp_clear_multi(cert->certificate.pubKey.N,cert->certificate.pubKey.e);
}
qboolean Sec_WriteCertificateToFile(sec_certificate_t *certificate, char *filename){
    int len;
    char buf[2048];
    long unsigned int keysize;
    sec_certificate_t *cert;
    FILE *fp = fopen(filename,"w");
    if(fp == NULL){
	return qfalse;
    }
    fputs("Signature File. Visit us at www.cod4x.ovh!",fp);
    fputc(0,fp);
    cert = certificate;
    do{    
        len = 16 + strlen(cert->certificate.commonName) + strlen(cert->certificate.companyName) + cert->sigSize;
        
        keysize = sizeof(buf);
        
        if(rsa_export((unsigned char *)buf,&keysize,PK_PUBLIC,&(cert->certificate.pubKey)) != CRYPT_OK){
		fclose(fp);	
		return qfalse;
        }
        len += keysize;
        
        fprintf(fp,"%d\n",len);
        fwrite(&cert->certificate,12,1,fp);
        fputc(0,fp);
        fputs(cert->certificate.commonName,fp);
        fputs(cert->certificate.companyName,fp);
        fprintf(fp,"%lu\n",keysize);
        fwrite(buf,keysize,1,fp);
        fprintf(fp,"%d\n",cert->sigSize);
        fwrite(cert->signature,cert->sigSize,1,fp);
        
    
        fputc(0,fp);
        fputc(0,fp);
        
        fflush(fp);
        cert = cert->issuer;
    }while(cert != NULL);
    fclose(fp);
    return qtrue;
}

qboolean Sec_ReadCertificateFromFile(sec_certificate_t *cert, char *filename){
    
    return qtrue;
}

int Sec_Pem2Der(char* pemcert, int pemlen, unsigned char* dercert, unsigned int *derlen){
	char* pos;
	unsigned char assemblybuf[32768];
	int i;

	pos = strstr(pemcert, "--\n");
	if(pos == NULL){
		pos = strstr(pemcert, "--\r\n");
	}
	if(pos == NULL){
		return CRYPT_INVALID_PACKET;
	}
	while(*pos != '\n'){
		++pos;
	}
	i = 0;
	while(*pos){
		if(*pos == '-'){
			break;
		}
		if(*pos > ' ' && *pos <= 'z'){
			assemblybuf[i] = *pos;
			++i;
		}
		++pos;
	}

	return base64_decode(assemblybuf, i, dercert, (long unsigned int*)derlen);
}

qboolean Sec_VerifyMemory(const char* expectedb64hash, void* memory, int lenmem)
{
	unsigned char dercert[16384];
	unsigned int dercertlen;
	byte cleartext[16384];
	byte ciphertext[0x20000];
	unsigned long cleartextlen, ciphertextlen;
	int decryptstat;
	int sta;
	char hash[1025];
	long unsigned int sizeofhash;
	rsa_key rsakey;

	dercertlen = sizeof(dercert);

	if(Sec_Pem2Der(cod4xpem, strlen(cod4xpem), dercert, &dercertlen) != CRYPT_OK){
		Com_PrintError(CON_CHANNEL_SYSTEM,"Pem to Der conversion failed\n");
		return qfalse;
	}
	ciphertextlen = sizeof(ciphertext);


	if(base64_decode((byte*)expectedb64hash, strlen((char*)expectedb64hash), ciphertext, (long unsigned int*)&ciphertextlen) != CRYPT_OK)
	{
		Com_DPrintf(CON_CHANNEL_SYSTEM,"Not a valid base64 text\n");
		return qfalse;
	}

	if((sta = rsa_import(dercert, dercertlen, &rsakey)) != CRYPT_OK){
		Com_PrintError(CON_CHANNEL_SYSTEM,"rsa_import failed with error code %d:%s\n", sta, Sec_CryptErrStr(sta));
		return qfalse;
	}

	cleartextlen = sizeof(cleartext) -1;

	sta = rsa_decrypt_puplickey_nnj(ciphertext, ciphertextlen, cleartext, &cleartextlen, &decryptstat, &rsakey);
	
	rsa_free(&rsakey);
	
	if(sta != CRYPT_OK || cleartextlen < 0 || cleartextlen > sizeof(cleartext) -1){
		Com_PrintError(CON_CHANNEL_SYSTEM,"rsa_decrypt_puplickey_nnj failed with error code %d:%s\n", sta, Sec_CryptErrStr(sta));
		return qfalse;
	}

	cleartext[cleartextlen] = '\0';
	
	sizeofhash = sizeof(hash);
	
	if(!Sec_HashMemory(SEC_HASH_SHA256, memory, lenmem, hash, &sizeofhash, qfalse)){
		Com_PrintError(CON_CHANNEL_SYSTEM,"Hashing has failed with errorcode %s\n", Sec_CryptErrStr(SecCryptErr));
		return qfalse;
	}

	if(Q_stricmp(hash, (char*)cleartext) != 0)
	{
		return qfalse;
	}
	return qtrue;
	
}
