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



#include <string.h>
#include <stdint.h>
#include <math.h>

#include "msg.h"
#include "entity.h"
#include "player.h"
#include "qcommon_io.h"
#include "net_game_conf.h"
#include "huffman.h"
#include "server.h"

#ifndef	MAX_MSGLEN
#define	MAX_MSGLEN	0x20000		// max length of a message, which may
#endif


cvar_t* msg_printEntityNums;

/*
This part makes msg.c undepended in case no proper qcommon_io.h is included
*/



//int pcount[256];
//static char bigstring[MAX_MSGLEN];

void MSG_RegisterCvars()
{
	msg_printEntityNums = Cvar_RegisterBool("msg_printEntityNums", 0, 0, "Print entity numbers");
}


/*
==============================================================================

			MESSAGE IO FUNCTIONS

Handles byte ordering and avoids alignment errors
==============================================================================
*/

int oldsize = 0;


void MSG_Init( msg_t *buf, byte *data, int length ) {

	buf->data = data;
	buf->maxsize = length;
	buf->overflowed = qfalse;
	buf->cursize = 0;
	buf->readonly = qfalse;
	buf->splitData = NULL;
	buf->splitSize = 0;
	buf->readcount = 0;
	buf->bit = 0;
	buf->lastRefEntity = 0;
}

void MSG_InitReadOnly( msg_t *buf, byte *data, int length ) {

	MSG_Init( buf, data, length);
	buf->cursize = length;
	buf->readonly = qtrue;
}

void MSG_InitReadOnlySplit( msg_t *buf, byte *data, int length, byte* splitData, int splitlength ) {

	MSG_InitReadOnly( buf, data, length);

	buf->splitData = splitData;
	buf->maxsize = length + splitlength;
	buf->splitSize = splitlength;
}


void MSG_Clear( msg_t *buf ) {
	
	if(buf->readonly == qtrue || buf->splitData != NULL)
	{
		Com_Error(ERR_FATAL, "MSG_Clear: Can not clear a read only msg");
		return;
	}
	
	buf->cursize = 0;
	buf->overflowed = qfalse;
	buf->bit = 0;			//<- in bits
	buf->readcount = 0;
}


void MSG_BeginReading( msg_t *msg ) {
	msg->overflowed = qfalse;
	msg->readcount = 0;
	msg->bit = 0;
}

void MSG_Copy(msg_t *buf, byte *data, int length, msg_t *src)
{
	if (length < src->cursize) {
		Com_Error( ERR_DROP, "MSG_Copy: can't copy into a smaller msg_t buffer");
	}
	Com_Memcpy(buf, src, sizeof(msg_t));
	buf->data = data;
	Com_Memcpy(buf->data, src->data, src->cursize);
}


//================================================================================

//
// writing functions
//


void MSG_WriteByte( msg_t *msg, int c ) {
#ifdef PARANOID
	if (c < -128 || c > 127)
		Com_Error (ERR_FATAL, "MSG_WriteByte: range error");
#endif
	int8_t* dst;

	if ( msg->maxsize - msg->cursize < 1 ) {
		msg->overflowed = qtrue;
		return;
	}
	dst = (int8_t*)&msg->data[msg->cursize];
	*dst = c;
	msg->cursize += sizeof(int8_t);
}


void MSG_WriteShort( msg_t *msg, int c ) {
#ifdef PARANOID
	if (c < ((short)0x8000) || c > (short)0x7fff)
		Com_Error (ERR_FATAL, "MSG_WriteShort: range error");
#endif
	signed short* dst;

	if ( msg->maxsize - msg->cursize < 2 ) {
		msg->overflowed = qtrue;
		return;
	}
	dst = (int16_t*)&msg->data[msg->cursize];
	*dst = c;
	msg->cursize += sizeof(short);
}

void MSG_WriteLong( msg_t *msg, int c ) {
	int32_t *dst;

	if ( msg->maxsize - msg->cursize < 4 ) {
		msg->overflowed = qtrue;
		return;
	}
	dst = (int32_t*)&msg->data[msg->cursize];
	*dst = c;
	msg->cursize += sizeof(int32_t);
}

void MSG_WriteInt64(msg_t *msg, int64_t c)
{
	int64_t *dst;

	if ( msg->maxsize - msg->cursize < sizeof(int64_t) ) {
		msg->overflowed = qtrue;
		return;
	}
	dst = (int64_t*)&msg->data[msg->cursize];
	*dst = c;
	msg->cursize += sizeof(int64_t);
}

void MSG_WriteFloat( msg_t *msg, float c ) {
	float *dst;

	if ( msg->maxsize - msg->cursize < 4 ) {
		msg->overflowed = qtrue;
		return;
	}
	dst = (float*)&msg->data[msg->cursize];
	*dst = c;
	msg->cursize += sizeof(float);
}

void MSG_WriteData( msg_t *buf, const void *data, int length ) {
	int i;
	for(i=0; i < length; i++){
		MSG_WriteByte(buf, ((byte*)data)[i]);
	}
}

void MSG_WriteString( msg_t *sb, const char *s ) {
	if ( !s ) {
		MSG_WriteData( sb, "", 1 );
	} else {
		int l;
		char string[MAX_STRING_CHARS];

		l = strlen( s );
		if ( l >= MAX_STRING_CHARS ) {
			Com_Printf(CON_CHANNEL_SYSTEM, "MSG_WriteString: MAX_STRING_CHARS" );
			MSG_WriteData( sb, "", 1 );
			return;
		}
		Q_strncpyz( string, s, sizeof( string ) );

		MSG_WriteData( sb, string, l + 1 );
	}
}

void MSG_WriteBigString( msg_t *sb, const char *s ) {
	if ( !s ) {
		MSG_WriteData( sb, "", 1 );
	} else {
		int l;
		char string[BIG_INFO_STRING];

		l = strlen( s );
		if ( l >= BIG_INFO_STRING ) {
			Com_Printf(CON_CHANNEL_SYSTEM, "MSG_WriteString: BIG_INFO_STRING" );
			MSG_WriteData( sb, "", 1 );
			return;
		}
		Q_strncpyz( string, s, sizeof( string ) );

		MSG_WriteData( sb, string, l + 1 );
	}
}

void MSG_WriteVector( msg_t *msg, vec3_t c ) {
	vec_t *dst;

	if ( msg->maxsize - msg->cursize < 12 ) {
		msg->overflowed = qtrue;
		return;
	}
	dst = (vec_t*)&msg->data[msg->cursize];
	dst[0] = c[0];
	dst[1] = c[1];
	dst[2] = c[2];
	msg->cursize += sizeof(vec3_t);
}


void MSG_WriteBit0( msg_t* msg )
{
	if(!(msg->bit & 7))
	{
		if(msg->maxsize <= msg->cursize)
		{
			msg->overflowed = qtrue;
			return;
		}
		msg->bit = msg->cursize*8;
		msg->data[msg->cursize] = 0;
		msg->cursize ++;
	}
	msg->bit++;
}

void MSG_WriteBit1(msg_t *msg)
{
	if ( !(msg->bit & 7) )
	{
		if ( msg->cursize >= msg->maxsize )
		{
			msg->overflowed = qtrue;
			return;
		}
		msg->bit = 8 * msg->cursize;
		msg->data[msg->cursize] = 0;
		msg->cursize++;
	}
	msg->data[msg->bit >> 3] |= 1 << (msg->bit & 7);
	msg->bit++;
}


void MSG_WriteBits(msg_t *msg, int bits, int bitcount)
{
    int i;

    if ( msg->maxsize - msg->cursize < 4 )
    {
        msg->overflowed = 1;
        return;
    }

    if ( bitcount )
    {

      for (i = 0 ; bitcount != i; i++)
      {

        if ( !(msg->bit & 7) )
        {
          msg->bit = 8 * msg->cursize;
          msg->data[msg->cursize] = 0;
          msg->cursize++;
        }

        if ( bits & 1 )
          msg->data[msg->bit >> 3] |= 1 << (msg->bit & 7);

        msg->bit++;
        bits >>= 1;
      }
    }
}

char *base64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

void MSG_WriteBase64(msg_t* msg, byte* inbuf, int len)
{
    int bits, i, k, j, shift, offset;
    int mask;
    int b64data;

    i = k = 0;

    while(i < len)
    {
        bits = 0;
        /* Read a base64 3 byte block */
        for(k = 0; k < 3 && i < len; ++k, ++i)
        {
            ((byte*)&bits)[2 - k] = inbuf[i];
        }

        mask = 64 - 1;

        for(j = 0, shift = 0; j < 4; ++j, shift += 6)
        {
            offset = (bits & (mask << shift)) >> shift;

            ((byte*)&b64data)[3 - j] = base64[offset];
        }
        MSG_WriteLong(msg, b64data);
    }

    if(msg->cursize < 3)
    {
        return;
    }

    for(i = 0; k < 3; i++, k++)
    {
        msg->data[msg->cursize - i -1] = '=';
    }
}

void MSG_WriteEFlags(int clientnum, msg_t *msg, const int oldFlags, const int newFlags)
{
	int flagDiff;
	signed int shiftedflags;
	signed int changedBitIndex;
	int i;

	assert(!msg->readonly);

	flagDiff = (newFlags ^ oldFlags) & MASK_EFLAGS;
	if ( !flagDiff || (flagDiff - 1) & flagDiff)
	{
		MSG_WriteBit1(msg);
		shiftedflags = newFlags;

		for(i = 3;  i; --i)
		{
			MSG_WriteByte(msg, shiftedflags);
			shiftedflags >>= 8;
		}
	  
	}
	else
	{
		for ( changedBitIndex = 0; !(flagDiff & 1); ++changedBitIndex )
		{
		  flagDiff >>= 1;
		}
		assert(changedBitIndex >= 0 && changedBitIndex < 24);
		assert(( ( ( oldFlags ^ newFlags ) & MASK_EFLAGS ) ^ ( 1 << changedBitIndex ) ) == 0);
		MSG_WriteBit0(msg);
		MSG_WriteBits(msg, changedBitIndex, 5);
	}
}




void MSG_WriteAngle( msg_t *sb, float f ) {
	MSG_WriteByte( sb, (int)( f * 256 / 360 ) & 255 );
}

void MSG_WriteAngle16( msg_t *sb, float f ) {
	MSG_WriteShort( sb, ANGLE2SHORT( f ) );
}



void MSG_WriteEntityIndex(struct snapshotInfo_s *snapInfo, msg_t *msg, const int index, const int indexBits)
{
	assert(!msg->readonly);
	assertx(index - msg->lastRefEntity > 0, "lastEntityReferenced is %i, index is %i", msg->lastRefEntity, index);
	if ( index - msg->lastRefEntity == 1 )
	{
		MSG_WriteBit1(msg);
		msg->lastRefEntity = index;
		return;
	}

    MSG_WriteBit0(msg);


    if ( indexBits != 10 || index - msg->lastRefEntity > 15)
    {
		if(indexBits == 10)
		{
			MSG_WriteBit1(msg);
		}
		MSG_WriteBits(msg, index, indexBits);
		msg->lastRefEntity = index;
		return;
    }
    assertx(index - msg->lastRefEntity > 0, "index was %i, lastEntityRef is %i", index, msg->lastRefEntity);
    MSG_WriteBit0(msg);
    MSG_WriteBits(msg, index - msg->lastRefEntity, 4);
    msg->lastRefEntity = index;

}

//============================================================

//
// reading functions
//

// returns -1 if no more characters are available

int MSG_GetByte(msg_t *msg, int where)
{
  if ( where + sizeof(int8_t) <= msg->cursize )
  {
    return msg->data[where];
  }
  assert(msg->splitData);
  return msg->splitData[where - msg->cursize];
}

int MSG_GetShort(msg_t *msg, int where)
{
  if ( where + sizeof(int16_t) <= msg->cursize )
  {
    return *(int16_t*)&msg->data[where];
  }

  assert(msg->splitData);

  if(where >= msg->cursize)
  {
    return *(int16_t*)&msg->splitData[where - msg->cursize];
  }

  int16_t c;
  int i;

  //2 bytes splitted up
  for(i = 0; i < 2; ++i)
  {
    ((byte*)&c)[i] = MSG_GetByte(msg, where +i);
  }
  return c;
}

int MSG_GetLong(msg_t *msg, int where)
{
  if ( where +sizeof(int32_t) <= msg->cursize )
  {
    return *(int32_t*)&msg->data[where];
  }

  assert(msg->splitData);

  if(where >= msg->cursize)
  {
    return *(int32_t*)&msg->splitData[where - msg->cursize];
  }

  int32_t c;
  int i;

  //4 bytes splitted up
  for(i = 0; i < 4; ++i)
  {
    ((byte*)&c)[i] = MSG_GetByte(msg, where +i);
  }
  return c;
}

int64_t MSG_GetInt64(msg_t *msg, int where)
{
  if ( where + sizeof(int64_t) <= msg->cursize )
  {
    return *(int64_t*)&msg->data[where];
  }

  assert(msg->splitData);

  if(where >= msg->cursize)
  {
    return *(int64_t*)&msg->splitData[where - msg->cursize];
  }

  int64_t c;
  int i;
  //8 bytes splitted up
  for(i = 0; i < 8; ++i)
  {
    ((byte*)&c)[i] = MSG_GetByte(msg, where +i);
  }
  return c;
}

float MSG_GetFloat( msg_t *msg, int where )
{
	if( where + sizeof(float) <= msg->cursize )
	{
		return *(float*)&msg->data[where];
	}

	assert(msg->splitData);

	if(where >= msg->cursize)
	{
		return *(float*)&msg->splitData[where - msg->cursize];
	}

	int32_t c;
	int i;

	for(i = 0; i < 4; ++i)
	{
		((byte*)&c)[i] = MSG_GetByte(msg, where +i);
	}
	
	return *(float*)&c;
}


int MSG_ReadByte( msg_t *msg ) {
	byte	c;

	if ( msg->readcount+sizeof(byte) > msg->splitSize + msg->cursize ) {
		msg->overflowed = 1;
		return -1;
	}
	c = MSG_GetByte(msg, msg->readcount);

	msg->readcount += sizeof(byte);
	return c;
}

int MSG_ReadShort( msg_t *msg ) {
	int16_t	c;

	if ( msg->readcount+sizeof(short) > msg->splitSize + msg->cursize ) {
		msg->overflowed = 1;
		return -1;
	}	
	c = MSG_GetShort(msg, msg->readcount);

	msg->readcount += sizeof(short);
	return c;
}

int32_t MSG_ReadLong( msg_t *msg ) {
	int32_t	c;

	if ( msg->readcount+sizeof(int32_t) > msg->cursize + msg->splitSize) {
		msg->overflowed = 1;
		return -1;
	}	
	c = MSG_GetLong(msg, msg->readcount);

	msg->readcount += sizeof(int32_t);
	return c;

}

int64_t MSG_ReadInt64( msg_t *msg ) {
	int64_t		c;

	if ( msg->readcount+sizeof(int64_t) > msg->cursize + msg->splitSize ) {
		msg->overflowed = 1;
		return -1;
	}	
	c = MSG_GetInt64(msg, msg->readcount);

	msg->readcount += sizeof(int64_t);
	return c;

}

/*
int MSG_SkipToString( msg_t *msg, const char* string ) {
	byte c;

	do{
		c = MSG_ReadByte( msg );      // use ReadByte so -1 is out of bounds
		if ( c == -1 )
		{
			return qfalse;
		}
		if(c == string[0] && !Q_strncmp(msg->data + msg->readcount, string, msg->cursize - msg->readcount))
		{
			return qtrue;
		}
	}
	return qfalse;
}
*/


char *MSG_ReadString( msg_t *msg, char* bigstring, int len ) {
	int l,c;

	l = 0;
	do {
		c = MSG_ReadByte( msg );      // use ReadByte so -1 is out of bounds
		if ( c == -1 || c == 0 ) {
			break;
		}
		// translate all fmt spec to avoid crash bugs
		if ( c == '%' ) {
			c = '.';
		}
		bigstring[l] = c;
		l++;
	} while ( l < len - 1 );

	bigstring[l] = 0;

	return bigstring;
}

char *MSG_ReadStringLine( msg_t *msg, char* bigstring, int len ) {
	int		l,c;

	l = 0;
	do {
		c = MSG_ReadByte(msg);		// use ReadByte so -1 is out of bounds
		if (c == -1 || c == 0 || c == '\n') {
			break;
		}
		// translate all fmt spec to avoid crash bugs
		if ( c == '%' ) {
			c = '.';
		}
		bigstring[l] = c;
		l++;
	} while (l < len -1);
	
	bigstring[l] = 0;
	
	return bigstring;
}

float MSG_ReadFloat( msg_t *msg ) {

	float	c;
	
	if ( msg->readcount+sizeof(float) > msg->cursize + msg->splitSize) {
		msg->overflowed = 1;
		return -1;
	}	
	c = MSG_GetFloat( msg, msg->readcount );
	
	msg->readcount += sizeof(float);
	return c;
}

void MSG_ReadData( msg_t *msg, void *data, int len ) {
	int		i;

	for (i=0 ; i<len ; i++) {
		((byte *)data)[i] = MSG_ReadByte (msg);
	}
}

void MSG_ClearLastReferencedEntity( msg_t *msg ) {
	msg->lastRefEntity = -1;
}


int MSG_GetUsedBitCount( msg_t *msg ) {

    return ((msg->cursize + msg->splitSize) * 8) - ((8 - msg->bit) & 7);

}


int MSG_ReadBit(msg_t *msg)
{

  int oldbit7, numBytes, bits;

  oldbit7 = msg->bit & 7;
  if ( !oldbit7 )
  {
    if ( msg->readcount >= msg->cursize + msg->splitSize )
    {
      msg->overflowed = 1;
      return -1;
    }
    msg->bit = 8 * msg->readcount;
    msg->readcount++;
  }

  numBytes = msg->bit / 8;
  if ( numBytes < msg->cursize )
  {
    bits = msg->data[numBytes] >> oldbit7;
  }else{
      bits = msg->splitData[numBytes - msg->cursize] >> oldbit7;
  }
  msg->bit++;
  return bits & 1;
}



int MSG_ReadBits(msg_t *msg, int numBits)
{
  int i;
  signed int var;
  int retval;

  retval = 0;

  if ( numBits > 0 )
  {

    for(i = 0 ;numBits != i; i++)
    {
      if ( !(msg->bit & 7) )
      {
        if ( msg->readcount >= msg->splitSize + msg->cursize )
        {
          msg->overflowed = 1;
          return -1;
        }
        msg->bit = 8 * msg->readcount;
        msg->readcount++;
      }
      if ( ((msg->bit / 8)) >= msg->cursize )
      {

        if(msg->splitData == NULL)
            return 0;

        var = msg->splitData[(msg->bit / 8) - msg->cursize];

      }else
        var = msg->data[msg->bit / 8];

      retval |= ((var >> (msg->bit & 7)) & 1) << i;
      msg->bit++;
    }
  }
  return retval;
}




void MSG_ReadBase64(msg_t* msg, byte* outbuf, int len)
{
    int databyte;
    int b64data;
    int k, shift;

    int i = 0;

    do
    {
        b64data = 0;
        for(k = 0, shift = 18; k < 4; ++k, shift -= 6)
        {

            databyte = MSG_ReadByte(msg);
            if(databyte >= 'A' && databyte <= 'Z')
            {
                databyte -= 'A';
            }else if(databyte >= 'a' && databyte <= 'z' ){
                databyte -= 'a';
                databyte += 26;
            }else if(databyte >= '0' && databyte <= '9' ){
                databyte -= '0';
                databyte += 52;
            }else if(databyte == '+'){
                databyte = 62;
            }else if(databyte == '/'){
                databyte = 63;
            }else{
                databyte = -1;
                break;
            }

            b64data |= (databyte << shift);

        }

        outbuf[i + 0] = ((char*)&b64data)[2];
        outbuf[i + 1] = ((char*)&b64data)[1];
        outbuf[i + 2] = ((char*)&b64data)[0];

        i += 3;

    }while(databyte != -1 && (i +4) < len);

    outbuf[i] = '\0';

}




/*
void MSG_NUinitHuffman() {
	byte	*data;
	int		size, i, ch;
	int		array[256];

	msgInit = qtrue;

	Huff_Init(&msgHuff);
	// load it in
	size = FS_ReadFile( "netchan/netchan.bin", (void **)&data );

	for(i=0;i<256;i++) {
		array[i] = 0;
	}
	for(i=0;i<size;i++) {
		ch = data[i];
		Huff_addRef(&msgHuff.compressor,	ch);			// Do update
		Huff_addRef(&msgHuff.decompressor,	ch);			// Do update
		array[ch]++;
	}
	Com_Printf(CON_CHANNEL_SYSTEM,"msg_hData {\n");
	for(i=0;i<256;i++) {
		if (array[i] == 0) {
			Huff_addRef(&msgHuff.compressor,	i);			// Do update
			Huff_addRef(&msgHuff.decompressor,	i);			// Do update
		}
		Com_Printf("%d,			// %d\n", array[i], i);
	}
	Com_Printf(CON_CHANNEL_SYSTEM,"};\n");
	FS_FreeFile( data );
	Cbuf_AddText( "condump dump.txt\n" );
}
*/
//===========================================================================


typedef struct{
    const char* name;
    int a;
    int b;
}subNetEntlist_t;


typedef struct{
    subNetEntlist_t *sub;
    int z;
}netEntlist_t;

static int GetMinBitCount(int x)
{
    return 32 - __builtin_clz (x);
}

// using the stringizing operator to save typing...
#define NETF( x ) # x,(int)&( (entityState_t*)0 )->x

netField_t entityStateFields[] =
{
	{ NETF( eType ), 8, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( lerp.pos.trBase[0] ), -92, 0},
	{ NETF( lerp.pos.trBase[1] ), -91, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( surfType ), 8, 0},
	{ NETF( lerp.u.anonymous.data[0] ), 32, 0},
	{ NETF( time2 ), -97, 0},
	{ NETF( index ), 10, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( un2 ), 32, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( un1 ), 8, 0},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( clientNum ), 7, 0},
	{ NETF( lerp.pos.trDelta[0] ), 0, 0},
	{ NETF( lerp.pos.trDelta[1] ), 0, 0},
	{ NETF( lerp.pos.trDelta[2] ), 0, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( lerp.pos.trTime ), -97, 0},
	{ NETF( lerp.pos.trType ), 8, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( lerp.apos.trTime ), 32, 0},
	{ NETF( lerp.apos.trDelta[0] ), 0, 0},
	{ NETF( lerp.apos.trDelta[2] ), 0, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( lerp.pos.trDuration ), 32, 0},
	{ NETF( lerp.apos.trDelta[1] ), 0, 0},
	{ NETF( attackerEntityNum ), 10, 0},
	{ NETF( fWaistPitch ), 0, 0},
	{ NETF( fTorsoPitch ), 0, 0},
	{ NETF( iHeadIcon ), 4, 0},
	{ NETF( iHeadIconTeam ), 2, 0},
	{ NETF( lerp.apos.trDuration ), 32, 0},
	{ NETF( torsoAnim ), 10, 0},
	{ NETF( legsAnim ), 10, 0},
	{ NETF( loopSound ), 8, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( lerp.u.anonymous.data[1] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[2] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[3] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[4] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[5] ), 32, 0},
	{ NETF( partBits[0] ), 32, 0},
	{ NETF( partBits[1] ), 32, 0},
	{ NETF( partBits[2] ), 32, 0},
	{ NETF( partBits[3] ), 32, 0},
};


netField_t playerEntityStateFields[] =
{
	{ NETF( eType ), 8, 1},
	{ NETF( lerp.pos.trBase[0] ), -92, 2},
	{ NETF( lerp.pos.trBase[1] ), -91, 2},
	{ NETF( lerp.u.player.movementDir ), -8, 0},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( legsAnim ), 10, 0},
	{ NETF( torsoAnim ), 10, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( fTorsoPitch ), 0, 0},
	{ NETF( fWaistPitch ), 0, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( lerp.pos.trType ), 8, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( clientNum ), 7, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( iHeadIcon ), 4, 0},
	{ NETF( iHeadIconTeam ), 2, 0},
	{ NETF( lerp.u.player.leanf ), 0, 0},
	{ NETF( lerp.pos.trDelta[1] ), 0, 1},
	{ NETF( lerp.pos.trDelta[0] ), 0, 1},
	{ NETF( lerp.pos.trDuration ), 32, 1},
	{ NETF( lerp.pos.trTime ), -97, 1},
	{ NETF( lerp.pos.trDelta[2] ), 0, 1},
	{ NETF( surfType ), 8, 1},
	{ NETF( un1 ), 8, 1},
	{ NETF( index ), 10, 1},
	{ NETF( lerp.apos.trDelta[0] ), 0, 1},
	{ NETF( lerp.apos.trDelta[1] ), 0, 1},
	{ NETF( lerp.apos.trDelta[2] ), 0, 1},
	{ NETF( time2 ), -97, 1},
	{ NETF( loopSound ), 8, 1},
	{ NETF( attackerEntityNum ), 10, 1},
	{ NETF( lerp.apos.trTime ), 32, 1},
	{ NETF( lerp.apos.trDuration ), 32, 1},
	{ NETF( lerp.u.anonymous.data[2] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[3] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[4] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[5] ), 32, 1},
	{ NETF( un2 ), 32, 1},
	{ NETF( partBits[0] ), 32, 1},
	{ NETF( partBits[1] ), 32, 1},
	{ NETF( partBits[2] ), 32, 1},
	{ NETF( partBits[3] ), 32, 1},
};


netField_t corpseEntityStateFields[] =
{
	{ NETF( eType ), 8, 1},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( lerp.pos.trTime ), -97, 0},
	{ NETF( lerp.pos.trBase[0] ), -92, 0},
	{ NETF( lerp.pos.trBase[1] ), -91, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( lerp.pos.trType ), 8, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( clientNum ), 7, 0},
	{ NETF( legsAnim ), 10, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( torsoAnim ), 10, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( lerp.pos.trDelta[0] ), 0, 0},
	{ NETF( lerp.pos.trDelta[1] ), 0, 0},
	{ NETF( lerp.pos.trDelta[2] ), 0, 0},
	{ NETF( lerp.u.player.movementDir ), -8, 1},
	{ NETF( eventSequence ), 8, 1},
	{ NETF( events[0] ), -94, 1},
	{ NETF( events[1] ), -94, 1},
	{ NETF( events[2] ), -94, 1},
	{ NETF( events[3] ), -94, 1},
	{ NETF( fTorsoPitch ), 0, 1},
	{ NETF( eventParms[1] ), -93, 1},
	{ NETF( eventParms[0] ), -93, 1},
	{ NETF( eventParms[2] ), -93, 1},
	{ NETF( weapon ), 7, 1},
	{ NETF( weaponModel ), 4, 1},
	{ NETF( eventParms[3] ), -93, 1},
	{ NETF( solid ), 24, 1},
	{ NETF( lerp.pos.trDuration ), 32, 1},
	{ NETF( fWaistPitch ), 0, 1},
	{ NETF( eventParm ), -93, 1},
	{ NETF( iHeadIcon ), 4, 1},
	{ NETF( iHeadIconTeam ), 2, 1},
	{ NETF( surfType ), 8, 1},
	{ NETF( un1 ), 8, 1},
	{ NETF( otherEntityNum ), 10, 1},
	{ NETF( index ), 10, 1},
	{ NETF( lerp.apos.trDelta[0] ), 0, 1},
	{ NETF( lerp.apos.trDelta[1] ), 0, 1},
	{ NETF( lerp.apos.trDelta[2] ), 0, 1},
	{ NETF( time2 ), -97, 1},
	{ NETF( loopSound ), 8, 1},
	{ NETF( attackerEntityNum ), 10, 1},
	{ NETF( lerp.apos.trTime ), 32, 1},
	{ NETF( lerp.u.player.leanf ), 0, 1},
	{ NETF( lerp.apos.trDuration ), 32, 1},
	{ NETF( un2 ), 32, 1},
	{ NETF( lerp.u.anonymous.data[2] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[3] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[4] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[5] ), 32, 1},
	{ NETF( partBits[0] ), 32, 1},
	{ NETF( partBits[1] ), 32, 1},
	{ NETF( partBits[2] ), 32, 1},
	{ NETF( partBits[3] ), 32, 1},
};


netField_t itemEntityStateFields[] =
{
	{ NETF( eType ), 8, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( lerp.pos.trBase[1] ), -91, 0},
	{ NETF( lerp.pos.trBase[0] ), -92, 0},
	{ NETF( lerp.pos.trTime ), -97, 0},
	{ NETF( lerp.pos.trType ), 8, 2},
	{ NETF( lerp.pos.trDelta[2] ), 0, 2},
	{ NETF( lerp.pos.trDelta[0] ), 0, 2},
	{ NETF( lerp.pos.trDelta[1] ), 0, 0},
	{ NETF( clientNum ), 7, 2},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( lerp.apos.trType ), 8, 2},
	{ NETF( lerp.apos.trTime ), -97, 2},
	{ NETF( lerp.apos.trDelta[0] ), 0, 2},
	{ NETF( lerp.apos.trDelta[1] ), 0, 2},
	{ NETF( lerp.apos.trDelta[2] ), 0, 0},
	{ NETF( index ), 10, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( lerp.pos.trDuration ), 32, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( surfType ), 8, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( lerp.u.anonymous.data[0] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[1] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[2] ), 32, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( attackerEntityNum ), 10, 0},
	{ NETF( un1 ), 8, 0},
	{ NETF( time2 ), -97, 0},
	{ NETF( loopSound ), 8, 0},
	{ NETF( un2 ), 32, 0},
	{ NETF( legsAnim ), 10, 1},
	{ NETF( torsoAnim ), 10, 1},
	{ NETF( fTorsoPitch ), 0, 1},
	{ NETF( fWaistPitch ), 0, 1},
	{ NETF( iHeadIcon ), 4, 1},
	{ NETF( iHeadIconTeam ), 2, 1},
	{ NETF( lerp.apos.trDuration ), 32, 1},
	{ NETF( lerp.u.anonymous.data[3] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[4] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[5] ), 32, 1},
	{ NETF( partBits[0] ), 32, 1},
	{ NETF( partBits[1] ), 32, 1},
	{ NETF( partBits[2] ), 32, 1},
	{ NETF( partBits[3] ), 32, 1},
};


netField_t missleEntityStateFields[] =
{
	{ NETF( eType ), 8, 0},
	{ NETF( lerp.pos.trBase[1] ), -91, 0},
	{ NETF( lerp.pos.trBase[0] ), -92, 0},
	{ NETF( lerp.pos.trDelta[0] ), 0, 0},
	{ NETF( lerp.pos.trDelta[1] ), 0, 0},
	{ NETF( lerp.pos.trDelta[2] ), 0, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( lerp.pos.trTime ), -97, 0},
	{ NETF( lerp.apos.trTime ), -97, 0},
	{ NETF( lerp.apos.trDelta[0] ), 0, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( lerp.pos.trType ), 8, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( surfType ), 8, 0},
	{ NETF( lerp.apos.trDelta[2] ), 0, 0},
	{ NETF( lerp.u.missile.launchTime ), -97, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( index ), 10, 0},
	{ NETF( clientNum ), 7, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( un2 ), 1, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( un1 ), 8, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( lerp.apos.trDelta[1] ), 0, 0},
	{ NETF( attackerEntityNum ), 10, 0},
	{ NETF( lerp.pos.trDuration ), 32, 0},
	{ NETF( loopSound ), 8, 0},
	{ NETF( lerp.u.anonymous.data[1] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[2] ), 32, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( time2 ), -97, 0},
	{ NETF( legsAnim ), 10, 1},
	{ NETF( torsoAnim ), 10, 1},
	{ NETF( fTorsoPitch ), 0, 1},
	{ NETF( fWaistPitch ), 0, 1},
	{ NETF( iHeadIcon ), 4, 1},
	{ NETF( iHeadIconTeam ), 2, 1},
	{ NETF( lerp.apos.trDuration ), 32, 1},
	{ NETF( lerp.u.anonymous.data[3] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[4] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[5] ), 32, 1},
	{ NETF( partBits[0] ), 32, 1},
	{ NETF( partBits[1] ), 32, 1},
	{ NETF( partBits[2] ), 32, 1},
	{ NETF( partBits[3] ), 32, 1},
};


netField_t scriptMoverStateFields[] =
{
	{ NETF( eType ), 8, 0},
	{ NETF( lerp.pos.trBase[0] ), -92, 0},
	{ NETF( lerp.pos.trBase[1] ), -91, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( lerp.pos.trTime ), -97, 0},
	{ NETF( index ), 10, 0},
	{ NETF( lerp.pos.trDuration ), 32, 0},
	{ NETF( lerp.pos.trType ), 8, 0},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( lerp.pos.trDelta[2] ), 0, 0},
	{ NETF( lerp.apos.trDelta[0] ), 0, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( lerp.pos.trDelta[0] ), 0, 0},
	{ NETF( lerp.pos.trDelta[1] ), 0, 0},
	{ NETF( lerp.apos.trDelta[1] ), 0, 0},
	{ NETF( lerp.apos.trDelta[2] ), 0, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( partBits[0] ), 32, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( lerp.apos.trTime ), 32, 0},
	{ NETF( partBits[1] ), 32, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( lerp.apos.trDuration ), 32, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( loopSound ), 8, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( clientNum ), 7, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( surfType ), 8, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( lerp.u.anonymous.data[0] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[1] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[2] ), 32, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( time2 ), -97, 0},
	{ NETF( un2 ), 32, 0},
	{ NETF( un1 ), 8, 0},
	{ NETF( attackerEntityNum ), 10, 0},
	{ NETF( fWaistPitch ), 0, 0},
	{ NETF( fTorsoPitch ), 0, 0},
	{ NETF( iHeadIcon ), 4, 0},
	{ NETF( iHeadIconTeam ), 2, 0},
	{ NETF( torsoAnim ), 10, 0},
	{ NETF( legsAnim ), 10, 0},
	{ NETF( lerp.u.anonymous.data[3] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[4] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[5] ), 32, 0},
	{ NETF( partBits[2] ), 32, 0},
	{ NETF( partBits[3] ), 32, 0},
};


netField_t soundBlendEntityStateFields[] =
{
	{ NETF( eType ), 8, 1},
	{ NETF( lerp.pos.trTime ), -97, 0},
	{ NETF( lerp.pos.trBase[0] ), -92, 0},
	{ NETF( lerp.pos.trBase[1] ), -91, 0},
	{ NETF( lerp.pos.trDelta[0] ), 0, 0},
	{ NETF( lerp.pos.trDelta[1] ), 0, 0},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( lerp.pos.trDelta[2] ), 0, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( legsAnim ), 10, 0},
	{ NETF( surfType ), 8, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( un1 ), 8, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( clientNum ), 7, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( index ), 10, 0},
	{ NETF( lerp.pos.trType ), 8, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( lerp.apos.trTime ), 32, 0},
	{ NETF( lerp.apos.trDelta[0] ), 0, 0},
	{ NETF( lerp.apos.trDelta[2] ), 0, 0},
	{ NETF( torsoAnim ), 10, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( lerp.pos.trDuration ), 32, 0},
	{ NETF( lerp.apos.trDelta[1] ), 0, 0},
	{ NETF( un2 ), 32, 0},
	{ NETF( time2 ), -97, 0},
	{ NETF( loopSound ), 8, 0},
	{ NETF( attackerEntityNum ), 10, 0},
	{ NETF( fWaistPitch ), 0, 0},
	{ NETF( fTorsoPitch ), 0, 0},
	{ NETF( iHeadIcon ), 4, 0},
	{ NETF( iHeadIconTeam ), 2, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( lerp.u.soundBlend.lerp ), 0, 0},
	{ NETF( lerp.apos.trDuration ), 32, 0},
	{ NETF( lerp.u.anonymous.data[1] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[2] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[3] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[4] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[5] ), 32, 1},
	{ NETF( partBits[0] ), 32, 1},
	{ NETF( partBits[1] ), 32, 1},
	{ NETF( partBits[2] ), 32, 1},
	{ NETF( partBits[3] ), 32, 1},
};


netField_t fxStateFields[] =
{
	{ NETF( eType ), 8, 0},
	{ NETF( time2 ), -97, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( lerp.pos.trBase[0] ), -92, 0},
	{ NETF( lerp.pos.trBase[1] ), -91, 0},
	{ NETF( un1 ), 8, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( lerp.pos.trTime ), -97, 0},
	{ NETF( lerp.pos.trType ), 8, 0},
	{ NETF( lerp.pos.trDelta[2] ), 0, 0},
	{ NETF( lerp.pos.trDelta[0] ), 0, 0},
	{ NETF( lerp.pos.trDelta[1] ), 0, 0},
	{ NETF( clientNum ), 7, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( lerp.apos.trTime ), -97, 0},
	{ NETF( lerp.apos.trDelta[0] ), 0, 0},
	{ NETF( lerp.apos.trDelta[1] ), 0, 0},
	{ NETF( lerp.apos.trDelta[2] ), 0, 0},
	{ NETF( index ), 10, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( lerp.pos.trDuration ), 32, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( surfType ), 8, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( lerp.u.anonymous.data[0] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[1] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[2] ), 32, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( attackerEntityNum ), 10, 0},
	{ NETF( loopSound ), 8, 0},
	{ NETF( un2 ), 32, 0},
	{ NETF( legsAnim ), 10, 1},
	{ NETF( torsoAnim ), 10, 1},
	{ NETF( fTorsoPitch ), 0, 1},
	{ NETF( fWaistPitch ), 0, 1},
	{ NETF( iHeadIcon ), 4, 1},
	{ NETF( iHeadIconTeam ), 2, 1},
	{ NETF( lerp.apos.trDuration ), 32, 1},
	{ NETF( lerp.u.anonymous.data[3] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[4] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[5] ), 32, 1},
	{ NETF( partBits[0] ), 32, 1},
	{ NETF( partBits[1] ), 32, 1},
	{ NETF( partBits[2] ), 32, 1},
	{ NETF( partBits[3] ), 32, 1},
};


netField_t loopFxEntityStateFields[] =
{
	{ NETF( eType ), 8, 1},
	{ NETF( lerp.pos.trTime ), -97, 0},
	{ NETF( lerp.pos.trBase[0] ), -92, 0},
	{ NETF( lerp.pos.trBase[1] ), -91, 0},
	{ NETF( lerp.pos.trDelta[0] ), 0, 0},
	{ NETF( lerp.pos.trDelta[1] ), 0, 0},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( lerp.pos.trDelta[2] ), 0, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( lerp.u.loopFx.cullDist ), 0, 0},
	{ NETF( lerp.u.loopFx.period ), 32, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( legsAnim ), 10, 0},
	{ NETF( surfType ), 8, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( un1 ), 8, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( clientNum ), 7, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( index ), 10, 0},
	{ NETF( lerp.pos.trType ), 8, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( lerp.apos.trTime ), 32, 0},
	{ NETF( lerp.apos.trDelta[0] ), 0, 0},
	{ NETF( lerp.apos.trDelta[2] ), 0, 0},
	{ NETF( torsoAnim ), 10, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( lerp.pos.trDuration ), 32, 0},
	{ NETF( lerp.apos.trDelta[1] ), 0, 0},
	{ NETF( un2 ), 32, 0},
	{ NETF( time2 ), -97, 0},
	{ NETF( loopSound ), 8, 0},
	{ NETF( attackerEntityNum ), 10, 0},
	{ NETF( fWaistPitch ), 0, 0},
	{ NETF( fTorsoPitch ), 0, 0},
	{ NETF( iHeadIcon ), 4, 0},
	{ NETF( iHeadIconTeam ), 2, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( lerp.apos.trDuration ), 32, 0},
	{ NETF( lerp.u.anonymous.data[2] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[3] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[4] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[5] ), 32, 1},
	{ NETF( partBits[0] ), 32, 1},
	{ NETF( partBits[1] ), 32, 1},
	{ NETF( partBits[2] ), 32, 1},
	{ NETF( partBits[3] ), 32, 1},
};


netField_t helicopterEntityStateFields[] =
{
	{ NETF( eType ), 8, 1},
	{ NETF( lerp.pos.trBase[0] ), -92, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( lerp.u.vehicle.gunPitch ), 0, 0},
	{ NETF( lerp.pos.trBase[1] ), -91, 0},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( lerp.u.vehicle.gunYaw ), 0, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( un1.helicopterStage ), 3, 0},
	{ NETF( time2 ), -97, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( loopSound ), 8, 0},
	{ NETF( lerp.pos.trType ), 8, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( un2 ), 32, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( lerp.u.vehicle.team ), 8, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( lerp.pos.trDelta[0] ), 0, 0},
	{ NETF( lerp.pos.trDelta[1] ), 0, 0},
	{ NETF( lerp.pos.trDelta[2] ), 0, 0},
	{ NETF( lerp.pos.trTime ), -97, 0},
	{ NETF( legsAnim ), 10, 0},
	{ NETF( surfType ), 8, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( index ), 10, 0},
	{ NETF( lerp.u.vehicle.materialTime ), -97, 0},
	{ NETF( lerp.apos.trTime ), 32, 0},
	{ NETF( lerp.apos.trDelta[0] ), 0, 0},
	{ NETF( lerp.apos.trDelta[2] ), 0, 0},
	{ NETF( torsoAnim ), 10, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( lerp.pos.trDuration ), 32, 0},
	{ NETF( lerp.apos.trDelta[1] ), 0, 0},
	{ NETF( attackerEntityNum ), 10, 0},
	{ NETF( fWaistPitch ), 0, 0},
	{ NETF( fTorsoPitch ), 0, 0},
	{ NETF( lerp.u.vehicle.bodyPitch ), -100, 0},
	{ NETF( lerp.u.vehicle.bodyRoll ), -100, 0},
	{ NETF( iHeadIcon ), 4, 0},
	{ NETF( iHeadIconTeam ), 2, 0},
	{ NETF( lerp.apos.trDuration ), 32, 0},
	{ NETF( partBits[0] ), 32, 1},
	{ NETF( partBits[1] ), 32, 1},
	{ NETF( partBits[2] ), 32, 1},
	{ NETF( partBits[3] ), 32, 1},
};


netField_t planeStateFields[] =
{
	{ NETF( eType ), 8, 1},
	{ NETF( lerp.pos.trBase[0] ), 0, 2},
	{ NETF( lerp.pos.trBase[1] ), 0, 2},
	{ NETF( lerp.pos.trBase[2] ), 0, 2},
	{ NETF( index ), 10, 2},
	{ NETF( lerp.pos.trDelta[0] ), 0, 2},
	{ NETF( lerp.pos.trDelta[1] ), 0, 2},
	{ NETF( lerp.pos.trTime ), -97, 2},
	{ NETF( lerp.pos.trType ), 8, 2},
	{ NETF( lerp.pos.trDuration ), 32, 2},
	{ NETF( lerp.u.vehicle.team ), 8, 2},
	{ NETF( lerp.apos.trBase[1] ), -100, 2},
	{ NETF( lerp.pos.trDelta[2] ), 0, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( loopSound ), 8, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( surfType ), 8, 0},
	{ NETF( lerp.u.anonymous.data[0] ), 32, 0},
	{ NETF( time2 ), -97, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( un2 ), 32, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( un1 ), 8, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( clientNum ), 7, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( lerp.apos.trTime ), 32, 0},
	{ NETF( lerp.apos.trDelta[0] ), 0, 0},
	{ NETF( lerp.apos.trDelta[2] ), 0, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( lerp.apos.trDelta[1] ), 0, 0},
	{ NETF( attackerEntityNum ), 10, 0},
	{ NETF( fWaistPitch ), 0, 0},
	{ NETF( fTorsoPitch ), 0, 0},
	{ NETF( iHeadIcon ), 4, 0},
	{ NETF( iHeadIconTeam ), 2, 0},
	{ NETF( lerp.apos.trDuration ), 32, 0},
	{ NETF( torsoAnim ), 10, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( legsAnim ), 10, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( lerp.u.anonymous.data[1] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[2] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[3] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[4] ), 32, 1},
	{ NETF( lerp.u.anonymous.data[5] ), 32, 1},
	{ NETF( partBits[0] ), 32, 1},
	{ NETF( partBits[1] ), 32, 1},
	{ NETF( partBits[2] ), 32, 1},
	{ NETF( partBits[3] ), 32, 1},
};


netField_t vehicleEntityStateFields[] =
{
	{ NETF( eType ), 8, 1},
	{ NETF( lerp.pos.trTime ), -97, 0},
	{ NETF( lerp.pos.trBase[0] ), -92, 0},
	{ NETF( lerp.pos.trBase[1] ), -91, 0},
	{ NETF( lerp.pos.trDelta[0] ), 0, 0},
	{ NETF( lerp.pos.trDelta[1] ), 0, 0},
	{ NETF( lerp.u.vehicle.gunYaw ), 0, 0},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( lerp.pos.trDelta[2] ), 0, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( legsAnim ), 10, 0},
	{ NETF( surfType ), 8, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( un1 ), 8, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( clientNum ), 7, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( index ), 10, 0},
	{ NETF( lerp.u.vehicle.materialTime ), -97, 0},
	{ NETF( lerp.pos.trType ), 8, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( lerp.apos.trTime ), 32, 0},
	{ NETF( lerp.apos.trDelta[0] ), 0, 0},
	{ NETF( lerp.apos.trDelta[2] ), 0, 0},
	{ NETF( torsoAnim ), 10, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( lerp.u.vehicle.gunPitch ), 0, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( lerp.pos.trDuration ), 32, 0},
	{ NETF( lerp.apos.trDelta[1] ), 0, 0},
	{ NETF( un2 ), 32, 0},
	{ NETF( time2 ), -97, 0},
	{ NETF( loopSound ), 8, 0},
	{ NETF( attackerEntityNum ), 10, 0},
	{ NETF( fWaistPitch ), 0, 0},
	{ NETF( fTorsoPitch ), 0, 0},
	{ NETF( lerp.u.vehicle.bodyPitch ), -100, 0},
	{ NETF( lerp.u.vehicle.bodyRoll ), -100, 0},
	{ NETF( iHeadIcon ), 4, 0},
	{ NETF( iHeadIconTeam ), 2, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( lerp.u.vehicle.steerYaw ), 0, 0},
	{ NETF( lerp.apos.trDuration ), 32, 0},
	{ NETF( partBits[0] ), 32, 1},
	{ NETF( partBits[1] ), 32, 1},
	{ NETF( partBits[2] ), 32, 1},
	{ NETF( partBits[3] ), 32, 1},
};


netField_t eventEntityStateFields[] =
{
	{ NETF( eType ), 8, 0},
	{ NETF( lerp.pos.trBase[0] ), -92, 0},
	{ NETF( lerp.pos.trBase[1] ), -91, 0},
	{ NETF( lerp.pos.trBase[2] ), -90, 0},
	{ NETF( eventParm ), -93, 0},
	{ NETF( surfType ), 8, 0},
	{ NETF( otherEntityNum ), 10, 0},
	{ NETF( un1 ), 8, 0},
	{ NETF( lerp.u.anonymous.data[0] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[1] ), 32, 0},
	{ NETF( attackerEntityNum ), 10, 0},
	{ NETF( lerp.apos.trBase[0] ), -100, 0},
	{ NETF( clientNum ), 7, 0},
	{ NETF( weapon ), 7, 0},
	{ NETF( weaponModel ), 4, 0},
	{ NETF( lerp.u.anonymous.data[2] ), 32, 0},
	{ NETF( index ), 10, 0},
	{ NETF( solid ), 24, 0},
	{ NETF( lerp.apos.trBase[1] ), -100, 0},
	{ NETF( lerp.apos.trBase[2] ), -100, 0},
	{ NETF( groundEntityNum ), -96, 0},
	{ NETF( lerp.u.anonymous.data[4] ), 32, 0},
	{ NETF( lerp.u.anonymous.data[5] ), 32, 0},
	{ NETF( iHeadIcon ), 4, 0},
	{ NETF( iHeadIconTeam ), 2, 0},
	{ NETF( events[0] ), -94, 0},
	{ NETF( eventParms[0] ), -93, 0},
	{ NETF( lerp.pos.trType ), 8, 0},
	{ NETF( lerp.apos.trType ), 8, 0},
	{ NETF( lerp.apos.trTime ), 32, 0},
	{ NETF( lerp.apos.trDelta[0] ), 0, 0},
	{ NETF( lerp.apos.trDelta[2] ), 0, 0},
	{ NETF( lerp.pos.trDelta[0] ), 0, 0},
	{ NETF( lerp.pos.trDelta[1] ), 0, 0},
	{ NETF( lerp.pos.trDelta[2] ), 0, 0},
	{ NETF( eventSequence ), 8, 0},
	{ NETF( lerp.pos.trTime ), -97, 0},
	{ NETF( events[1] ), -94, 0},
	{ NETF( events[2] ), -94, 0},
	{ NETF( eventParms[1] ), -93, 0},
	{ NETF( eventParms[2] ), -93, 0},
	{ NETF( events[3] ), -94, 0},
	{ NETF( eventParms[3] ), -93, 0},
	{ NETF( lerp.eFlags ), -98, 0},
	{ NETF( lerp.pos.trDuration ), 32, 0},
	{ NETF( lerp.apos.trDelta[1] ), 0, 0},
	{ NETF( time2 ), -97, 0},
	{ NETF( loopSound ), 8, 0},
	{ NETF( un2 ), 32, 0},
	{ NETF( torsoAnim ), 10, 1},
	{ NETF( legsAnim ), 10, 1},
	{ NETF( fWaistPitch ), 0, 1},
	{ NETF( fTorsoPitch ), 0, 1},
	{ NETF( lerp.u.anonymous.data[3] ), 32, 1},
	{ NETF( lerp.apos.trDuration ), 32, 1},
	{ NETF( partBits[0] ), 32, 1},
	{ NETF( partBits[1] ), 32, 1},
	{ NETF( partBits[2] ), 32, 1},
	{ NETF( partBits[3] ), 32, 1},
};


typedef struct {
	netField_t *field;
	int numFields;
} netFieldList_t;

//#define NETF( x ) # x,(int)&( (entityState_t*)0 )->x
#define NETFE( x ) x , sizeof( x ) / sizeof(netField_t)

netFieldList_t netFieldList[] =
{
	{NETFE( entityStateFields )},
	{NETFE( playerEntityStateFields )},
	{NETFE( corpseEntityStateFields )},
	{NETFE( itemEntityStateFields )},
	{NETFE( missleEntityStateFields )},
	{NETFE( entityStateFields )},
	{NETFE( scriptMoverStateFields )},
	{NETFE( soundBlendEntityStateFields )},
	{NETFE( fxStateFields )},
	{NETFE( loopFxEntityStateFields )},
	{NETFE( entityStateFields )},
	{NETFE( entityStateFields )},
	{NETFE( helicopterEntityStateFields )},
	{NETFE( planeStateFields )},
	{NETFE( vehicleEntityStateFields )},
	{NETFE( entityStateFields )},
	{NETFE( entityStateFields )},
	{NETFE( eventEntityStateFields )}
};



int MSG_WriteBitsNoCompress( int d, byte* src, byte* dst , int size){
	Com_Memcpy(dst, src, size);
	return size;
}


void MSG_WriteReliableCommandToBuffer(const char *source, char *destination, int length)
{
  int i;
  int requiredlen;

  if ( *source == '\0' )
    Com_PrintWarning(CON_CHANNEL_SYSTEM,"WARNING: Empty reliable command\n");

  for(i = 0 ; i < (length -1) && source[i] != '\0'; i++)
  {
		destination[i] = I_CleanChar(source[i]);
		if ( destination[i] == '%' )
		{
			destination[i] = '.';
		}
  }
  destination[i] = '\0';

  if ( i == length -1)
  {
	requiredlen = strlen(source) +1;
	if(requiredlen > length)
	{
		Com_PrintWarning(CON_CHANNEL_SYSTEM,"WARNING: Reliable command is too long (%i/%i) and will be truncated: '%s'\n", requiredlen, length, source);
	}
  }
}


/* Must not be combined with functions messing with lasrefentity */
void MSG_BeginWriteMessageLength(msg_t* msg)
{
	if ( msg->maxsize - msg->cursize < 1 ) {
		msg->overflowed = qtrue;
		return;
	}
	msg->lengthoffset = msg->cursize;
	MSG_WriteLong(msg, 0); //Messagelen needs to be updated later on msg->lengthoffset
}

void MSG_EndWriteMessageLength(msg_t* msg)
{
	int messageend = msg->cursize;
	msg->cursize = msg->lengthoffset; //Shift the messagewrite pointer to the place where messagelen should be stored
	int messagestart = msg->lengthoffset + sizeof(uint32_t);
	MSG_WriteLong(msg, messageend - messagestart); //Messagelen gets updated now
	msg->cursize = messageend; //Shift it to the end again
}





int MSG_ReadEntityIndex(msg_t *msg, int numBits)
{
  if ( MSG_ReadBit(msg) )
  {
    if ( msg_printEntityNums->boolean )
      Com_Printf(CON_CHANNEL_SYSTEM,"Entity num: 1 bit (inc)\n");
    ++msg->lastRefEntity;
  }
  else
  {
    if ( numBits != 10 || MSG_ReadBit(msg) )
    {
      if ( msg_printEntityNums->boolean )
        Com_Printf(CON_CHANNEL_SYSTEM,"Entity num: %i bits (full)\n", numBits + 2);
      msg->lastRefEntity = MSG_ReadBits(msg, numBits);
    }
    else
    {
      if ( msg_printEntityNums->boolean )
        Com_Printf(CON_CHANNEL_SYSTEM,"Entity num: %i bits (delta)\n", 6);
      msg->lastRefEntity += MSG_ReadBits(msg, 4);
    }
  }
  if ( msg_printEntityNums->boolean )
    Com_Printf(CON_CHANNEL_SYSTEM,"Read entity num %i\n", msg->lastRefEntity);
  return msg->lastRefEntity;
}


qboolean MSG_ValuesAreEqual(int bits, const int *fromF, const int *toF)
{
	if(*fromF == *toF)
	{
		return qtrue;
	}

	qboolean result;

	switch ( bits + 100 )
	{
		case 0:
		case 13:
			result = (int16_t)ANGLE2SHORT( *(float *)toF ) == (int16_t)ANGLE2SHORT( *(float *)fromF );
			break;
		case 8:
		case 9:
		case 10:
			result = (signed int)f2rint(*(float *)fromF) == (signed int)f2rint(*(float *)toF);
			break;
		case 5:
			result = *fromF / 100 == *toF / 100;
			break;
		default:
			result = 0;
			break;
	}

	return result;
}



int __cdecl MSG_WriteDelta_LastChangedField(byte *from, byte *to, netField_t* fields, int numFields)
{
	int j;
	int lc;
	int *fromF, *toF;

	lc = -1;
	for ( j = numFields -1; j >= 0; --j )
	{
		fromF = ( int * )( (byte *)from + fields[j].offset );
		toF = ( int * )( (byte *)to + fields[j].offset );

	
		if ( !MSG_ValuesAreEqual(fields[j].bits, fromF, toF) )
		{
			lc = j;
			break;
		}
	}
	//assertx((lc+1 >= 0 && lc+1 < (int)( numFields )), "(lc) = %i", lc);
	return lc;
}


void MSG_WriteOriginFloat(const int clientNum, msg_t *msg, int bits, float value, float oldValue)
{
  MSG_WriteFloat(msg, value);
}

void MSG_WriteOriginZFloat(const int clientNum, msg_t *msg, float value, float oldValue)
{
  MSG_WriteFloat(msg, value);
}

/*
Before using this f2rint has to be used on client side as well
void MSG_WriteOriginFloat(const int clientNum, msg_t *msg, int bits, float value, float oldValue)
{
  signed int ival;
  signed int ioldval;
  signed int mcenterbits, delta;
  vec3_t center;
  
  ival = (signed int)f2rint(value);
  ioldval = (signed int)f2rint(oldValue);
  delta = ival - ioldval;
  
  if ( (unsigned int)(delta + 64)  > 127 )
  {
    MSG_WriteBit1(msg);
	SV_GetMapCenterFromSVSHeader(center);
	mcenterbits = (signed int)f2rint(center[bits != -92]);
    MSG_WriteBits(msg, (ival - mcenterbits + (1 << (24 - 1))) ^ (ioldval - mcenterbits + (1 << (24 - 1))), 24);
  }
  else
  {
    MSG_WriteBit0(msg);
    MSG_WriteBits(msg, delta + 64, 7);
  }
}

void MSG_WriteOriginZFloat(const int clientNum, msg_t *msg, float value, float oldValue)
{
  signed int ival;
  signed int ioldval;
  signed int mcenterbits;
  vec3_t center;
  
  ival = (signed int)f2rint(value);
  ioldval = (signed int)f2rint(oldValue);
  
  if ( (unsigned int)(ival - ioldval + 64)  > 127 )
  {
    MSG_WriteBit1(msg);
	SV_GetMapCenterFromSVSHeader(center);
	mcenterbits = (signed int)f2rint(center[2]);
    MSG_WriteBits(msg, (ival - mcenterbits + (1 << (20 - 1)))) ^ (ioldval - mcenterbits + (1 << (20 - 1)))), 20);
  }
  else
  {
    MSG_WriteBit0(msg);
    MSG_WriteBits(msg, ival - ioldval + 64, 7);
  }
}
*/



__regparm3 void MSG_WriteDeltaField(struct snapshotInfo_s *snapInfo, msg_t *msg, const int time, const byte *from, const byte *to, const struct netField_s* field, int fieldNum, byte forceSend)
{
	int nullfield;
	int32_t timetodata;
	int32_t absbits;
	uint8_t abs3bits;
	int32_t fromtoxor;
	const byte *fromdata;
	const byte *todata;
	uint32_t uint32todata;
	uint32_t uint32fromdata;
	int32_t int32todata;
	int32_t int32todatafromfloat;
	int32_t int32fromdatafromfloat;
	
	int32_t int32data1;
	float floattodata;
	float floatfromdata;	
	
	fromdata = &from[field->offset];
	todata = &to[field->offset];
	if(forceSend)
	{
		nullfield = 0;
		fromdata = (const byte *)&nullfield; 
	}
	if ( field->changeHints != 2 )
	{
		if ( !forceSend && MSG_ValuesAreEqual(field->bits, (const int *)fromdata, (const int *)todata))
		{
			MSG_WriteBit0(msg);		
			return;		
		}
		MSG_WriteBit1(msg);
	}
	
	int32todata = *(uint32_t* )todata;
	floattodata = *(float* )todata;
	floatfromdata = *(float* )fromdata;
	int32todatafromfloat = (signed int)(*(float *)todata);
	int32fromdatafromfloat = (signed int)(*(float *)fromdata);
	uint32todata = *(uint32_t* )todata;
	uint32fromdata = *(uint32_t* )fromdata;
  
	switch(field->bits)
	{
		case 0:
			if ( floattodata == 0.0 )
			{
				MSG_WriteBit0(msg);
				if ( int32todata == 0x80000000 )
				{
					MSG_WriteBit1(msg);
					break;
				}
				MSG_WriteBit0(msg);
				break;
			}
			MSG_WriteBit1(msg);
			if ( int32todata == 0x80000000 || floattodata != (float)int32todatafromfloat || int32todatafromfloat + 4096 < 0 || int32todatafromfloat + 4096 > 0x1FFF || int32fromdatafromfloat + 4096 < 0 || int32fromdatafromfloat + 4096 > 0x1FFF )
			{
				MSG_WriteBit1(msg);
				MSG_WriteLong(msg, uint32todata ^ uint32fromdata);
				break;
			}
			MSG_WriteBit0(msg);
			int32data1 = (int32fromdatafromfloat + 4096) ^ (int32todatafromfloat + 4096);
			MSG_WriteBits(msg, int32data1, 5);
			MSG_WriteByte(msg, int32data1 >> 5);
			break;

		case -89:
			if ( int32todata == 0x80000000 || floattodata != (float)int32todatafromfloat || int32todatafromfloat + 4096 < 0 || int32todatafromfloat + 4096 > 0x1FFF )
			{
			  MSG_WriteBit1(msg);
			  MSG_WriteLong(msg, uint32todata ^ uint32fromdata);
			  break;
			}
			MSG_WriteBit0(msg);
			int32data1 = (int32todatafromfloat + 4096) ^ (int32fromdatafromfloat + 4096);
			MSG_WriteBits(msg, int32data1, 5);
			MSG_WriteByte(msg, int32data1 >> 5);
			break;
			//LABEL_54;
			
		case -88:
			MSG_WriteLong(msg, uint32todata ^ uint32fromdata);
			break;
			
		case -99:
			if ( *(float *)todata != 0.0 || int32todata == 0x80000000 )
			{
			  MSG_WriteBit1(msg);
			  if ( int32todata != 0x80000000 && floattodata == (float)int32todatafromfloat && int32todatafromfloat + 2048 >= 0 && int32todatafromfloat + 2048 <= 4095 )
			  {
				MSG_WriteBit0(msg);
				MSG_WriteBits(msg, (int32todatafromfloat + 2048) ^ (int32fromdatafromfloat + 2048), 4);
				MSG_WriteByte(msg, ((int32todatafromfloat + 2048) ^ (int32fromdatafromfloat + 2048)) >> 4);
			  }
			  else
			  {
				MSG_WriteBit1(msg);
				MSG_WriteLong(msg, uint32todata ^ uint32fromdata);
			  }
			  break;
			}
			//LABEL_28
			MSG_WriteBit0(msg);
			break;

		case -100:
			if ( uint32todata )
			{
			  MSG_WriteBit1(msg);
			  MSG_WriteAngle16(msg, floattodata);
			}
			else
			{
			  MSG_WriteBit0(msg);
			}
			break;

		case -87:
			MSG_WriteAngle16(msg, floattodata);
			break;

		case -86:
			MSG_WriteBits(msg, f2rint((floattodata - 1.4) * 10.0), 5);
			break;

		case -85:
			if ( !((fromdata[3] == -1 && todata[3]) || (fromdata[3] != -1 && (fromdata[3] || todata[3] != -1))))
			{
				if ( !memcmp(fromdata, todata, 3) )
				{
					//LABEL_47
					MSG_WriteBit1(msg);
					break;
				}
			}

			MSG_WriteBit0(msg);
			if ( fromdata[0] != todata[0] || fromdata[1] != todata[1] || fromdata[2] != todata[2] )
			{
			  MSG_WriteBit0(msg);
			  MSG_WriteByte(msg, todata[0]);
			  MSG_WriteByte(msg, todata[1]);
			  MSG_WriteByte(msg, todata[2]);
			}
			else
			{
			  MSG_WriteBit1(msg);
			}
			MSG_WriteBits(msg, (unsigned int)todata[3] >> 3, 5);
			break;

		case -97:
			timetodata = uint32todata - time;
			if ( (unsigned int)timetodata >= 0xFFFFFF01 || timetodata == 0 )
			{
			  MSG_WriteBit0(msg);
			  MSG_WriteBits(msg, -timetodata, 8);
			}
			else
			{
			  MSG_WriteBit1(msg);
			  MSG_WriteLong(msg, uint32todata);
			}
			break;
			
		case -98:
			MSG_WriteEFlags(snapInfo->clnum, msg, uint32fromdata, uint32todata);
			break;

		case -96:
			if ( uint32todata != 1022 )
			{
			  MSG_WriteBit0(msg);
			  if ( uint32todata )
			  {
				MSG_WriteBit0(msg);
				MSG_WriteBits(msg, uint32todata, 2);
				MSG_WriteByte(msg, uint32todata >> 2);
				break;
			  }
			}
			//LABEL_47
			MSG_WriteBit1(msg);
			break;

		case -93:
		case -94:
			MSG_WriteByte(msg, uint32todata);
			break;

		case -91:
		case -92:
			MSG_WriteOriginFloat(snapInfo->clnum, msg, field->bits, floattodata, floatfromdata);
			break;
			
		case -90:
			MSG_WriteOriginZFloat(snapInfo->clnum, msg, floattodata, floatfromdata);
			break;
			
		case -95:
			MSG_WriteBits(msg, uint32todata / 100, 7);
			break;
			
		default:
			if ( uint32todata )
			{
				MSG_WriteBit1(msg);
				absbits = abs(field->bits);
				fromtoxor = uint32todata ^ uint32fromdata;
				abs3bits = absbits & 7;
				if ( abs3bits )
				{
				  MSG_WriteBits(msg, fromtoxor, absbits & 7);
				  absbits -= abs3bits;
				  fromtoxor >>= abs3bits;
				}
				while( absbits )
				{
				  MSG_WriteByte(msg, fromtoxor);
				  fromtoxor >>= 8;
				  absbits -= 8;
				}
			}
			else
			{
				MSG_WriteBit0(msg);
			}
			break;
	}
}




void MSG_WriteEntityRemoval(struct snapshotInfo_s *snapInfo, msg_t *msg, byte *from, int indexBits, byte changeBit)
{
	
	if ( snapInfo->clnum == sv_shownet->integer )
	{
			Com_Printf(CON_CHANNEL_SYSTEM, "W|%3i: #%-3i remove\n", msg->cursize, *(uint32_t*)from);
	}

	
	if(changeBit)
	{
		MSG_WriteBit1(msg);
	}
	MSG_WriteEntityIndex(snapInfo, msg, *(uint32_t*)from, indexBits);
	MSG_WriteBit1(msg);
}

// if (int)f == f and (int)f + ( 1<<(FLOAT_INT_BITS-1) ) < ( 1 << FLOAT_INT_BITS )
// the float will be sent with FLOAT_INT_BITS, otherwise all 32 bits will be sent
#define FLOAT_INT_BITS  13
#define FLOAT_INT_BIAS  ( 1 << ( FLOAT_INT_BITS - 1 ) )



int MSG_WriteDeltaStruct(snapshotInfo_t *snapInfo, msg_t *msg, const int time, const byte *from, const byte *to, qboolean force, int numFields, int indexBits, netField_t *stateFields, qboolean bChangeBit)
{
	
	
	int i, lc;
	int *fromF, *toF;
	const struct netField_s* field;
	int entityNumber = *(uint32_t*)to;
	
	int oldbitcount = MSG_GetUsedBitCount(msg);
	
	lc = 0;
	
	for(i = 0,  field = stateFields; i < numFields; i++, field++)
	{

		fromF = ( int * )( (byte *)from + field->offset );
		toF = ( int * )( (byte *)to + field->offset );

		if(!MSG_ValuesAreEqual(field->bits, fromF, toF))
		{
			lc = i +1;
		}
	}
	if(lc == 0)
	{
	 // nothing at all changed
		if(!force)
		{
			return 0; // nothing at all
		}
		if ( bChangeBit )
		{
			MSG_WriteBit1(msg);
		}
		// write two bits for no change
		MSG_WriteEntityIndex(snapInfo, msg, entityNumber, indexBits);
		MSG_WriteBit0(msg);   // not removed
		MSG_WriteBit0(msg);   // no delta
		return MSG_GetUsedBitCount(msg) - oldbitcount;		
	}
	
	if ( bChangeBit )
	{
		MSG_WriteBit1(msg);
	}
	
	MSG_WriteEntityIndex(snapInfo, msg, entityNumber, indexBits);
	MSG_WriteBit0(msg);   // not removed
	MSG_WriteBit1(msg);   // has delta
	MSG_WriteBits(msg, lc, GetMinBitCount(numFields));

	for(i = 0, field = stateFields; i < lc; i++, field++)
	{
		MSG_WriteDeltaField(snapInfo, msg, time, from, to, field, i, 0);
	}
	return MSG_GetUsedBitCount(msg) - oldbitcount;
}


int MSG_WriteEntityDelta(struct snapshotInfo_s *snapInfo, msg_t *msg, const int time, const byte *from, const byte *to, qboolean force, int numFields, int indexBits, netField_t *stateFields)
{
	return MSG_WriteDeltaStruct(snapInfo, msg, time, from, to, force, numFields, indexBits, stateFields, 0);
}

void MSG_WriteDeltaEntity(struct snapshotInfo_s *snapInfo, msg_t* msg, const int time, entityState_t* from, entityState_t* to, qboolean force){
	// all fields should be 32 bits to avoid any compiler packing issues
	// the "number" field is not part of the field list
	// if this assert fails, someone added a field to the entityState_t
	// struct without updating the message fields
//	assert( numFields + 1 == sizeof( *from ) / 4 );

	netFieldList_t* fieldtype;


	if(!to){
		MSG_WriteEntityRemoval(snapInfo, msg, (byte*)from, 10, 0);
		return;
	}
	

	if( to->number < 64){
		if(g_entities[snapInfo->clnum].client->sess.cs.team == TEAM_FREE){
			if(!SV_FFAPlayerCanBlock()){
				to->solid &= ~PLAYER_SOLIDMASK;

			}

		}else if(!SV_FriendlyPlayerCanBlock() && OnSameTeam( &g_entities[to->number], &g_entities[snapInfo->clnum]))
			to->solid &= ~PLAYER_SOLIDMASK;
	}


	if ( to->number < 0 || to->number >= MAX_GENTITIES ) {
		Com_Error( ERR_FATAL, "MSG_WriteDeltaEntity: Bad entity number: %i", to->number );
	}

	unsigned int index = 17;

	if(to->eType <= 17)
            index = to->eType;
	fieldtype = &netFieldList[index];

	MSG_WriteEntityDelta(snapInfo, msg, time, (const byte *)from,  (const byte *)to, force, fieldtype->numFields, 10, fieldtype->field);

}


// using the stringizing operator to save typing...
#define PSF( x ) # x,(int)&( (playerState_t*)0 )->x


netField_t playerStateFields[] =
{
	{ PSF( commandTime ), -97, 0},
	{ PSF( viewangles[1] ), -87, 0},
	{ PSF( viewangles[0] ), -87, 0},
	{ PSF( viewangles[2] ), -87, 0},
	{ PSF( origin[0] ), -88, 3},
	{ PSF( origin[1] ), -88, 3},
	{ PSF( bobCycle ), 8, 3},
	{ PSF( velocity[1] ), -88, 3},
	{ PSF( velocity[0] ), -88, 3},
	{ PSF( movementDir ), -8, 3},
	{ PSF( eventSequence ), 8, 0},
	{ PSF( legsAnim ), 10, 0},
	{ PSF( origin[2] ), -88, 3},
	{ PSF( weaponTime ), -16, 0},
	{ PSF( aimSpreadScale ), -88, 0},
	{ PSF( torsoTimer ), 16, 0},
	{ PSF( pm_flags ), 21, 0},
	{ PSF( weapAnim ), 10, 0},
	{ PSF( weaponstate ), 5, 0},
	{ PSF( velocity[2] ), -88, 3},
	{ PSF( events[0] ), 8, 0},
	{ PSF( events[1] ), 8, 0},
	{ PSF( events[2] ), 8, 0},
	{ PSF( events[3] ), 8, 0},
	{ PSF( eventParms[0] ), 8, 0},
	{ PSF( eventParms[1] ), 8, 0},
	{ PSF( eventParms[2] ), 8, 0},
	{ PSF( eventParms[3] ), 8, 0},
	{ PSF( torsoAnim ), 10, 0},
	{ PSF( holdBreathScale ), -88, 0},
	{ PSF( eFlags ), -98, 0},
	{ PSF( viewHeightCurrent ), -88, 0},
	{ PSF( fWeaponPosFrac ), -88, 0},
	{ PSF( legsTimer ), 16, 0},
	{ PSF( viewHeightTarget ), -8, 0},
	{ PSF( sprintState.lastSprintStart ), -97, 0},
	{ PSF( sprintState.lastSprintEnd ), -97, 0},
	{ PSF( weapon ), 7, 0},
	{ PSF( weaponDelay ), -16, 0},
	{ PSF( sprintState.sprintStartMaxLength ), 14, 0},
	{ PSF( weapFlags ), 9, 0},
	{ PSF( groundEntityNum ), 10, 0},
	{ PSF( damageTimer ), 10, 0},
	{ PSF( weapons[0] ), 32, 0},
	{ PSF( weapons[1] ), 32, 0},
	{ PSF( weaponold[0] ), 32, 0},
	{ PSF( delta_angles[1] ), -100, 0},
	{ PSF( offHandIndex ), 7, 0},
	{ PSF( pm_time ), -16, 0},
	{ PSF( otherFlags ), 5, 0},
	{ PSF( moveSpeedScaleMultiplier ), 0, 0},
	{ PSF( perks ), 32, 0},
	{ PSF( killCamEntity ), 10, 0},
	{ PSF( throwBackGrenadeOwner ), 10, 0},
	{ PSF( actionSlotType[2] ), 2, 0},
	{ PSF( delta_angles[0] ), -100, 0},
	{ PSF( speed ), 16, 0},
	{ PSF( viewlocked_entNum ), 16, 0},
	{ PSF( gravity ), 16, 0},
	{ PSF( actionSlotType[0] ), 2, 0},
	{ PSF( dofNearBlur ), 0, 0},
	{ PSF( dofFarBlur ), 0, 0},
	{ PSF( clientNum ), 8, 0},
	{ PSF( damageEvent ), 8, 0},
	{ PSF( viewHeightLerpTarget ), -8, 0},
	{ PSF( damageYaw ), 8, 0},
	{ PSF( viewmodelIndex ), 9, 0},
	{ PSF( damageDuration ), 16, 0},
	{ PSF( damagePitch ), 8, 0},
	{ PSF( flinchYawAnim ), 2, 0},
	{ PSF( weaponShotCount ), 3, 0},
	{ PSF( viewHeightLerpDown ), 1, 2},
	{ PSF( cursorHint ), 8, 0},
	{ PSF( cursorHintString ), -8, 0},
	{ PSF( cursorHintEntIndex ), 10, 0},
	{ PSF( viewHeightLerpTime ), 32, 0},
	{ PSF( offhandSecondary ), 1, 2},
	{ PSF( radarEnabled ), 1, 2},
	{ PSF( pm_type ), 8, 0},
	{ PSF( fTorsoPitch ), 0, 0},
	{ PSF( holdBreathTimer ), 16, 0},
	{ PSF( actionSlotParam[2] ), 7, 0},
	{ PSF( jumpTime ), 32, 0},
	{ PSF( mantleState.flags ), 5, 0},
	{ PSF( fWaistPitch ), 0, 0},
	{ PSF( grenadeTimeLeft ), -16, 0},
	{ PSF( proneDirection ), 0, 0},
	{ PSF( mantleState.timer ), 32, 0},
	{ PSF( damageCount ), 7, 0},
	{ PSF( shellshockTime ), -97, 0},
	{ PSF( shellshockDuration ), 16, 2},
	{ PSF( sprintState.sprintButtonUpRequired ), 1, 2},
	{ PSF( shellshockIndex ), 4, 0},
	{ PSF( proneTorsoPitch ), 0, 0},
	{ PSF( sprintState.sprintDelay ), 1, 2},
	{ PSF( actionSlotParam[3] ), 7, 0},
	{ PSF( weapons[3] ), 32, 0},
	{ PSF( actionSlotType[3] ), 2, 0},
	{ PSF( proneDirectionPitch ), 0, 0},
	{ PSF( jumpOriginZ ), 0, 0},
	{ PSF( mantleState.yaw ), 0, 0},
	{ PSF( mantleState.transIndex ), 4, 0},
	{ PSF( weaponrechamber[0] ), 32, 0},
	{ PSF( throwBackGrenadeTimeLeft ), -16, 0},
	{ PSF( weaponold[3] ), 32, 0},
	{ PSF( weaponold[1] ), 32, 0},
	{ PSF( foliageSoundTime ), -97, 0},
	{ PSF( vLadderVec[0] ), 0, 0},
	{ PSF( viewlocked ), 2, 0},
	{ PSF( deltaTime ), 32, 0},
	{ PSF( viewAngleClampRange[1] ), 0, 0},
	{ PSF( viewAngleClampBase[1] ), 0, 0},
	{ PSF( viewAngleClampRange[0] ), 0, 0},
	{ PSF( vLadderVec[1] ), 0, 0},
	{ PSF( locationSelectionInfo ), 8, 0},
	{ PSF( meleeChargeTime ), -97, 0},
	{ PSF( meleeChargeYaw ), -100, 0},
	{ PSF( meleeChargeDist ), 8, 0},
	{ PSF( iCompassPlayerInfo ), 32, 0},
	{ PSF( weapons[2] ), 32, 0},
	{ PSF( actionSlotType[1] ), 2, 0},
	{ PSF( weaponold[2] ), 32, 0},
	{ PSF( vLadderVec[2] ), 0, 0},
	{ PSF( weaponRestrictKickTime ), -16, 0},
	{ PSF( delta_angles[2] ), -100, 0},
	{ PSF( spreadOverride ), 6, 0},
	{ PSF( spreadOverrideState ), 2, 0},
	{ PSF( actionSlotParam[0] ), 7, 0},
	{ PSF( actionSlotParam[1] ), 7, 0},
	{ PSF( dofNearStart ), 0, 0},
	{ PSF( dofNearEnd ), 0, 0},
	{ PSF( dofFarStart ), 0, 0},
	{ PSF( dofFarEnd ), 0, 0},
	{ PSF( dofViewmodelStart ), 0, 0},
	{ PSF( dofViewmodelEnd ), 0, 0},
	{ PSF( viewAngleClampBase[0] ), 0, 0},
	{ PSF( weaponrechamber[1] ), 32, 0},
	{ PSF( weaponrechamber[2] ), 32, 0},
	{ PSF( weaponrechamber[3] ), 32, 0},
	{ PSF( leanf ), 0, 0},
	{ PSF( adsDelayTime ), 32, 1}
};




void MSG_SetDefaultUserCmd(playerState_t *ps, usercmd_t *ucmd)
{
	int i;
	
	Com_Memset(ucmd, 0, sizeof(usercmd_t));
  
	ucmd->weapon = ps->weapon;
	ucmd->offHandIndex = ps->offHandIndex;

	for(i = 0; i < 2; i++)
	{
		ucmd->angles[i] = ANGLE2SHORT(ps->viewangles[i] - ps->delta_angles[i]);
	}
  
	if ( !(ps->otherFlags & 4) )
	{
		return;
	}
   
    if ( ps->eFlags & 8 )
    {
      ucmd->buttons |= 0x100u;
    }
    else
    {
      if ( ps->eFlags & 4 )
        ucmd->buttons |= 0x200u;
    }
    if ( ps->leanf <= 0.0 )
    {
      if ( ps->leanf < 0.0 )
        ucmd->buttons |= 0x40u;
    }
    else
    {
      ucmd->buttons |= 0x80u;
    }
    if ( 0.0 != ps->fWeaponPosFrac )
      ucmd->buttons |= 0x800u;
    if ( ps->pm_flags & 0x8000 )
      ucmd->buttons |= 2u;

}




// using the stringizing operator to save typing...
#define OBJF( x ) # x,(int)&( (objective_t*)0 )->x

static netField_t objectiveFields[] =
{
	{ OBJF( origin[0] ), 0, 0},
	{ OBJF( origin[1] ), 0, 0},
	{ OBJF( origin[2] ), 0, 0},
	{ OBJF( icon ), 12, 0},
	{ OBJF( entNum ), 10, 0},
	{ OBJF( teamNum ), 4, 0}
};


void MSG_WriteDeltaObjective(struct snapshotInfo_s *snapInfo, msg_t *msg, int time, objective_t *from, objective_t *to)
{
	int i, lc, numStateFields;
	netField_t* field;

  	numStateFields = sizeof(objectiveFields) / sizeof(objectiveFields[0]);

	lc = MSG_WriteDelta_LastChangedField((byte*)from, (byte*)to, objectiveFields, numStateFields);

	if(lc == -1)
	{
		MSG_WriteBit0( msg ); // no change
		return;
	}

	MSG_WriteBit1( msg ); //Something has changed
		
  	for(i = 0, field = objectiveFields; i < numStateFields; i++, field++) //Write out all fields in case a single one has changed
	{
		MSG_WriteDeltaField(snapInfo, msg, time, (byte*)from, (byte*)to, field, i, 0);
	}

}


// using the stringizing operator to save typing...
#define HEF( x ) # x,(int)&( (hudelem_t*)0 )->x

static netField_t hudElemFields[] =
{
	{ HEF( color.rgba ), -85, 0},
	{ HEF( fadeStartTime ), -97, 0},
	{ HEF( fromColor.rgba ), -85, 0},
	{ HEF( y ), -91, 0},
	{ HEF( type ), 4, 0},
	{ HEF( materialIndex ), 8, 0},
	{ HEF( height ), 10, 0},
	{ HEF( width ), 10, 0},
	{ HEF( x ), -92, 0},
	{ HEF( fadeTime ), 16, 0},
	{ HEF( z ), -90, 0},
	{ HEF( value ), 0, 0},
	{ HEF( alignScreen ), 6, 0},
	{ HEF( sort ), 0, 0},
	{ HEF( alignOrg ), 4, 0},
	{ HEF( offscreenMaterialIdx ), 8, 0},
	{ HEF( fontScale ), -86, 0},
	{ HEF( text ), 9, 0},
	{ HEF( font ), 4, 0},
	{ HEF( scaleStartTime ), -97, 0},
	{ HEF( scaleTime ), 16, 0},
	{ HEF( fromWidth ), 10, 0},
	{ HEF( fromHeight ), 10, 0},
	{ HEF( targetEntNum ), 10, 0},
	{ HEF( glowColor.rgba ), -85, 0},
	{ HEF( fxBirthTime ), -97, 0},
	{ HEF( soundID ), 5, 0},
	{ HEF( fxLetterTime ), 12, 0},
	{ HEF( fxDecayStartTime ), 16, 0},
	{ HEF( fxDecayDuration ), 16, 0},
	{ HEF( flags ), 3, 0},
	{ HEF( label ), 9, 0},
	{ HEF( time ), -97, 0},
	{ HEF( moveStartTime ), -97, 0},
	{ HEF( moveTime ), 16, 0},
	{ HEF( fromX ), -99, 0},
	{ HEF( fromY ), -99, 0},
	{ HEF( fromAlignScreen ), 6, 0},
	{ HEF( fromAlignOrg ), 4, 0},
	{ HEF( duration ), 32, 0}
};



void MSG_WriteDeltaHudElems(struct snapshotInfo_s *snapInfo, msg_t *msg, const int time, hudelem_t *from, hudelem_t *to, int count)
{

	int i, numHE, numFields, lc, k;
  	netField_t* field;
	
	for(i = 0; i < MAX_HUDELEMENTS; ++i)
	{
		if(to[i].type == HE_TYPE_FREE)
		{
			break;
		}
	}
	
	numHE = i;
	
	MSG_WriteBits(msg, numHE, 5); //31 HE MAX for 5 Bits
  
  
  	numFields = sizeof( hudElemFields ) / sizeof( hudElemFields[0] );
    
	
	for(k = 0; k < numHE; ++k)
	{
		lc = MSG_WriteDelta_LastChangedField((byte*)(from + k), (byte*)(to + k), hudElemFields, numFields);
		if(lc == -1)
		{
			lc = 0; //First field gets written always in IW3 - bug with no functional effect
		}
		MSG_WriteBits(msg, lc, GetMinBitCount(numFields)); //Write highest changed field
		
		for(i = 0, field = hudElemFields; i <= lc; i++, field++) //Write out the fields unit the last changed one
		{
			MSG_WriteDeltaField(snapInfo, msg, time, (byte*)(from + k), ( byte*)(to + k), field, i, 0);
		}
		
	}
}



qboolean MSG_ShouldSendPSField(struct snapshotInfo_s *snapInfo, byte sendOriginAndVel, playerState_t *ps, playerState_t *oldPs, netField_t *field)
{
  int *fromF, *toF;
  
  if ( field->bits == -87 )
  {
    if ( snapInfo->archived || ps->otherFlags & 2 || ((oldPs->eFlags & 0xFF) ^ (ps->eFlags & 0xFF)) & 2 || ps->viewlocked_entNum != 1023 || ps->pm_type == 5)
	{
      return 1;
    }
	return 0;
  }
  
	if ( field->changeHints != 3 || snapInfo->archived )
	{
	  	fromF = ( int * )( (byte *)oldPs + field->offset );
		toF = ( int * )( (byte *)ps + field->offset );

		if(MSG_ValuesAreEqual(field->bits, fromF, toF))
		{
			return 0;
		}
		return 1;
	}
	return sendOriginAndVel;
}


qboolean MSG_WithinAllowedPredictionError(float dist, playerState_t *to)
{
    if(dist <= 0.01)
    {
    	return qtrue;
    }
    return qfalse;
}


void MSG_WriteDeltaPlayerstate(struct snapshotInfo_s *snapInfo, msg_t *msg, const int time, playerState_t *from, playerState_t *to)
{
	qboolean forceSend;
	int statsbits, numFields;
	int i, j, lc;
	playerState_t dummy;
	qboolean sendOriginAndVel;
	netField_t* field;
	int ammobits[8];
	int clipbits;
	int numObjective;
	int numEntries;
	int predictedTime;
	vec3_t predictedOrigin;

	if ( !from )
	{
		from = &dummy;
		memset(&dummy, 0, sizeof(dummy));
	}



	if ( snapInfo->archived )
	{
	    sendOriginAndVel = 1;
	    MSG_WriteBit1(msg);
  	}
  	else
  	{
//		assert(svsHeaderValid);
//Send him 
		predictedTime = SV_GetPredictedOriginAndTimeForClientNum(snapInfo->clnum, predictedOrigin);
		float dist = Vec3DistanceSq(predictedOrigin, to->origin);
/*
if(dist < 200)
VectorCopy(predictedOrigin, to->origin);
*/
		if ( from && svsHeader.clientArchive && MSG_WithinAllowedPredictionError(dist, to) && predictedTime == to->commandTime )
		{
			sendOriginAndVel = 0;
			MSG_WriteBit0(msg);
		}
		else
		{
			sendOriginAndVel = 1;
			MSG_WriteBit1(msg);
		}
	}

	numFields = sizeof( playerStateFields ) / sizeof( playerStateFields[0] );
	
	lc = 0;
	for ( i = 0, field = playerStateFields ; i < numFields ; i++, field++ ) {

		if ( MSG_ShouldSendPSField(snapInfo, sendOriginAndVel, to, from, field) )
		{
			lc = i + 1;
		}
	}

	MSG_WriteBits(msg, lc, GetMinBitCount(numFields));   // # of changes
	
	if ( lc > 0 )
	{
		for(i = 0, field = playerStateFields; i < lc; i++, field++)
		{      
			if ( field->changeHints == 2 || MSG_ShouldSendPSField(snapInfo, sendOriginAndVel, to, from, field) )
			{
				if(!snapInfo->archived && field->changeHints == 3)
				{
					forceSend = qtrue;
				}else{
					forceSend = qfalse;
				}

				MSG_WriteDeltaField(snapInfo, msg, time, (byte *)from, (byte *)to, field, i, forceSend);

			}else{
				MSG_WriteBit0( msg ); // no change

			}
		}
	}
	// send the arrays
	//
	
	statsbits = 0;
	for ( i = 0 ; i < 5 ; i++ ) {
		if ( to->stats[i] != from->stats[i] ) {
			statsbits |= 1 << i;
		}
	}

	if ( statsbits ) 
	{
		MSG_WriteBit1( msg ); // changed
		MSG_WriteBits(msg, statsbits, 5);
			for ( i = 0 ; i < 3 ; i++ ){
				if ( statsbits & ( 1 << i ) ) {
					MSG_WriteShort( msg, to->stats[i] );
				}
			}
			if ( statsbits & 8 )
			{
				MSG_WriteBits(msg, to->stats[3], 6);
			}
			if ( statsbits & 0x10 )
			{
				MSG_WriteByte(msg, to->stats[4]);
			}
	} else {
		MSG_WriteBit0( msg ); // no change to stats
	}



//----(SA)	I split this into two groups using shorts so it wouldn't have
//			to use a long every time ammo changed for any weap.
//			this seemed like a much friendlier option than making it
//			read/write a long for any ammo change.

	// j == 0 : weaps 0-15
	// j == 1 : weaps 16-31
	// j == 2 : weaps 32-47	//----(SA)	now up to 64 (but still pretty net-friendly)
	// j == 3 : weaps 48-63

	// ammo stored
	for ( j = 0; j < 4; j++ ) {  //----(SA)	modified for 64 weaps
		ammobits[j] = 0;	  //Hmm only 64? CoD4 has 128 but its still 64
		for ( i = 0 ; i < 16 ; i++ ) {
			if ( to->ammo[i + ( j * 16 )] != from->ammo[i + ( j * 16 )] ) {
				ammobits[j] |= 1 << i;
			}
		}
	}
	
	//----(SA)	also encapsulated ammo changes into one check.  clip values will change frequently,
	// but ammo will not.  (only when you get ammo/reload rather than each shot)
	if ( ammobits[0] || ammobits[1] || ammobits[2] || ammobits[3] ) {  // if any were set...
		MSG_WriteBit1( msg ); // changed
		for ( j = 0; j < 4; j++ ) {
			if ( ammobits[j] ) {
				MSG_WriteBit1( msg ); // changed
				MSG_WriteShort( msg, ammobits[j] );
				for ( i = 0 ; i < 16 ; i++ )
					if ( ammobits[j] & ( 1 << i ) ) {
						MSG_WriteShort( msg, to->ammo[i + ( j * 16 )] );
					}
			} else {
				MSG_WriteBit0( msg ); // no change
			}
		}
	} else {
		MSG_WriteBit0( msg ); // no change
	}

	// ammo in clip
	for ( j = 0; j < 8; j++ ) {  //----(Ninja)	modified for 128 weaps (CoD4)
		clipbits = 0;
		for ( i = 0 ; i < 16 ; i++ ) {
			if ( to->ammoclip[i + ( j * 16 )] != from->ammoclip[i + ( j * 16 )] ) {
				clipbits |= 1 << i;
			}
		}
		if ( clipbits ) {
			MSG_WriteBit1( msg ); // changed
			MSG_WriteShort( msg, clipbits );
			for ( i = 0 ; i < 16 ; i++ )
				if ( clipbits & ( 1 << i ) ) {
					MSG_WriteShort( msg, to->ammoclip[i + ( j * 16 )] );
				}
		} else {
			MSG_WriteBit0( msg ); // no change
		}
	}
	
	numObjective = sizeof( from->objective ) / sizeof( from->objective[0] );
	
	if ( !memcmp(from->objective, to->objective, sizeof( from->objective )) )
	{
		MSG_WriteBit0(msg); // no change
	}
	else
	{
		MSG_WriteBit1(msg); // changed
		for(i = 0;  i < numObjective; ++i)
		{
			MSG_WriteBits(msg, to->objective[i].state, 3);
			MSG_WriteDeltaObjective(snapInfo, msg, time, &from->objective[i], &to->objective[i]);
		}
	}
	
	if ( !memcmp(&from->hud, &to->hud, sizeof(from->hud)) )
	{
		MSG_WriteBit0(msg); //No Hud-Element has changed
	
	}else{
	
		MSG_WriteBit1(msg); //Any Hud-Element has changed
		MSG_WriteDeltaHudElems(snapInfo, msg, time, from->hud.archival, to->hud.archival, 31);
		MSG_WriteDeltaHudElems(snapInfo, msg, time, from->hud.current, to->hud.current, 31);
	}
	
	numEntries = 128;

	if ( !memcmp(from->weaponmodels, to->weaponmodels, numEntries) )
	{
		MSG_WriteBit0(msg); //No weapon viewmodel has changed
		
	}else{
		MSG_WriteBit1(msg); //Any weapon viewmodel has changed
		for(i = 0; i < numEntries; ++i)
		{
			MSG_WriteByte(msg, to->weaponmodels[i]);
		}
	}
}



#define CSF( x ) # x,(int)&( (clientState_t*)0 )->x

netField_t clientStateFields[] =
{
	{ CSF( modelindex ), 9, 0},
	{ CSF( netname[0] ), 32, 0},
	{ CSF( rank ), 8, 0},
	{ CSF( prestige ), 8, 0},
	{ CSF( team ), 2, 0},
	{ CSF( attachedVehEntNum ), 10, 0},
	{ CSF( netname[4] ), 32, 0},
	{ CSF( attachModelIndex[0] ), 9, 0},
	{ CSF( netname[8] ), 32, 0},
	{ CSF( perks ), 32, 0},
	{ CSF( netname[12] ), 32, 0},
	{ CSF( attachModelIndex[1] ), 9, 0},
	{ CSF( maxSprintTimeMultiplier ), 0, 0},
	{ CSF( attachedVehSlotIndex ), 2, 0},
	{ CSF( attachTagIndex[5] ), 5, 0},
	{ CSF( attachTagIndex[0] ), 5, 0},
	{ CSF( attachTagIndex[1] ), 5, 0},
	{ CSF( attachTagIndex[2] ), 5, 0},
	{ CSF( attachTagIndex[3] ), 5, 0},
	{ CSF( attachTagIndex[4] ), 5, 0},
	{ CSF( attachModelIndex[2] ), 9, 0},
	{ CSF( attachModelIndex[3] ), 9, 0},
	{ CSF( attachModelIndex[4] ), 9, 0},
	{ CSF( attachModelIndex[5] ), 9, 0}
};


void MSG_WriteDeltaClient(struct snapshotInfo_s *snapInfo, msg_t *msg, const int time, clientState_t *from, clientState_t *to, qboolean force)
{
  clientState_t nullstate; // [sp+2Ch] [bp-7Ch]@10

  if ( !from )
  {
    from = &nullstate;
    memset(&nullstate, 0, sizeof(nullstate));
  }
  int numFields = sizeof(clientStateFields) / sizeof(clientStateFields[0]);
  if ( to )
  {
    MSG_WriteDeltaStruct(snapInfo, msg, time, (const byte *)from, (const byte *)to, force, numFields, GetMinBitCount(MAX_CLIENTS -1), clientStateFields, 1);
  }
  else
  {
	MSG_WriteEntityRemoval(snapInfo, msg, (byte*)from, GetMinBitCount(MAX_CLIENTS -1), qtrue);
  }
}


unsigned int kbitmask[33] =
{
  0,
  1,
  3,
  7,
  15,
  31,
  63,
  127,
  255,
  511,
  1023,
  2047,
  4095,
  8191,
  16383,
  32767,
  65535,
  131071,
  262143,
  524287,
  1048575,
  2097151,
  4194303,
  8388607,
  16777215,
  33554431,
  67108863,
  134217727,
  268435455,
  536870911,
  1073741823,
  2147483647,
  4294967295
};



unsigned int __cdecl MSG_ReadKey(msg_t *msg, int key, int bits)
{
  return kbitmask[bits] & (key ^ MSG_ReadBits(msg, bits));
}

int __cdecl MSG_ReadDeltaKeyShort(msg_t *msg, int key, int oldV)
{
  if ( MSG_ReadBit(msg) )
  {
    return (int16_t)(key ^ MSG_ReadShort(msg));
  }
  return oldV;
}

int __cdecl MSG_ReadDeltaKeyByte(msg_t *msg, int key, int oldV)
{
  if ( MSG_ReadBit(msg) )
  {
    return (uint8_t)(key ^ MSG_ReadByte(msg));
  }
  return oldV;
}

int __cdecl MSG_ReadDeltaKey(msg_t *msg, int key, int oldV, int bits)
{
  if ( MSG_ReadBit(msg) )
  {
    return kbitmask[bits] & (key ^ MSG_ReadBits(msg, bits));
  }
  return oldV;
}

void MSG_ReadForwardRightMove(msg_t* msg, usercmd_t* from, usercmd_t* to, int key)
{
	unsigned int mask = 0;
	if ( from->forwardmove <= 10 )
	{
	  if ( from->forwardmove < -10 )
	  {
		  mask |= 2;
	  }
	}
	else
	{
	  mask |= 1;
	}
	
	if ( from->rightmove <= 10 )
	{
	  if ( from->rightmove < -10 )
	  {
		  mask |= 8u;
	  }
	}
	else
	{
	  mask |= 4u;
	}

	unsigned int rfmove = MSG_ReadDeltaKey(msg, key, mask, 4);

	if ( rfmove & 1 )
	{
	  to->forwardmove = 127;
	}else{
	  to->forwardmove = (rfmove & 2) != 0 ? -127 : 0;
	}
	if ( rfmove & 4 )
	{
	  to->rightmove = 127;
	}else{
	  to->rightmove = (rfmove & 8) != 0 ? -127 : 0;
	}
}


void __cdecl MSG_ReadDeltaUsercmdKey(msg_t *msg, int key, usercmd_t *from, usercmd_t *to)
{
	memcpy(to, from, sizeof(usercmd_t));
	if ( MSG_ReadBit(msg) )
	{
		to->serverTime = from->serverTime + MSG_ReadByte(msg);
	}
	else
	{
		to->serverTime = MSG_ReadLong(msg);
	}
	
	if ( !MSG_ReadKey(msg, key, 1) )
	{
		return;
	}

    to->buttons &= 0xFFFFFFFE;
	
	if ( MSG_ReadKey(msg, key, 1) )
    {
	  to->buttons |= MSG_ReadKey(msg, key, 1);
      to->angles[0] = (uint16_t)MSG_ReadDeltaKeyShort(msg, key, from->angles[0]);
      to->angles[1] = (uint16_t)MSG_ReadDeltaKeyShort(msg, key, from->angles[1]);

	  MSG_ReadForwardRightMove(msg, from, to, key);

	  key ^= to->serverTime;
	  to->buttons &= 1u;
      to->angles[2] = (uint16_t)MSG_ReadDeltaKeyShort(msg, key, from->angles[2]);
	  to->buttons |= 2 * MSG_ReadDeltaKey(msg, key, from->buttons >> 1, 20);
	  to->weapon = MSG_ReadDeltaKey(msg, key, from->weapon, 7);
	  to->offHandIndex = MSG_ReadDeltaKey(msg, key, from->offHandIndex, 7);
	  if(to->buttons & 0x10000)
	  {
        to->selectedLocation[0] = MSG_ReadDeltaKeyByte(msg, key, from->selectedLocation[0]);
		to->selectedLocation[1] = MSG_ReadDeltaKeyByte(msg, key, from->selectedLocation[1]);
	  }
	  if ( to->buttons & 4 )
      {
//        to->meleeChargeYaw = (float)MSG_ReadDeltaKeyShort(msg, key, (int16_t)(signed int)(from->meleeChargeYaw * 182.04445 + 0.5)) * 0.0054931641;
        to->meleeChargeYaw = (float)MSG_ReadDeltaKeyShort(msg, key, (int16_t)ANGLE2SHORT(from->meleeChargeYaw)) * 0.0054931641;

        to->meleeChargeDist = MSG_ReadDeltaKey(msg, key, from->meleeChargeDist, 8);
	  }
      if ( to->buttons >= 0x200000 )
      {
        Com_PrintError(CON_CHANNEL_SERVER, "client sent an invalid buttons value %i\n", to->buttons);
        to->buttons = from->buttons;
      }
      if ( (uint8_t)to->weapon >= 0x80u )
      {
        Com_PrintError(CON_CHANNEL_SERVER, "client sent an invalid weapon number %i\n", (uint8_t)to->weapon);
        to->weapon = from->weapon;
      }
      if ( (uint8_t)to->offHandIndex >= 0x80u )
      {
        Com_PrintError(CON_CHANNEL_SERVER, "client sent an invalid offhand index %i\n", (uint8_t)to->offHandIndex);
        to->offHandIndex = from->offHandIndex;
      }
    }
    else
    {
      key ^= to->serverTime;
	  to->buttons |= MSG_ReadKey(msg, key, 1);
      to->angles[0] = (uint16_t)MSG_ReadDeltaKeyShort(msg, key, from->angles[0]);
	  to->angles[1] = (uint16_t)MSG_ReadDeltaKeyShort(msg, key, from->angles[1]);
	  MSG_ReadForwardRightMove(msg, from, to, key);
    }
}



void __cdecl MSG_GetMapCenter(float *center)
{
//  return SV_GetMapCenter();
	SV_GetMapCenterFromSVSHeader(center);
}

float MSG_ReadOriginFloat(msg_t *msg, int bits, float oldValue)
{
    return MSG_ReadFloat(msg);
}

float MSG_ReadOriginZFloat(msg_t *msg, float oldValue)
{
    return MSG_ReadFloat(msg);
}


/*
float MSG_ReadOriginFloat(msg_t *msg, int bits, float oldValue)
{
  signed int coord;

  if ( MSG_ReadBit(msg) )
  {
	vec3_t center;
	MSG_GetMapCenter(center);
    coord = (signed int)f2rint(center[bits != -92]);
    return (double)((((signed int)oldValue - coord + (1 << (24 - 1))) ^ MSG_ReadBits(msg, 24)) + coord - (1 << (24 - 1)));
  }
  return (double)(MSG_ReadBits(msg, 7) - 64) + oldValue;
}

float MSG_ReadOriginZFloat(msg_t *msg, float oldValue)
{
  signed int coord;

  if ( MSG_ReadBit(msg) )
  {
	vec3_t center;
	MSG_GetMapCenter(center);
	coord = (signed int)f2rint(center[2]);
    return (double)((((signed int)oldValue - coord + (1 << (20 - 1))) ^ MSG_ReadBits(msg, 20)) + coord - (1 << (20 - 1)));
  }
  return (double)(MSG_ReadBits(msg, 7) - 64) + oldValue;
}
*/



double MSG_ReadAngle16(msg_t *msg)
{
  return SHORT2ANGLE((double)MSG_ReadShort(msg));
}

int MSG_ReadEFlags(msg_t *msg, const int oldFlags)
{
  int bitChanged;
  int value;
  int i;
  int b;

  assert(!msg->overflowed);

  if ( MSG_ReadBit(msg) == 1 )
  {
    value = 0;
    for(i = 0; i < 24; i += 8)
    {
        b = MSG_ReadByte(msg);
        value |= (b << i);
    }

//    value = MSG_ReadBits(msg, 24); //That was just Blackops
  }
  else
  {
    bitChanged = MSG_ReadBits(msg, 5);

	assert(bitChanged >= 0 && bitChanged < 24);

	value = oldFlags ^ (1 << bitChanged);
  }
  return value;
}


int MSG_ReadDeltaGroundEntity(msg_t *msg)
{
  int j;
  int value;

  if ( MSG_ReadBit(msg) == 1 )
  {
    return 1022;
  }
  if ( MSG_ReadBit(msg) == 1 )
  {
    return 0;
  }
  value = MSG_ReadBits(msg, 2);
  for ( j = 2; j < 10; j += 8 )
  {
    value |= MSG_ReadByte(msg) << j;
  }
  return value;
}


void MSG_ReadDeltaField(msg_t *msg, int time, const void *from, const void *to, netField_t *field, int print, bool noXor)
{
  byte *fromF;
  byte *toF;
  int bits, b;
  int v;
  uint32_t l;
  int bit_vect;
  double f;
  int zeroV;
  signed int t;

  zeroV = 0;
  if ( noXor )
  {
    fromF = (byte *)&zeroV;
  }
  else
  {
    fromF = (byte *)from + field->offset;
  }
  toF = (byte *)to + field->offset;
  if ( field->changeHints != 2 )
  {
    if ( !MSG_ReadBit(msg) ) //No change?
    {
      *(uint32_t*)toF = *(uint32_t*)fromF;
      return;
    }
  }//Changed field
  bits = field->bits;
  if ( !bits )
  {
    if ( !MSG_ReadBit(msg) )
    {
      *(uint32_t*)toF = MSG_ReadBit(msg) << 31;
      return;
    }
    if ( !MSG_ReadBit(msg) )
    {
		b = MSG_ReadBits(msg, 5);
		v = ((32 * MSG_ReadByte(msg) + b) ^ ((signed int)*(float *)fromF + 4096)) - 4096;
		*(float *)toF = (double)v;
		if ( print )
		{
		  Com_Printf(CON_CHANNEL_SYSTEM, "%s:%i ", field->name, v);
		}
		return;
	}
    l = MSG_ReadLong(msg);
    *(uint32_t*)toF = l;
    *(uint32_t*)toF = l ^ *(uint32_t*)fromF;
    if ( !print )
    {
      return;
    }
    f = *(float *)toF;
    Com_Printf(CON_CHANNEL_SYSTEM, "%s:%f ", field->name, f);
    return;
  }
  switch(field->bits)
  {
	case -89:
		if ( !MSG_ReadBit(msg) )
		{
			b = MSG_ReadBits(msg, 5);
			l = ((32 * MSG_ReadByte(msg) + b) ^ ((signed int)*(float *)fromF + 4096)) - 4096;
			*(float *)toF = (double)l;
			if ( print )
			{
				Com_Printf(CON_CHANNEL_SYSTEM, "%s:%i ", field->name, l);
			}
			return;
		}
		l = MSG_ReadLong(msg);
		*(uint32_t*)toF = l ^ *(uint32_t*)fromF;
		if ( !print )
		{
			return;
		}
		f = *(float *)toF;
		Com_Printf(CON_CHANNEL_SYSTEM, "%s:%f ", field->name, f);
		return;
	case -88:
		l = MSG_ReadLong(msg);
		*(uint32_t*)toF = l ^ *(uint32_t*)fromF;
		if ( !print )
		{
		return;
		}
		f = *(float *)toF;
		Com_Printf(CON_CHANNEL_SYSTEM, "%s:%f ", field->name, f);
		return;

	case -100:
		if ( !MSG_ReadBit(msg) )
		{
			*(float *)toF = 0.0;
			return;      
		}
		*(float *)toF = MSG_ReadAngle16(msg);
		return;

	case -99:
		if ( MSG_ReadBit(msg) )
		{
			if ( !MSG_ReadBit(msg) )
			{
				b = MSG_ReadBits(msg, 4);
				v = ((16 * MSG_ReadByte(msg) + b) ^ ((signed int)*(float *)fromF + 2048)) - 2048;
				*(float *)toF = (double)v;
				if ( print )
				{
					Com_Printf(CON_CHANNEL_SYSTEM, "%s:%i ", field->name, v);
				}
				return;
			}
			l = MSG_ReadLong(msg);
			*(uint32_t*)toF = l ^ *(uint32_t*)fromF;
			if ( !print )
			{
				return;
			}
			f = *(float *)toF;
			Com_Printf(CON_CHANNEL_SYSTEM, "%s:%f ", field->name, f);
			return;
		}
		*(uint32_t*)toF = 0;
		return;
	case -98:
		*(uint32_t*)toF = MSG_ReadEFlags(msg, *(uint32_t*)fromF);
		return;
	case -97:
		if ( MSG_ReadBit(msg) )
		{
		*(uint32_t*)toF = MSG_ReadLong(msg);
		}
		else
		{
		*(uint32_t*)toF = time - MSG_ReadBits(msg, 8);
		}
		return;
	case -96:
		*(uint32_t*)toF = MSG_ReadDeltaGroundEntity(msg);
		return;
	case -95:
		*(uint32_t*)toF = 100 * MSG_ReadBits(msg, 7);
		return;
	case -94:
	case -93:
		*(uint32_t*)toF = MSG_ReadByte(msg);
		return;
	case -92:
	case -91:
		f = MSG_ReadOriginFloat(msg, bits, *(float *)fromF);
		*(float *)toF = f;
		if ( print )
		{
			Com_Printf(CON_CHANNEL_SYSTEM, "%s:%f ", field->name, f);
		}
		return;
	case -90:
		f = MSG_ReadOriginZFloat(msg, *(float *)fromF);
		*(float *)toF = f;
		if ( !print )
		{
			return;
		}
		Com_Printf(CON_CHANNEL_SYSTEM, "%s:%f ", field->name, f);
		return;
	case -87:
		*(float *)toF = MSG_ReadAngle16(msg);
		return;
	case -86:
		*(float *)toF = (double)MSG_ReadBits(msg, 5) / 10.0 + 1.399999976158142;
		return;
	case -85:
		if ( MSG_ReadBit(msg) )
		{
			*(uint32_t*)toF = *(uint32_t*)fromF;
			toF[3] = (fromF[3] != 0) - 1;
			return;
		}
		if ( !MSG_ReadBit(msg) )
		{
			toF[0] = MSG_ReadByte(msg);
			toF[1] = MSG_ReadByte(msg);
			toF[2] = MSG_ReadByte(msg);
		}
		toF[3] = 8 * MSG_ReadBits(msg, 5);
		return;
	default:
		if ( !MSG_ReadBit(msg) )
		{
			*(uint32_t*)toF = 0;
			return;
		}
		bits = abs(field->bits);
		bit_vect = bits & 7;
		if ( bit_vect )
		{
			t = MSG_ReadBits(msg, bit_vect);
		}
		else
		{
			t = 0;
		}
		for(;bit_vect < bits;bit_vect += 8)
		{
			t |= (MSG_ReadByte(msg) << bit_vect);
		}
		if ( bits == 32 )
		{
			bit_vect = -1;
		}
		else
		{
			bit_vect = (1 << bits) - 1;
		}
		t = t ^ (*(uint32_t*)fromF & bit_vect);
		if ( field->bits < 0 && (t >> (bits - 1)) & 1)
		{
			t |= ~bit_vect;
		}
		if ( print )
		{
			Com_Printf(CON_CHANNEL_SYSTEM, "%s:%i ", field->name, *(uint32_t*)toF);
		}
		*(uint32_t*)toF = t;
  
	}

}

enum PacketEntityType
{
  ANALYZE_DATATYPE_ENTITYTYPE_GENERALENTITY = 0x0,
  ANALYZE_DATATYPE_ENTITYTYPE_PLAYERENTITY = 0x1,
  ANALYZE_DATATYPE_ENTITYTYPE_PLAYERCORPSEENTITY = 0x2,
  ANALYZE_DATATYPE_ENTITYTYPE_ITEMENTITY = 0x3,
  ANALYZE_DATATYPE_ENTITYTYPE_MISSILEENTITY = 0x4,
  ANALYZE_DATATYPE_ENTITYTYPE_INVISIBLEENTITY = 0x5,
  ANALYZE_DATATYPE_ENTITYTYPE_SCRIPTMOVERENTITY = 0x6,
  ANALYZE_DATATYPE_ENTITYTYPE_SOUNDBLENDENTITY = 0x7,
  ANALYZE_DATATYPE_ENTITYTYPE_FXENTITY = 0x8,
  ANALYZE_DATATYPE_ENTITYTYPE_LOOPFXENTITY = 0x9,
  ANALYZE_DATATYPE_ENTITYTYPE_PRIMARYLIGHTENTITY = 0xA,
  ANALYZE_DATATYPE_ENTITYTYPE_MG42ENTITY = 0xB,
  ANALYZE_DATATYPE_ENTITYTYPE_HELICOPTER = 0xC,
  ANALYZE_DATATYPE_ENTITYTYPE_PLANE = 0xD,
  ANALYZE_DATATYPE_ENTITYTYPE_VEHICLE = 0xE,
  ANALYZE_DATATYPE_ENTITYTYPE_VEHICLE_COLLMAP = 0xF,
  ANALYZE_DATATYPE_ENTITYTYPE_VEHICLE_CORPSE = 0x10,
  ANALYZE_DATATYPE_ENTITYTYPE_ACTOR = 0x11,
  ANALYZE_DATATYPE_ENTITYTYPE_ACTOR_SPAWNER = 0x12,
  ANALYZE_DATATYPE_ENTITYTYPE_ACTOR_CORPSE = 0x13,
  ANALYZE_DATATYPE_ENTITYTYPE_STREAMER_HINT = 0x14,
  ANALYZE_DATATYPE_ENTITYTYPE_TEMPENTITY = 0x15,
  ANALYZE_DATATYPE_ENTITYTYPE_ARCHIVEDENTITY = 0x16,
  ANALYZE_DATATYPE_ENTITYTYPE_MATCHSTATE = 0x17,
  ANALYZE_DATATYPE_ENTITYTYPE_CLIENTSTATE = 0x18,
  ANALYZE_DATATYPE_ENTITYTYPE_PLAYERSTATE = 0x19,
  ANALYZE_DATATYPE_ENTITYTYPE_HUDELEM = 0x1A,
  ANALYZE_DATATYPE_ENTITYTYPE_BASELINE = 0x1B,
  ANALYZE_DATATYPE_ENTITYTYPE_COUNT = 0x1C,
};


/*
void MSG_DumpFields()
{
	netField_t* netf = (netField_t*)0x8227DE0;

	while(netf->name != NULL)
	{
		Com_Printf("{ NETF( %s ), %d, %d},\n", netf->name, netf->bits, netf->changeHints);
		++netf;
	}

}
*/

#define AEF( x ) # x,(int)&( (archivedEntity_t*)0 )->x

netField_t archivedEntityFields[] =
{
	{ AEF( r.absmin[1] ), 0, 0},
	{ AEF( r.absmax[1] ), 0, 0},
	{ AEF( r.absmin[0] ), 0, 0},
	{ AEF( r.absmax[0] ), 0, 0},
	{ AEF( s.lerp.pos.trBase[1] ), 0, 0},
	{ AEF( s.lerp.pos.trBase[0] ), 0, 0},
	{ AEF( r.absmax[2] ), 0, 0},
	{ AEF( s.lerp.pos.trBase[2] ), 0, 0},
	{ AEF( r.absmin[2] ), 0, 0},
	{ AEF( s.groundEntityNum ), 10, 0},
	{ AEF( s.lerp.apos.trBase[1] ), 0, 0},
	{ AEF( s.eType ), 8, 0},
	{ AEF( s.lerp.apos.trBase[0] ), 0, 0},
	{ AEF( s.clientNum ), 7, 0},
	{ AEF( s.lerp.apos.trBase[2] ), 0, 0},
	{ AEF( s.lerp.eFlags ), -98, 0},
	{ AEF( r.svFlags ), 32, 0},
	{ AEF( s.events[0] ), 8, 0},
	{ AEF( s.eventSequence ), 8, 0},
	{ AEF( s.index ), 10, 0},
	{ AEF( s.legsAnim ), 10, 0},
	{ AEF( s.events[1] ), -94, 0},
	{ AEF( s.events[2] ), -94, 0},
	{ AEF( s.events[3] ), -94, 0},
	{ AEF( s.weapon ), 7, 0},
	{ AEF( s.weaponModel ), 4, 0},
	{ AEF( s.lerp.pos.trType ), 8, 0},
	{ AEF( s.lerp.apos.trType ), 8, 0},
	{ AEF( s.iHeadIcon ), 4, 0},
	{ AEF( s.iHeadIconTeam ), 2, 0},
	{ AEF( s.solid ), 24, 0},
	{ AEF( s.eventParms[0] ), -93, 0},
	{ AEF( s.torsoAnim ), 10, 0},
	{ AEF( s.lerp.pos.trTime ), -97, 0},
	{ AEF( s.lerp.pos.trDelta[0] ), 0, 0},
	{ AEF( s.lerp.pos.trDelta[1] ), 0, 0},
	{ AEF( s.lerp.pos.trDelta[2] ), 0, 0},
	{ AEF( s.otherEntityNum ), 10, 0},
	{ AEF( s.eventParms[1] ), -93, 0},
	{ AEF( s.surfType ), 8, 0},
	{ AEF( s.eventParm ), -93, 0},
	{ AEF( s.eventParms[2] ), -93, 0},
	{ AEF( s.un1 ), 8, 0},
	{ AEF( s.eventParms[3] ), 8, 0},
	{ AEF( s.lerp.pos.trDuration ), 32, 0},
	{ AEF( s.fWaistPitch ), 0, 0},
	{ AEF( s.fTorsoPitch ), 0, 0},
	{ AEF( s.lerp.apos.trTime ), -97, 0},
	{ AEF( s.lerp.apos.trDelta[0] ), 0, 0},
	{ AEF( s.lerp.apos.trDelta[2] ), 0, 0},
	{ AEF( r.clientMask[0] ), 32, 0},
	{ AEF( r.clientMask[1] ), 32, 0},
	{ AEF( s.lerp.apos.trDelta[1] ), 0, 0},
	{ AEF( s.attackerEntityNum ), 10, 0},
	{ AEF( s.time2 ), -97, 0},
	{ AEF( s.un2 ), 32, 0},
	{ AEF( s.lerp.apos.trDuration ), 32, 0},
	{ AEF( s.loopSound ), 8, 0},
	{ AEF( s.lerp.u.anonymous.data[0] ), 32, 0},
	{ AEF( s.lerp.u.anonymous.data[1] ), 32, 0},
	{ AEF( s.lerp.u.anonymous.data[2] ), 32, 0},
	{ AEF( s.lerp.u.anonymous.data[3] ), 32, 0},
	{ AEF( s.lerp.u.anonymous.data[4] ), 32, 0},
	{ AEF( s.lerp.u.anonymous.data[5] ), 32, 0},
	{ AEF( s.lerp.u.anonymous.data[6] ), 32, 0},
	{ AEF( s.partBits[0] ), 32, 0},
	{ AEF( s.partBits[1] ), 32, 0},
	{ AEF( s.partBits[2] ), 32, 0},
	{ AEF( s.partBits[3] ), 32, 0}
};


bool __cdecl MSG_WriteDeltaArchivedEntity(snapshotInfo_t *snapInfo, msg_t *msg, const int time, archivedEntity_t *from, archivedEntity_t *to, enum DeltaFlags flags)
{
//  enum PacketEntityType packEntType;

  assert ( !msg->readonly );
/*
  packEntType = MSG_GetPacketEntityTypeForEType(to->s.eType);
  MSG_PacketAnalyze_SetPacketEntityType(snapInfo, packEntType, 1);
  MSG_WriteEntityDeltaForEType(snapInfo, msg, time, to->s.eType, &from->s, &to->s, flags);

  if(MSG_WriteAppendedDeltaStruct(
           snapInfo,
           msg,
           time,
           (char *)&from->r,
           (char *)&to->r,
           flags == DELTA_FLAGS_FORCE,
           fieldList->count,
		   10, field, 0, 1) > 0)
  {
	return  qtrue;
  }
*/
  int numFields = sizeof(archivedEntityFields) / sizeof(archivedEntityFields[0]);

  if(MSG_WriteDeltaStruct(snapInfo, msg, time, (byte *)from, (byte *)to, flags == DELTA_FLAGS_FORCE, numFields, 10, archivedEntityFields, 0) > 0)
  {
	return  qtrue;	
  }
  return qfalse;
}

int MSG_ReadLastChangedField(msg_t *msg, int totalFields)
{
  int idealBits;
  int lastChanged;

  idealBits = GetMinBitCount(totalFields);
  lastChanged = MSG_ReadBits(msg, idealBits);

  assertx(lastChanged <= totalFields, "lastChanged was %i, totalFields is %i\n", lastChanged, totalFields);

  return lastChanged;
}


void MSG_ReadDeltaFields(msg_t *msg, const int time, const byte *from, byte *to, int numFields, netField_t *stateFields)
{
  int lc;
  int i;
  bool print;
/*
  int *eTypeFromF;
  int *eTypeToF;

  if ( isEntity )
  {
    eTypeFromF = (int *)((char *)from + stateFields->offset);
    eTypeToF = (int *)((char *)to + stateFields->offset);
  }

  */
	if ( !MSG_ReadBit(msg) )
	{
/*	  
    for ( i = 0; i < numFields; ++i )
    {
      MSG_CopyFieldOver(stateFields, from, to, i);
	}
*/
		memcpy(to, from, 4 * numFields + 4);
		return;	
	}

    lc = MSG_ReadLastChangedField(msg, numFields);
	
	if ( lc > numFields )
    {
		Com_PrintError(CON_CHANNEL_NETWORK, "Got lastChanged field of %i, but there are only %i fields\n", lc, numFields);
		msg->overflowed = 1;
		return;
	}
#ifndef DEDICATEDONLY
	if ( cl_shownet && (cl_shownet->integer >= 2 || cl_shownet->integer == -1) )
	{
	  print = true;
	  Com_Printf(CON_CHANNEL_NETWORK, "%3i: #%-3i ", msg->readcount, *(uint32_t *)to);
	}
	else
#endif
	{
	  print = false;
	}

    for ( i = 0; i < lc; ++i )
    {
/*      if ( stateFields[i].changeHints == 2 )
		{*/
        MSG_ReadDeltaField(msg, time, from, to, &stateFields[i], print, 0);
        /*}*/
    }
    for ( i = lc; i < numFields; ++i )
    {
		int offset = stateFields[i].offset;
		*(uint32_t *)&to[offset] = *(uint32_t *)&from[offset];
    }
}




int __cdecl MSG_ReadDeltaStruct(msg_t *msg, const int time, const void *from, void *to, unsigned int number, int numFields, int indexBits, netField_t *stateFields)
{
  assert(number < (1u << indexBits));

  if ( MSG_ReadBit(msg) == 1 )
  {
#ifndef DEDICATEDONLY
    if ( cl_shownet )
    {
      if ( cl_shownet->current.integer >= 2 || cl_shownet->current.integer == -1 )
      {
		Com_Printf(CON_CHANNEL_NETWORK, "%3i: #%-3i remove\n", msg->readcount, number);
		
      }
	}
#endif
    return 1;
  }
  *(uint32_t*)to = number;
  MSG_ReadDeltaFields(msg, time, from, to, numFields, stateFields);
  return 0;
}



int MSG_ReadDeltaClient(msg_t *msg, const int time, clientState_t *from, clientState_t *to, int number)
{
  clientState_t dummy;

  int numFields = sizeof( clientStateFields ) / sizeof( clientStateFields[0] );

  if ( !from )
  {
    memset(&dummy, 0, sizeof(dummy));
    from = &dummy;
  }
  return MSG_ReadDeltaStruct(msg, time, (byte*)from, (byte *)to, number, numFields, GetMinBitCount(MAX_CLIENTS -1), clientStateFields);
}

int MSG_ReadDeltaArchivedEntity(msg_t *msg, const int time, archivedEntity_t *from, archivedEntity_t *to, int number)
{
  int numFields = sizeof( archivedEntityFields ) / sizeof( archivedEntityFields[0] );

  return MSG_ReadDeltaStruct(msg, time, (byte*)from, (byte*)to, number, numFields, 10, archivedEntityFields);
}


void MSG_ReadDeltaObjectiveFields(msg_t *msg, int time, objective_t *from, objective_t *to)
{
  int i, numObjectiveFields;

  if ( MSG_ReadBit(msg) )
  {
	numObjectiveFields = sizeof( objectiveFields ) / sizeof( objectiveFields[0] );
	for(i = 0; i < numObjectiveFields; ++i)
	{
      MSG_ReadDeltaField(msg, time, from, to, &objectiveFields[i], 0, 0);
    }
  }
  else
  {
	VectorCopy(from->origin, to->origin);
    to->icon = from->icon;
    to->entNum = from->entNum;
    to->teamNum = from->teamNum;
  }
}



void MSG_ReadDeltaHudElems(msg_t *msg, const int time, hudelem_t *from, hudelem_t *to, int count)
{
  int alignY;
  int alignX;
  int numFields;
  unsigned int lc;
  int i, y;
  int inuse;

  assert(count == MAX_HUDELEMS_ARCHIVAL || count == MAX_HUDELEMS_CURRENT);
  
  numFields = sizeof(hudElemFields)/sizeof(hudElemFields[0]);

  inuse = MSG_ReadBits(msg, 5);
  for ( i = 0; i < inuse; ++i )
  {
	lc = MSG_ReadBits(msg, 6);
	if(lc > numFields)
	{
		Com_Error(ERR_DROP, "MSG_ReadDeltaHudElems: Out of range last changed field %d\n", lc);
	}
	for(y = 0; y <= lc; ++y)
	{
		MSG_ReadDeltaField(msg, time, &from[i], &to[i], &hudElemFields[y], 0, 0);
	}

	/*
    	for ( ; y < numFields; ++y )
    	{
		int offset = hudElemFields[y].offset;
		((byte*)&to[i])[offset] = ((byte*)&from[i])[offset];
	}
	*/
	  
	assertx((!(from[i].alignOrg & ~15)), "(from[i].alignOrg) = %i", from[i].alignOrg);
	assertx((!(to[i].alignOrg & ~15)), "(to[i].alignOrg) = %i", to[i].alignOrg);

    alignX = (from[i].alignOrg >> 2) & 3;
	assertx((alignX == 0 || alignX == 1 || alignX == 2), "(from[i].alignOrg) = %i", from[i].alignOrg);

	alignY = from[i].alignOrg & 3;
	assertx((alignY == 0 || alignY == 1 || alignY == 2), "(from[i].alignOrg) = %i", from[i].alignOrg);
	
    alignX = (to[i].alignOrg >> 2) & 3;
	assertx((alignX == 0 || alignX == 1 || alignX == 2), "(to[i].alignOrg) = %i", to[i].alignOrg);
	
	alignY = to[i].alignOrg & 3;
	assertx((alignY == 0 || alignY == 1 || alignY == 2), "(to[i].alignOrg) = %i", to[i].alignOrg);
	
  }
  while ( inuse < count && to[inuse].type )
  {
    memset(&to[inuse], 0, sizeof(hudelem_t));
	assert(to[inuse].type == HE_TYPE_FREE);
    ++inuse;
  }
}

void __cdecl MSG_ReadDeltaPlayerstate(const int localClientNum, msg_t *msg, const int time, playerState_t *from, playerState_t *to, bool predictedFieldsIgnoreXor)
{
	signed int i, j;
	unsigned int numFields;
	signed int print;
	int lc, bits;
	playerState_t dst;
	int statsbits;
	bool readOriginAndVel;
	int fieldNum;
	netField_t *stateFields;

	if ( !from )
	{
		from = &dst;
		memset(&dst, 0, sizeof(dst));
	}
	memcpy(to, from, sizeof(playerState_t));
#ifndef DEDICATEDONLY
	if ( cl_shownet && (cl_shownet->integer >= 2 || cl_shownet->integer == -2) )
	{
		print = 1;
		Com_Printf(CON_CHANNEL_SYSTEM, "%3i: playerstate ", msg->readcount);
	}
	else
#endif
	{
		print = 0;
	}

	numFields = sizeof( playerStateFields ) / sizeof( playerStateFields[0] );

	readOriginAndVel = MSG_ReadBit(msg) > 0;
	lc = MSG_ReadLastChangedField(msg, numFields);
	assert(lc >= 0);

	stateFields = playerStateFields;

	for(i = 0; i < lc; ++i)
	{
		bool noXor = predictedFieldsIgnoreXor && readOriginAndVel && stateFields[i].changeHints == 3;
		MSG_ReadDeltaField(msg, time, from, to, &stateFields[i], print, noXor);	
	}

	/*
	for ( i = lc; i < numFields; ++i )
	{
		int offset = stateFields[i].offset;
		*(uint32_t *)&((byte*)to)[offset] = *(uint32_t *)&((byte*)from)[offset];
	}
	*/
	
	if ( !readOriginAndVel )
	{
#ifndef DEDICATEDONLY
		if ( !CL_GetPredictedOriginForServerTime(	CL_GetLocalClientGlobals(localClientNum),
				to->commandTime, to->origin, to->velocity, to->viewangles, &to->bobCycle, &to->movementDir) )
		{
			Com_PrintError(CON_CHANNEL_CLIENT, "Unable to find the origin we sent, delta is not going to work");

			VectorCopy(from->origin, to->origin);
			VectorCopy(from->velocity, to->velocity);
			to->bobCycle = from->bobCycle;
			to->movementDir = from->movementDir;
			VectorCopy(from->viewangles, to->viewangles);
		}
#else
		Com_Error(ERR_FATAL, "Cached player state without origin and velocity");
#endif
	}
 
    if ( MSG_ReadBit(msg) )
    {
#ifndef DEDICATEDONLY
      if ( cl_shownet )
      {
        if ( cl_shownet->integer == 4 )
        {
          Com_Printf(CON_CHANNEL_SYSTEM, "%s ", "PS_STATS");
        }
      }
#endif
	  statsbits = MSG_ReadBits(msg, 5);
	  for ( i = 0 ; i < 3 ; i++ )
	  {
		if ( statsbits & ( 1 << i ) ) {
			to->stats[i] = MSG_ReadShort(msg);
		}
	  }
      if ( statsbits & 8 )
      {
        to->stats[3] = MSG_ReadBits(msg, 6);
      }
      if ( statsbits & 0x10 )
      {
        to->stats[4] = MSG_ReadByte(msg);
      }
	}
	
//----(SA)	I split this into two groups using shorts so it wouldn't have
//			to use a long every time ammo changed for any weap.
//			this seemed like a much friendlier option than making it
//			read/write a long for any ammo change.

	// parse ammo

	// j == 0 : weaps 0-15
	// j == 1 : weaps 16-31
	// j == 2 : weaps 32-47	//----(SA)	now up to 64 (but still pretty net-friendly)
	// j == 3 : weaps 48-63

	// ammo stored
	if ( MSG_ReadBit( msg) ) {     // check for any ammo change (0-63)
		for ( j = 0; j < 4; j++ ) {
			if ( MSG_ReadBit( msg ) ) {

#ifndef DEDICATEDONLY
				if ( cl_shownet && cl_shownet->integer == 4 )
				{
					Com_Printf(CON_CHANNEL_SYSTEM, "%s ", "PS_AMMO");
				}
#endif
				bits = MSG_ReadShort( msg );
				for ( i = 0 ; i < 16 ; i++ ) {
					if ( bits & ( 1 << i ) ) {
						to->ammo[i + ( j * 16 )] = MSG_ReadShort( msg );
					}
				}
			}
		}
	}

	// ammo in clip
	for ( j = 0; j < 8; j++ ) {
		if ( MSG_ReadBit( msg ) ) {

#ifndef DEDICATEDONLY
			if ( cl_shownet && cl_shownet->integer == 4 )
			{
				Com_Printf(CON_CHANNEL_SYSTEM, "%s ", "PS_AMMOCLIP");
			}
#endif
			bits = MSG_ReadShort( msg );
			for ( i = 0 ; i < 16 ; i++ ) {
				if ( bits & ( 1 << i ) ) {
					to->ammoclip[i + ( j * 16 )] = MSG_ReadShort( msg );
				}
			}
		}
	}

	int numObjective = sizeof( from->objective ) / sizeof( from->objective[0] );

    if ( MSG_ReadBit(msg) )
    {
      for ( fieldNum = 0; fieldNum < numObjective; ++fieldNum )
      {
		to->objective[fieldNum].state = MSG_ReadBits(msg, 3);
		MSG_ReadDeltaObjectiveFields(msg, time, &from->objective[fieldNum], &to->objective[fieldNum]);
      }
    }
    if ( MSG_ReadBit(msg) )
    {
      MSG_ReadDeltaHudElems(msg, time, from->hud.archival, to->hud.archival, 31);
      MSG_ReadDeltaHudElems(msg, time, from->hud.current, to->hud.current, 31);
	}

    if ( MSG_ReadBit(msg) )
    {
		int numEntries = 128;

		for(i = 0; i < numEntries; ++i)
		{
			to->weaponmodels[i] = MSG_ReadByte(msg);
		}
	
	}

}
