#include <stdio.h>
#include <ctype.h>
#include <stdint.h>
#include "../../plugins/guid2playerid.h"



static char *Q_strlwr( char *s1 ) {
    char	*s;

    s = s1;
	while ( *s ) {
		*s = tolower(*s);
		s++;
	}
    return s1;
}

char accounttypechars[] = {'I', 'U', 'M', 'G', 'A', 'P', 'C', 'g', 'T', ' ', 'a'};

/*static void SteamIDToString(uint64_t steamid, char* string)
{
	uint32_t accounttype, universe, accountid;

	accounttype = (steamid & 0xF0000000000000ULL) >> 52;
	universe = (steamid & 0xFF00000000000000ULL) >> 56;
	//instance = (steamid & 0xFFFFF00000000ULL) >> 32;
	accountid = (steamid & 0xFFFFFFFFULL);

	if((universe > 4 && universe != 32) || universe < 1 || accounttype < 1 || accounttype > 10)
	{
		strcpy(string, "[I:0:0]");
		return;
	}
	sprintf(string, "[%c:%u:%u]", accounttypechars[accounttype], universe, accountid);
}*/


static char* IsGUID(char* GUID){

	int j, k;

	if(strlen(GUID) == 8){
		k = 8;
	}else if(strlen(GUID) == 32){
		k = 32;
	}else{
		return NULL;
	}



  j = 0;
  while(j < k){
    if(GUID[j] < 0x30 || GUID[j] > 0x66 || (GUID[j] < 0x41 && GUID[j] > 0x39) || (GUID[j] < 0x61 && GUID[j] > 0x46)){
      return NULL;
    }
    j++;
  }
  Q_strlwr(GUID);
  if(k == 8)
    return GUID;
  else
    return &GUID[24];
}

int main(int argc, char *argv[])
{
  //char string[1024];
  if(argc != 2)
  {
    printf("Usage: guid2playerid <guid>\n");
    return 1;
  }
  char* guid = argv[1];
  if(IsGUID(guid) == NULL)
  {
    printf("Argument is no GUID\n");
    return 1;
  }
  if(strlen(guid) != 32)
  {
    printf("Only long 32-GUIDs can be converted\n");
    return 1;
  }

  uint64_t playerid = GUID2PlayerID(guid);
  //SteamIDToString(playerid, string);
  printf("%llu\n", playerid);
  //printf("%s\n", string);
  return 0;
}
