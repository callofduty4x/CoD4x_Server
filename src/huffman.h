/*
===========================================================================
    Copyright (C) 1999-2005 Id Software, Inc.

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



#ifndef __HUFFMAN_H__
#define __HUFFMAN_H__

#include "msg.h"

#define NYT HMAX                    /* NYT = Not Yet Transmitted */
#define INTERNAL_NODE ( HMAX + 1 )

typedef struct nodetype {
	struct  nodetype *left, *right, *parent; /* tree structure */
//	struct  nodetype *next, *prev; /* doubly-linked list */
//	struct  nodetype **head; /* highest ranked node in block */
	int weight;
	int symbol; //0x10
//	struct  nodetype *next, *prev; /* doubly-linked list */
//	struct  nodetype **head; /* highest ranked node in block */

} node_t; //Length: 20

#define HMAX 256 /* Maximum symbol */

typedef struct {
	int blocNode;
	int blocPtrs;

	node_t*     tree;
	node_t*     loc[HMAX + 1];
	node_t**    freelist;

	node_t nodeList[768];
	node_t*     nodePtrs[768];

} huff_t;
/* size 19476*/

int MSG_ReadBitsCompress(const byte* input, int readsize, byte* outputBuf, int outputBufsize);
int MSG_WriteBitsCompress( const byte *datasrc, byte *buffdest, int bytecount);
void Huffman_InitMain();

#endif

