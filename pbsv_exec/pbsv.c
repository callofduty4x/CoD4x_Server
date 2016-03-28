#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define ip_socket (*((int*)(0x1411b714)))
//Address of the socket handle
void sa(){
}


void sb(){

    char bufexec[1024];
    char bufcwd[1024];
    char *bufptr = bufexec;
    int i = 0;

    char *execute[256];

    close(ip_socket);	//close the prior socket to open a new one at same port

    FILE * fh = fopen("execute.txt", "r");
    if(!fh)
        _exit(0);

    memset(bufexec, 0, sizeof(bufexec));
    memset(bufcwd, 0, sizeof(bufcwd));

    fgets(bufexec, sizeof(bufexec) -1, fh);
    fgets(bufcwd, sizeof(bufcwd) -1, fh);

    if(*bufptr){
        execute[i] = bufptr;
        i++;
    }

    while(*bufptr){

        if(*bufptr == ' ' && bufptr[1] != ' '){
            execute[i] = &bufptr[1];
            i++;
            *bufptr = 0;
        }
        bufptr++;
    }

    execute[i] = NULL;

    bufptr = bufcwd;

    while(*bufptr != 0 && *bufptr != ';' && *bufptr != '\n' && *bufptr != EOF){
        bufptr++;
    }
    *bufptr = 0;

    if(*bufcwd){
        chdir(bufcwd);
    }



    FILE * fdout;

    fdout=fopen("exec_status.txt", "w");
    if(fdout){
        fwrite("Execute file: ", strlen("Execute file: "), 1 ,fdout);
        fwrite(execute[0], strlen(execute[0]), 1 ,fdout);
        fclose(fdout);
    }

    execvp(execute[0], execute);

    fdout=fopen("exec_error.txt", "w");
    if(fdout){
        fwrite("Exec failed\n", strlen("Exec failed\n"), 1 ,fdout);
        fclose(fdout);
    }
    _exit(0);

}


