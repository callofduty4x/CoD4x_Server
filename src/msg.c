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


/*
This part makes msg.c undepended in case no proper qcommon_io.h is included
*/



//int pcount[256];
//static char bigstring[MAX_MSGLEN];

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
	buf->splitdata = NULL;
	buf->splitcursize = 0;
	buf->readcount = 0;
	buf->bit = 0;
	buf->lastRefEntity = 0;
}

void MSG_InitReadOnly( msg_t *buf, byte *data, int length ) {

	MSG_Init( buf, data, length);
	buf->cursize = length;
	buf->readonly = qtrue;
}

void MSG_InitReadOnlySplit( msg_t *buf, byte *data, int length, byte* arg4, int arg5 ) {

	buf->data = data;
	buf->cursize = length;
	buf->readonly = qtrue;
	buf->splitdata = arg4;
	buf->maxsize = length + arg5;
	buf->splitcursize = arg5;
	buf->readcount = 0;
}


void MSG_Clear( msg_t *buf ) {
	
	if(buf->readonly == qtrue || buf->splitdata != NULL)
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
	if (c < 0 || c > 255)
		Com_Error (ERR_FATAL, "MSG_WriteByte: range error");
#endif
	byte* dst;

	if ( msg->maxsize - msg->cursize < 1 ) {
		msg->overflowed = qtrue;
		return;
	}
	dst = (byte*)&msg->data[msg->cursize];
	*dst = c;
	msg->cursize += sizeof(byte);
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
	dst = (short*)&msg->data[msg->cursize];
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
			Com_Printf( "MSG_WriteString: MAX_STRING_CHARS" );
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
			Com_Printf( "MSG_WriteString: BIG_INFO_STRING" );
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

//============================================================

//
// reading functions
//

// returns -1 if no more characters are available

int MSG_ReadByte( msg_t *msg ) {
	byte	*c;

	if ( msg->readcount+sizeof(byte) > msg->cursize ) {
		msg->overflowed = 1;
		return -1;
	}
	c = &msg->data[msg->readcount];

	msg->readcount += sizeof(byte);
	return *c;
}

int MSG_ReadShort( msg_t *msg ) {
	signed short	*c;

	if ( msg->readcount+sizeof(short) > msg->cursize ) {
		msg->overflowed = 1;
		return -1;
	}	
	c = (short*)&msg->data[msg->readcount];

	msg->readcount += sizeof(short);
	return *c;
}

int32_t MSG_ReadLong( msg_t *msg ) {
	int32_t		*c;

	if ( msg->readcount+sizeof(int32_t) > msg->cursize ) {
		msg->overflowed = 1;
		return -1;
	}	
	c = (int32_t*)&msg->data[msg->readcount];

	msg->readcount += sizeof(int32_t);
	return *c;

}

int64_t MSG_ReadInt64( msg_t *msg ) {
	int64_t		*c;

	if ( msg->readcount+sizeof(int64_t) > msg->cursize ) {
		msg->overflowed = 1;
		return -1;
	}	
	c = (int64_t*)&msg->data[msg->readcount];

	msg->readcount += sizeof(int64_t);
	return *c;

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
	
	float		*c;
	
	if ( msg->readcount+sizeof(int32_t) > msg->cursize ) {
		//msg->readcount += sizeof(int32_t); /* Hmm what a bad bug is this ? O_o*/
		return -1;
	}	
	c = (float*)&msg->data[msg->readcount];
	
	msg->readcount += sizeof(float);
	return *c;
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

    return ((msg->cursize + msg->splitcursize) * 8) - ((8 - msg->bit) & 7);

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
        if ( msg->readcount >= msg->splitcursize + msg->cursize )
        {
          msg->overflowed = 1;
          return -1;
        }
        msg->bit = 8 * msg->readcount;
        msg->readcount++;
      }
      if ( ((msg->bit / 8)) >= msg->cursize )
      {

        if(msg->splitdata == NULL)
            return 0;

        var = msg->splitdata[(msg->bit / 8) - msg->cursize];

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
	Com_Printf("msg_hData {\n");
	for(i=0;i<256;i++) {
		if (array[i] == 0) {
			Huff_addRef(&msgHuff.compressor,	i);			// Do update
			Huff_addRef(&msgHuff.decompressor,	i);			// Do update
		}
		Com_Printf("%d,			// %d\n", array[i], i);
	}
	Com_Printf("};\n");
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


typedef struct {
	char    *name;
	int offset;
	int bits;           // 0 = float
	int var_04;
} netField_t;

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
	{ NETF( lerp.u.vehicle.teamAndOwnerIndex ), 8, 0},
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
	{ NETF( lerp.u.vehicle.teamAndOwnerIndex ), 8, 2},
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





// if (int)f == f and (int)f + ( 1<<(FLOAT_INT_BITS-1) ) < ( 1 << FLOAT_INT_BITS )
// the float will be sent with FLOAT_INT_BITS, otherwise all 32 bits will be sent
#define FLOAT_INT_BITS  13
#define FLOAT_INT_BIAS  ( 1 << ( FLOAT_INT_BITS - 1 ) )



void MSG_WriteDeltaEntity(snapshotInfo_t* snap, msg_t* msg, int time, entityState_t* from, entityState_t* to, int arg_6){
	// all fields should be 32 bits to avoid any compiler packing issues
	// the "number" field is not part of the field list
	// if this assert fails, someone added a field to the entityState_t
	// struct without updating the message fields
//	assert( numFields + 1 == sizeof( *from ) / 4 );

	netFieldList_t* fieldtype;
	netField_t* field;
	int i, lc;
	int *fromF, *toF;
	int var_01, var_02;

	if(!to){
		MSG_WriteEntityIndex(snap, msg, from->number, 0x0a);
		MSG_WriteBit1(msg);
		return;
	}

	

	if( to->number < 64){
		if(g_entities[snap->clnum].client->sess.cs.team == TEAM_FREE){
			if(!SV_FFAPlayerCanBlock()){
				to->solid &= ~PLAYER_SOLIDMASK;

			}

		}else if(!SV_FriendlyPlayerCanBlock() && OnSameTeam( &g_entities[to->number], &g_entities[snap->clnum]))
			to->solid &= ~PLAYER_SOLIDMASK;
	}




	if ( to->number < 0 || to->number >= MAX_GENTITIES ) {
		Com_Error( ERR_FATAL, "MSG_WriteDeltaEntity: Bad entity number: %i", to->number );
	}

	unsigned int index = 17;

	if(to->eType <= 17)
            index = to->eType;

//	MSG_GetUsedBitCount(msg);


	fieldtype = &netFieldList[index];

	if(fieldtype->numFields <= 0){
		MSG_WriteDeltaEntity_EXIT2:
		if(arg_6){
			MSG_WriteEntityIndex(snap, msg, to->number, 10);
			MSG_WriteBit0(msg);
			MSG_WriteBit0(msg);
//			MSG_GetUsedBitCount(msg);
		}
		return;
	}


	for(i = 0, lc = 0, field = fieldtype->field; i < fieldtype->numFields; i++, field++){

		fromF = ( int * )( (byte *)from + field->offset );
		toF = ( int * )( (byte *)to + field->offset );

		if ( *fromF == *toF ) {
			continue;
		}

		int swbits = field->bits +100;

		switch(swbits){
			case 8:
			case 9:
			case 10:
				var_01 = (int)floorf(0.5f + *(float*)fromF);
				var_02 = (int)floorf(0.5f + *(float*)toF);
				if(var_01 != var_02)
				{
					lc = i +1;
				}
				continue;

			case 0:
			case 13:

				var_01 = (int)(182.044449f * (*(float*)fromF) + 0.5f);
				var_02 = (int)(182.044449f * (*(float*)toF) + 0.5f);
				if((short)var_01 != (short)var_02)
				{
					lc = i +1;
				}
				continue;


			case 5:
				//(*toF)(*fromF) * 0x51eb851f; This makes no sense

				var_01 = swbits >> 5;
				var_01 -= *fromF >> 31;

				var_02 = swbits >> 5;
				var_02 -= *toF >> 31;

				if(var_01 != var_02)
				{
					lc = i +1;
				}
				continue;

			default:
			lc = i +1;
		}
	}


	if(!lc)
		goto MSG_WriteDeltaEntity_EXIT2;


	MSG_WriteEntityIndex(snap, msg, to->number, 10);
	MSG_WriteBit0(msg);
	MSG_WriteBit1(msg);
	MSG_WriteBits(msg, lc, GetMinBitCount(fieldtype->numFields));

	if(lc > 0)
	{
		for(i = 0, field = fieldtype->field; i != lc; i++, field++)
		{
			MSG_WriteDeltaField(snap, msg, time, (unsigned const char*)from, (unsigned const char*)to, field, i, 0);
		}
	}
//	MSG_GetUsedBitCount(msg);
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
	{ PSF( adsDelayTime ), 32, 1},
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
    Com_PrintWarning("WARNING: Empty reliable command\n");

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
		Com_PrintWarning("WARNING: Reliable command is too long (%i/%i) and will be truncated: '%s'\n", requiredlen, length, source);
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

