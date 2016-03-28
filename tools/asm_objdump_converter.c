#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LABLES 1024

typedef struct{
	unsigned int Address;
	int destinationdeclared;
}lables_t;

lables_t lables[MAX_LABLES];

int isHexChar( char current_char ){
	if((current_char >= '0' && current_char <= '9') ||
	  (current_char >= 'a' && current_char <= 'f') ||
	  (current_char >= 'A' && current_char <= 'F'))
		return 1;

	return 0;
}

void AddNewAddress(char* string){
	unsigned int Address;
	lables_t *label;
	int i;
	
	if(strlen(string) > 8){
		return;
	}
	sscanf(string, "%x", &Address);
	for(i = 0, label = lables; i < MAX_LABLES; i++, label++){

		if(label->Address == Address){
			return;
		}
		if(!label->Address){
			label->Address = Address;
			return;
		}
	}
}

int IsAddressThereAndSet(char* string){
	unsigned int Address;
	lables_t *label;
	int i;
	
	if(strlen(string) > 8){
		return 0;
	}
	sscanf(string, "%x", &Address);
	for(i = 0, label = lables; i < MAX_LABLES; i++, label++){
		if(label->Address == Address){
			label->destinationdeclared = 1;
			return i+1;
		}
		if(!label->Address)
			return 0;
	}
	return 0;
}


int main (){

static unsigned char *bufferin;
FILE * fdin;
FILE * fdout;
char filein[]="dump.asm";
char fileout[]="converted_dump.asm";
static unsigned int filelenin;
int instruction;
char temp[256];
char subfuncname[64];
int i, j ,k;

if((fdin=fopen(filein, "rb")) == 0){ printf("Can't open file: dump.asm\n"); return 1;}
fseek(fdin, 0, SEEK_END);
filelenin = ftell(fdin);
fseek(fdin, 0L, SEEK_SET);
bufferin = malloc(sizeof(char)* filelenin);if(bufferin == 0){printf("Couldn't allocate enought memory to load file: dump.asm\n");return 1;}
if((fread (bufferin,1,filelenin,fdin)) != filelenin){printf("Failure by reading file: dump.asm\n"); return 1;}
fclose(fdin);

fdout=fopen(fileout, "w");

static unsigned char *posin;
static unsigned char *endinoff;
endinoff = filelenin+bufferin;
posin = bufferin;


memset(lables, 0, sizeof(lables));
instruction = 0;

while(posin <= endinoff && *posin != 0x0a){
	if(!strncmp( (char*)posin, "subroutine ", 11)){
		posin += 11;
		i = 0;
		
		while(posin <= endinoff && *posin != 0x0a && *posin != 0x0d && *posin && *posin != ' '){
			subfuncname[i] = *posin;
			i++;
			posin++;
		}
		subfuncname[i] = 0;
		while(posin <= endinoff && *posin && *posin != 0x0a)
			posin++;
	}
}


//Setting the lables / addresses
while(posin <= endinoff){
	if(posin[0] == 0x3a && posin[1] == 0x09){
		posin += 2;
		continue;
	}
	if(*posin == 0x09){
		posin ++;
		instruction = 1;
	}
	if(instruction){

		if(*posin == 'j'){
			while(*posin != 0x0a && *posin && posin <= endinoff && *posin != ' ')
				posin++;
			
			while(*posin != 0x0a && *posin && posin <= endinoff && instruction){
				if(*posin == '*'){
					printf("Warning: Indirect jump instruction. Will ignore it\n");
					instruction = 0;
					while(*posin != 0x0a && *posin && posin <= endinoff)
						posin++;

					continue;
				}else if(isHexChar(*posin)){
					if(posin[1] == 'x'){
						posin += 2;
					}else{
						i = 0;
						do{
							temp[i] = *posin;
							i++, posin++;
						}while(*posin != 0x0a && *posin != 0x0d && *posin && posin <= endinoff && isHexChar(*posin));

						temp[i] = 0;
						instruction = 0;
						while(*posin != 0x0a && *posin && posin <= endinoff)
							posin++;

						AddNewAddress(temp);
						continue;
					}
				}else{
					posin++;
				
				}
			}
		}
		instruction = 0;
	}
	posin++;
}

//__asm("int $3");
int labelnum;
char buffer[256];
char instStr[256];


posin = bufferin;
//Find addresses which are jump destinations
while(posin <= endinoff){

	if(posin[0] == 0x0a && posin[1] == 0x20){
		posin ++;
		while(!isHexChar(*posin) && *posin != 0x0a && *posin && posin <= endinoff){
			posin++;
		}
		if(isHexChar(posin[0]) && isHexChar(posin[1]) && isHexChar(posin[2]) && isHexChar(posin[3])){
			i = 0;
			while(*posin != 0x0a && *posin && posin <= endinoff && isHexChar(*posin)){
				temp[i] = *posin;
				i++, posin++;
			}
			temp[i] = 0;
			labelnum = IsAddressThereAndSet(temp);
			if(labelnum){
				sprintf(buffer, "\n%s_loc%i:\n", subfuncname, labelnum);
				fwrite(buffer, strlen(buffer), 1 ,fdout);
			}
		}

	}
	if(posin[0] == 0x3a && posin[1] == 0x09){
		posin += 2;
		while(*posin != 0x09 && *posin != 0x0a && *posin && posin <= endinoff){
			posin ++;	
		}
		if(*posin == 0x09){
			instruction = 1;
			posin++;
		}
	}

	if(instruction){

		i = 0;
		while(*posin != 0x0a && *posin != 0x0d && *posin && posin <= endinoff){
			instStr[i] = *posin;
			i++;
			posin++;
		}
		instStr[i] = 0;

		if(instStr[0] == 'j'){
			i = 0;

			while(instStr[i] != 0x0a && instStr[i]){
				if(instStr[i] == ' ' && instStr[i+1] != ' '){
					i++;
					break;
				}
				i++;
			}

			if(instStr[i] == '*'){
					printf("Warning: Indirect jump instruction. Will ignore it\n");
					instruction = 0;

			}else if(isHexChar(instStr[i])){
				j = i;
				if(instStr[j+1] == 'x'){
						j += 2;
				}
				k = 0;
				while(instStr[j] != 0x0a && instStr[j] && instStr[j] != ' '){
					temp[k] = instStr[j];
					j++, k++;
				}
				temp[k] = 0;
				instruction = 0;
				labelnum = IsAddressThereAndSet(temp);
				if(labelnum){
					sprintf(&instStr[i], "%s_loc%i", subfuncname, labelnum);
				}
			}
		}else if(instStr[0] == 'c' && instStr[1] == 'a' && instStr[2] == 'l' && instStr[3] == 'l'){

			i = 0;

			while(instStr[i] != 0x0a && instStr[i]){
				if(instStr[i] == ' ' && instStr[i+1] != ' '){
					i++;
					break;
				}
				i++;
			}		
		
			if(instStr[i] == '*'){
					printf("Warning: Indirect call instruction. Will ignore it\n");
					instruction = 0;

			}else if(isHexChar(instStr[i])){
				j = i;
				if(instStr[j+1] == 'x'){
						j += 2;
				}

				k = 0;
				while(instStr[j] != 0x0a && instStr[i] != 0x0d && instStr[j] && instStr[j] != ' '){
					temp[k] = instStr[j];
					j++, k++;
				}
				temp[k] = 0;
				instruction = 0;
				sprintf(buffer, "\tmov    $0x%s, %%eax\n", temp);
				fwrite(buffer, strlen(buffer), 1 ,fdout);
				sprintf(instStr, "call   *%%eax");				
			}
		}
		sprintf(buffer, "\t%s\n", instStr);
		instruction = 0;
		fwrite(buffer, strlen(buffer), 1 ,fdout);
	}
	if(!(posin[0] == 0x0a && posin[1] == 0x20))
		posin++;
}

fputc(0x0A,fdout);
fputc(0x0A,fdout);
fputc(0x0A,fdout);

for(i = 0; i < MAX_LABLES; i++){
	if(lables[i].Address && !lables[i].destinationdeclared){
		sprintf(buffer, "Out of range destination: %x, %s_loc%i\n", lables[i].Address, subfuncname, i+1);
		fwrite(buffer, strlen(buffer), 1 ,fdout);		
	}
	if(!lables[i].Address){
		break;
	}
}

printf("Done\n");
fclose(fdout);
free(bufferin);
return 0;
}