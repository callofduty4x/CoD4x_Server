/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
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


#ifndef __MSG_H__
#define __MSG_H__

#include "q_shared.h"
#include "entity.h"
#include "q_math.h"
#include "player.h"
#include "msg_types.h"

#include <stdint.h>

struct clientState_s;
struct playerState_s;
struct usercmd_s;

void MSG_Init( msg_t *buf, byte *data, int length );
void MSG_InitReadOnly( msg_t *buf, byte *data, int length );
void MSG_InitReadOnlySplit( msg_t *buf, byte *data, int length, byte*, int );
void MSG_Clear( msg_t *buf ) ;
void MSG_BeginReading( msg_t *msg ) ;
void MSG_Copy(msg_t *buf, byte *data, int length, msg_t *src);
void MSG_WriteByte( msg_t *msg, int c ) ;
void MSG_WriteShort( msg_t *msg, int c ) ;
void MSG_WriteLong( msg_t *msg, int c ) ;
void MSG_WriteFloat( msg_t *msg, float c ) ;
void MSG_WriteData( msg_t *buf, const void *data, int length ) ;
void MSG_WriteString( msg_t *sb, const char *s ) ;
void MSG_WriteBigString( msg_t *sb, const char *s ) ;
int MSG_ReadByte( msg_t *msg ) ;
int MSG_ReadShort( msg_t *msg ) ;
int MSG_ReadLong( msg_t *msg ) ;
char *MSG_ReadString( msg_t *msg, char* bigstring, int len ) ;
char *MSG_ReadStringLine( msg_t *msg, char* bigstring, int len ) ;
void MSG_ReadData( msg_t *msg, void *data, int len ) ;
float MSG_ReadFloat( msg_t *msg );
void MSG_ClearLastReferencedEntity( msg_t *msg ) ;
void MSG_WriteDeltaEntity(snapshotInfo_t *snapInfo, msg_t* msg, const int time, entityState_t* from, entityState_t* to, qboolean force);
void MSG_WriteBit0( msg_t *msg ) ;
int MSG_WriteBitsNoCompress( int d, byte* src, byte* dst , int size);
void MSG_WriteVector( msg_t *msg, vec3_t c );
void MSG_WriteInt64(msg_t *msg, int64_t c);
int64_t MSG_ReadInt64( msg_t *msg );

void MSG_WriteBit1(msg_t*);
void MSG_WriteBits(msg_t*, int bits, int bitcount);
int MSG_ReadBits(msg_t *msg, int numBits);
void MSG_WriteReliableCommandToBuffer(const char *source, char *destination, int length);

void MSG_WriteDeltaClient(snapshotInfo_t *snapInfo, msg_t *msg, const int time, clientState_t *from, clientState_t *to, qboolean force);
//void MSG_WriteDeltaField(snapshotInfo_t *snapInfo, msg_t *msg, const int time, const byte *from, const byte *to, const struct netField_s* field, int fieldNum, byte forceSend);
void __cdecl MSG_WriteEntityIndex(snapshotInfo_t*, msg_t*, int, int);
void __cdecl MSG_SetDefaultUserCmd( struct playerState_s *ps, struct usercmd_s *ucmd );
void MSG_WriteBase64(msg_t* msg, byte* inbuf, int len);
void MSG_ReadBase64(msg_t* msg, byte* outbuf, int len);
void MSG_BeginWriteMessageLength(msg_t* msg);
void MSG_EndWriteMessageLength(msg_t* msg);

#endif
