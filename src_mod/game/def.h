#ifndef __DEF_H__
#define __DEF_H__

#include "../sys_cod4defs.h"

#define MAX_QPATH 64
#define MAX_TOKENLENGTH     1024


typedef struct pc_token_s
{
	int type;
	int subtype;
	int intvalue;
	float floatvalue;
	char string[MAX_TOKENLENGTH];
} pc_token_t;


#endif