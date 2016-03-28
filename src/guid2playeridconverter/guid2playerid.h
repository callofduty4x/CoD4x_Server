#include <stdint.h>
#include <string.h>
#include <stdlib.h>

static int    I_LongSwap (int l)
{
	uint8_t    b1,b2,b3,b4;

	b1 = l&255;
	b2 = (l>>8)&255;
	b3 = (l>>16)&255;
	b4 = (l>>24)&255;

	return ((int)b1<<24) + ((int)b2<<16) + ((int)b3<<8) + b4;
}

#define f1(x,y,z)   (z ^ (x & (y ^ z)))		/* x ? y : z */
#define f2(x,y,z)   (x ^ y ^ z)			/* XOR */
#define f3(x,y,z)   ((x & y) + (z & (x ^ y)))	/* majority */

/* The SHA Mysterious Constants */

#define K1  0x5A827999L			/* Rounds  0-19: sqrt(2) * 2^30 */
#define K2  0x6ED9EBA1L			/* Rounds 20-39: sqrt(3) * 2^30 */
#define K3  0x8F1BBCDCL			/* Rounds 40-59: sqrt(5) * 2^30 */
#define K4  0xCA62C1D6L			/* Rounds 60-79: sqrt(10) * 2^30 */

/**
* ror32 - rotate a 32-bit value right
* @word: value to rotate
* @shift: bits to roll
*/
static inline uint32_t ror32(uint32_t word, unsigned int shift)
{
       return (word >> shift) | (word << (32 - shift));
}

/**
* rol32 - rotate a 32-bit value left
* @word: value to rotate
* @shift: bits to roll
*/
static inline uint32_t rol32(uint32_t word, unsigned int shift)
{
         return (word << shift) | (word >> (32 - shift));
}
/**
 * sha_init - initialize the vectors for a SHA1 digest
 * @buf: vector to initialize
 */
static void sha_init(uint32_t *buf)
{
	buf[0] = 0x67452301;
	buf[1] = 0xefcdab89;
	buf[2] = 0x98badcfe;
	buf[3] = 0x10325476;
	buf[4] = 0xc3d2e1f0;
}
/**
 * sha_transform - single block SHA1 transform
 *
 * @digest: 160 bit digest to update
 * @data:   512 bits of data to hash
 * @W:      80 words of workspace (see note)
 *
 * This function generates a SHA1 digest for a single 512-bit block.
 * Be warned, it does not handle padding and message digest, do not
 * confuse it with the full FIPS 180-1 digest algorithm for variable
 * length messages.
 *
 * Note: If the hash is security sensitive, the caller should be sure
 * to clear the workspace. This is left to the caller to avoid
 * unnecessary clears between chained hashing operations.
 */
static void sha_transform(uint32_t *digest, const char *in, uint32_t *W)
{
	uint32_t a, b, c, d, e, t, i;

	for (i = 0; i < 16; i++)
		W[i] = I_LongSwap(((const uint32_t *)in)[i]);

	for (i = 0; i < 64; i++)
		W[i+16] = rol32(W[i+13] ^ W[i+8] ^ W[i+2] ^ W[i], 1);

	a = digest[0];
	b = digest[1];
	c = digest[2];
	d = digest[3];
	e = digest[4];

	for (i = 0; i < 20; i++) {
		t = f1(b, c, d) + K1 + rol32(a, 5) + e + W[i];
		e = d; d = c; c = rol32(b, 30); b = a; a = t;
	}

	for (; i < 40; i ++) {
		t = f2(b, c, d) + K2 + rol32(a, 5) + e + W[i];
		e = d; d = c; c = rol32(b, 30); b = a; a = t;
	}

	for (; i < 60; i ++) {
		t = f3(b, c, d) + K3 + rol32(a, 5) + e + W[i];
		e = d; d = c; c = rol32(b, 30); b = a; a = t;
	}

	for (; i < 80; i ++) {
		t = f2(b, c, d) + K4 + rol32(a, 5) + e + W[i];
		e = d; d = c; c = rol32(b, 30); b = a; a = t;
	}

	digest[0] += a;
	digest[1] += b;
	digest[2] += c;
	digest[3] += d;
	digest[4] += e;
}

static uint64_t GUID2PlayerID(const char* guid)
{
	uint32_t digest[5];
	uint32_t workspace[80];
	char data[64];
	uint8_t diggest2[16];
	char digit2[3];
	int len = strlen(guid);
	int i, k;

	if(len != 32)
	{
		return 0;
	}

	sha_init(digest);

	for(i = 0; i < sizeof(diggest2); ++i)
	{
		digit2[i] = guid[2*i];
		digit2[i+1] = guid[2*i +1];
		digit2[i+2] = 0;
		diggest2[i] = strtol(digit2, NULL, 16);;
	}
	for(i = 0; i < sizeof(data); ++i)
	{
		data[i] = diggest2[i % 16] ^ i;
	}
	for(i = 0; i < 200*100; ++i)
	{
		sha_transform(digest, data, workspace);
		for(k = 0; k < 64; ++k)
		{
			data[k] = ((uint32_t)data[k] ^ (uint32_t)digest[k % 5]) ;
		}
	}
	uint32_t accountid = *(uint32_t*)&data[15];
	uint64_t universe = 32;
	uint64_t accounttype = 1;
	uint64_t instance = 1;
	uint64_t steamid = ((uint64_t)universe << 56) | ((uint64_t)accounttype << 52) | ((uint64_t)instance << 32) | accountid;
	return steamid;

}
