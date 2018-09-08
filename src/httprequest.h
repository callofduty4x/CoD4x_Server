#include <string.h>
#include <stdlib.h>

// Argument struct holding data required to send an asynchronous POST request
typedef struct {
	// POST request info
    char host[64];
    char port[5];
    char path[128];
    char data[4096];
	
	// Server response
	char getResponse[1];
	char response[4096];
} asyncPostRequestArgs;

void* processAsyncPostRequest( void* args );
char* asyncPostRequest( char* host, int port, char* path, char* data, int getResponse );