#include "sha256.c"
#include "md5.c"

char* Com_CreateHash(const char* string){

    MD5_CTX md5;
    int i;
    int r = strlen(string);
    static char finalsha[65];
    static char finalmd5[33] = {""};
    unsigned char digestmd5[16] = {""}; 
    sha256_context ctx;
    unsigned char digestsha[32];
    const char	*hex = "0123456789abcdef";

    sha256_starts( &ctx );				//Create SHA-256 of HWID
    sha256_update( &ctx, (unsigned char*)string, r );
    sha256_finish( &ctx, digestsha );
    for(i = 0, r=0; i < 32; i++) {
        finalsha[r++] = hex[digestsha[i] >> 4];
        finalsha[r++] = hex[digestsha[i] & 0xf];
    }
    finalsha[65] = 0x00;
    MD5Init(&md5);					//Create MD5 of SHA-256
    MD5Update(&md5 , (unsigned char*)finalsha, 64);
    MD5Final(&md5, digestmd5);
    for(i = 0, r=0; i < 16; i++) {
        finalmd5[r++] = hex[digestmd5[i] >> 4];
        finalmd5[r++] = hex[digestmd5[i] & 0xf];
    }
    finalmd5[33] = 0x00;
    return finalmd5;
}