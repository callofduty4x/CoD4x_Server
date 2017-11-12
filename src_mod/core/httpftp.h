/*
 *  httpftp.h
 *
 */
#ifndef _HTTPFTP_H_
#define _HTTPFTP_H_

#include "q_shared.h"
#include "msg.h"
#include "sys_net.h"

#define HTTP_CONNECTTIMEOUT 15000

typedef enum
{
	FT_PROTO_HTTP,
	FT_PROTO_HTTPS,
	FT_PROTO_FTP
}ftprotocols_t;

typedef struct
{
	qboolean lock;
	qboolean active;
	qboolean transferactive;
	int transferStartTime;
	int socket;
	int transfersocket;
	int sentBytes;
	int finallen;
	int totalreceivedbytes;
	int transfertotalreceivedbytes;
	msg_t *extrecvmsg;
	msg_t *extsendmsg;
	msg_t sendmsg;
	msg_t recvmsg;
	msg_t transfermsg;
	qboolean complete;
	int code;
	int version;
	char status[32];
	char url[MAX_STRING_CHARS];
	char address[MAX_STRING_CHARS];
	char username[256];
	char password[256];
	char contentType[64];
	char cookie[MAX_STRING_CHARS];
	int mode;
	int headerLength;
	int contentLength;
	int contentLengthArrived;
	int currentChunkLength;
	int currentChunkReadOffset;
	int chunkedEncoding;
	int startTime;
	int stage;
	ftprotocols_t protocol;
	netadr_t remote;
	qboolean socketReady;
	#ifndef NO_TLS
		struct tlsstate_s *tls;
	#endif
}ftRequest_t;


typedef enum
{
	HTTP_GET,
	HTTP_POST,
	HTTP_HEAD
}httpMethod_t;


#define MAX_POST_VALS 32
typedef struct
{
	char name[MAX_STRING_CHARS];
	char value[MAX_STRING_CHARS];
}httpPostVals_t;

int HTTP_SendReceiveData(ftRequest_t* request);
void FileDownloadFreeRequest(ftRequest_t* request);
ftRequest_t* FileDownloadRequest( const char* url);
int FileDownloadSendReceive( ftRequest_t* request );
const char* FileDownloadGenerateProgress( ftRequest_t* request );
void HTTPServer_Init();
ftRequest_t* HTTPRequest(const char* url, const char* method, msg_t* msg, const char* additionalheaderlines);
qboolean HTTP_BuildNewRequest( ftRequest_t* request, const char* method, msg_t* msg, const char* additionalheaderlines);
void HTTP_DecodeURLFormData(char* url);
void HTTP_DecodeURL(char* url);
void HTTP_ParseFormDataBody(char* body, httpPostVals_t* values);
const char* HTTP_GetFormDataItem(httpPostVals_t* values, const char* search);

#endif
