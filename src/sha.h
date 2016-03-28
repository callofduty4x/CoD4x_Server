#include <stdint.h>

void sha_transform(uint32_t *digest, const char *in, uint32_t *W);
void sha_init(uint32_t *buf);