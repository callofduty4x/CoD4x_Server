/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

    This file is part of CoD4X Plugin Handler source code.

    CoD4X Plugin Handler source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X Plugin Handler source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/

#include <stdlib.h>
#include <string.h>
#include "censor.h"
#include "../pinc.h"

typedef struct badwordsList_s {
    struct	badwordsList_s *next;
    qboolean	exactmatch;
    char	word[24];
}badwordsList_t;

badwordsList_t *badwords;


/*
=============
Q_strncpyz

Safe strncpy that ensures a trailing zero
=============
*/
void Q_strncpyz( char *dest, const char *src, int destsize ) {

	if (!dest ) {
	    Plugin_Error( P_ERROR_DISABLE, "Q_strncpyz: NULL dest" );
	}
	if ( !src ) {
		Plugin_Error( P_ERROR_DISABLE, "Q_strncpyz: NULL src" );
	}
	if ( destsize < 1 ) {
		Plugin_Error(P_ERROR_DISABLE,"Q_strncpyz: destsize < 1" );
	}

	strncpy( dest, src, destsize-1 );
  dest[destsize-1] = 0;
}


int Q_stricmpn (const char *s1, const char *s2, int n) {
	int		c1, c2;

        if ( s1 == NULL ) {
           if ( s2 == NULL )
             return 0;
           else
             return -1;
        }
        else if ( s2==NULL )
          return 1;



	do {
		c1 = *s1++;
		c2 = *s2++;

		if (!n--) {
			return 0;		// strings are equal until end point
		}

		if (c1 != c2) {
			if (c1 >= 'a' && c1 <= 'z') {
				c1 -= ('a' - 'A');
			}
			if (c2 >= 'a' && c2 <= 'z') {
				c2 -= ('a' - 'A');
			}
			if (c1 != c2) {
				return c1 < c2 ? -1 : 1;
			}
		}
	} while (c1);

	return 0;		// strings are equal
}

int Q_stricmp (const char *s1, const char *s2) {
	return (s1 && s2) ? Q_stricmpn (s1, s2, 99999) : -1;
}





char* removeColors(char *output,char *string,size_t size)
{
	register int j=0;
	register int i;
	if(!output || !string) return NULL;
	if(size < strlen(string)){
	    Plugin_Error(P_ERROR_TERMINATE,"Censor plugin: removeColors: buffer overflow");
	    return NULL;
	}
	for(i=0;string[i]!=0;i++){
		if(string[i]=='^' && (string[i+1] >= '0' && string[i+1] <= '9')){
			i++;
		}
		else{
			output[j]=string[i];
			j++;
		}
	}
	output[j]=0;
	return output;
}





char* CharConv(char *output, char *string,int size)
{
	char *ret = output;
	if(!output || !string) return NULL;
	if(size < strlen(string)){
	    Plugin_Error(P_ERROR_TERMINATE,"Censor plugin: CharConv: buffer overflow");
	    return NULL;
	}
	for( ; *string != 0; string++){
		switch(*string){
			case 'A':
			case '4':
			case '@':
				*output='a';
				break;
			case 'B':
				*output='b';
				break;
			case 'C':
			case '(':
				*output='c';
				break;
			case 'D':
			case ')':
				*output='d';
				break;
			case 'E':
			case '3':
				*output='e';
				break;
			case 'F':
				*output='f';
				break;
			case 'G':
				*output='g';
				break;
			case 'H':
				*output='h';
				break;
			case 'I':
			case '1':
			case '|':
			case '!':
				*output='i';
				break;
			case 'J':
				*output='j';
				break;
			case 'K':
				*output='k';
				break;
			case 'L':
				*output='l';
				break;
			case 'M':
				*output='m';
				break;
			case 'N':
				*output='n';
				break;
			case 'O':
			case '0':
				*output='o';
				break;
			case 'P':
				*output='p';
				break;
			case 'Q':
				*output='q';
				break;
			case 'R':
				*output='r';
				break;
			case 'S':
			case '5':
			case '$':
				*output='s';
				break;
			case 'T':
				*output='t';
				break;
			case 'U':
				*output='u';
				break;
			case 'V':
				*output='v';
				break;
			case 'W':
				*output='w';
				break;
			case 'X':
				*output='x';
				break;
			case 'Y':
				*output='y';
				break;
			case 'Z':
				*output='z';
				break;
			case '.':
			case ',':
			case '\\':
			case '/':
			case '-':
			case '_':
				continue;
			default:
				*output=*string;
				break;
		}
		output++;
	}
	*output=0;
	return ret;
}




void G_SayCensor_Init()
{
	fileHandle_t file;
	int read;
	badwordsList_t *this;
	qboolean exactmatch;
	char buff[24];
	char line[24];
	char* linept;
	register int i=0;

        Plugin_FS_SV_FOpenFileRead("badwords.txt",&file);
        if(!file){
            Plugin_Printf("Censor_Plugin: Can not open badwords.txt for reading\n");
            return;
        }
        for(i = 0; ;i++){
            read = Plugin_FS_ReadLine(buff,sizeof(buff),file);

            if(read == 0){
                Plugin_Printf("%i lines parsed from badwords.txt\n",i);
                Plugin_FS_FCloseFile(file);
                return;
            }
            if(read == -1){
                Plugin_Printf("Can not read from badwords.txt\n");
                Plugin_FS_FCloseFile(file);
                return;
            }

            Q_strncpyz(line,buff,sizeof(line));
            linept = line;

            if(*linept == '#'){
                exactmatch = qtrue;
                linept++;
            }else{
                exactmatch = qfalse;
            }

            this = malloc(sizeof(badwordsList_t));
            if(this){
                this->next = badwords;
                this->exactmatch = exactmatch;
                Q_strncpyz(this->word,linept,strlen(linept));
            	badwords = this;
	    }
        }
		Plugin_Printf("Censor: init complete.\n");
}

char* censor_ignoreMultiple(char *output, char *string, size_t size)
{
	if(!output || !string) return NULL;
	if(size < strlen(string)){
	    Plugin_Error(P_ERROR_TERMINATE,"Censor plugin: censor_ignoreMultiple: buffer overflow");
	    return NULL;
	}

	char *ret = output;

	for(; *string; output++){
		*output = *string;
		do{
		    string++;
		}while(*output == *string && *string);
	}
	*output=0;
	return ret;
}



/*****************************************************
*** Parsing files ***
*****************************************************/
static qboolean parse_inquotes = qfalse;
static char* parse_lastpos;

void Com_ParseReset(){

    parse_inquotes = qfalse;
    parse_lastpos = NULL;
}

char* Com_ParseGetToken(char* line){

    if(parse_lastpos == line){

        if(parse_inquotes){//In case we are inside quotes step until the end quote forward

            do{
                line++;
            }while(*line != '"' && *line != ';' && *line != '\n' && *line != '\0');

            parse_inquotes = qfalse;
        }

        while(*line != ' '){
            if(*line == '\0' || *line == '\n'){
                parse_inquotes = qfalse;
                parse_lastpos = NULL;
                return NULL;
            }
            line++;
        }


    }

    while(*line == ' ' || *line == ';'){
        if(*line == '\0' || *line == '\n'){
            parse_inquotes = qfalse;
            parse_lastpos = NULL;
            return NULL;
        }
        line++;
    }

    if(*line == '"'){ //Check if the next token is the beginning of a quoted string
        parse_inquotes = qtrue;
        line++;	//Move over the quotes character to the 1st real character
    }


    if(*line == '\0' || *line == '\n'){
        parse_inquotes = qfalse;
        parse_lastpos = NULL;
        return NULL;
    }

    parse_lastpos = line;
    return line;
}


int Com_ParseTokenLength(char* token){
    if(token == NULL) return 0;

    char* pos = token;
    int i = 0;
    if(parse_inquotes){//In case we are inside quotes
        while(*pos != '"' && *pos != ';' && *pos != '\n' && *pos != '\0'){
            pos++;
            i++;
        }

    }else{//Default case

        while(*pos != ' ' && *pos != ';' && *pos != '\n' && *pos != '\0'){
            pos++;
            i++;
        }
    }
    return i;
}



char* G_SayCensor(char *msg)
{
	char token2[1024];
	char token[1024];
	badwordsList_t *this;
	char* ret = msg;
	while(1){
		msg = Com_ParseGetToken(msg);
		if(msg==NULL)
			break;

		int size = Com_ParseTokenLength(msg);
		Q_strncpyz(token,msg,size+1);

		removeColors(token2,token,sizeof(token2));
		CharConv(token,token2,sizeof(token));//	'clear' token
		censor_ignoreMultiple(token2,token,sizeof(token2));

		for(this = badwords ; this ; this = this->next){
			if(this->exactmatch){
				if(!Q_stricmp(token,this->word)){
					memset(msg,'*',size);
					break;
				}
			}else{
				if(strstr(token2,this->word)!=NULL){
					memset(msg,'*',size);
					break;
				}
			}
		}
	}
	return ret;
}
