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



//#define Sec_Malloc(x) malloc(x)

void *Sec_Malloc(size_t size);
#define Sec_MemInit(n) void *_secmem[n]
#define Sec_GMalloc(type,n) (type *)Sec_Malloc(sizeof(type)*n)
#define Sec_SMalloc(n) Sec_GMalloc(char,n)

#define Sec_Free(x) if(x!=NULL) free(x); x=NULL

extern int SecCryptErr;
char *Sec_CryptErrStr(int);

void Sec_Init( void );
qboolean Sec_Initialized();