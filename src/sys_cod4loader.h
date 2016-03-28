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



#ifndef __SYS_COD4LOADER_H__
#define __SYS_COD4LOADER_H__

qboolean Sys_LoadImage(void);

#define BIN_FILENAME "cod4_lnxded-bin"
#define BIN_SECT_PLT_START (void*)0x804a1bc
#define BIN_SECT_PLT_LENGTH 0xa60
#define BIN_SECT_TEXT_START (void*)0x804ac20
#define BIN_SECT_TEXT_LENGTH 0x1bf1a4
#define BIN_SECT_TEXT_FOFFSET 0x2c20
#define BIN_SECT_RODATA_START (void*)0x8209e00
#define BIN_SECT_RODATA_LENGTH 0x36898
#define BIN_SECT_RODATA_FOFFSET 0x1c1e00
#define BIN_SECT_DATA_START (void*)0x826b580
#define BIN_SECT_DATA_LENGTH 0x9454
#define BIN_SECT_DATA_FOFFSET 0x222580
#define BIN_SECT_BSS_START (void*)0x8274a00
#define BIN_SECT_BSS_LENGTH 0xc182240

#endif