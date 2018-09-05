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

#include "q_shared.h"
#include "cscr_stringlist.h"
#include "qcommon.h"
#include "qcommon_io.h"
#include "sys_main.h"
#include "sys_thread.h"
#include "scr_vm.h"
#include "cscr_memorytree.h"
#include "qcommon_mem.h"
#include "cscr_variable.h"

#include <string.h>
#include <stdarg.h>
#include <ctype.h>


#define HASH_STAT_MASK 0x30000
#define HASH_STAT_HEAD 0x20000
#define HASH_STAT_MOVABLE 0x10000
#define HASH_STAT_FREE 0
#define HASH_NEXT_MASK 0xFFFF

#define DEBUG_REFCOUNT_SIZE 65536

#pragma pack(push, 4)
struct __align(4) RefString
{
    union
    {
      struct
      {
        unsigned int refCount : 16;
        unsigned int user : 8;
        unsigned int byteLen : 8;
      };
      volatile int data;
    };
    char str[1];
};
#pragma pack(pop)


struct HashEntry
{
  unsigned int status_next;
  union
  {
    unsigned int prev;
    unsigned int str;
  };
};

struct scrStringDebugGlob_t
{
  volatile int refCount[DEBUG_REFCOUNT_SIZE];
  volatile int totalRefCount;
  int ignoreLeaks;
};

struct __align(128) scrStringGlob_t
{
  HashEntry *hashTable;
  bool inited;
  HashEntry *nextFreeEntry;
  int indentLevel;
  int stringsUsed[32];
};


scrStringDebugGlob_t *gScrStringDebugGlob;
scrStringGlob_t gScrStringGlob;

#ifndef NDEBUG
scrStringDebugGlob_t gScrStringDebugGlobBuff;
#endif

unsigned int GetHashCode(const char *str, unsigned int len)
{
    const char *pos;
    unsigned int hash;

    if ( len >= 256 )
    {
        return (len >> 2) % 32767 +1;
    }
    hash = 0;
    pos = str;
    while ( len )
    {
      hash = *pos++ + 31 * hash;
      --len;
    }
    return hash % 32767 + 1;
}



RefString *GetRefString(unsigned int stringValue)
{
  assert(stringValue);
  return (RefString *)MT_GetRefByIndex(stringValue);
}

RefString *GetRefString(const char* string)
{
  RefString* ref = (RefString*)(string -4);

  assert(MT_GetIndexByRef((byte*)ref));

  return ref;
}


int SL_GetRefStringLen(RefString *refString)
{
  int len;

  if(!refString->byteLen)
  {
    len = 256 - 1; //Bugfix for 256 % 256 = 0 or 512 % 256 = 0 or... Just promote it to 256
  }else{
    len = refString->byteLen - 1;
  }

  while(refString->str[len])
  {
    len += 256;
  }

  return len;
}


const char * SL_DebugConvertToString(unsigned int stringValue)
{
  int len;
  int i;
  RefString *refString;

  if ( stringValue )
  {
    refString = GetRefString(stringValue);
    len = refString->byteLen - 1;
    if ( refString->str[len] )
    {
      return "<BINARY>";
    }
    for ( i = 0; i < len; ++i )
    {
        if ( !isprint(refString->str[i]) )
        {
          return "<BINARY>";
        }
    }
    return refString->str;
  }
  return "<NULL>";
}





void SL_FreeString(unsigned int stringValue, RefString *refStr, unsigned int len)
{
  HashEntry *entry;
  int newIndex;
  unsigned int newNext;
  unsigned int index;
  unsigned int prev;
  HashEntry *newEntry;

  index = GetHashCode(refStr->str, len);
  Sys_EnterCriticalSection(CRITSECT_SCRIPT_STRING);
  if ( refStr->refCount )
  {
    Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
    return;
  }
    entry = &gScrStringGlob.hashTable[index];

    assertx(!refStr->user, "SL_DebugConvertToString( stringValue ) = %s", SL_DebugConvertToString(stringValue));

    MT_FreeIndex(stringValue, len + 4);

    assertx((entry->status_next & HASH_STAT_MASK) == HASH_STAT_HEAD, "(entry->status_next) = %i", entry->status_next);

    newIndex = entry->status_next & HASH_NEXT_MASK;
    newEntry = &gScrStringGlob.hashTable[newIndex];
    if ( entry->prev == stringValue )
    {
      --gScrStringGlob.stringsUsed[gScrStringGlob.indentLevel];
      if ( newEntry == entry )
      {
        newEntry = entry;
        newIndex = index;
      }
      else
      {
        entry->status_next = (newEntry->status_next & HASH_NEXT_MASK) | HASH_STAT_HEAD;
        entry->prev = newEntry->prev;
        gScrStringGlob.nextFreeEntry = entry;
      }
    }
    else
    {
      prev = index;
      while ( 1 )
      {
        assert(newEntry != entry);
        assert((newEntry->status_next & HASH_STAT_MASK) == HASH_STAT_MOVABLE);

        if ( newEntry->prev == stringValue )
        {
          break;
        }
        prev = newIndex;
        newIndex = newEntry->status_next & HASH_NEXT_MASK;
        newEntry = &gScrStringGlob.hashTable[newIndex];
      }
      gScrStringGlob.hashTable[prev].status_next = (newEntry->status_next & HASH_NEXT_MASK) | (gScrStringGlob.hashTable[prev].status_next & HASH_STAT_MASK);
    }

    assert((newEntry->status_next & HASH_STAT_MASK) != HASH_STAT_FREE);

    newNext = gScrStringGlob.hashTable->status_next;

    assert((newNext & HASH_STAT_MASK) == HASH_STAT_FREE);

    newEntry->status_next = newNext;
    newEntry->prev = 0;
    gScrStringGlob.hashTable[newNext].prev = newIndex;
    gScrStringGlob.hashTable->status_next = newIndex;
    Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
}

void Scr_ResetScrStringDebugGlob( )
{
#ifndef NDEBUG
  gScrStringDebugGlob = &gScrStringDebugGlobBuff;
#endif
}

void SL_InitCheckLeaks( )
{
  Scr_ResetScrStringDebugGlob( );
  if(gScrStringDebugGlob)
  {
      Com_Memset((void*)gScrStringDebugGlob->refCount, 0, sizeof(gScrStringDebugGlob->refCount));
      gScrStringDebugGlob->totalRefCount = 0;
  }
}

void Scr_ClearScrStringDebugGlob( )
{
  gScrStringDebugGlob = NULL;
}

void SL_CheckLeaks( )
{
  unsigned int i;

  if ( gScrStringDebugGlob )
  {
    if ( !gScrStringDebugGlob->ignoreLeaks )
    {
      for ( i = 1; i < DEBUG_REFCOUNT_SIZE; ++i )
      {
        if ( gScrStringDebugGlob->refCount[i] )
        {
          Com_PrintError(CON_CHANNEL_ERROR, "leaked string = '%s', refcount = %i, i = %i\n", SL_DebugConvertToString(i), gScrStringDebugGlob->refCount[i], i);
        }
      }
      assertx(!gScrStringDebugGlob->totalRefCount, "gScrStringDebugGlob->totalRefCount = %i", gScrStringDebugGlob->totalRefCount);
    }
    Scr_ClearScrStringDebugGlob();
  }
}

void CreateCanonicalFilename(char *newFilename, const char *filename, int count)
{
  unsigned int c;

  assert(count > 0);

  while ( 1 )
  {
    do
    {
      c = *filename++;
    }
    while ( c == '\\' );
    if ( c != '/' )
    {
      while ( c >= ' ' )
      {
        *newFilename++ = tolower(c);
        if ( !--count )
        {
          Com_Error(ERR_DROP, "Filename '%s' exceeds maximum length", filename);
        }
        if ( c == '/' )
        {
          break;
        }
        c = *filename++;
        if ( c == '\\' )
        {
          c = '/';
        }
      }
      if ( !c )
      {
        break;
      }
    }
  }
  *newFilename = 0;
}


unsigned int __cdecl SL_GetStringForFloat(float f)
{
  char tempString[128];

  sprintf(tempString, "%g", f);
  return SL_GetString_(tempString, 0, 15);
}

unsigned int __cdecl SL_GetStringForInt(int i)
{
  char tempString[128];

  sprintf(tempString, "%i", i);
  return SL_GetString_(tempString, 0, 15);
}

unsigned int __cdecl SL_GetStringForVector(const float *v)
{
  char tempString[256];

  sprintf(tempString, "(%g, %g, %g)", v[0], v[1], v[2]);
  return SL_GetString_(tempString, 0, 15);
}

bool SL_IsDebugging() //Not sure about a good name
{
  if ( !gScrStringDebugGlob || !gScrStringDebugGlob->ignoreLeaks )
  {
    return false;
  }
  return true;
}

extern "C"{

void __cdecl SL_RemoveRefToStringOfSize(unsigned int stringValue, unsigned int len)
{
  RefString *refStr;

  refStr = GetRefString(stringValue);

  assertx(refStr->refCount > 0, "refStr->refCount = %d", refStr->refCount);

  if(refStr->refCount == 0)
  {
    return;
  }

  if ( InterlockedDecrement((volatile DWORD*)&refStr->data) << 16 )
  {
    if ( gScrStringDebugGlob )
    {
      assertx(gScrStringDebugGlob->totalRefCount && gScrStringDebugGlob->refCount[stringValue], 
               "gScrStringDebugGlob->totalRefCount: %i, stringValue: %i, gScrStringDebugGlob->refCount[stringValue]: %i, string: '%s'",
               gScrStringDebugGlob->totalRefCount, stringValue,
               gScrStringDebugGlob->refCount[stringValue], SL_DebugConvertToString(stringValue));

      assertx(gScrStringDebugGlob->refCount[stringValue] != 0, "SL_DebugConvertToString( stringValue ) = %s", 
            SL_DebugConvertToString(stringValue));

      InterlockedDecrement((volatile DWORD*)&gScrStringDebugGlob->totalRefCount);
      InterlockedDecrement((volatile DWORD*)&gScrStringDebugGlob->refCount[stringValue]);
    }
  }
  else
  {
    //Clear the user
    RefString exchange;
    RefString compare;
    do
    {
        compare.data = refStr->data; //Order is important

        if(compare.refCount != 0) //Someone referenced this string again in meantime?
        {
            break; //Then don't edit the user
        }
        exchange.data = compare.data;
        exchange.user = 0;
    }while(InterlockedCompareExchange((DWORD*)&refStr->data, exchange.data, compare.data) != (DWORD)compare.data);

    SL_FreeString(stringValue, refStr, len);
    if ( gScrStringDebugGlob )
    {
      assertx(gScrStringDebugGlob->totalRefCount && gScrStringDebugGlob->refCount[stringValue], 
               "gScrStringDebugGlob->totalRefCount: %i, stringValue: %i, gScrStringDebugGlob->refCount[stringValue]: %i, string: '%s'",
               gScrStringDebugGlob->totalRefCount, stringValue,
               gScrStringDebugGlob->refCount[stringValue], SL_DebugConvertToString(stringValue));


      assertx(gScrStringDebugGlob->refCount[stringValue] != 0, "SL_DebugConvertToString( stringValue ) = %s", 
            SL_DebugConvertToString(stringValue));

      InterlockedDecrement((volatile DWORD*)&gScrStringDebugGlob->totalRefCount);
      InterlockedDecrement((volatile DWORD*)&gScrStringDebugGlob->refCount[stringValue]);
    }
  }
}




void __cdecl SL_AddRefToString(unsigned int stringValue)
{
  RefString *refStr;
  volatile int refC;

  if ( gScrStringDebugGlob )
  {
    assertx(gScrStringDebugGlob->refCount[stringValue], "%d '%s'", stringValue, SL_DebugConvertToString(stringValue));
    assertx(gScrStringDebugGlob->refCount[stringValue] < DEBUG_REFCOUNT_SIZE, "SL_DebugConvertToString( stringValue ) = %s", SL_DebugConvertToString(stringValue));

    InterlockedIncrement((volatile DWORD*)&gScrStringDebugGlob->totalRefCount);
    InterlockedIncrement((volatile DWORD*)&gScrStringDebugGlob->refCount[stringValue]);
  }
  refStr = GetRefString(stringValue);

  InterlockedIncrement((volatile DWORD*)&refStr->data);

  if ( !refStr->refCount )
  {
    if ( gScrStringDebugGlob )
    {
      refC = gScrStringDebugGlob->refCount[stringValue];
    }
    else
    {
      refC = 0;
    }
    assertx(refStr->refCount, "string: '%s', refCount: %d", SL_DebugConvertToString(stringValue), refC);
  }
}

void __cdecl SL_RemoveRefToString(unsigned int stringValue)
{
  RefString *refStr;
  int len;

  refStr = GetRefString(stringValue);
  len = SL_GetRefStringLen(refStr) + 1;
  SL_RemoveRefToStringOfSize(stringValue, len);

}


const char* SL_ConvertToString(unsigned int stringValue)
{
  const char* string;
  RefString* rf;
  assert(!stringValue || !gScrStringDebugGlob || gScrStringDebugGlob->refCount[stringValue]);

  if ( stringValue )
  {
    rf = GetRefString(stringValue);
    string = rf->str;
    return string;
  }
  return NULL;
}

unsigned int __cdecl SL_GetString_(const char *str, unsigned int user, int type)
{
  return SL_GetStringOfSize(str, user, strlen(str) + 1, type);
}

unsigned int SL_GetString(const char *string, int user)
{
	return SL_GetString_(string, user, 6);
}


unsigned int SL_GetLowercaseStringOfSize(const char *upperstring, int user, unsigned int len, int type)
{
	char lwrstr[8192];
	unsigned int i;

	if ( len >= sizeof(lwrstr) )
	{
		Com_Error(ERR_FATAL, "SL_GetLowercaseStringOfSize(): max string length exceeded: \"%s\"", upperstring);
		return 0;
	}
  
	for(i = 0; i < len; ++i)
	{
		lwrstr[i] = tolower(upperstring[i]);
	}
    return SL_GetStringOfSize(lwrstr, user, len, type);
}



unsigned int __cdecl SL_FindStringOfSize(const char *str, unsigned int len)
{
  unsigned int stringValue;
  HashEntry *entry;
  unsigned int hash;
  int newIndex;
  RefString *refStr;
  unsigned int prev;
  HashEntry *newEntry;

  assert(str != NULL);

  hash = GetHashCode(str, len);
  Sys_EnterCriticalSection(CRITSECT_SCRIPT_STRING);
  entry = &gScrStringGlob.hashTable[hash];
  if ( (entry->status_next & HASH_STAT_MASK) != HASH_STAT_HEAD )
  {
    Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
    return 0;
  }
  refStr = GetRefString(entry->prev);

  if ( refStr->byteLen != len || memcmp(refStr->str, str, len) )
  {
    prev = hash;
    newIndex = entry->status_next & HASH_NEXT_MASK;
    for ( newEntry = &gScrStringGlob.hashTable[newIndex]; newEntry != entry; newEntry = &gScrStringGlob.hashTable[newIndex] )
    {
      assert((newEntry->status_next & HASH_STAT_MASK) == HASH_STAT_MOVABLE);

      refStr = GetRefString(newEntry->prev);
      if (refStr->byteLen == len && !memcmp(refStr->str, str, len) )
      {
        gScrStringGlob.hashTable[prev].status_next = (newEntry->status_next & HASH_NEXT_MASK) | (gScrStringGlob.hashTable[prev].status_next & HASH_STAT_MASK);
        newEntry->status_next = (entry->status_next & HASH_NEXT_MASK) | (newEntry->status_next & HASH_STAT_MASK);
        entry->status_next = newIndex | (entry->status_next & HASH_STAT_MASK);
        stringValue = newEntry->prev;
        newEntry->prev = entry->prev;
        entry->prev = stringValue;
        assert ((newEntry->status_next & HASH_STAT_MASK) != HASH_STAT_FREE);
        assert ((entry->status_next & HASH_STAT_MASK) != HASH_STAT_FREE);
        assert(refStr->str == SL_ConvertToString( stringValue ));

        Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
        return stringValue;
      }
      prev = newIndex;
      newIndex = newEntry->status_next & HASH_NEXT_MASK;
    }
    Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
    return 0;
  }
  assert((entry->status_next & HASH_STAT_MASK) != HASH_STAT_FREE);
  stringValue = entry->prev;
  assert(refStr->str == SL_ConvertToString( stringValue ));

  Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
  return stringValue;
}


unsigned int __cdecl SL_GetLowercaseString_(const char *str, unsigned int user, int type)
{
  return SL_GetLowercaseStringOfSize(str, user, strlen(str) + 1, type);
}

unsigned int __cdecl SL_GetLowercaseString(const char *str, unsigned int user)
{
  return SL_GetLowercaseString_(str, user, 6);
}

unsigned int SL_FindLowercaseString(const char *upperstring)
{
	unsigned int size;
	char lwrstr[8192];
	unsigned int i;

	size = strlen(upperstring) + 1;
	
	if ( size >= sizeof(lwrstr) )
	{
		return 0;
	}
  
	for(i = 0; i < size; ++i)
	{
		lwrstr[i] = tolower(upperstring[i]);
	}
    return SL_FindStringOfSize(lwrstr, size);
}

int SL_FindString(const char *string)
{
  return SL_FindStringOfSize(string, strlen(string) + 1);
}

int __cdecl SL_ConvertFromRefString(RefString *refString)
{
  return MT_GetIndexByRef((byte*)refString);
}

void __cdecl SL_AddUserInternal(RefString *refStr, unsigned int user)
{
  int str;

  if ( !(user & refStr->user) )
  {
    str = SL_ConvertFromRefString(refStr);
    if ( gScrStringDebugGlob )
    {
      assertx(gScrStringDebugGlob->refCount[str] < DEBUG_REFCOUNT_SIZE, "SL_DebugConvertToString( str ) = %s",  SL_DebugConvertToString(str));
      assertx(gScrStringDebugGlob->refCount[str] >= 0,"SL_DebugConvertToString( str ) = %s", SL_DebugConvertToString(str));
      InterlockedIncrement((DWORD*)&gScrStringDebugGlob->totalRefCount);
      InterlockedIncrement((DWORD*)&gScrStringDebugGlob->refCount[str]);
    }

    RefString exchange;
    RefString compare;
    do
    {
        compare.data = refStr->data; //Order is important

        exchange.data = compare.data;
        exchange.user |= user;
    }while(InterlockedCompareExchange((DWORD*)&refStr->data, exchange.data, compare.data) != (DWORD)compare.data);

    InterlockedIncrement((DWORD*)&refStr->data);
  }

}


unsigned int __cdecl SL_GetStringOfSize(const char *str, unsigned int user, unsigned int len, int type)
{
  int newNext;
  unsigned int stringValue;
  HashEntry *entry;
  unsigned int hash;
  int newIndex;
  RefString *refStr;
  int next;
  unsigned int prev;
  HashEntry *newEntry;

  assert(str != NULL);
  hash = GetHashCode(str, len);

  Sys_EnterCriticalSection(CRITSECT_SCRIPT_STRING);
  entry = &gScrStringGlob.hashTable[hash];
  if ( (entry->status_next & HASH_STAT_MASK) == HASH_STAT_HEAD )
  {
    refStr = GetRefString(entry->prev);

    if ( refStr->byteLen == len && !memcmp(refStr->str, str, len) )
    {
      SL_AddUserInternal(refStr, user);
      assert((entry->status_next & HASH_STAT_MASK) != HASH_STAT_FREE);
      stringValue = entry->prev;
      assert(refStr->str == SL_ConvertToString( stringValue ));
      Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
      return stringValue;
    }
    prev = hash;
    newIndex = entry->status_next & HASH_NEXT_MASK;
    for ( newEntry = &gScrStringGlob.hashTable[newIndex]; newEntry != entry; newEntry = &gScrStringGlob.hashTable[newIndex] )
    {

      assert((newEntry->status_next & HASH_STAT_MASK) == HASH_STAT_MOVABLE);
      refStr = GetRefString(newEntry->prev);
      if ( refStr->byteLen == len && !memcmp(refStr->str, str, len) )
      {
        gScrStringGlob.hashTable[prev].status_next = (newEntry->status_next & HASH_NEXT_MASK) | (gScrStringGlob.hashTable[prev].status_next & HASH_STAT_MASK);
        newEntry->status_next = (entry->status_next & HASH_NEXT_MASK) | (newEntry->status_next & HASH_STAT_MASK);
        entry->status_next = newIndex | (entry->status_next & HASH_STAT_MASK);
        stringValue = newEntry->prev;
        newEntry->prev = entry->prev;
        entry->prev = stringValue;

        SL_AddUserInternal(refStr, user);

        assert((newEntry->status_next & HASH_STAT_MASK) != HASH_STAT_FREE);
        assert((entry->status_next & HASH_STAT_MASK) != HASH_STAT_FREE);
        assert(refStr->str == SL_ConvertToString( stringValue ));

        Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
        return stringValue;
      }
      prev = newIndex;
      newIndex = newEntry->status_next & HASH_NEXT_MASK;
    }
    newIndex = gScrStringGlob.hashTable->status_next;
    if ( !newIndex )
    {
      Scr_DumpScriptThreads();
      Scr_DumpScriptVariablesDefault();
      Com_Error(ERR_DROP, "exceeded maximum number of script strings");
    }
    stringValue = MT_AllocIndex(len + 4, type);
    newEntry = &gScrStringGlob.hashTable[newIndex];

    assert((newEntry->status_next & HASH_STAT_MASK) == HASH_STAT_FREE);

    newNext = newEntry->status_next & HASH_NEXT_MASK;
    gScrStringGlob.hashTable->status_next = newNext;
    gScrStringGlob.hashTable[newNext].prev = 0;
    newEntry->status_next = (entry->status_next & HASH_NEXT_MASK) | HASH_STAT_MOVABLE;
    entry->status_next = newIndex | (entry->status_next & HASH_STAT_MASK);
    newEntry->prev = entry->prev;
  }
  else
  {
    if ( entry->status_next & HASH_STAT_MASK )
    {
      assert((entry->status_next & HASH_STAT_MASK) == HASH_STAT_MOVABLE);
      next = entry->status_next & HASH_NEXT_MASK;
      for ( prev = entry->status_next & HASH_NEXT_MASK; (gScrStringGlob.hashTable[prev].status_next & HASH_NEXT_MASK) != hash; prev = gScrStringGlob.hashTable[prev].status_next & HASH_NEXT_MASK );
      assert(prev != 0);
      newIndex = gScrStringGlob.hashTable->status_next;
      if ( !newIndex )
      {
        Scr_DumpScriptThreads();
        Scr_DumpScriptVariablesDefault();
        Com_Error(ERR_DROP, "exceeded maximum number of script strings");
      }
      stringValue = MT_AllocIndex(len + 4, type);
      newEntry = &gScrStringGlob.hashTable[newIndex];
      assert((newEntry->status_next & HASH_STAT_MASK) == HASH_STAT_FREE);

      newNext = newEntry->status_next & HASH_NEXT_MASK;
      gScrStringGlob.hashTable->status_next = newNext;
      gScrStringGlob.hashTable[newNext].prev = 0;
      gScrStringGlob.hashTable[prev].status_next = newIndex | (gScrStringGlob.hashTable[prev].status_next & HASH_STAT_MASK);
      newEntry->status_next = next | HASH_STAT_MOVABLE;
      newEntry->prev = entry->prev;
    }
    else
    {
      stringValue = MT_AllocIndex(len + 4, type);
      newNext = entry->status_next & HASH_NEXT_MASK;
      gScrStringGlob.hashTable[entry->prev].status_next = newNext | (gScrStringGlob.hashTable[entry->prev].status_next & HASH_STAT_MASK);
      gScrStringGlob.hashTable[newNext].prev = entry->prev;
    }
    assert(!(hash & HASH_STAT_MASK));
    entry->status_next = hash | HASH_STAT_HEAD;
  }
  ++gScrStringGlob.stringsUsed[gScrStringGlob.indentLevel];

  assert(stringValue != 0);

  entry->prev = stringValue;
  refStr = GetRefString(stringValue);
  memcpy(refStr->str, str, len);

  refStr->user = user;
  assert(refStr->user == user);

  refStr->refCount = 1;
  refStr->byteLen = len;

  if ( gScrStringDebugGlob )
  {
    InterlockedIncrement((volatile DWORD*)&gScrStringDebugGlob->totalRefCount);
    InterlockedIncrement((volatile DWORD*)&gScrStringDebugGlob->refCount[stringValue]);
  }
  assert((entry->status_next & HASH_STAT_MASK) != HASH_STAT_FREE);
  assert(refStr->str == SL_ConvertToString( stringValue ));

  Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
  return stringValue;
}

int __cdecl SL_GetStringLen(unsigned int stringValue)
{
  RefString *refString;

  assert(stringValue != 0);

  refString = GetRefString(stringValue);
  return SL_GetRefStringLen(refString);
}

unsigned int __cdecl SL_ConvertToLowercase(unsigned int stringValue, unsigned int user, int type)
{
  const char *cstr;
  char str[8192];
  unsigned int ns;
  unsigned int len;
  unsigned int i;

  len = SL_GetStringLen(stringValue) + 1;
  if ( len > sizeof(str) )
  {
    return stringValue;
  }
  cstr = SL_ConvertToString(stringValue);
  for ( i = 0; i < len; ++i )
  {
    str[i] = tolower(cstr[i]);
  }
  ns = SL_GetStringOfSize(str, user, len, type);
  SL_RemoveRefToString(stringValue);
  return ns;
}

void __cdecl SL_TransferRefToUser(unsigned int stringValue, unsigned int user)
{
  RefString *refStr;

  refStr = GetRefString(stringValue);
  if ( user & refStr->user )
  {
    assertx(refStr->refCount > 1, "SL_DebugConvertToString( stringValue ) = %s", SL_DebugConvertToString(stringValue));
    if ( gScrStringDebugGlob )
    {
      assertx(gScrStringDebugGlob->refCount[stringValue], "SL_DebugConvertToString( stringValue, inst ) = %s", SL_DebugConvertToString(stringValue));
      InterlockedDecrement((volatile DWORD*)&gScrStringDebugGlob->totalRefCount);
      InterlockedDecrement((volatile DWORD*)&gScrStringDebugGlob->refCount[stringValue]);
    }

    InterlockedDecrement((volatile DWORD*)refStr);
  }
  else
  {
    RefString exchange;
    RefString compare;
    do
    {
        compare.data = refStr->data; //Order is important

        exchange.data = compare.data;
        exchange.user |= user;
    }while(InterlockedCompareExchange((DWORD*)&refStr->data, exchange.data, compare.data) != (DWORD)compare.data);
  }


}


void __cdecl SL_Init()
{
  HashEntry *entry;
  unsigned int hash;
  unsigned int prev;

  assert ( !gScrStringGlob.inited );
  MT_Init( );
  Sys_EnterCriticalSection(CRITSECT_SCRIPT_STRING);

  gScrStringGlob.hashTable = (HashEntry*)Z_TagMalloc(32768 * sizeof(HashEntry), TAG_SCRIPTSTRING);
  gScrStringGlob.hashTable->status_next = 0;
  prev = 0;
  for ( hash = 1; hash < 32768; ++hash )
  {
    assert(!(hash & HASH_STAT_MASK));

    entry = &gScrStringGlob.hashTable[hash];
    entry->status_next = 0;
    gScrStringGlob.hashTable[prev].status_next |= hash;
    entry->prev = prev;
    prev = hash;
  }
  assert(!(gScrStringGlob.hashTable[prev].status_next & HASH_NEXT_MASK));

  gScrStringGlob.hashTable->prev = prev;
  SL_InitCheckLeaks();
  gScrStringGlob.indentLevel = 0;
  memset(gScrStringGlob.stringsUsed, 0, sizeof(gScrStringGlob.stringsUsed));
  gScrStringGlob.inited = 1;
  Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
}

void __cdecl SL_ShutdownSystem(unsigned int user)
{
  unsigned int hash;
  HashEntry *entry;
  RefString *refStr;

  assert(user != 0);

  Sys_EnterCriticalSection(CRITSECT_SCRIPT_STRING);
  for ( hash = 1; hash < 32768; ++hash )
  {
    do
    {
      entry = &gScrStringGlob.hashTable[hash];
      if ( !(entry->status_next & HASH_STAT_MASK) )
      {
        break;
      }
      refStr = GetRefString(entry->prev);
      if ( !(user & refStr->user) )
      {
        break;
      }
      refStr->user &= ~user;
      gScrStringGlob.nextFreeEntry = 0;
      SL_RemoveRefToString(entry->prev);
    }
    while ( gScrStringGlob.nextFreeEntry );
  }
  Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
}

void __cdecl Scr_SetString(uint16_t *to, unsigned int from)
{
  if ( from )
  {
    SL_AddRefToString(from);
  }
  if ( *to )
  {
    SL_RemoveRefToString(*to);
  }
  *to = from;
}

void __cdecl SL_AddUser(unsigned int stringValue, unsigned int user)
{
  RefString *ref;

  ref = GetRefString(stringValue);
  SL_AddUserInternal(ref, user);
}

unsigned int __cdecl Scr_AllocString(const char *s)
{
  return SL_GetString(s, 1u);
}

unsigned int __cdecl SL_ConvertFromString(const char *str)
{
  RefString *ref;
  assert(str != NULL);

  ref = GetRefString(str);
  return SL_ConvertFromRefString(ref);
}

void __cdecl SL_TransferSystem(unsigned int from, unsigned int to)
{
  unsigned int hash;
  HashEntry *entry;
  RefString *refStr;

  assert(from != 0);
  assert(to != 0);

  Sys_EnterCriticalSection(CRITSECT_SCRIPT_STRING);
  for ( hash = 1; hash < 32768; ++hash )
  {
    entry = &gScrStringGlob.hashTable[hash];
    if ( entry->status_next & HASH_STAT_MASK )
    {
      refStr = GetRefString(entry->prev);
      if ( from & refStr->user )
      {
        refStr->user = ~from & refStr->user;
        refStr->user = to | refStr->user;
      }
    }
  }
  Sys_LeaveCriticalSection(CRITSECT_SCRIPT_STRING);
}

unsigned int __cdecl Scr_CreateCanonicalFilename(const char *filename)
{
  char newFilename[1024];

  CreateCanonicalFilename(newFilename, filename, sizeof(newFilename));
  return SL_GetString_(newFilename, 0, 7);
}

void __cdecl SL_Shutdown( )
{
  if ( gScrStringGlob.inited )
  {
    gScrStringGlob.inited = 0;
    SL_CheckLeaks( );
    Z_Free(gScrStringGlob.hashTable);
  }
}


struct RefVector
{
    union
    {
      struct
      {
        unsigned int refCount : 16;
        unsigned int user : 8;
        unsigned int byteLen : 8;
      };
      volatile int head;
    };
    vec3_t vec;
};

float *__cdecl Scr_AllocVectorInternal()
{
  RefVector *refVec;

  refVec = (RefVector*)MT_Alloc(16, 2);
  refVec->head = 0;
  InterlockedIncrement((DWORD*)&gScrVarPub.totalVectorRefCount);
  if ( gScrStringDebugGlob )
  {
    unsigned int value = MT_GetIndexByRef((byte*)refVec);
    InterlockedIncrement((DWORD*)&gScrStringDebugGlob->refCount[value]);
  }
  return refVec->vec;
}

void __cdecl RemoveRefToVector(const float *vectorValue)
{
  RefVector *refVec;

  refVec = (RefVector*)((byte*)vectorValue -4);

  if ( !refVec->byteLen )
  {
    InterlockedDecrement((DWORD*)&gScrVarPub.totalVectorRefCount);
    if ( gScrStringDebugGlob )
    {
      unsigned int value = MT_GetIndexByRef((byte*)refVec);
      assert(gScrStringDebugGlob->refCount[value] >= 0);
      InterlockedDecrement((DWORD*)&gScrStringDebugGlob->refCount[value]);
    }
    if ( refVec->refCount )
    {
      --refVec->refCount;
    }
    else
    {
      MT_Free(refVec, 16);
    }
  }
}

void __cdecl AddRefToVector(const float *vectorValue)
{
  RefVector *refVec;

  refVec = (RefVector*)((byte*)vectorValue -4);

  if ( !refVec->byteLen )
  {
    InterlockedIncrement((DWORD*)&gScrVarPub.totalVectorRefCount);
    if ( gScrStringDebugGlob )
    {
      unsigned int value = MT_GetIndexByRef((byte*)refVec);
      assert( gScrStringDebugGlob->refCount[value] >= 0);
      InterlockedIncrement((DWORD*)&gScrStringDebugGlob->refCount[value]);
    }
    ++refVec->refCount;
    assert(refVec->refCount);
  }
}

float *__cdecl Scr_AllocVector(const float* vec)
{
  float* avec = Scr_AllocVectorInternal();
  VectorCopy(vec, avec);
  return avec;
}



}
