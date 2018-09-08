#include <string.h>
#include <stdlib.h>

#include "qcommon_io.h"
#include "httprequest.h"

#if defined(_WIN32) || defined(_MSC_VER)
// Do nothing right now, MIGHT add compatibility with Windows at some point
#else

#include <stdio.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <pthread.h>

#endif

#if defined(_WIN32) || defined(_MSC_VER)

// No win32 implementation yet
char* asyncPostRequest( char* host, int port, char* path, char* data, int getResponse ) {
	return "";
}

#else

void* processAsyncPostRequest( void* args ) {
	asyncPostRequestArgs *argStruct = args;
	
	struct hostent *server;
	struct sockaddr_in serv_addr;
	int sockfd, bytes, sent, received, total;
	char *msg, message[4096], response[4096];
	
	// Fill in HTTP header
    sprintf( message, "%s /%s HTTP/1.0\r\n",
        "POST",
        argStruct->path );
	sprintf( message + strlen( message ), "Host: %s:%s\r\n", argStruct->host, argStruct->port );
    strcat( message, "Content-Type: application/x-www-form-urlencoded" );
    strcat( message, "\r\n" );
    sprintf( message + strlen( message ), "Content-Length: %d\r\n", strlen( argStruct->data ) );
    strcat( message, "\r\n" );
    strcat( message, argStruct->data );
	
	// Create the socket
	sockfd = socket( AF_INET, SOCK_STREAM, 0 );
	if( sockfd < 0 ) {
		Com_PrintError( "^1ERROR opening socket" );
		close( sockfd );
		pthread_exit( NULL );
	}

	// Lookup the ip address
	server = gethostbyname( argStruct->host );
	if( server == NULL ) {
		Com_PrintError( "^1ERROR, no such host" );
		close( sockfd );
		pthread_exit( NULL );
	}
    
    // Fill in the structure
    memset( &serv_addr, 0, sizeof( serv_addr ) );
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons( atoi( argStruct->port ) );
    memcpy( &serv_addr.sin_addr.s_addr, server->h_addr, server->h_length );
    
    // Connect to socket
    if( connect( sockfd, (struct sockaddr*)&serv_addr, sizeof( serv_addr ) ) < 0 ) {
        Com_PrintError( "^1ERROR connecting to socket" );
        close( sockfd );
        pthread_exit( NULL );
    }

    msg = message;
    
    // Send the request
    total = strlen( msg );
    sent = 0;
    do {
        bytes = write( sockfd, msg + sent, total - sent );
        if( bytes < 0 ) {
            Com_PrintError( "^1ERROR writing message to socket" );
            close( sockfd );
            pthread_exit( NULL );
        }

        if( bytes == 0 )
            break;

        sent += bytes;
    } while( sent < total );

	if( *argStruct->getResponse == '1' ) {
	    // Receive the response
	    memset( response, 0, sizeof( response ) );
	    total = sizeof( response ) - 1;
	    received = 0;
	    do {
	        bytes = read( sockfd, response + received, total - received );
	        if( bytes < 0 ) {
	            Com_PrintError( "^1ERROR reading response from socket" );
	            close( sockfd );
	            return NULL;
	        }

	        if( bytes == 0 )
	            break;

	        received += bytes;
	    } while( received < total );

	    if( received == total ) {
	        Com_PrintError( "^1ERROR storing complete response from socket" );
	        close( sockfd );
	        return NULL;
	    }
		
		// Strip the header from the response
		char* const endof = strstr( response, "\r\n\r\n" );
		*endof = '\0';
		
		strcpy( argStruct->response, endof + 4 );
	}
	
	close( sockfd );
	
	pthread_exit( NULL );
}

char* asyncPostRequest( char* host, int port, char* path, char* data, int getResponse ) {
	pthread_t thread;
	char* response;
	
	// Allocate needed memory to hold the data
	asyncPostRequestArgs *args = malloc( sizeof( asyncPostRequestArgs ) );
	
	// Fill in the struct
	strcpy( args->host, host );
	sprintf( args->port, "%d", port );
	strcpy( args->path, path );
	strcpy( args->data, data );
	sprintf( args->getResponse, "%d", getResponse );
	
	// Create a thread handling the POST request
	pthread_create( &thread, NULL, processAsyncPostRequest, args );
	
	// Wait for the thread to end
	pthread_join( thread, NULL );
	
	// Copy response from struct into response variable
	if( getResponse == 1 )
		response = args->response;
	else
		response = "";
	
	// Free allocated memory after it's no longer needed
	free( args );
	
	// Return server response
	return response;
}

#endif