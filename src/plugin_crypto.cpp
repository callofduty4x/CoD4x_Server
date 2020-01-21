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

#include "plugin_crypto.h"

qboolean PHandler_Hash(pluginHash_t algo, void *in, size_t inSize, void *out, size_t outSize){
    if(in == NULL || out == NULL || inSize < 1 || outSize < (1)){
	return qfalse;
    }
    hash_state md;
    struct ltc_hash_descriptor *hs;
    switch(algo){
	case P_HASH_SHA1:
	    hs = (struct ltc_hash_descriptor *)&sha1_desc;
	    break;
	case P_HASH_SHA256:
	    hs = (struct ltc_hash_descriptor *)&sha256_desc;
	    break;
	case P_HASH_TIGER:
	    hs = (struct ltc_hash_descriptor *)&tiger_desc;
	    break;
	default:
	    return qfalse;
    }
    if(hs->hashsize >= outSize){
        return qfalse;
    }
    hs->init(&md);
    hs->process(&md, in, inSize);
    hs->done(&md,out);
    return qtrue;
}