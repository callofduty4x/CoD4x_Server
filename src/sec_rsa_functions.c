
#include "tomcrypt/tomcrypt.h"

int rsa_decrypt_puplickey_nnj(const unsigned char *in,unsigned long inlen,unsigned char *out,unsigned long *outlen,int *stat, rsa_key *key){
	unsigned long modulus_bitlen, modulus_bytelen, x;
	int err;
	unsigned char *tmp;

	LTC_ARGCHK(out		!= NULL);
	LTC_ARGCHK(outlen != NULL);
	LTC_ARGCHK(key		!= NULL);
	LTC_ARGCHK(stat	 != NULL);

	*stat = 0;

	modulus_bitlen = ltc_mp.count_bits( (key->N));

	modulus_bytelen = ltc_mp.unsigned_size( (key->N));
	if(modulus_bytelen != inlen) {
		return CRYPT_INVALID_PACKET;
	}

	tmp = XMALLOC(inlen);
	if (tmp == NULL) {
	 return CRYPT_MEM;
	}

	x = inlen;
	if ((err = ltc_mp.rsa_me(in, inlen, tmp, &x, PK_PUBLIC, key)) != CRYPT_OK) {
	 XFREE(tmp);
	 return err;
	}

	err = pkcs_1_v1_5_decode(tmp ,x, LTC_LTC_PKCS_1_V1_5, modulus_bitlen, out, outlen, stat);

	XFREE(tmp);
	return err;
}