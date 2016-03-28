#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main ()
{
static unsigned char *bufferin;
FILE * fdin;
FILE * fdout;
char linein[1024];
char lineout[1024];
char filein[]="converted_dump.asm";
char fileout[]="gcc_dump.asm";
static unsigned int filelenin;


if((fdin=fopen(filein, "rb")) == 0){ printf("Can't open file: converted_dump.asm\n"); return 1;}
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
int i;

while(posin <= endinoff){
    for(i = 0; *posin && posin <= endinoff; posin++, i++){
		if(*posin != 0x0A && *posin != 0x0D){
			linein[i] = *posin;
		}else{
			break;
		}
	}
	linein[i] = 0;
	if(!*linein)
		sprintf(lineout, "\n");
	else
		sprintf(lineout, "\"%s\\n\"\n", linein);
	fwrite(lineout, strlen(lineout), 1 ,fdout);

	while(*posin && *posin != 0x0a && posin <= endinoff){
		posin++;
	}
	if(*posin == 0x0A)
		posin++;	

	if(!*posin)
		break;
}

printf("Done\n");
fclose(fdout);
free(bufferin);
return 0;
}