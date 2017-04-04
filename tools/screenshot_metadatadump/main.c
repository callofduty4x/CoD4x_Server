// C program to print all permutations with duplicates allowed
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#ifdef __WIN32
#include <windows.h>
#else
#include <arpa/inet.h>
#endif

uint8_t freadbyte(FILE* fh)
{
    uint8_t b;
    if(fread(&b,1,1,fh) != 1)
    {
        printf("fread: I/O error\n");
        exit(0);
    }
    return b;
}

uint8_t freadbigshort(FILE* fh)
{
    uint16_t b;
    if(fread(&b,2,1,fh) != 1)
    {
        printf("fread: I/O error\n");
        exit(0);
    }
    return ntohs(b);
}

//Skip over "c" bytes
void freadskip(FILE* fh, int c)
{
    int i;
    for(i = 0; i < c; ++i)
    {
        freadbyte(fh);
    }
}

void freadstring(FILE* fh, char *s, int limit)
{
    int i;
    for(i = 0; i < limit; ++i)
    {
        s[i] = freadbyte(fh);
        if(s[i] == 0)
        {
            return;
        }
    }
}

enum { M_SOF0 = 0xC0, M_DHT = 0xC4, M_SOI = 0xD8, M_EOI = 0xD9, M_SOS = 0xDA, M_DQT = 0xDB, M_APP0 = 0xE0, M_COM = 0xFE };


void readmetadata(FILE* fh)
{
    char line[1024];
    freadstring(fh, line, sizeof(line)); //Vendor
    freadstring(fh, line, sizeof(line)); //hostname
    printf("Server: %s\n", line);
    freadstring(fh, line, sizeof(line)); //map
    printf("Map: %s\n", line);
    freadstring(fh, line, sizeof(line)); //nick
    printf("Nickname: %s\n", line);       
    freadstring(fh, line, sizeof(line)); //playerid
    printf("PlayerID: %s\n", line);
    freadstring(fh, line, sizeof(line)); //steamid
    printf("SteamID: %s\n", line);
    freadstring(fh, line, sizeof(line)); //time & date
    printf("Date: %s\n", line);    
}


int main(int argc, char **argv)
{
    uint8_t marker, header;
    uint16_t size;

    if(argc != 2)
    {
        printf("Usage: screenshotinfo \"filename\"");
        return 0;
    }
    printf("Opening file: \"%s\"\n", argv[1]);
    FILE* fh = fopen(argv[1], "rb");
    if(fh == NULL)
    {
        printf("File not found or no access to it\n");
        return 0;
    }
    marker = freadbyte(fh);
    header = freadbyte(fh);
    if(marker != 0xff || header != M_SOI)
    {
        goto brokenimg;
    }

    do
    {
        marker = freadbyte(fh);
        if(marker != 0xff)
        {
            goto brokenimg;
        }

        header = freadbyte(fh);
        size = freadbigshort(fh);

        if(header == M_EOI || header == M_SOS)
        {
            fclose(fh);
            printf("No CoD4X metadata found\n");
            return 0;
        }
        if(header == 0xeb)
        {
            readmetadata(fh);
            fclose(fh);           
            return 0;
        }
        freadskip(fh, size -2);
    }while(1);

brokenimg:
    printf("Broken jfif file\n");
    fclose(fh);
    return 0;
}