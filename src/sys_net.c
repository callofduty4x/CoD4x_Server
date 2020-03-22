/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
    Copyright (C) 1999-2005 Id Software, Inc.

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

#ifdef _WIN32
	#include <winsock2.h>
	#include <ws2tcpip.h>
	#include <iphlpapi.h>
	#if WINVER < 0x501
		#ifdef __MINGW32__
					// wspiapi.h isn't available on MinGW, so if it's
					// present it's because the end user has added it
					// and we should look for it in our tree
			#include "wspiapi.h"
		#else
			#include <wspiapi.h>
		#endif
	#else
		#include <ws2spi.h>
	#endif
#endif

#include "qcommon_io.h"
#include "sys_net.h"
#include "cvar.h"
#include "q_platform.h"
#include "net_game_conf.h"
#include "cmd.h"
#include "net_game.h"
#include "sys_thread.h"

#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include <ctype.h>
#include <stddef.h>		/* for offsetof*/

#ifdef _WIN32

	typedef int socklen_t;
	#	ifdef ADDRESS_FAMILY
	#		define sa_family_t	ADDRESS_FAMILY
	#	else
	typedef unsigned short sa_family_t;
	#	endif

	/* no epipe yet */
	#ifndef WSAEPIPE
		#define WSAEPIPE       -12345
	#endif
	#ifdef EAGAIN
		#undef EAGAIN
	#endif
	#ifdef EADDRNOTAVAIL
		#undef EADDRNOTAVAIL
	#endif
	#ifdef EAFNOSUPPORT
		#undef EAFNOSUPPORT
	#endif
	#ifdef ECONNRESET
		#undef ECONNRESET
	#endif
	#ifdef EINPROGRESS
		#undef EINPROGRESS
	#endif
	#ifdef EINTR
		#undef EINTR
	#endif
	#ifdef EPIPE
		#undef EPIPE
	#endif

	#	define EAGAIN			WSAEWOULDBLOCK
	#	define EADDRNOTAVAIL		WSAEADDRNOTAVAIL
	#	define EAFNOSUPPORT		WSAEAFNOSUPPORT
	#	define ECONNRESET		WSAECONNRESET
	#	define EINPROGRESS		WSAEINPROGRESS
	#	define EINTR			WSAEINTR
	# define EPIPE      WSAEPIPE
	typedef u_long	ioctlarg_t;
	#	define socketError		WSAGetLastError( )

	#define NET_NOSIGNAL 0x0

	static WSADATA	winsockdata;
	static qboolean	winsockInitialized = qfalse;

	#ifndef IPV6_V6ONLY
		#define IPV6_V6ONLY           27 // Treat wildcard bind as AF_INET6-only.
	#endif 

	int inet_pton(int af, const char *src, void *dst)
	{
		struct sockaddr_storage sin;
		int addrSize = sizeof(sin);
		char address[256];
		strncpy(address, src, sizeof(address));

		int rc = WSAStringToAddressA( address, af, NULL, (SOCKADDR*)&sin, &addrSize ); 
		if(rc != 0)
		{
			return -1;
		}
		if(af == AF_INET)
		{
			*((struct in_addr *)dst) = ((struct sockaddr_in*)&sin)->sin_addr;
			return 1;
		}
		if(af == AF_INET6)
		{
			*((struct in_addr6 *)dst) = ((struct sockaddr_in6*)&sin)->sin6_addr;
			return 1;
		}
		return 0;
	}

#else

	#	if MAC_OS_X_VERSION_MIN_REQUIRED == 1020
			// needed for socklen_t on OSX 10.2
	#		define _BSD_SOCKLEN_T_
	#	endif

	#ifdef MACOS_X
		#define NET_NOSIGNAL SO_NOSIGPIPE
	#else
		#define NET_NOSIGNAL MSG_NOSIGNAL
	#endif

	#include <sys/socket.h>
	#include <errno.h>
	#include <netdb.h>
	#include <netinet/in.h>
	#include <arpa/inet.h>
	#include <net/if.h>
	#include <sys/ioctl.h>
	#include <sys/types.h>
	#include "net_game.h"
	#include <sys/time.h>
	#include <unistd.h>
	#	if !defined(__sun) && !defined(__sgi)
	#		include <ifaddrs.h>
	#	endif

	#	ifdef __sun
	#		include <sys/filio.h>
	#	endif


	#	define INVALID_SOCKET		-1
	#	define SOCKET_ERROR		-1
	#	define closesocket		close
	#	define ioctlsocket		ioctl
	typedef int	ioctlarg_t;
	#	define socketError		errno
	typedef int SOCKET;
#endif


#define IPEFF_EF 0x38


#define	MAX_IPS		32

#ifndef MAX_MSGLEN
#define MAX_MSGLEN 0x20000
#endif

#ifndef __CMD_H__
void Cmd_AddCommand(char* name, void* fun){}
#endif

#ifdef Com_GetFrameMsec
#define NET_TimeGetTime Com_GetFrameMsec
#endif

#ifndef __NET_GAME_H__
unsigned int net_timeBase;
int NET_TimeGetTime( void )
{
	struct timeval tp;
	gettimeofday( &tp, NULL );
	if ( !net_timeBase )
		net_timeBase = tp.tv_sec;

	return ( tp.tv_sec - net_timeBase ) * 1000 + tp.tv_usec / 1000;
}
#endif

#ifndef __NET_GAME_H__
#pragma message "Function NET_TCPConnectionClosed is undefined"
void NET_TCPConnectionClosed(netadr_t* adr, int sock, int connectionId, int serviceId){}
#endif
#ifndef __NET_GAME_H__
#pragma message "Function NET_UDPPacketEvent is undefined"
void NET_UDPPacketEvent(netadr_t* from, void* data, int len, int buflen){}
#endif
#ifndef __NET_GAME_H__
#pragma message "Function NET_TCPAuthPacketEvent is undefined"
tcpclientstate_t NET_TCPAuthPacketEvent(netadr_t* remote, byte* bufData, int cursize, int* sock, int* connectionId, int *serviceId){ return TCP_AUTHSUCCESSFULL; }
#endif
#ifndef __NET_GAME_H__
#pragma message "Function NET_TCPPacketEvent is undefined"
qboolean NET_TCPPacketEvent(netadr_t* remote, byte* bufData, int cursize, int* sock, int connectionId, int serviceId){ return qfalse; }
#endif


//static qboolean usingSocks = qfalse;
//static struct sockaddr	socksRelayAddr;
//static char socksBuf[4096];

static int networkingEnabled = 0;

cvar_t		*net_enabled;
/*
static cvar_t	*net_socksEnabled;
static cvar_t	*net_socksServer;
static cvar_t	*net_socksPort;
static cvar_t	*net_socksUsername;
static cvar_t	*net_socksPassword;
*/
cvar_t	*net_ip;
cvar_t	*net_ip6;
cvar_t	*net_port;
cvar_t	*net_port6;

static cvar_t	*net_mcast6addr;
static cvar_t	*net_mcast6iface;

static cvar_t	*net_dropsim;



typedef struct{

    SOCKET sock;
    int localipindex;

}socketData_t;

static netadr_t	ip4_socket;
static netadr_t	ip6_socket;

static SOCKET	tcp_socket = INVALID_SOCKET;
static SOCKET	tcp6_socket = INVALID_SOCKET;
static SOCKET	socks_socket = INVALID_SOCKET;

/*
static SOCKET	multicast6_socket = INVALID_SOCKET;

// Keep track of currently joined multicast group.
static struct ipv6_mreq curgroup;
// And the currently bound address.
*/
static struct sockaddr_in6 boundto;

#ifndef IF_NAMESIZE
  #define IF_NAMESIZE 16
#endif

// use an admin local address per default so that network admins can decide on how to handle quake3 traffic.
#define NET_MULTICAST_IP6 "ff08::696f:7175:616b:6533"



typedef struct
{
	char ifname[IF_NAMESIZE];
	int ifindex;

	netadrtype_t type;
	sa_family_t family;
	qboolean isstaticip6;
	struct sockaddr_storage addr;
	struct sockaddr_storage netmask;
} nip_localaddr_t;

static nip_localaddr_t localIP[MAX_IPS];
static int numIP;


//=============================================================================


#define MAX_TCPCONNECTIONS 120
#define MIN_TCPAUTHWAITTIME 320
#define MAX_TCPAUTHWAITTIME 3000
#define MAX_TCPCONNECTEDTIMEOUT 1800000 //30 minutes - close this if we have too many waiting connections

typedef struct{
	netadr_t		remote;
	unsigned int	lastMsgTime;
	int			connectionId;
	int			serviceId;
	tcpclientstate_t	state;
	qboolean		wantwrite;
	//SOCKET			sock;
}tcpConnections_t;


typedef struct{
	fd_set			fdr, fdw;
	int			highestfd;
	int			activeConnectionCount; //Connections that have been successfully authentificated
	unsigned long long	lastAttackWarnTime;
	tcpConnections_t	connections[MAX_TCPCONNECTIONS];
}tcpServer_t;

tcpServer_t tcpServer;

/*
====================
NET_ErrorString
====================
*/
char *NET_ErrorString( void ) {
#ifdef _WIN32
	//FIXME: replace with FormatMessage?
	switch( socketError ) {
		case WSAEINTR: return "WSAEINTR";
		case WSAEBADF: return "WSAEBADF";
		case WSAEACCES: return "WSAEACCES";
		case WSAEDISCON: return "WSAEDISCON";
		case WSAEFAULT: return "WSAEFAULT";
		case WSAEINVAL: return "WSAEINVAL";
		case WSAEMFILE: return "WSAEMFILE";
		case WSAEWOULDBLOCK: return "WSAEWOULDBLOCK";
		case WSAEINPROGRESS: return "WSAEINPROGRESS";
		case WSAEALREADY: return "WSAEALREADY";
		case WSAENOTSOCK: return "WSAENOTSOCK";
		case WSAEDESTADDRREQ: return "WSAEDESTADDRREQ";
		case WSAEMSGSIZE: return "WSAEMSGSIZE";
		case WSAEPROTOTYPE: return "WSAEPROTOTYPE";
		case WSAENOPROTOOPT: return "WSAENOPROTOOPT";
		case WSAEPROTONOSUPPORT: return "WSAEPROTONOSUPPORT";
		case WSAESOCKTNOSUPPORT: return "WSAESOCKTNOSUPPORT";
		case WSAEOPNOTSUPP: return "WSAEOPNOTSUPP";
		case WSAEPFNOSUPPORT: return "WSAEPFNOSUPPORT";
		case WSAEAFNOSUPPORT: return "WSAEAFNOSUPPORT";
		case WSAEADDRINUSE: return "WSAEADDRINUSE";
		case WSAEADDRNOTAVAIL: return "WSAEADDRNOTAVAIL";
		case WSAENETDOWN: return "WSAENETDOWN";
		case WSAENETUNREACH: return "WSAENETUNREACH";
		case WSAENETRESET: return "WSAENETRESET";
		case WSAECONNABORTED: return "WSWSAECONNABORTEDAEINTR";
		case WSAECONNRESET: return "WSAECONNRESET";
		case WSAENOBUFS: return "WSAENOBUFS";
		case WSAEISCONN: return "WSAEISCONN";
		case WSAENOTCONN: return "WSAENOTCONN";
		case WSAESHUTDOWN: return "WSAESHUTDOWN";
		case WSAETOOMANYREFS: return "WSAETOOMANYREFS";
		case WSAETIMEDOUT: return "WSAETIMEDOUT";
		case WSAECONNREFUSED: return "WSAECONNREFUSED";
		case WSAELOOP: return "WSAELOOP";
		case WSAENAMETOOLONG: return "WSAENAMETOOLONG";
		case WSAEHOSTDOWN: return "WSAEHOSTDOWN";
		case WSASYSNOTREADY: return "WSASYSNOTREADY";
		case WSAVERNOTSUPPORTED: return "WSAVERNOTSUPPORTED";
		case WSANOTINITIALISED: return "WSANOTINITIALISED";
		case WSAHOST_NOT_FOUND: return "WSAHOST_NOT_FOUND";
		case WSATRY_AGAIN: return "WSATRY_AGAIN";
		case WSANO_RECOVERY: return "WSANO_RECOVERY";
		case WSANO_DATA: return "WSANO_DATA";
		default: return "NO ERROR";
	}
#else
	return strerror(socketError);
#endif
}

extern int __xpg_strerror_r(int __errnum, char *__buf, size_t __buflen);

char *NET_ErrorStringMT( char* buf, int size ) {
#ifdef _WIN32
	Q_strncpyz(buf,NET_ErrorString(), size);
#else

#ifdef __BSD__
	strerror_r(socketError, buf, size); //strerror_r() is broken with some versions of libc6
#else
	__xpg_strerror_r(socketError, buf, size);
#endif

#endif
	return buf;
}


static void NetadrToSockadr( netadr_t *a, struct sockaddr *s ) {

	memset(s, 0, sizeof(struct sockaddr_storage));

	if( a->type == NA_BROADCAST ) {
		((struct sockaddr_in *)s)->sin_family = AF_INET;
		((struct sockaddr_in *)s)->sin_port = a->port;
		((struct sockaddr_in *)s)->sin_addr.s_addr = INADDR_BROADCAST;
	}
	else if( a->type == NA_IP || a->type == NA_TCP ) {
		((struct sockaddr_in *)s)->sin_family = AF_INET;
		((struct sockaddr_in *)s)->sin_addr.s_addr = *(int *)&a->ip;
		((struct sockaddr_in *)s)->sin_port = a->port;
	}
	else if( a->type == NA_IP6 || a->type == NA_TCP6 ) {
		((struct sockaddr_in6 *)s)->sin6_family = AF_INET6;
		((struct sockaddr_in6 *)s)->sin6_addr = * ((struct in6_addr *) &a->ip6);
		((struct sockaddr_in6 *)s)->sin6_port = a->port;
		((struct sockaddr_in6 *)s)->sin6_scope_id = a->scope_id;
	}
/*	else if(a->type == NA_MULTICAST6)
	{
		((struct sockaddr_in6 *)s)->sin6_family = AF_INET6;
		((struct sockaddr_in6 *)s)->sin6_addr = curgroup.ipv6mr_multiaddr;
		((struct sockaddr_in6 *)s)->sin6_port = a->port;
	}*/
}


__optimize3 __regparm3 static void SockadrToNetadr( struct sockaddr *s, netadr_t *a, qboolean tcp, int socket) {
	if (s->sa_family == AF_INET) {
		memcpy(a->ip, &((struct sockaddr_in *)s)->sin_addr.s_addr, sizeof(a->ip));
		a->port = ((struct sockaddr_in *)s)->sin_port;
		if(!tcp)
			a->type = NA_IP;
		else
			a->type = NA_TCP;
	}
	else if(s->sa_family == AF_INET6)
	{
		memcpy(a->ip6, &((struct sockaddr_in6 *)s)->sin6_addr, sizeof(a->ip6));
		a->port = ((struct sockaddr_in6 *)s)->sin6_port;
		a->scope_id = ((struct sockaddr_in6 *)s)->sin6_scope_id;
		if(!tcp)
			a->type = NA_IP6;
		else
			a->type = NA_TCP6;
	}
	a->sock = socket;
}

/*
=============
Sys_SockaddrToString
=============
*/
static void Sys_SockaddrToString(char *dest, int destlen, struct sockaddr *input)
{
	socklen_t inputlen;

	if (input->sa_family == AF_INET6)
		inputlen = sizeof(struct sockaddr_in6);
	else
		inputlen = sizeof(struct sockaddr_in);

	if(getnameinfo(input, inputlen, dest, destlen, NULL, 0, NI_NUMERICHOST) && destlen > 0)
		*dest = '\0';
}


/*
__optimize3 __regparm3 static void SockadrToNetadr6( struct sockaddr *s, netadr_t *a, qboolean tcp, int socket) {

	a->sock = socket;
	if(!tcp)
		a->type = NA_IP6;
	else
		a->type = NA_TCP6;

	if (s->sa_family == AF_INET) {
		memset(a->ip6, 0, 10);
		a->ip6[10] = -1;
		a->ip6[11] = -1;
		memcpy(a->ip6 + 12, &((struct sockaddr_in *)s)->sin_addr.s_addr, 4);
		a->port = ((struct sockaddr_in *)s)->sin_port;
		a->scope_id = 0;
	}
	else if(s->sa_family == AF_INET6)
	{
		memcpy(a->ip6, &((struct sockaddr_in6 *)s)->sin6_addr, sizeof(a->ip6));
		a->port = ((struct sockaddr_in6 *)s)->sin6_port;
		a->scope_id = ((struct sockaddr_in6 *)s)->sin6_scope_id;
	}

}
*/
/*
=============
Sys_StringToSockaddr
=============
*/
static qboolean Sys_StringToSockaddrNoDNS(const char* s, struct sockaddr *sadr, int sadr_len, sa_family_t family)
{
	char ptonaddr[32];
	char addressstring[128];
	char *ifstring = NULL;
	struct sockaddr_storage sadrstore;
	struct sockaddr_in *sin = (struct sockaddr_in *)&sadrstore;
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)&sadrstore;
	memset(sadr, '\0', sadr_len);
	memset(&sadrstore, '\0', sizeof(sadrstore));
	
	sa_family_t ptonfamily = family;

	Q_strncpyz(addressstring, s, sizeof(addressstring));

	if(ptonfamily == AF_UNSPEC)
	{
		 if(Q_CountChar(addressstring, ':') > 1)
		 {
			ptonfamily = AF_INET6;
		 }else{
			ptonfamily = AF_INET;
		 }
	}
	if(ptonfamily == AF_INET6)
	{
		ifstring = strchr(addressstring, '%');
		if(ifstring)
		{
			*ifstring = '\0';
			++ifstring;
		}
		if(Q_CountChar(addressstring, ':') < 2)
		{
			//Turn ipv4 into mapped ipv6 address
			char ipv4string[32];
			Q_strncpyz(ipv4string, addressstring, sizeof(ipv4string));
			Com_sprintf(addressstring, sizeof(addressstring), "::ffff:%s", ipv4string);
		}
	}

	if(inet_pton(ptonfamily, addressstring, &ptonaddr ) > 0)
	{
		if(ptonfamily == AF_INET6)
		{
			memcpy(&sin6->sin6_addr, ptonaddr, sizeof(sin6->sin6_addr));
			sin6->sin6_family = AF_INET6;
			if(ifstring)
			{
#ifdef _WIN32
				sin6->sin6_scope_id = atoi(ifstring);
#else
				sin6->sin6_scope_id = if_nametoindex(ifstring);
#endif
			}
		}else if(ptonfamily == AF_INET){
			memcpy(&sin->sin_addr, ptonaddr, sizeof(sin->sin_addr)); 
			sin->sin_family = AF_INET;
		}
		if(sadr_len > sizeof(sadrstore))
		{
			sadr_len = sizeof(sadrstore);
		}
		memcpy(sadr, &sadrstore, sadr_len);
		return qtrue;
	}
	return qfalse;
}



typedef struct
{
	struct in_addr sin_addr;
	struct in6_addr sin6_addr; 
	uint32_t crc;
	char last15[16];
	unsigned long lastupdate;
	unsigned long lastused;
}dns_cache_t;

static dns_cache_t dnscachelist[32];

static uint32_t DNS_crc32(const char* name)
{
  unsigned int j;
  int length = strlen(name);
  uint32_t crc = ~0;
  unsigned char* current = (unsigned char*) name;
  while (length--)
  {
    crc ^= *current++;
    for (j = 0; j < 8; j++)
      if (crc & 1)
        crc = (crc >> 1) ^ 0xEDB88320;
      else
        crc =  crc >> 1;
  }
  return ~crc;
}

static void NET_DnsCacheUpdate(const char* name, struct sockaddr_storage *sockadr)
{
	int i, j;
	char namei[256];
	char last15[16];
	struct sockaddr_in *sin = (struct sockaddr_in *)sockadr;
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sockadr;
	unsigned long oldest = ~0;

	if(sockadr->ss_family != AF_INET && sockadr->ss_family != AF_INET6)
	{
		return;
	}

	Q_strncpyz(namei, name, sizeof(namei));

	int len = strlen(namei);

	if(len < sizeof(last15))
	{
		Q_strncpyz(last15, namei, sizeof(last15));
	}else{
		Q_strncpyz(last15, namei + len - 15, sizeof(last15));
	}
	Q_strlwr(namei);

	unsigned long now = NET_TimeGetTime() +1;

	uint32_t crc = DNS_crc32(namei);

	for(i = 0, j = 0; i < sizeof(dnscachelist) / sizeof(dnscachelist[0]); ++i)
	{
		if(crc == dnscachelist[i].crc && !strcmp(last15, dnscachelist[i].last15))
		{
			//Found entry
			if(sockadr->ss_family == AF_INET)
			{
				dnscachelist[i].sin_addr = sin->sin_addr;
			}else if(sockadr->ss_family == AF_INET6){
				dnscachelist[i].sin6_addr = sin6->sin6_addr;
			}
			dnscachelist[i].lastupdate = now;
			return;
		}
		//Wrap around
		if(dnscachelist[i].lastused > now)
		{
			dnscachelist[i].lastused = now;
		}
		if(dnscachelist[i].lastused < oldest)
		{
			oldest = dnscachelist[i].lastused;
			j = i;
		}
	}
	//Nothing found. Overwrite the least recently used entry
	Q_strncpyz(dnscachelist[j].last15, last15, sizeof(dnscachelist[j].last15));
	dnscachelist[j].crc = crc;
	if(sockadr->ss_family == AF_INET)
	{
		dnscachelist[j].sin_addr = sin->sin_addr;
	}else if(sockadr->ss_family == AF_INET6){
		dnscachelist[j].sin6_addr = sin6->sin6_addr;
	}
	dnscachelist[j].lastused = now;
	dnscachelist[j].lastupdate = now;
}

static qboolean Q_isZero(void* data, int size)
{
	int i;
	byte* d = (byte*)data;
	for(i = 0; i < size; ++i)
	{
		if(d[i])
		{
			return qfalse;
		}
	}
	return qtrue;
}

static qboolean NET_DnsCacheQuery(const char* name, struct sockaddr_storage *outaddr, sa_family_t family)
{
	int i;
	char namei[256];
	char last15[16];
	struct sockaddr_in *sin = (struct sockaddr_in *)outaddr;
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)outaddr;

	if(family != AF_INET && family != AF_INET6)
	{
		return qfalse;
	}
	Q_strncpyz(namei, name, sizeof(namei));

	int len = strlen(namei);

	if(len < sizeof(last15))
	{
		Q_strncpyz(last15, namei, sizeof(last15));
	}else{
		Q_strncpyz(last15, namei + len - 15, sizeof(last15));
	}
	
	Q_strlwr(namei);
	uint32_t crc = DNS_crc32(namei);
	for(i = 0; i < sizeof(dnscachelist) / sizeof(dnscachelist[0]); ++i)
	{
		if(crc == dnscachelist[i].crc && !strcmp(last15, dnscachelist[i].last15))
		{
			//Found entry
			if(family == AF_INET)
			{
				if(Q_isZero(&dnscachelist[i].sin_addr, sizeof(dnscachelist[i].sin_addr)))
				{
					return qfalse;
				}

				sin->sin_addr = dnscachelist[i].sin_addr;
				sin->sin_family = AF_INET;
			}else if(family == AF_INET6){
				if(Q_isZero(&dnscachelist[i].sin6_addr, sizeof(dnscachelist[i].sin6_addr)))
				{
					return qfalse;
				}
				sin6->sin6_addr = dnscachelist[i].sin6_addr;
				sin6->sin6_family = AF_INET6;
			}
			dnscachelist[i].lastused = NET_TimeGetTime() +1;
			return qtrue;
		}
	}
	return qfalse;
}


static struct addrinfo *SearchAddrInfo(struct addrinfo *hints, sa_family_t family)
{
	while(hints)
	{
		if(hints->ai_family == family)
			return hints;

		hints = hints->ai_next;
	}

	return NULL;
}




static qboolean NET_Resolve(const char *s, struct sockaddr *sadr, int sadr_len, sa_family_t family, char* errormsg1k)
{
	struct addrinfo hints;
	struct addrinfo *res = NULL;
	struct addrinfo *search = NULL;
	struct addrinfo *hintsp;
	int retval;

	memset(sadr, '\0', sizeof(*sadr));
	memset(&hints, '\0', sizeof(hints));

	hintsp = &hints;
	hintsp->ai_family = family;
	hintsp->ai_socktype = SOCK_DGRAM;

	retval = getaddrinfo(s, NULL, hintsp, &res);
	if(!retval)
	{
		if(family == AF_UNSPEC)
		{
			// Decide here and now which protocol family to use
			if(net_enabled->integer & NET_PRIOV6)
			{
				if(net_enabled->integer & NET_ENABLEV6)
					search = SearchAddrInfo(res, AF_INET6);

				if(!search && (net_enabled->integer & NET_ENABLEV4))
					search = SearchAddrInfo(res, AF_INET);
			}
			else
			{
				if(net_enabled->integer & NET_ENABLEV4)
					search = SearchAddrInfo(res, AF_INET);

				if(!search && (net_enabled->integer & NET_ENABLEV6))
					search = SearchAddrInfo(res, AF_INET6);
			}
		}
		else
			search = SearchAddrInfo(res, family);

		if(search)
		{
			if(search->ai_addrlen > sadr_len)
				search->ai_addrlen = sadr_len;

			memcpy(sadr, search->ai_addr, search->ai_addrlen);
			freeaddrinfo(search);

			return qtrue;
		}
		else
		{
			Com_sprintf(errormsg1k, 1024, "Sys_StringToSockaddr: Error resolving %s: No address of required type found.\n", s);
		}
	}
	else
	{
		Com_sprintf(errormsg1k, 1024, "Sys_StringToSockaddr: Error resolving %s: %s\n", s, gai_strerror(retval));
	}
	if(res)
	{
		freeaddrinfo(res);
	}
	return qfalse;
}


static qboolean Sys_StringToSockaddr(const char *s, struct sockaddr *sadr, int sadr_len, sa_family_t family)
{
	int retval;
	char ptonaddr[32];
	char errormsg[1024];
	struct sockaddr_storage sadrstore;
	struct sockaddr_in *sin = (struct sockaddr_in *)&sadrstore;
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)&sadrstore;
	memset(sadr, '\0', sadr_len);
	memset(&sadrstore, '\0', sizeof(sadrstore));

	//Attempt to read string as IP address
	if(Sys_StringToSockaddrNoDNS(s, sadr, sadr_len, family))
	{
		return qtrue;
	}

	if(Q_stricmp(s, "localhost") == 0)
	{
		memset(ptonaddr, 0, sizeof(ptonaddr));
		if(family == AF_INET6)
		{
			ptonaddr[15] = 1;
			memcpy(&sin6->sin6_addr, ptonaddr, sizeof(sin6->sin6_addr));
			sin6->sin6_family = AF_INET6;
		}else if(family == AF_INET){
			ptonaddr[0] = 127;
			ptonaddr[3] = 1;
			memcpy(&sin->sin_addr, ptonaddr, sizeof(sin->sin_addr)); 
			sin->sin_family = AF_INET;

		}else if(family == AF_UNSPEC){
			if(net_enabled->integer & NET_ENABLEV6)
			{
				ptonaddr[15] = 1;
				memcpy(&sin6->sin6_addr, ptonaddr, sizeof(sin6->sin6_addr));
				sin6->sin6_family = AF_INET6;
			}
			else
			{
				ptonaddr[0] = 127;
				ptonaddr[3] = 1;
				memcpy(&sin->sin_addr, ptonaddr, sizeof(sin->sin_addr)); 
				sin->sin_family = AF_INET;
			}
		}else{
			return qfalse;
		}
		memcpy(sadr, &sadrstore, sadr_len > sizeof(sadrstore) ? sizeof(sadrstore) : sadr_len);
		return qtrue;
	}

	if(family == AF_UNSPEC){
		if(net_enabled->integer & NET_ENABLEV6)
		{
			if(NET_DnsCacheQuery(s, &sadrstore, AF_INET6))
			{
				memcpy(sadr, &sadrstore, sadr_len > sizeof(sadrstore) ? sizeof(sadrstore) : sadr_len);
				return qtrue;
			}
		}
		if(NET_DnsCacheQuery(s, &sadrstore, AF_INET))
		{
			memcpy(sadr, &sadrstore, sadr_len > sizeof(sadrstore) ? sizeof(sadrstore) : sadr_len);
			return qtrue;
		}
	}else{
		if(NET_DnsCacheQuery(s, &sadrstore, family))
		{
			memcpy(sadr, &sadrstore, sadr_len > sizeof(sadrstore) ? sizeof(sadrstore) : sadr_len);
			return qtrue;
		}
	}

	retval = NET_Resolve(s, (struct sockaddr*)&sadrstore , sizeof(sadrstore), family, errormsg);

	if(retval == qtrue)
	{
		NET_DnsCacheUpdate(s, &sadrstore);
	}
	memcpy(sadr, &sadrstore, sadr_len > sizeof(sadrstore) ? sizeof(sadrstore) : sadr_len);

	return retval;
}





/*
=============
Sys_StringToAdr
=============
*/
qboolean Sys_StringToAdr( const char *s, netadr_t *a, netadrtype_t family ) {
	struct sockaddr_storage sadr;
	sa_family_t fam;
	qboolean tcp = qfalse;

	switch(family)
	{
		case NA_TCP:
			tcp = qtrue;
		case NA_IP:
			fam = AF_INET;

		break;

		case NA_TCP6:
			tcp = qtrue;
		case NA_IP6:
			fam = AF_INET6;

		break;

		default:
			fam = AF_UNSPEC;
		break;
	}

	if( !Sys_StringToSockaddr(s, (struct sockaddr *) &sadr, sizeof(sadr), fam ) ) {
		return qfalse;
	}

	SockadrToNetadr( (struct sockaddr *) &sadr, a, tcp, 0);

	return qtrue;
}


/*
===================
NET_SocketToAdr

Returns the associated netadr_t struct of the passed udp-socket.
===================
*/

netadr_t* NET_SockToAdr(int sock)
{
	if(sock == INVALID_SOCKET)
		return NULL;

	if(sock == ip4_socket.sock)
	{
		return &ip4_socket;
	}
	if(sock == ip6_socket.sock)
	{
		return &ip6_socket;
	}
	return NULL;
}

netadr_t* NET_GetLocalAddressList(int* count)
{
  static netadr_t localaddrlist[2];
  if(ip4_socket.sock != INVALID_SOCKET && ip6_socket.sock != INVALID_SOCKET)
  {
      localaddrlist[0] = ip4_socket;
      localaddrlist[1] = ip6_socket;
      *count = 2;
      return localaddrlist;
  }

  if(ip4_socket.sock != INVALID_SOCKET)
  {
      localaddrlist[0] = ip4_socket;
      *count = 1;
      return localaddrlist;
  }
  if(ip6_socket.sock != INVALID_SOCKET)
  {
      localaddrlist[0] = ip6_socket;
      *count = 1;
      return localaddrlist;
  }
  *count = 0;
  return localaddrlist;
}


/*
===================
NET_CompareBaseAdrMask

Compare without port, and up to the bit number given in netmask.
===================
*/
qboolean NET_CompareBaseAdrMask(netadr_t *a, netadr_t *b, int netmask)
{
	byte cmpmask, *addra, *addrb;
	int curbyte;

	if (a->type != b->type)
		return qfalse;

	if (a->type == NA_LOOPBACK)
		return qtrue;

	if(a->type == NA_IP || a->type == NA_TCP)
	{
		addra = (byte *) &a->ip;
		addrb = (byte *) &b->ip;

		if(netmask < 0 || netmask > 32)
			netmask = 32;
	}
	else if(a->type == NA_IP6 || a->type == NA_TCP6)
	{
		addra = (byte *) &a->ip6;
		addrb = (byte *) &b->ip6;

		if(netmask < 0 || netmask > 128)
			netmask = 128;
	}
	else
	{
		Com_PrintError(CON_CHANNEL_NETWORK,"NET_CompareBaseAdr: bad address type\n");
		return qfalse;
	}

	curbyte = netmask >> 3;

	if(curbyte && memcmp(addra, addrb, curbyte))
			return qfalse;

	netmask &= 0x07;
	if(netmask)
	{
		cmpmask = (1 << netmask) - 1;
		cmpmask <<= 8 - netmask;

		if((addra[curbyte] & cmpmask) == (addrb[curbyte] & cmpmask))
			return qtrue;
	}
	else
		return qtrue;

	return qfalse;
}


/*
===================
NET_CompareBaseAdr

Compares without the port
===================
*/
qboolean NET_CompareBaseAdr (netadr_t *a, netadr_t *b)
{
	return NET_CompareBaseAdrMask(a, b, -1);
}

const char	*NET_AdrToStringShortInternal (netadr_t *a, char* s, int len)
{
  if(len < NET_ADDRSTRMAXLEN)
  {
    Q_strncpyz(s, "buf < NET_ADDRSTRMAXLEN", len);
    return s;
  }

	if(a == NULL)
		return "(null)";

	if (a->type == NA_LOOPBACK)
		Com_sprintf (s, len, "loopback");
	else if (a->type == NA_BOT)
		Com_sprintf (s, len, "bot");
	else if (a->type == NA_IP || a->type == NA_IP6 || a->type == NA_TCP || a->type == NA_TCP6 )
	{
		struct sockaddr_storage sadr;

		memset(&sadr, 0, sizeof(sadr));
		NetadrToSockadr(a, (struct sockaddr *) &sadr);
		Sys_SockaddrToString(s, len, (struct sockaddr *) &sadr);
	}
	return s;
}

const char	*NET_AdrToStringShort(netadr_t *a)
{
  static	char	s[NET_ADDRSTRMAXLEN];
  return NET_AdrToStringShortInternal(a, s, sizeof(s));
}

__cdecl const char	*NET_AdrToStringShortMT(netadr_t *a, char* buf, int len)
{
  return NET_AdrToStringShortInternal(a, buf, len);
}

const char	*NET_AdrToStringInternal(netadr_t *a, char* s, int len)
{
	char		t[NET_ADDRSTRMAXLEN];
	struct 		sockaddr_storage sadr;

  if(len < NET_ADDRSTRMAXLEN)
  {
    Q_strncpyz(s, "buf < NET_ADDRSTRMAXLEN", len);
    return s;
  }

	if(a == NULL)
		return "(null)";

	if (a->type == NA_LOOPBACK){
		Com_sprintf (s, len, "loopback");
	}else if (a->type == NA_BOT){
		Com_sprintf (s, len, "bot");
	}else if(a->type == NA_IP || a->type == NA_TCP){

		memset(&sadr, 0, sizeof(sadr));
		NetadrToSockadr(a, (struct sockaddr *) &sadr);
		Sys_SockaddrToString(t, sizeof(t), (struct sockaddr *) &sadr);
		Com_sprintf(s, len, "%s:%hu", t, ntohs(a->port));

	}else if(a->type == NA_IP6 || a->type == NA_TCP6){

		memset(&sadr, 0, sizeof(sadr));
		NetadrToSockadr(a, (struct sockaddr *) &sadr);
		Sys_SockaddrToString(t, sizeof(t), (struct sockaddr *) &sadr);
		Com_sprintf(s, len, "[%s]:%hu", t, ntohs(a->port));
        }
	return s;
}

const char	*NET_AdrToString(netadr_t *a)
{
  static	char	s[NET_ADDRSTRMAXLEN];
  return NET_AdrToStringInternal(a, s, sizeof(s));
}

__cdecl const char	*NET_AdrToStringMT(netadr_t *a, char* buf, int len)
{
  return NET_AdrToStringInternal(a, buf, len);
}


const char	*NET_AdrMaskToStringInternal(netadr_t *a, char* s, int len)
{
  if(len < NET_ADDRSTRMAXLEN)
  {
    Q_strncpyz(s, "buf < NET_ADDRSTRMAXLEN", len);
    return s;
  }

	if(a == NULL)
		return "(null)";

	if (a->type == NA_LOOPBACK) {
		Com_sprintf (s, len, "loopback");
	} else if (a->type == NA_BOT) {
		Com_sprintf (s, len, "bot");

	} else if (a->type == NA_IP || a->type == NA_TCP) {
		Com_sprintf (s, len, "%i.%i.x.x:%hu",
			a->ip[0], a->ip[1], BigShort(a->port));
	} else if (a->type == NA_IP6 || a->type == NA_TCP6){
		Com_sprintf (s, len, "[%02x%02x:%02x%02x:%02x%02x:x:x:x:x:x]:%hu",
		a->ip6[0], a->ip6[1], a->ip6[2], a->ip6[3], a->ip6[4], a->ip6[5], BigShort(a->port));
	}
	return s;
}

const char	*NET_AdrMaskToString(netadr_t *a)
{
  static	char	s[NET_ADDRSTRMAXLEN];
  return NET_AdrMaskToStringInternal(a, s, sizeof(s));
}

__cdecl const char	*NET_AdrMaskToStringMT(netadr_t *a, char* buf, int len)
{
  return NET_AdrMaskToStringInternal(a, buf, len);
}

const char	*NET_AdrToConnectionStringCommon(netadr_t *a, const char* (NET_AdrToString_a)(netadr_t* ), const char* (NET_AdrToString_b)(netadr_t*))
{
	if(a == NULL)
		return "(null)";

	static	char	s[NET_ADDRSTRMAXLEN];

	s[0] = 0;

	Q_strncat(s, sizeof(s), NET_AdrToString_a( a ));
	Q_strncat(s, sizeof(s), "<=>");
	Q_strncat(s, sizeof(s), NET_AdrToString_b( NET_SockToAdr( a->sock ) ));

	return s;
}

const char	*NET_AdrToConnectionString(netadr_t *a)
{
	return NET_AdrToConnectionStringCommon(a, NET_AdrToString, NET_AdrToString);
}


const char	*NET_AdrToConnectionStringShort(netadr_t *a)
{
	return NET_AdrToConnectionStringCommon(a, NET_AdrToStringShort, NET_AdrToStringShort);
}

const char	*NET_AdrToConnectionStringMask(netadr_t *a)
{
	return NET_AdrToConnectionStringCommon(a, NET_AdrMaskToString, NET_AdrToString);
}


qboolean	NET_CompareAdr (netadr_t *a, netadr_t *b)
{
	if(!NET_CompareBaseAdr(a, b))
		return qfalse;

	if (a->type == NA_IP || a->type == NA_IP6 || a->type == NA_TCP || a->type == NA_TCP6)
	{
		if (a->port == b->port)
			return qtrue;
	}
	else
		return qtrue;

	return qfalse;
}


qboolean	NET_IsLocalAddress( netadr_t adr ) {
	return adr.type == NA_LOOPBACK;
}

//=============================================================================



/*
==================
NET_Clear

Wipe out all remaining packets. This is only called when server is under attack
==================
*/

void NET_Clear(){

    byte buff[65535];
    int ret;

    if(ip4_socket.sock != INVALID_SOCKET)
    {
        do{
	ret = recv(ip4_socket.sock, (void *)buff, sizeof(buff), 0);
        }while(ret != SOCKET_ERROR);
    }

    if(ip6_socket.sock != INVALID_SOCKET)
    {
        do{
		ret = recv(ip6_socket.sock, (void *)buff, sizeof(buff), 0);
        }while(ret != SOCKET_ERROR);
    }
}



/*
==================
NET_GetPacket

Receive one packet
==================
*/
#ifdef _DEBUG
int	recvfromCount;
#endif

__optimize3 __regparm3 int NET_GetPacket(netadr_t *net_from, void *net_message, int maxsize, int socket)
{
	int 	ret;
	struct sockaddr_storage from;
	socklen_t	fromlen;
	int		err;

#ifdef _DEBUG
	recvfromCount++;		// performance check
#endif

	if(socket != INVALID_SOCKET)
	{
		fromlen = sizeof(from);
		ret = recvfrom( socket, net_message, maxsize, 0, (struct sockaddr *) &from, &fromlen );

		if (ret == SOCKET_ERROR)
		{
			err = socketError;

			if( err != EAGAIN && err != ECONNRESET ){
				Com_PrintWarningNoRedirect(CON_CHANNEL_NETWORK, "NET_GetPacket on (%s - %d): %s\n", NET_AdrToString(NET_SockToAdr(socket)), socket , NET_ErrorString() );
			}
		}
		else
		{

/*			memset( ((struct sockaddr_in *)&from)->sin_zero, 0, 8 );

			if ( usingSocks && memcmp( &from, &socksRelayAddr, fromlen ) == 0 ) {
				if ( ret < 10 || net_message->data[0] != 0 || net_message->data[1] != 0 || net_message->data[2] != 0 || net_message->data[3] != 1 ) {
					return qfalse;
				}
				net_from->type = NA_IP;
				net_from->ip[0] = net_message->data[4];
				net_from->ip[1] = net_message->data[5];
				net_from->ip[2] = net_message->data[6];
				net_from->ip[3] = net_message->data[7];
				net_from->port = *(short *)&net_message->data[8];
				net_message->readcount = 10;
			}
			else {*/
				SockadrToNetadr( (struct sockaddr *) &from, net_from, qfalse, socket);
//			}

			if( ret >= maxsize ) {
				Com_PrintWarningNoRedirect(CON_CHANNEL_NETWORK, "Oversize packet from %s\n", NET_AdrToString (net_from) );
				return -1;
			}

			return ret;
		}
	}
	return -1;
}

//=============================================================================



/*
==================
Sys_SendPacket
==================
*/
qboolean Sys_SendPacket( int length, const void *data, netadr_t *to ) {
	int	ret = SOCKET_ERROR;
	struct sockaddr_storage	addr;
	char errstr[256];

	if( to->type != NA_BROADCAST && to->type != NA_IP && to->type != NA_IP6 && to->type != NA_MULTICAST6)
	{
		Com_Error( ERR_FATAL, "Sys_SendPacket: bad address type" );
		return qfalse;
	}

	if( (to->type == NA_IP && to->sock == INVALID_SOCKET) || (to->type == NA_IP6 && to->sock == INVALID_SOCKET) || (to->sock == INVALID_SOCKET && to->type == NA_MULTICAST6) )
		return qfalse;

	if(to->type == NA_MULTICAST6 && (net_enabled->integer & NET_DISABLEMCAST))
		return qfalse;

	memset(&addr, 0, sizeof(addr));

	NetadrToSockadr( to, (struct sockaddr *) &addr );
/*
	if( usingSocks && to->type == NA_IP ) {
		socksBuf[0] = 0;	// reserved
		socksBuf[1] = 0;
		socksBuf[2] = 0;	// fragment (not fragmented)
		socksBuf[3] = 1;	// address type: IPV4
		*(int *)&socksBuf[4] = ((struct sockaddr_in *)&addr)->sin_addr.s_addr;
		*(short *)&socksBuf[8] = ((struct sockaddr_in *)&addr)->sin_port;
		memcpy( &socksBuf[10], data, length );
		ret = sendto( to->socket, socksBuf, length+10, 0, &socksRelayAddr, sizeof(socksRelayAddr) );

	} else {*/

#ifdef SOCKET_DEBUG
    char tmpstr[64];
    char adrstr[256];
#endif
	if(to->sock != 0)
	{
		if( to->type == NA_IP || to->type == NA_BROADCAST )
			ret = sendto( to->sock, data, length, 0, (struct sockaddr *) &addr, sizeof(struct sockaddr_in) );
		else if( to->type == NA_IP6 || to->type == NA_MULTICAST6 )
		{
			ret = sendto( to->sock, data, length, 0, (struct sockaddr *) &addr, sizeof(struct sockaddr_in6) );
		}
#ifdef SOCKET_DEBUG

			int err2;

			if(ret == SOCKET_ERROR)
			{
				err2 = socketError;
				if(err2 != EAGAIN)
				{
					Q_strncpyz( tmpstr, NET_AdrToStringMT(NET_SockToAdr(to->sock), adrstr, sizeof(adrstr)), sizeof(tmpstr));
					Com_PrintError(CON_CHANNEL_NETWORK, "Sys_SendPacket: socket %d Conn: %s ==> %s failed with: %s\n", to->sock, tmpstr, NET_AdrToStringMT(to, adrstr, sizeof(adrstr)), NET_ErrorStringMT(errstr, sizeof(errstr)) );
				}
			}
#endif

	}else{
		return qfalse;
	}

//	}
	if( ret == SOCKET_ERROR ) {
		int err = socketError;

		// wouldblock is silent
		if( err == EAGAIN ) {
			return qfalse;
		}

		// some PPP links do not allow broadcasts and return an error
		if( ( err == EADDRNOTAVAIL ) && ( ( to->type == NA_BROADCAST ) ) ) {
			return qfalse;
		}
#ifndef SOCKET_DEBUG
		Com_PrintWarningNoRedirect(CON_CHANNEL_NETWORK, "NET_SendPacket: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
#endif
		return qfalse;
	}
	return qtrue;
}


//=============================================================================

/*
==================
Sys_IsLANAddress

LAN clients will have their rate var ignored
==================
*/
qboolean Sys_IsLANAddress( netadr_t *adr ) {
	int		index, run, addrsize;
	qboolean differed;
	byte *compareadr, *comparemask, *compareip;

	if( adr->type == NA_LOOPBACK ) {
		return qtrue;
	}

	if( adr->type == NA_IP || adr->type == NA_TCP )
	{
		// RFC1918:
		// 10.0.0.0        -   10.255.255.255  (10/8 prefix)
		// 172.16.0.0      -   172.31.255.255  (172.16/12 prefix)
		// 192.168.0.0     -   192.168.255.255 (192.168/16 prefix)
		if(adr->ip[0] == 10)
			return qtrue;
		if(adr->ip[0] == 172 && (adr->ip[1]&0xf0) == 16)
			return qtrue;
		if(adr->ip[0] == 192 && adr->ip[1] == 168)
			return qtrue;

		if(adr->ip[0] == 127)
			return qtrue;
	}
	else if(adr->type == NA_IP6 || adr->type == NA_TCP6)
	{
		if(adr->ip6[0] == 0xfe && (adr->ip6[1] & 0xc0) == 0x80)
			return qtrue;
		if((adr->ip6[0] & 0xfe) == 0xfc)
			return qtrue;
	}

	// Now compare against the networks this computer is member of.
	for(index = 0; index < numIP; index++)
	{
		if(localIP[index].type == adr->type)
		{
			if(adr->type == NA_IP || adr->type == NA_TCP)
			{
				compareip = (byte *) &((struct sockaddr_in *) &localIP[index].addr)->sin_addr.s_addr;
				comparemask = (byte *) &((struct sockaddr_in *) &localIP[index].netmask)->sin_addr.s_addr;
				compareadr = adr->ip;

				addrsize = sizeof(adr->ip);
			}
			else
			{
				// TODO? should we check the scope_id here?

				compareip = (byte *) &((struct sockaddr_in6 *) &localIP[index].addr)->sin6_addr;
				comparemask = (byte *) &((struct sockaddr_in6 *) &localIP[index].netmask)->sin6_addr;
				compareadr = adr->ip6;

				addrsize = sizeof(adr->ip6);
			}

			differed = qfalse;
			for(run = 0; run < addrsize; run++)
			{
				if((compareip[run] & comparemask[run]) != (compareadr[run] & comparemask[run]))
				{
					differed = qtrue;
					break;
				}
			}

			if(!differed)
				return qtrue;

		}
	}

	return qfalse;
}

/*
==================
Sys_ShowIP
==================
*/
void Sys_ShowIP(void) {
	int i;
	char addrbuf[NET_ADDRSTRMAXLEN];

	for(i = 0; i < numIP; i++)
	{
		Sys_SockaddrToString(addrbuf, sizeof(addrbuf), (struct sockaddr *) &localIP[i].addr);

		if(localIP[i].type == NA_IP)
			Com_Printf(CON_CHANNEL_NETWORK, "IP: %s\n", addrbuf);
		else if(localIP[i].type == NA_IP6)
			Com_Printf(CON_CHANNEL_NETWORK, "IP6: %s\n", addrbuf);
	}
}


//=============================================================================


/*
====================
NET_IP4Socket
====================
*/
int NET_IP4Socket( char *net_interface, int port, int *err, qboolean tcp) {
	SOCKET				newsocket;
	struct sockaddr_in		address;
	ioctlarg_t			_true = 1;
	int				i = 1;
	int				tos = IPEFF_EF;
	int				reuse;
	char				errstr[256];
//	struct	linger			so_linger;

	*err = 0;

	if( net_interface ) {
		if(tcp)
			Com_Printf(CON_CHANNEL_NETWORK, "Opening IP socket: %s:%i TCP\n", net_interface, port );
		else
			Com_Printf(CON_CHANNEL_NETWORK, "Opening IP socket: %s:%i UDP\n", net_interface, port );
	} else {
		if(tcp)
			Com_Printf(CON_CHANNEL_NETWORK, "Opening IP socket: 0.0.0.0:%i TCP\n", port );
		else
			Com_Printf(CON_CHANNEL_NETWORK, "Opening IP socket: 0.0.0.0:%i UDP\n", port );
	}
	if(tcp)
		newsocket = socket( PF_INET, SOCK_STREAM, IPPROTO_TCP );
	else
		newsocket = socket( PF_INET, SOCK_DGRAM, IPPROTO_UDP );

	if( newsocket == INVALID_SOCKET ) {
		*err = socketError;
		Com_Printf(CON_CHANNEL_NETWORK, "WARNING: NET_IP4Socket: socket: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		return newsocket;
	}
#ifndef _WIN32
	if( newsocket < 0 || newsocket >= MAX_SOCKETLIMIT ) {
		Com_Printf(CON_CHANNEL_NETWORK, "WARNING: NET_IP4Socket: socket is out of range 0 to 1023. Are there too many open connections or files?\n");
		closesocket(newsocket);
		return INVALID_SOCKET;
	}
#endif
	// make it non-blocking
	if( ioctlsocket( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
		Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP4Socket: ioctl FIONBIO: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		*err = socketError;
		closesocket(newsocket);
		return INVALID_SOCKET;
	}

	if(!tcp){
	// make it broadcast capable
		if( setsockopt( newsocket, SOL_SOCKET, SO_BROADCAST, (char *) &i, sizeof(i) ) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP4Socket: setsockopt SO_BROADCAST: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}
		if( setsockopt( newsocket, IPPROTO_IP, IP_TOS, (char *) &tos, sizeof(tos) ) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP4Socket: setsockopt IP_TOS: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}
	}else{
/*
	// Short WAIT_STATE time
		so_linger.l_onoff = 1;
		so_linger.l_linger = 2; //Two seconds timeout

		if( setsockopt( newsocket, SOL_SOCKET, SO_LINGER, (char *) &so_linger, sizeof(so_linger) ) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP4Socket: setsockopt SO_LINGER: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}
*/
		reuse = 1;

		if( setsockopt( newsocket, SOL_SOCKET, SO_REUSEADDR, (char *) &reuse, sizeof(reuse) ) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP4Socket: setsockopt SO_REUSEADDR: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}

	}

	if( !net_interface || !net_interface[0]) {
		address.sin_family = AF_INET;
		address.sin_addr.s_addr = INADDR_ANY;
	}else{

		if(!Sys_StringToSockaddr( net_interface, (struct sockaddr *)&address, sizeof(address), AF_INET))
		{
			closesocket(newsocket);
			return INVALID_SOCKET;
		}

	}

	if( port == PORT_ANY ) {
		address.sin_port = 0;
	}
	else {
		address.sin_port = htons( (short)port );
	}

	if( bind( newsocket, (void *)&address, sizeof(address) ) == SOCKET_ERROR ) {
		Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP4Socket: bind: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		*err = socketError;
		closesocket( newsocket );
		return INVALID_SOCKET;
	}

	if(tcp){
		// Listen
		if( listen( newsocket, 96) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP4Socket: listen: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
			*err = socketError;
			closesocket( newsocket );
			return INVALID_SOCKET;
		}
	}
#ifdef SOCKET_DEBUG
	if(!tcp)
	{
		char dummybuf[32];
		int ret;
		int err2;

		ret = recv(newsocket, dummybuf, sizeof(dummybuf), 0);

		err2 = socketError;


		if(ret == SOCKET_ERROR && err2 != EAGAIN)
		{
			Com_PrintError(CON_CHANNEL_NETWORK, "NET_IP4Socket reading from open socket %d failed with: %s\n", newsocket, NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}else {
			Com_Printf(CON_CHANNEL_NETWORK, "NET_IP4Socket opening of socket %d was successful\n", newsocket );

		}
	}
#endif

	return newsocket;
}

/*
====================
NET_IP6Socket
====================
*/
int NET_IP6Socket( char *net_interface, int port, struct sockaddr_in6 *bindto, int *err, qboolean tcp) {
	SOCKET				newsocket;
	struct sockaddr_in6		address;
	ioctlarg_t			_true = 1;
//	struct	linger			so_linger;
	int				reuse;
	char				errstr[256];
	*err = 0;

	if( net_interface )
	{
		// Print the name in brackets if there is a colon:
		if(Q_CountChar(net_interface, ':')){
			if(tcp)
				Com_Printf(CON_CHANNEL_NETWORK, "Opening IP6 socket: [%s]:%i TCP\n", net_interface, port );
			else
				Com_Printf(CON_CHANNEL_NETWORK, "Opening IP6 socket: [%s]:%i UDP\n", net_interface, port );
		}else{
			if(tcp)
				Com_Printf(CON_CHANNEL_NETWORK, "Opening IP6 socket: %s:%i TCP\n", net_interface, port );
			else
				Com_Printf(CON_CHANNEL_NETWORK, "Opening IP6 socket: %s:%i UDP\n", net_interface, port );
		}
	}else{
		if(tcp)
			Com_Printf(CON_CHANNEL_NETWORK, "Opening IP6 socket: [::]:%i TCP\n", port );
		else
			Com_Printf(CON_CHANNEL_NETWORK, "Opening IP6 socket: [::]:%i UDP\n", port );
	}

	if(tcp)
		newsocket = socket( PF_INET6, SOCK_STREAM, IPPROTO_TCP );
	else
		newsocket = socket( PF_INET6, SOCK_DGRAM, IPPROTO_UDP );


	if( newsocket == INVALID_SOCKET ) {
		*err = socketError;
		Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP6Socket: socket: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		return newsocket;
	}
#ifndef _WIN32
	if( newsocket < 0 || newsocket >= MAX_SOCKETLIMIT ) {
		Com_Printf(CON_CHANNEL_NETWORK, "WARNING: NET_IP6Socket: socket is out of range 0 to 1023. Are there too many open connections or files?\n");
		closesocket(newsocket);
		return INVALID_SOCKET;
	}
#endif
	// make it non-blocking
	if( ioctlsocket( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
		Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP6Socket: ioctl FIONBIO: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		*err = socketError;
		closesocket(newsocket);
		return INVALID_SOCKET;
	}

	if(tcp)
	{
/*
	// Short WAIT_STATE time

		so_linger.l_onoff = 1;
		so_linger.l_linger = 2; //Two seconds timeout

		if( setsockopt( newsocket, SOL_SOCKET, SO_LINGER, (char *) &so_linger, sizeof(so_linger) ) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP6Socket: setsockopt SO_LINGER: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}
*/

		reuse = 1;

		if( setsockopt( newsocket, SOL_SOCKET, SO_REUSEADDR, (char *) &reuse, sizeof(reuse) ) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP6Socket: setsockopt SO_REUSEADDR: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}


	}

#ifdef IPV6_V6ONLY
	{
		int i = 1;

		// ipv4 addresses should not be allowed to connect via this socket.
		if(setsockopt(newsocket, IPPROTO_IPV6, IPV6_V6ONLY, (char *) &i, sizeof(i)) == SOCKET_ERROR)
		{
			// win32 systems don't seem to support this anyways.
			Com_DPrintf(CON_CHANNEL_NETWORK,"WARNING: NET_IP6Socket: setsockopt IPV6_V6ONLY: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)));
		}
	}
#endif

	if( !net_interface || !net_interface[0]) {
		address.sin6_family = AF_INET6;
		address.sin6_addr = in6addr_any;
	}
	else
	{
		if(!Sys_StringToSockaddr( net_interface, (struct sockaddr *)&address, sizeof(address), AF_INET6))
		{
			closesocket(newsocket);
			return INVALID_SOCKET;
		}
	}

	if( port == PORT_ANY ) {
		address.sin6_port = 0;
	}
	else {
		address.sin6_port = htons( (short)port );
	}

	if( bind( newsocket, (void *)&address, sizeof(address) ) == SOCKET_ERROR ) {
		Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP6Socket: bind: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		*err = socketError;
		closesocket( newsocket );
		return INVALID_SOCKET;
	}

	if(bindto)
		*bindto = address;

	if(tcp){
		// Listen
		if( listen( newsocket, 96) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IP6Socket: listen: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
			*err = socketError;
			closesocket( newsocket );
			return INVALID_SOCKET;
		}
	}
#ifdef SOCKET_DEBUG
	if(!tcp)
	{
		char dummybuf[32];
		int ret;
		int err2;

		ret = recv(newsocket, dummybuf, sizeof(dummybuf), 0);

		err2 = socketError;


		if(ret == SOCKET_ERROR && err2 != EAGAIN)
		{
			Com_PrintError(CON_CHANNEL_NETWORK, "NET_IP6Socket reading from open socket %d failed with: %s\n", newsocket, NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}else {
			Com_Printf(CON_CHANNEL_NETWORK, "NET_IP6Socket opening of socket %d was successful\n", newsocket );
		}
	}
#endif
	return newsocket;
}






/*
====================
NET_IPSocket
This opens now a dual stack socket which can do IPv4 except on Windows XP/Windows Server 2003
====================
*/
int NET_IPSocket( char *net_interface, int port, int *err, qboolean tcp) {
	SOCKET				newsocket;
	struct sockaddr_in6		address;
	ioctlarg_t			_true = 1;
//	struct	linger			so_linger;
	int				reuse;
	char				errstr[256];
	int			socktype;
	*err = 0;

	if(tcp)
	{
		socktype = SOCK_STREAM;
	}else{
		socktype = SOCK_DGRAM;
	}

	memset(&address, 0, sizeof(address));

	if( !net_interface || !net_interface[0]) {
		address.sin6_family = AF_INET6;
		address.sin6_addr = in6addr_any;
	}
	else
	{
		if(!Sys_StringToSockaddr( net_interface, (struct sockaddr *)&address, sizeof(address), AF_INET6))
		{
			return INVALID_SOCKET;
		}
	}
	if( port == PORT_ANY ) {
		address.sin6_port = 0;
	} else {
		address.sin6_port = htons( (short)port );
	}

	netadr_t netadr;
	char nstring[128];
	SockadrToNetadr( (struct sockaddr *) &address, &netadr, tcp, 0);

	if(socktype == SOCK_STREAM)
		Com_Printf(CON_CHANNEL_NETWORK, "Opening IP socket: %s TCP\n", NET_AdrToStringMT(&netadr, nstring, sizeof(nstring)) );
	else
		Com_Printf(CON_CHANNEL_NETWORK, "Opening IP socket: %s UDP\n", NET_AdrToStringMT(&netadr, nstring, sizeof(nstring)) );

	newsocket = socket( PF_INET6, socktype, 0 );

	if( newsocket == INVALID_SOCKET ) {
		*err = socketError;
		Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IPSocket: socket: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		return newsocket;
	}
#ifndef _WIN32
	if( newsocket < 0 || newsocket >= MAX_SOCKETLIMIT ) {
		Com_Printf(CON_CHANNEL_NETWORK, "WARNING: NET_IPSocket: socket is out of range 0 to 1023. Are there too many open connections or files?\n");
		closesocket(newsocket);
		return INVALID_SOCKET;
	}
#endif
	// make it non-blocking
	if( ioctlsocket( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
		Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IPSocket: ioctl FIONBIO: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		*err = socketError;
		closesocket(newsocket);
		return INVALID_SOCKET;
	}

	if(socktype == SOCK_STREAM)
	{
		reuse = 1;

		if( setsockopt( newsocket, SOL_SOCKET, SO_REUSEADDR, (char *) &reuse, sizeof(reuse) ) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IPSocket: setsockopt SO_REUSEADDR: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}
	}

	int i = 0;

	// ipv4 addresses should be allowed to connect via this socket.
	if(setsockopt(newsocket, IPPROTO_IPV6, IPV6_V6ONLY, (char *) &i, sizeof(i)) == SOCKET_ERROR)
	{
		// win32 systems don't seem to support this anyways.
		Com_PrintWarning(CON_CHANNEL_NETWORK,"NET_IPSocket: setsockopt IPV6_V6ONLY: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)));
	}


	if( bind( newsocket, (void *)&address, sizeof(address) ) == SOCKET_ERROR ) {
		Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IPSocket: bind: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		*err = socketError;
		closesocket( newsocket );
		return INVALID_SOCKET;
	}

	if(socktype == SOCK_STREAM)
	{
		// Listen
		if( listen( newsocket, 96) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_IPSocket: listen: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
			*err = socketError;
			closesocket( newsocket );
			return INVALID_SOCKET;
		}
	}
	return newsocket;
}


/*
====================
NET_SetMulticast
Set the current multicast group
====================
*/
/*
void NET_SetMulticast6(void)
{
	struct sockaddr_in6 addr;

	if(!*net_mcast6addr->string || !Sys_StringToSockaddr(net_mcast6addr->string, (struct sockaddr *) &addr, sizeof(addr), AF_INET6))
	{
		Com_Printf(CON_CHANNEL_NETWORK,"WARNING: NET_JoinMulticast6: Incorrect multicast address given, "
			   "please set cvar %s to a sane value.\n", net_mcast6addr->name);

		Cvar_SetInt(net_enabled, net_enabled->integer | NET_DISABLEMCAST);

		return;
	}

	memcpy(&curgroup.ipv6mr_multiaddr, &addr.sin6_addr, sizeof(curgroup.ipv6mr_multiaddr));

#ifdef _WIN32
	if(net_mcast6iface->integer)
#else
	if(*net_mcast6iface->string)
#endif
	{

#ifdef _WIN32
		curgroup.ipv6mr_interface = net_mcast6iface->integer;
#else
		curgroup.ipv6mr_interface = if_nametoindex(net_mcast6iface->string);
#endif
	}
	else
		curgroup.ipv6mr_interface = 0;
}
*/
/*
====================
NET_JoinMulticast
Join an ipv6 multicast group
====================
*/
/*
void NET_JoinMulticast6(void)
{
	int err;

	if(ip6_socket == INVALID_SOCKET || multicast6_socket != INVALID_SOCKET || (net_enabled->integer & NET_DISABLEMCAST))
		return;

	if(IN6_IS_ADDR_MULTICAST(&boundto.sin6_addr) || IN6_IS_ADDR_UNSPECIFIED(&boundto.sin6_addr))
	{
		// The way the socket was bound does not prohibit receiving multi-cast packets. So we don't need to open a new one.
		multicast6_socket = ip6_socket;
	}
	else
	{
		if((multicast6_socket = NET_IP6Socket(net_mcast6addr->string, ntohs(boundto.sin6_port), NULL, &err, qfalse)) == INVALID_SOCKET)
		{
			// If the OS does not support binding to multicast addresses, like WinXP, at least try with the normal file descriptor.
			multicast6_socket = ip6_socket;
		}
	}

	if(curgroup.ipv6mr_interface)
	{
		if (setsockopt(multicast6_socket, IPPROTO_IPV6, IPV6_MULTICAST_IF,
					(char *) &curgroup.ipv6mr_interface, sizeof(curgroup.ipv6mr_interface)) < 0)
		{
			Com_Printf(CON_CHANNEL_NETWORK,"NET_JoinMulticast6: Couldn't set scope on multicast socket: %s\n", NET_ErrorString());

			if(multicast6_socket != ip6_socket)
			{
				closesocket(multicast6_socket);
				multicast6_socket = INVALID_SOCKET;
				return;
			}
		}
	}

	if (setsockopt(multicast6_socket, IPPROTO_IPV6, IPV6_JOIN_GROUP, (char *) &curgroup, sizeof(curgroup)))
	{
		Com_Printf(CON_CHANNEL_NETWORK,"NET_JoinMulticast6: Couldn't join multicast group: %s\n", NET_ErrorString());

		if(multicast6_socket != ip6_socket)
		{
			closesocket(multicast6_socket);
			multicast6_socket = INVALID_SOCKET;
			return;
		}
	}
}

void NET_LeaveMulticast6()
{
	if(multicast6_socket != INVALID_SOCKET)
	{
		if(multicast6_socket != ip6_socket)
			closesocket(multicast6_socket);
		else
			setsockopt(multicast6_socket, IPPROTO_IPV6, IPV6_LEAVE_GROUP, (char *) &curgroup, sizeof(curgroup));

		multicast6_socket = INVALID_SOCKET;
	}
}

*/

/*
====================
NET_OpenSocks
====================
*/
/*
void NET_OpenSocks( int port ) {
	struct sockaddr_in	address;
	struct hostent		*h;
	int					len;
	qboolean			rfc1929;
	unsigned char		buf[64];

	usingSocks = qfalse;

	Com_Printf(CON_CHANNEL_NETWORK, "Opening connection to SOCKS server.\n" );

	if ( ( socks_socket = socket( AF_INET, SOCK_STREAM, IPPROTO_TCP ) ) == INVALID_SOCKET ) {
		Com_Printf(CON_CHANNEL_NETWORK, "WARNING: NET_OpenSocks: socket: %s\n", NET_ErrorString() );
		return;
	}

	h = gethostbyname( net_socksServer->string );
	if ( h == NULL ) {
		Com_Printf(CON_CHANNEL_NETWORK, "WARNING: NET_OpenSocks: gethostbyname: %s\n", NET_ErrorString() );
		return;
	}
	if ( h->h_addrtype != AF_INET ) {
		Com_Printf(CON_CHANNEL_NETWORK, "WARNING: NET_OpenSocks: gethostbyname: address type was not AF_INET\n" );
		return;
	}
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = *(int *)h->h_addr_list[0];
	address.sin_port = htons( (short)net_socksPort->integer );

	if ( connect( socks_socket, (struct sockaddr *)&address, sizeof( address ) ) == SOCKET_ERROR ) {
		Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: connect: %s\n", NET_ErrorString() );
		return;
	}

	// send socks authentication handshake
	if ( *net_socksUsername->string || *net_socksPassword->string ) {
		rfc1929 = qtrue;
	}
	else {
		rfc1929 = qfalse;
	}

	buf[0] = 5;		// SOCKS version
	// method count
	if ( rfc1929 ) {
		buf[1] = 2;
		len = 4;
	}
	else {
		buf[1] = 1;
		len = 3;
	}
	buf[2] = 0;		// method #1 - method id #00: no authentication
	if ( rfc1929 ) {
		buf[2] = 2;		// method #2 - method id #02: username/password
	}
	if ( send( socks_socket, (void *)buf, len, 0 ) == SOCKET_ERROR ) {
		Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: send: %s\n", NET_ErrorString() );
		return;
	}

	// get the response
	len = recv( socks_socket, (void *)buf, 64, 0 );
	if ( len == SOCKET_ERROR ) {
		Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: recv: %s\n", NET_ErrorString() );
		return;
	}
	if ( len != 2 || buf[0] != 5 ) {
		Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: bad response\n" );
		return;
	}
	switch( buf[1] ) {
	case 0:	// no authentication
		break;
	case 2: // username/password authentication
		break;
	default:
		Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: request denied\n" );
		return;
	}

	// do username/password authentication if needed
	if ( buf[1] == 2 ) {
		int		ulen;
		int		plen;

		// build the request
		ulen = strlen( net_socksUsername->string );
		plen = strlen( net_socksPassword->string );

		buf[0] = 1;		// username/password authentication version
		buf[1] = ulen;
		if ( ulen ) {
			memcpy( &buf[2], net_socksUsername->string, ulen );
		}
		buf[2 + ulen] = plen;
		if ( plen ) {
			memcpy( &buf[3 + ulen], net_socksPassword->string, plen );
		}

		// send it
		if ( send( socks_socket, (void *)buf, 3 + ulen + plen, 0 ) == SOCKET_ERROR ) {
			Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: send: %s\n", NET_ErrorString() );
			return;
		}

		// get the response
		len = recv( socks_socket, (void *)buf, 64, 0 );
		if ( len == SOCKET_ERROR ) {
			Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: recv: %s\n", NET_ErrorString() );
			return;
		}
		if ( len != 2 || buf[0] != 1 ) {
			Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: bad response\n" );
			return;
		}
		if ( buf[1] != 0 ) {
			Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: authentication failed\n" );
			return;
		}
	}

	// send the UDP associate request
	buf[0] = 5;		// SOCKS version
	buf[1] = 3;		// command: UDP associate
	buf[2] = 0;		// reserved
	buf[3] = 1;		// address type: IPV4
	*(int *)&buf[4] = INADDR_ANY;
	*(short *)&buf[8] = htons( (short)port );		// port
	if ( send( socks_socket, (void *)buf, 10, 0 ) == SOCKET_ERROR ) {
		Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: send: %s\n", NET_ErrorString() );
		return;
	}

	// get the response
	len = recv( socks_socket, (void *)buf, 64, 0 );
	if( len == SOCKET_ERROR ) {
		Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: recv: %s\n", NET_ErrorString() );
		return;
	}
	if( len < 2 || buf[0] != 5 ) {
		Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: bad response\n" );
		return;
	}
	// check completion code
	if( buf[1] != 0 ) {
		Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: request denied: %i\n", buf[1] );
		return;
	}
	if( buf[3] != 1 ) {
		Com_Printf(CON_CHANNEL_NETWORK, "NET_OpenSocks: relay address is not IPV4: %i\n", buf[3] );
		return;
	}
	((struct sockaddr_in *)&socksRelayAddr)->sin_family = AF_INET;
	((struct sockaddr_in *)&socksRelayAddr)->sin_addr.s_addr = *(int *)&buf[4];
	((struct sockaddr_in *)&socksRelayAddr)->sin_port = *(short *)&buf[8];
	memset( ((struct sockaddr_in *)&socksRelayAddr)->sin_zero, 0, 8 );

	usingSocks = qtrue;
}
*/

/*
=====================
NET_AddLocalAddress
=====================
*/
static void NET_AddLocalAddress(char *ifname, struct sockaddr *addr, struct sockaddr *netmask)
{
	int addrlen;
	sa_family_t family;

	// only add addresses that have all required info.
	if(!addr || !netmask || !ifname)
		return;

	family = addr->sa_family;

	if(numIP < MAX_IPS)
	{
		if(family == AF_INET)
		{
			addrlen = sizeof(struct sockaddr_in);
			localIP[numIP].type = NA_IP;
		}
		else if(family == AF_INET6)
		{
			addrlen = sizeof(struct sockaddr_in6);
			localIP[numIP].type = NA_IP6;
		}
		else
			return;

		Q_strncpyz(localIP[numIP].ifname, ifname, sizeof(localIP[numIP].ifname));

#ifdef _WIN32

#else
		localIP[numIP].ifindex = if_nametoindex(ifname);
#endif

		localIP[numIP].family = family;

		memcpy(&localIP[numIP].addr, addr, addrlen);
		memcpy(&localIP[numIP].netmask, netmask, addrlen);

		numIP++;
	}
}

//Autodetection of internet version 6 addresses which do not change. Required as players should learn only permanent server addresses and not storing temporarly addresses in favorites
qboolean IsStaticIP6Addr(nip_localaddr_t* localaddr)
{
	int z;
	struct sockaddr_in6* t6;
				
	if(localaddr->type != NA_IP6)
	{
		return qfalse;
	}
	t6 = (struct sockaddr_in6*)&localaddr->addr;
	byte* baddr6 = (byte*)t6->sin6_addr.s6_addr;
	//Ignore site local, link local or multicast
	if(baddr6[0] >= 0xfc)
	{
		return qfalse;
	}
	for(z = 0; z < 8; ++z)
	{
		if(baddr6[z] != 0)
		{
			break;
		}
	}
	if(z == 8)
	{
		//Address is ::/64  (localhost or mapped IPv4 address)
		return qfalse;
	}
	//:0000: in last 64bits ?
	for(z = 8; z < 15; ++z)
	{
		if(baddr6[z] == 0 && baddr6[z+1] == 0)
		{
			return qtrue;
		}
	}
	//0000:0000:0000:0000:0000:00ff:fe00:0000 ?
	if(baddr6[11] == 0xff && baddr6[12] == 0xfe)
	{
		return qtrue;
	}
	//Last: On Windows there exist non EUI-64 permanent IPv6 addresses but link local address interface identifier and public ip interface identifier match
	for(z = 0; z < MAX_IPS; ++z)
	{
		if(localIP[z].type != NA_IP6)
		{
			continue;
		}
		struct sockaddr_in6* probe6 = (struct sockaddr_in6*)&localIP[z].addr;
		byte* probebaddr6 = (byte*)probe6->sin6_addr.s6_addr;

		if(probebaddr6[0] == 0xfe && probebaddr6[1] == 0x80 && 
		   probebaddr6[2] == 0x00 && probebaddr6[3] == 0x00 &&
		   probebaddr6[4] == 0x00 && probebaddr6[5] == 0x00 &&
		   probebaddr6[6] == 0x00 && probebaddr6[7] == 0x00)
		{
			//Link local address
			if(memcmp(probebaddr6 + 8, baddr6 + 8, 8) == 0)
			{
				//Found a link local address where the interface identifier does match to this IP 
				return qtrue;
			}
		}		
	}
	return qfalse;
}

//Sets the static flag for all ip6 addresses which match our rules. Returns true if any address was found
qboolean NET_FlagStaticIP6Addresses()
{
	int i;
	qboolean hasstaticip6 = 0;

	for(i = 0; i < MAX_IPS; ++i)
	{
		if(IsStaticIP6Addr(&localIP[i]))
		{
			localIP[i].isstaticip6 = qtrue;
			hasstaticip6 = qtrue;
		}
	}
	return hasstaticip6;
}


#if defined(__linux__) || defined(MACOSX) || defined(__BSD__)
static void NET_GetLocalAddress(void)
{
	struct ifaddrs *ifap, *search;
	qboolean has_ip6 = 0;
	numIP = 0;
	int i;

	if(getifaddrs(&ifap))
		Com_PrintError(CON_CHANNEL_NETWORK,"NET_GetLocalAddress: Unable to get list of network interfaces: %s\n", NET_ErrorString());
	else
	{
		for(search = ifap; search; search = search->ifa_next)
		{
			// Only add interfaces that are up.
			if(ifap->ifa_flags & IFF_UP)
				NET_AddLocalAddress(search->ifa_name, search->ifa_addr, search->ifa_netmask);

			if(search->ifa_addr && search->ifa_addr->sa_family == AF_INET6){
				has_ip6 = qtrue;
			}
		}

		freeifaddrs(ifap);

		if(has_ip6)
		{
			if(NET_FlagStaticIP6Addresses())
			{
				//Clear out all temp IPv6 addresses
				for(i = 0; i < MAX_IPS; ++i)
				{
					if(localIP[i].type == NA_IP6)
					{
						if(localIP[i].isstaticip6 == qfalse)
						{
							memset(&localIP[i], 0, sizeof(localIP[0]));
						}
					}
				}
			}
		}
		Sys_ShowIP();
	}
}
#else
static void NET_GetLocalAddress( void ) {
	char hostname[256];
	char addrStr[128];
	struct addrinfo	hint;
	struct sockaddr_storage localhostadr;
	struct addrinfo	*res = NULL;

	qboolean has_ip4 = qfalse;
	qboolean has_ip6 = qfalse;
	qboolean has_loopback4 = qfalse;
	qboolean has_loopback6 = qfalse;

	numIP = 0;

	if(gethostname( hostname, 256 ) == SOCKET_ERROR)
		return;

	Com_Printf(CON_CHANNEL_NETWORK, "Hostname: %s\n", hostname );

	memset(&hint, 0, sizeof(hint));

	hint.ai_family = AF_UNSPEC;
	hint.ai_socktype = SOCK_DGRAM;

	if(!getaddrinfo(hostname, NULL, &hint, &res))
	{
		struct sockaddr_in mask4;
		struct sockaddr_in6 mask6;
		struct addrinfo *search;

		/* On operating systems where it's more difficult to find out the configured interfaces, we'll just assume a
		 * netmask with all bits set. */

		memset(&mask4, 0, sizeof(mask4));
		memset(&mask6, 0, sizeof(mask6));
		mask4.sin_family = AF_INET;
		memset(&mask4.sin_addr.s_addr, 0xFF, sizeof(mask4.sin_addr.s_addr));
		mask6.sin6_family = AF_INET6;
		memset(&mask6.sin6_addr, 0xFF, sizeof(mask6.sin6_addr));

		// add all IPs from returned list.
		for(search = res; search; search = search->ai_next)
		{
			if(search->ai_family == AF_INET)
			{
				Sys_SockaddrToString(addrStr, sizeof(addrStr), search->ai_addr);
				NET_AddLocalAddress("", search->ai_addr, (struct sockaddr *) &mask4);
				has_ip4 = qtrue;
				if(strcmp(addrStr, "127.0.0.1") == 0)
				{
					has_loopback4 = qtrue;
				}
			}else if(search->ai_family == AF_INET6){
				NET_AddLocalAddress("", search->ai_addr, (struct sockaddr *) &mask6);
				has_ip6 = qtrue;
				Sys_SockaddrToString(addrStr, sizeof(addrStr), search->ai_addr);
				if(strcmp(addrStr, "::1") == 0)
				{
					has_loopback6 = qtrue;
				}
			}
		}
		/* Windows doesn't seem to add the loopback interface to its list of available interfaces. We have to assume they are there. */
		if( has_ip4 && !has_loopback4 && Sys_StringToSockaddr("localhost", (struct sockaddr *) &localhostadr, sizeof(localhostadr), AF_INET ))
		{
			NET_AddLocalAddress("localhost", (struct sockaddr *) &localhostadr, (struct sockaddr *) &mask4);
		}

		if( has_ip6 && !has_loopback6 && Sys_StringToSockaddr("localhost", (struct sockaddr *) &localhostadr, sizeof(localhostadr), AF_INET6 ))
		{
			NET_AddLocalAddress("localhost", (struct sockaddr *) &localhostadr, (struct sockaddr *) &mask6);
		}
		
		int i;

		if(has_ip6)
		{
			if(NET_FlagStaticIP6Addresses())
			{
				//Clear out all temp IPv6 addresses
				for(i = 0; i < MAX_IPS; ++i)
				{
					if(localIP[i].type == NA_IP6)
					{
						if(localIP[i].isstaticip6 == qfalse)
						{
							memset(&localIP[i], 0, sizeof(localIP[0]));
						}
					}
				}
			}
		}

		Sys_ShowIP();
	}

	if(res)
		freeaddrinfo(res);
}
#endif

/* Why so complicated? Well Announcing the server by using [::] results in the temporary address getting used
for announcements! Bad!
So either Serveradmin has specified the IPv6 address to bind to or we have to pick the first permanent address available */
int NET_GetStaticIPv6Address(netadr_t* adr, unsigned int startindex)
{
	unsigned int i;

	for(i = startindex; i < numIP; ++i)
	{
		if(localIP[i].isstaticip6)
		{
			SockadrToNetadr( (struct sockaddr *) &localIP[i].addr, adr, qtrue, 0);
			return i +1;
		}
	}
	return 0;
}

/*
====================
NET_OpenIP
====================
*/
void NET_OpenIP( void ) {
	int		i;
	int		err;
	int		port, limit;
	int		port6, limit6;
	char		addrbuf2[NET_ADDRSTRMAXLEN];
	qboolean	support6;
	qboolean	support4;

	support6 = qfalse;
	support4 = qfalse;

	port = net_port->integer;
	port6 = net_port6->integer;

	if(port == 0){
		port = PORT_SERVER;
		limit = 10;
	}else{
		limit = 1;
	}

	if(port6 == 0){
		//Inherit IPv4 port if no IPv6 port is set
		port6 = port;
		limit6 = limit;
	}else{
		limit6 = 1;
	}

	ip4_socket.sock = INVALID_SOCKET;
	ip6_socket.sock = INVALID_SOCKET;
	tcp_socket = INVALID_SOCKET;
	tcp6_socket = INVALID_SOCKET;
	NET_GetLocalAddress();

	// automatically scan for a valid port, so multiple
	// dedicated servers can be started without requiring
	// a different net_port for each one

	if(net_enabled->integer & NET_ENABLEV6)
	{
		support6 = qtrue;
		for(i = 0; i < limit6; ++i, ++port6)
		{
			Com_sprintf(addrbuf2, sizeof(addrbuf2), "[%s]:%d", net_ip6->string, port6);
			NET_StringToAdr(addrbuf2, &ip6_socket, NA_IP6);

			ip6_socket.sock = NET_IP6Socket(net_ip6->string, port6, &boundto, &err, qfalse);

			if(ip6_socket.sock == INVALID_SOCKET && err == EAFNOSUPPORT)
			{
				support6 = qfalse;
				break;
			}else{
				if(ip6_socket.sock == INVALID_SOCKET)
				{
					continue;
				}
				tcp6_socket = NET_IP6Socket( net_ip6->string, port6, &boundto, &err, qtrue);

				if(tcp6_socket != INVALID_SOCKET)
				{
					Cvar_SetInt(net_port6, port6);
					break;
				}
				closesocket(ip6_socket.sock);
				ip6_socket.sock = INVALID_SOCKET;
			}
		}
	}

	if(net_enabled->integer & NET_ENABLEV4)
	{
		support4 = qtrue;

		for(i = 0; i < limit; ++i, ++port)
		{

			Com_sprintf(addrbuf2, sizeof(addrbuf2), "%s:%d", net_ip->string, port );
			NET_StringToAdr(addrbuf2, &ip4_socket, NA_IP);

			ip4_socket.sock = NET_IP4Socket( net_ip->string, port, &err, qfalse);


			if(ip4_socket.sock == INVALID_SOCKET && err == EAFNOSUPPORT)
			{
				support4 = qfalse;
				break;
			}else{

				if(ip4_socket.sock == INVALID_SOCKET)
				{
					continue;
				}
				tcp_socket = NET_IP4Socket( net_ip->string, port, &err, qtrue);
				
				if(tcp_socket != INVALID_SOCKET)
				{
					Cvar_SetInt(net_port, port);
					break;
				}
				closesocket(ip4_socket.sock);
				ip4_socket.sock = INVALID_SOCKET;
			}
		}
	}

	if(tcp_socket == INVALID_SOCKET && support4)
	{
		Com_Error(ERR_FATAL,"Could not bind to a IPv4 network socket");
	}

	if(tcp6_socket == INVALID_SOCKET && support6)
	{
		Com_Error(ERR_FATAL,"Could not bind to a IPv6 network socket");
	}

	if(support6 == qfalse && support4 == qfalse)
	{
		Com_Error(ERR_FATAL,"No IPv4 or IPv6 support");
	}

}


//===================================================================


/*
====================
NET_GetCvars
====================
*/
static qboolean NET_GetCvars( void ) {
	int modified;

	net_enabled = Cvar_RegisterInt( "net_enabled", 3, 0, 8, CVAR_LATCH | CVAR_ARCHIVE, "Enables / Disables Network" );

	modified = net_enabled->modified;
	net_enabled->modified = qfalse;

	net_ip = Cvar_RegisterString( "net_ip", "0.0.0.0", CVAR_LATCH, "Default Network Address" );
	modified += net_ip->modified;
	net_ip->modified = qfalse;

	net_ip6 = Cvar_RegisterString( "net_ip6", "::", CVAR_LATCH , "Default IPv6 Network Address");
	modified += net_ip6->modified;
	net_ip6->modified = qfalse;

	net_port = Cvar_RegisterInt( "net_port", 0, 0, 65535, CVAR_LATCH, "Network Port Server will listen on");
	modified += net_port->modified;
	net_port->modified = qfalse;

	net_port6 = Cvar_RegisterInt( "net_port6", 0, 0, 65535, CVAR_LATCH, "IPv6 Network Port Server will listen on" );
	modified += net_port6->modified;
	net_port6->modified = qfalse;

	// Some cvars for configuring multicast options which facilitates scanning for servers on local subnets.
	net_mcast6addr = Cvar_RegisterString( "net_mcast6addr", NET_MULTICAST_IP6, CVAR_LATCH | CVAR_ARCHIVE,  "IPv6 Network multicast address");
	modified += net_mcast6addr->modified;
	net_mcast6addr->modified = qfalse;

#ifdef _WIN32
	net_mcast6iface = Cvar_RegisterInt( "net_mcast6iface", 0, 0, 65535, CVAR_LATCH | CVAR_ARCHIVE ,  "IPv6 Network multicast interface");
#else
	net_mcast6iface = Cvar_RegisterString( "net_mcast6iface", "", CVAR_LATCH | CVAR_ARCHIVE ,  "IPv6 Network multicast interface");
#endif
/*
	modified += net_mcast6iface->modified;
	net_mcast6iface->modified = qfalse;

	net_socksEnabled = Cvar_RegisterInt( "net_socksEnabled", 0, 0, 1, CVAR_LATCH | CVAR_ARCHIVE, "Net enable socks proxy support");
	modified += net_socksEnabled->modified;
	net_socksEnabled->modified = qfalse;

	net_socksServer = Cvar_RegisterString( "net_socksServer", "", CVAR_LATCH | CVAR_ARCHIVE, "Net socks proxyserver address");
	modified += net_socksServer->modified;
	net_socksServer->modified = qfalse;

	net_socksPort = Cvar_RegisterInt( "net_socksPort", 1080, 0, 65535, CVAR_LATCH | CVAR_ARCHIVE, "Net socks proxyserver port");
	modified += net_socksPort->modified;
	net_socksPort->modified = qfalse;

	net_socksUsername = Cvar_RegisterString( "net_socksUsername", "", CVAR_LATCH | CVAR_ARCHIVE , "Net socks proxyserver username");
	modified += net_socksUsername->modified;
	net_socksUsername->modified = qfalse;

	net_socksPassword = Cvar_RegisterString( "net_socksPassword", "", CVAR_LATCH | CVAR_ARCHIVE , "Net socks proxyserver password");
	modified += net_socksPassword->modified;
	net_socksPassword->modified = qfalse;
*/
	net_dropsim = Cvar_RegisterInt("net_dropsim", 0,0,100, CVAR_TEMP, "Net enable packetloss simulation");
	return modified ? qtrue : qfalse;
}


/*
====================
NET_Config
====================
*/
void NET_Config( qboolean enableNetworking ) {
	qboolean	modified;
	qboolean	stop;
	qboolean	start;
	int		i;

	// get any latched changes to cvars
	modified = NET_GetCvars();

	if( !net_enabled->integer ) {
		enableNetworking = 0;
	}

	// if enable state is the same and no cvars were modified, we have nothing to do
	if( enableNetworking == networkingEnabled && !modified ) {
		return;
	}

	if( enableNetworking == networkingEnabled ) {
		if( enableNetworking ) {
			stop = qtrue;
			start = qtrue;
		}
		else {
			stop = qfalse;
			start = qfalse;
		}
	}
	else {
		if( enableNetworking ) {
			stop = qfalse;
			start = qtrue;
		}
		else {
			stop = qtrue;
			start = qfalse;
		}
		networkingEnabled = enableNetworking;
	}

	if( stop ) {

		tcpConnections_t *con;


		for(i = 0, con = tcpServer.connections; i < MAX_TCPCONNECTIONS; i++, con++){

			if(con->lastMsgTime > 0 && con->remote.sock != INVALID_SOCKET)
			{
				Com_Printf(CON_CHANNEL_NETWORK,"Close TCP serversocket: %d\n", con->remote.sock);
				NET_TcpCloseSocket(con->remote.sock);
			}
		}

		if(ip4_socket.sock != INVALID_SOCKET)
		{
			Com_Printf(CON_CHANNEL_NETWORK,"Closing IPv4 UDP socket: %d\n", ip4_socket.sock);
			closesocket( ip4_socket.sock );
			ip4_socket.sock = INVALID_SOCKET;
		}
		if(ip6_socket.sock != INVALID_SOCKET)
		{
			Com_Printf(CON_CHANNEL_NETWORK,"Closing IPv6 UDP socket: %d\n", ip6_socket.sock);
			closesocket( ip6_socket.sock );
			ip6_socket.sock = INVALID_SOCKET;
		}

		if ( tcp_socket != INVALID_SOCKET ) {
			Com_Printf(CON_CHANNEL_NETWORK,"Closing IPv4 TCP socket: %d\n", tcp_socket);
			closesocket( tcp_socket );
			tcp_socket = INVALID_SOCKET;
		}

		if ( tcp6_socket != INVALID_SOCKET ) {
			Com_Printf(CON_CHANNEL_NETWORK,"Closing IPv6 TCP socket: %d\n", tcp6_socket);
			closesocket( tcp6_socket );
			tcp6_socket = INVALID_SOCKET;
		}
/*
		if(multicast6_socket)
		{
			if(multicast6_socket != ip6_socket)
				closesocket(multicast6_socket);

			multicast6_socket = INVALID_SOCKET;
		}
*/


		if ( socks_socket != INVALID_SOCKET ) {
			Com_Printf(CON_CHANNEL_NETWORK,"Close Socks socket: %d\n", socks_socket);
			closesocket( socks_socket );
			socks_socket = INVALID_SOCKET;
		}
#ifdef _WIN32
		WSACleanup( );
#endif
	}

	if( start )
	{

#ifdef _WIN32
		int		r;

		r = WSAStartup( MAKEWORD( 1, 1 ), &winsockdata );
		if( r ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "Winsock initialization failed, returned %d\n", r );
			return;
		}

		winsockInitialized = qtrue;
		Com_Printf(CON_CHANNEL_NETWORK, "Winsock Initialized\n" );
#endif


		if (net_enabled->integer)
		{
			NET_OpenIP();
			//NET_SetMulticast6();
		}
	}
}


/*========================================================================================================
Functions for TCP networking which can be used by client and server
*/


/*
===============
NET_TcpCloseSocket

This function should be able to close all types of open TCP sockets
===============
*/

void NET_TcpCloseSocket(int socket)
{
        int i;
	tcpConnections_t	*conn;

	if(socket == INVALID_SOCKET)
		return;

	//Close the socket
	closesocket(socket);

	//See if this was a serversocket and clear all references to it
	for(i = 0, conn = tcpServer.connections; i < MAX_TCPCONNECTIONS; i++, conn++)
	{
		if(conn->remote.sock == socket)
		{
			conn->lastMsgTime = 0;
			FD_CLR(conn->remote.sock, &tcpServer.fdr);
			if(conn->wantwrite)
			{
				FD_CLR(conn->remote.sock, &tcpServer.fdw);
			}
			conn->state = 0;

			tcpServer.activeConnectionCount--;
			NET_TCPConnectionClosed(&conn->remote, conn->connectionId, conn->serviceId);
			conn->remote.sock = INVALID_SOCKET;
			NET_TcpServerRebuildFDList();
			return;
		}
	}
}

/*
==================
NET_TcpSendData
Only for Stream sockets (TCP)
Return -1 if an fatal error happened on this socket otherwise 0
==================
*/

int NET_TcpSendData( int sock, const void *data, int length, char* errormsg, int maxerrorlen ) {

	int state, err;
	char errstr[256];
	if(sock < 1)
		return -1;

	state = send( sock, data, length, NET_NOSIGNAL); // FIX: flag NOSIGNAL prevents SIGPIPE in case of connection problems

	if(state == SOCKET_ERROR)
	{
			err = socketError;

			if(err == EAGAIN || err == EINTR)
			{
				return NET_WANT_WRITE;
			}
      if(errormsg)
      {
        Q_strncpyz(errormsg, NET_ErrorStringMT(errstr, sizeof(errstr)), maxerrorlen);
      }
      if(err == EPIPE || err == ECONNRESET){
        return NET_CONNRESET;
			}
			return -1;
	}
	return state;
}

/*========================================================================================================
Functions for TCP networking which can be used only by server
*/

/*
==================
NET_TcpServerGetPAcket
Only for Stream sockets (TCP)
Returns the number of received bytes
==================
*/


int NET_TcpServerGetPacket(tcpConnections_t *conn, void *netmsg, int maxsize, qboolean warn){

	int err;
	int ret;
	char errstr[256];
	char adrstr[256];

	ret = recv(conn->remote.sock, netmsg, maxsize , 0);

	if(ret == SOCKET_ERROR){

		err = socketError;

		if(err == EAGAIN)
		{
			return 0; //Nothing more to read left
		}

		if(ret == ECONNRESET){

			if(warn){
				Com_PrintNoRedirect(CON_CHANNEL_NETWORK,"Connection closed by: %s\n", NET_AdrToStringMT(&conn->remote, adrstr, sizeof(adrstr)));

				//Connection closed
			}
		}else
			Com_PrintWarningNoRedirect(CON_CHANNEL_NETWORK,"NET_GetTcpPacket recv() syscall failed: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr))); // BUGFIX: this causes SIGSEGV in case of an error during console stream

		NET_TcpCloseSocket(conn->remote.sock);
		return -1;

	}else if(ret == 0){

		if(conn->state >= TCP_AUTHSUCCESSFULL)
		{
			Com_PrintNoRedirect(CON_CHANNEL_NETWORK,"Connection closed by client: %s\n", NET_AdrToStringMT(&conn->remote, adrstr, sizeof(adrstr)));
		}
		NET_TcpCloseSocket(conn->remote.sock);
		return -1;

	}else{

		conn->lastMsgTime = NET_TimeGetTime() +1; //Don't timeout
		return ret;
	}
}


void NET_TcpServerRebuildFDList()
{
	int 				i;
	tcpConnections_t	*conn;

	FD_ZERO(&tcpServer.fdr);
	FD_ZERO(&tcpServer.fdw);
	tcpServer.highestfd = -1;

	for(i = 0, conn = tcpServer.connections; i < MAX_TCPCONNECTIONS; i++, conn++)
	{
		if(conn->remote.sock > 0)
		{
			FD_SET(conn->remote.sock, &tcpServer.fdr);
			if(conn->wantwrite)
			{
				FD_SET(conn->remote.sock, &tcpServer.fdw);
			}
			if((signed int)conn->remote.sock > (signed int)tcpServer.highestfd)
			{
				tcpServer.highestfd = conn->remote.sock;
			}
		}
	}
}

void NET_TcpServerInit()
{
	int 				i;
	tcpConnections_t	*conn;

	Com_Memset(&tcpServer, 0, sizeof(tcpServer));
	FD_ZERO(&tcpServer.fdr);
	FD_ZERO(&tcpServer.fdw);
	tcpServer.highestfd = -1;

	for(i = 0, conn = tcpServer.connections; i < MAX_TCPCONNECTIONS; i++, conn++)
	{
		conn->remote.sock = INVALID_SOCKET;
	}
}


/*
==================
NET_TcpServerPacketEventLoop
Only for Stream sockets (TCP)
Get new packets received on serversockets and call executing functions
==================
*/


void NET_TcpServerPacketEventLoop()
{

	struct timeval timeout;
	timeout.tv_sec = 0;
	timeout.tv_usec = 0;
	int activefd, i, ret;
	int cursize;
	fd_set fdr, fdw;
	tcpConnections_t	*conn;
	char errstr[256];
	char adrstr[256];

	byte bufData[MAX_MSGLEN];

	if(tcpServer.highestfd < 0)
	{
		// windows ain't happy when select is called without valid FDs
		return;
	}

	fdr = tcpServer.fdr;
	fdw = tcpServer.fdw;
	activefd = select(tcpServer.highestfd + 1, &fdr, &fdw, NULL, &timeout);


	if(activefd < 0)
	{
		Com_PrintWarningNoRedirect(CON_CHANNEL_NETWORK,"NET_TcpServerPacketEventLoop: select() syscall failed: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)));
		return;
	}

	if(activefd == 0)
	{
		return;
	}
	for(i = 0, conn = tcpServer.connections; i < MAX_TCPCONNECTIONS; i++, conn++)
	{
		if(conn->remote.sock < 1)
		{
			continue;
		}
		if(FD_ISSET(conn->remote.sock, &fdr) || FD_ISSET(conn->remote.sock, &fdw))
		{
			cursize = 0;

      ret = NET_TcpServerGetPacket(conn, bufData, sizeof(bufData), qtrue);
      if(ret > 0)
			{
				cursize = ret;
			}


			if(cursize > sizeof(bufData))
			{
				Com_PrintWarningNoRedirect(CON_CHANNEL_NETWORK, "NET_TcpServerPacketEventLoop: Oversize packet from %s. Must not happen!\n", NET_AdrToStringMT(&conn->remote, adrstr, sizeof(adrstr)));
				cursize = sizeof(bufData);
			}
			qboolean wantwrite = NET_TCPPacketEvent(&conn->remote, bufData, cursize, &conn->connectionId, &conn->serviceId);
			if(wantwrite)
			{
				if(!conn->wantwrite)
				{
					conn->wantwrite = qtrue;
					FD_SET(conn->remote.sock, &tcpServer.fdw);
				}
			}else{
				if(conn->wantwrite)
				{
					conn->wantwrite = qfalse;
					FD_CLR(conn->remote.sock, &tcpServer.fdw);
				}
			}
			break;

		}else if(conn->lastMsgTime + MAX_TCPAUTHWAITTIME < NET_TimeGetTime() +1){
			NET_TcpCloseSocket(conn->remote.sock);
		}
	}
}





/*
==================
NET_TcpServerOpenConnection
Only for Stream sockets (TCP)
A TCP connection request has been received #2
Find a new slot in the client array for state handling
==================
*/

void NET_TcpServerOpenConnection( netadr_t *from )
{

	tcpConnections_t	*conn;
	uint32_t			oldestTimeAccepted = 0xFFFFFFFF;
	uint32_t			oldestTime = 0xFFFFFFFF;
	int			oldestAccepted = 0;
	int			oldest = 0;
	int			i;
	char			adrstr[128];

	for(i = 0, conn = tcpServer.connections; i < MAX_TCPCONNECTIONS; i++, conn++)
	{
		if((NET_CompareBaseAdr(from, &conn->remote) && conn->state < TCP_AUTHSUCCESSFULL) || conn->remote.sock < 1){//Net request from same address - Close the old not confirmed connection
			break;
		}
		if(conn->state < TCP_AUTHSUCCESSFULL){
			if(conn->lastMsgTime < oldestTime){
				oldestTime = conn->lastMsgTime;
				oldest = i;
			}
		}else{
			if(conn->lastMsgTime < oldestTimeAccepted){
				oldestTimeAccepted = conn->lastMsgTime;
				oldestAccepted = i;
			}
		}
	}

	if(i == MAX_TCPCONNECTIONS)
	{
		if(tcpServer.activeConnectionCount > MAX_TCPCONNECTIONS / 3 && oldestTimeAccepted + MAX_TCPCONNECTEDTIMEOUT < NET_TimeGetTime() +1){
				conn = &tcpServer.connections[oldestAccepted];
				tcpServer.activeConnectionCount--; //As this connection is going to be closed decrease the counter
				NET_TCPConnectionClosed(&conn->remote, conn->connectionId, conn->serviceId);

		}else if(oldestTime + MIN_TCPAUTHWAITTIME < NET_TimeGetTime() +1){
				conn = &tcpServer.connections[oldest];

		}else{
			closesocket(from->sock); //We have already too many open connections. Not possible to open more. Possible attack

			if(tcpServer.lastAttackWarnTime + MIN_TCPAUTHWAITTIME < NET_TimeGetTime() +1)
			{
				tcpServer.lastAttackWarnTime = NET_TimeGetTime() +1;
				Com_PrintWarning(CON_CHANNEL_NETWORK,"Possible Denial of Service Attack, Dropping connectrequest from: %s\n", NET_AdrToStringMT(from, adrstr, sizeof(adrstr)));
			}
			return;
		}
	}

	if(conn->lastMsgTime > 0)
	{
		NET_TcpCloseSocket(conn->remote.sock);
	}
	conn->remote = *from;
	conn->lastMsgTime = NET_TimeGetTime() +1;
	conn->state = TCP_AUTHWAIT;
	conn->serviceId = -1;
	conn->connectionId = -1;
	conn->wantwrite = qfalse;

	FD_SET(conn->remote.sock, &tcpServer.fdr);

	if(tcpServer.highestfd < conn->remote.sock)
		tcpServer.highestfd = conn->remote.sock;

	Com_DPrintf(CON_CHANNEL_NETWORK,"Opening a new TCP server connection. Sock: %d Index: %d From:%s\n", conn->remote.sock, i, NET_AdrToStringMT(&conn->remote, adrstr, sizeof(adrstr)));

}


/*
==================
Only for Stream sockets (TCP)
A TCP connection request has been received #1
Try to accept this request
==================
*/


__optimize3 __regparm3 qboolean NET_TcpServerConnectRequest(netadr_t* net_from, fd_set *fdr){

	struct sockaddr_storage from;
	socklen_t	fromlen;
	int		conerr;
	net_from->sock = INVALID_SOCKET;
	int socket;
	ioctlarg_t	_true = 1;
	char		errstr[256];

	if(tcp_socket != INVALID_SOCKET && FD_ISSET(tcp_socket, fdr))
	{
		fromlen = sizeof(from);

		socket = accept(tcp_socket, (struct sockaddr *) &from, &fromlen);
		if (socket == SOCKET_ERROR)
		{
			conerr = socketError;

			if( conerr != EAGAIN && conerr != ECONNRESET )
				Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_TcpServerConnectRequest: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );

			return qfalse;
		}
#ifndef _WIN32
		if( socket < 0 || socket >= MAX_SOCKETLIMIT ) {
			Com_Printf(CON_CHANNEL_NETWORK, "WARNING: NET_TcpServerConnectRequest: socket is out of range 0 to 1023. Are there too many open connections or files?\n");
			closesocket(socket);
			return qfalse;
		}
#endif
		
		if( ioctlsocket( socket, FIONBIO, &_true ) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_TcpServerConnectRequest: ioctl FIONBIO: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
			conerr = socketError;
			closesocket( socket );
			return qfalse;
		}
		SockadrToNetadr( (struct sockaddr *) &from, net_from, qtrue, socket);
		return qtrue;
		
	}

	if(tcp6_socket != INVALID_SOCKET && FD_ISSET(tcp6_socket, fdr))
	{
		fromlen = sizeof(from);
		socket = accept(tcp6_socket, (struct sockaddr *) &from, &fromlen);

		if (socket == SOCKET_ERROR)
		{
			conerr = socketError;

			if( conerr != EAGAIN && conerr != ECONNRESET )
				Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_TcpServerConnectRequest: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );

			return qfalse;
		}
#ifndef _WIN32
		if( socket < 0 || socket >= MAX_SOCKETLIMIT ) {
			Com_Printf(CON_CHANNEL_NETWORK, "WARNING: NET_TcpServerConnectRequest: socket is out of range 0 to 1023. Are there too many open connections or files?\n");
			closesocket(socket);
			return qfalse;
		}
#endif

		if( ioctlsocket( socket, FIONBIO, &_true ) == SOCKET_ERROR ) {
			Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_TcpServerConnectRequest: ioctl FIONBIO: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
			conerr = socketError;
			closesocket( socket );
			return qfalse;
		}
		SockadrToNetadr((struct sockaddr *) &from, net_from, qtrue, socket);
		return qtrue;
	}
	return qfalse;
}


#define MAX_NETPACKETS 666


__optimize3 __regparm1 qboolean NET_TcpServerConnectEvent(fd_set *fdr)
{
	netadr_t from;
	int i;
	//Give the system a possibility to abort processing network packets so it won't block execution of frames if the network getting flooded
	for(i = 0; i < MAX_NETPACKETS; i++)
	{

		if(NET_TcpServerConnectRequest(&from, fdr))
		{

			NET_TcpServerOpenConnection( &from );

		}else{
			return qfalse;
		}
	}
	return qtrue;
}


/*========================================================================================================
Functions for TCP networking which can be used only by client
*/


/*
====================
NET_TcpClientGetData
returns number of read bytes.
Or returns: NET_WANT_READ -> Call this again soon. Nothing here yet.
Or NET_CONNRESET close the socket. Remote host aborted connection connection. [Writes readable message to errormsg if not NULL]
Or NET_ERROR close the socket. An error happened. [Writes readable message to errormsg if not NULL]
Or 0 close the socket. Action completed in most cases.
====================
*/

int NET_TcpClientGetData(int sock, void* buf, int buflen, char* errormsg, int maxerrorlen)
{

	int err;
	int ret;
	char errstr[256];

	if(sock < 1)
		return -1;

	ret = recv(sock, buf, buflen, 0);

	if(ret == SOCKET_ERROR)
  {
			err = socketError;
			if(err == EAGAIN || err == EINTR)
      {
				return NET_WANT_READ; //Nothing more to read left or interupted system call
			}
      if(errormsg)
      {
        Q_strncpyz(errormsg, NET_ErrorStringMT(errstr, sizeof(errstr)), maxerrorlen);
      }
      if(ret == ECONNRESET || ret == EPIPE)
      {
        return NET_CONNRESET;
			}
      return NET_ERROR;
	}
	return ret;
}

/*
====================
NET_TcpIsSocketReady
Test if socket is fully connected or not yet
====================
*/
int NET_TcpWaitForSocketIsReady(int socket, int timeoutsec)
{
	int err = 0;
	int retval;
	fd_set fdr;
	struct timeval timeout;

	FD_ZERO(&fdr);
	FD_SET(socket, &fdr);

	do{
		timeout.tv_sec = timeoutsec;
		timeout.tv_usec = 0;

		retval = select(socket +1, NULL, &fdr, NULL, &timeout);
		if(retval < 0)
		{
			err = socketError;
		}else{
			err = 0;
		}
	}while(err == EINTR);

	if(retval < 0){
		return -1; //Syscall has failed

	}else if(retval > 0){
		socklen_t so_len = sizeof(err);

		if(getsockopt(socket, SOL_SOCKET, SO_ERROR, (char*) &err, &so_len) == 0)
		{
			return 1; //Socket is connected
		}
		return -2; //Other error

	}
	return 0; //Not yet ready
}

int NET_TcpIsSocketReady(int socket) //return: 1 ready, 0 not ready, -1 select error, -2 other error
{
	return NET_TcpWaitForSocketIsReady(socket, 0);
}


/*
====================
NET_TcpClientConnect
====================
*/
int NET_TcpClientConnectInternal( const char *remoteAdr, netadr_t *adr, netadr_t *sourceadr, qboolean silent, int timeoutsec ) {
	SOCKET			newsocket;
	struct sockaddr_storage	address, bindaddr;
	netadr_t remoteadr;
	int err = 0;
	char errstr[256];
	char adrstr[128];

  if(remoteAdr)
  {
    if(!silent) Com_Printf(CON_CHANNEL_NETWORK, "Connecting to: %s\n", remoteAdr);

  	if(NET_StringToAdr(remoteAdr, &remoteadr, NA_UNSPEC))
  	{
  		if(!silent) Com_Printf(CON_CHANNEL_NETWORK, "Resolved %s to: %s\n", remoteAdr, NET_AdrToStringMT(&remoteadr, adrstr, sizeof(adrstr)));
  	}else{
  		if(!silent) Com_PrintWarning(CON_CHANNEL_NETWORK, "Couldn't resolve: %s\n", remoteAdr);
  		return INVALID_SOCKET;
  	}
  }else{
    memcpy(&remoteadr, adr, sizeof(remoteadr));
  }

  if(sourceadr)
  {
    int sourcefam, destfam;
    sourcefam = sourceadr->type;
    destfam = remoteadr.type;

    if(sourcefam == NA_TCP)
    {
	sourcefam = NA_IP;
    }else if(sourcefam == NA_TCP6)
    {
	sourcefam = NA_IP6;
    }
    if(destfam == NA_TCP)
    {
	destfam = NA_IP;
    }else if(destfam == NA_TCP6)
    {
	destfam = NA_IP6;
    }

    if(sourcefam != destfam)
    {
        if(!silent) Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_TCPConnect: Protocol family mismatch for source and destination\n");
        return INVALID_SOCKET;
    }
  }
  NetadrToSockadr( &remoteadr, (struct sockaddr *)&address);

	int sockfam = 0;
	int sin_len = 0;
	/* WTF BSD */
	if(address.ss_family == AF_INET)
	{
		sockfam = PF_INET;
		sin_len = sizeof(struct sockaddr_in);
	}else if(address.ss_family == AF_INET6){
		sockfam = PF_INET6;
		sin_len = sizeof(struct sockaddr_in6);
	}else{
		sockfam = address.ss_family;
		sin_len = sizeof(bindaddr);
	}

	if( ( newsocket = socket( sockfam, SOCK_STREAM, IPPROTO_TCP ) ) == INVALID_SOCKET ) {
		if(!silent) Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_TCPConnect: socket: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		return INVALID_SOCKET;
	}
#ifndef _WIN32
	if( newsocket < 0 || newsocket >= MAX_SOCKETLIMIT ) {
		Com_Printf(CON_CHANNEL_NETWORK, "WARNING: NET_TCPConnect: socket is out of range 0 to 1023. Are there too many open connections or files?\n");
		closesocket(newsocket);
		return INVALID_SOCKET;
	}
#endif
	// make it non-blocking
	ioctlarg_t	_true = 1;
	if( ioctlsocket( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
		if(!silent) Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_TCPIPSocket: ioctl FIONBIO: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		closesocket(newsocket);
		return INVALID_SOCKET;
	}


  if(sourceadr)
  {
    NetadrToSockadr(sourceadr, (struct sockaddr *)&bindaddr);

	int bsin_len = 0;
	/* WTF BSD */
	if(bindaddr.ss_family == AF_INET)
	{
		bsin_len = sizeof(struct sockaddr_in);
	}else if(address.ss_family == AF_INET6){
		bsin_len = sizeof(struct sockaddr_in6);
	}else{
		bsin_len = sizeof(bindaddr);
	}

	if( bind( newsocket, (void *)&bindaddr, bsin_len ) == SOCKET_ERROR ) {
		if(!silent) Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_TcpClientConnect: bind: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		closesocket( newsocket );
		return INVALID_SOCKET;
	}
  }

	if( connect( newsocket, (void *)&address, sin_len ) != SOCKET_ERROR )
	{
		return newsocket;
	}

	err = socketError;

	if(err == EINPROGRESS
#ifdef _WIN32
		|| err == WSAEWOULDBLOCK
#endif
	){
		if(timeoutsec < 1)
		{
			return newsocket; //Non blocking
		}

		switch(NET_TcpWaitForSocketIsReady(newsocket, timeoutsec))
		{
			case 1:
				return newsocket;

			case 0:
				if(!silent) Com_PrintWarning(CON_CHANNEL_NETWORK,"NET_TcpConnect: Connecting to: %s timed out\n", NET_AdrToStringMT(&remoteadr, adrstr, sizeof(adrstr)));
				closesocket( newsocket );
				return INVALID_SOCKET;

			case -1:
				if(!silent) Com_PrintWarning(CON_CHANNEL_NETWORK,"NET_TcpConnect: select() syscall failed: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)));
				closesocket( newsocket );
				return INVALID_SOCKET;

			case -2:
			default:
				break;

		}
	}
	if(!silent) Com_PrintWarning(CON_CHANNEL_NETWORK, "NET_TCPOpenConnection: connect error: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
	closesocket( newsocket );
	return INVALID_SOCKET;

}

int NET_TcpClientConnect( const char *remoteAdr )
{
  return NET_TcpClientConnectInternal(remoteAdr, NULL, NULL, qfalse, 2);
}

int NET_TcpClientConnectToAdr( netadr_t* adr )
{
  return NET_TcpClientConnectInternal(NULL, adr, NULL, qfalse, 2);
}

int NET_TcpClientConnectFromAdrToAdr( netadr_t* destination, netadr_t* source )
{
  return NET_TcpClientConnectInternal(NULL, destination, source, qfalse, 2);
}

int NET_TcpClientConnectFromAdrToAdrSilent( netadr_t* destination, netadr_t* source )
{
  return NET_TcpClientConnectInternal(NULL, destination, source, qtrue, 2);
}

int NET_TcpClientConnectNonBlockingToAdr( netadr_t* adr )
{
  return NET_TcpClientConnectInternal(NULL, adr, NULL, qfalse, 0);
}

/*
====================
NET_Event

Called from NET_Sleep which uses select() to determine which sockets have seen action.
====================
*/

__optimize3 __regparm1 qboolean NET_Event(int socket)
{
	byte bufData[MAX_MSGLEN];
	netadr_t from;
	int i, len;

	//Give the system a possibility to abort processing network packets so it won't block execution of frames if the network getting flooded
	for(i = 0; i < MAX_NETPACKETS; i++)
	{

		if((len = NET_GetPacket(&from, bufData, sizeof(bufData), socket)) > 0)
		{
			if(net_dropsim->integer > 0 && net_dropsim->integer <= 100)
			{
				// com_dropsim->value percent of incoming packets get dropped.
				if(rand() % 101 <= net_dropsim->integer)
					continue;          // drop this packet
			}
			NET_UDPPacketEvent(&from, bufData, len, sizeof(bufData));

				//Com_RunAndTimeServerPacket(&from, &netmsg);
			//else
			//	CL_PacketEvent(from, &netmsg);
		}else{
			return qfalse;
		}
	}
	return qtrue;
}


/*
====================
NET_Init
====================
*/
void NET_Init( void ) {

	ip4_socket.sock = INVALID_SOCKET;
	ip6_socket.sock = INVALID_SOCKET;
	tcp_socket = INVALID_SOCKET;
	tcp6_socket = INVALID_SOCKET;

	NET_Config( qtrue );
	NET_TcpServerInit();

	Cmd_AddCommand ("net_restart", NET_Restart_f);


}


/*
====================
NET_Shutdown
====================
*/
void NET_Shutdown( void ) {
	if ( !networkingEnabled ) {
		return;
	}
	Com_Printf(CON_CHANNEL_NETWORK,"---- Network shutdown ----\n");
	NET_Config( qfalse );
	Com_Printf(CON_CHANNEL_NETWORK,"--------------------------\n");
#ifdef _WIN32
	WSACleanup();
	winsockInitialized = qfalse;
#endif
}


/*
====================
NET_Sleep

Sleeps usec or until something happens on the network
====================
*/
__optimize3 __regparm1 qboolean NET_Sleep(unsigned int usec)
{
	struct timeval timeout;
	fd_set fdr;
	int highestfd = -1;
	int retval;
	qboolean netabort = qfalse; //This will be true if we had to process more than 666 packets on one single interface
				  //Usually this marks an ongoing floodattack onto this CoD4 server

	if( usec > 999999 )
		usec = 0;

	FD_ZERO(&fdr);

	if((signed int)ip4_socket.sock != INVALID_SOCKET)
	{
		FD_SET(ip4_socket.sock, &fdr);

		if((signed int)ip4_socket.sock > (signed int)highestfd)
		{
			highestfd = ip4_socket.sock;
		}
	}
	if((signed int)ip6_socket.sock != INVALID_SOCKET)
	{
		FD_SET(ip6_socket.sock, &fdr);

		if((signed int)ip6_socket.sock > (signed int)highestfd)
		{
			highestfd = ip6_socket.sock;
		}
	}
	if((signed int)tcp_socket != INVALID_SOCKET)
	{

		FD_SET(tcp_socket, &fdr);

		if((signed int)tcp_socket > (signed int)highestfd)
		{
			highestfd = tcp_socket;
		}
	}

	if((signed int)tcp6_socket != INVALID_SOCKET)
	{
		FD_SET(tcp6_socket, &fdr);

		if((signed int)tcp6_socket > (signed int)highestfd)
			highestfd = tcp6_socket;
	}

	timeout.tv_sec = 0;
	timeout.tv_usec = usec;

#ifdef _WIN32
	if((signed int)highestfd < 0)
	{
		// windows ain't happy when select is called without valid FDs
		SleepEx(usec / 1000, 0);
		return qfalse;
	}
#endif

	retval = select(highestfd + 1, &fdr, NULL, NULL, &timeout);

	if(retval < 0){
		if(socketError == EINTR)
		{
			return qfalse;
		}
		Com_PrintWarningNoRedirect(CON_CHANNEL_NETWORK,"NET_Sleep: select() syscall failed: %s\n", NET_ErrorString());
		return qfalse;
	}
	else if(retval > 0){
		if((signed int)ip6_socket.sock != INVALID_SOCKET && FD_ISSET(ip6_socket.sock, &fdr))
		{
			if(NET_Event(ip6_socket.sock))
			{
				netabort = qtrue;
			}
		}
		if((signed int)ip4_socket.sock != INVALID_SOCKET && FD_ISSET(ip4_socket.sock, &fdr))
		{
			if(NET_Event(ip4_socket.sock))
			{
				netabort = qtrue;
			}
		}

		if(((signed int)tcp_socket != INVALID_SOCKET && FD_ISSET(tcp_socket, &fdr)) || ((signed int)tcp6_socket != INVALID_SOCKET && FD_ISSET(tcp6_socket, &fdr)))
		{
			if(NET_TcpServerConnectEvent(&fdr))
			{
				netabort = qtrue;
			}
		}
	}
	return netabort;
}



/*
====================
NET_Restart_f
====================
*/
void NET_Restart_f( void ) {
	NET_Config( networkingEnabled );
}






/*
=============
NET_StringToAdr

Traps "localhost" for loopback, passes everything else to system
return 0 on address not found, 1 on address found with port, 2 on address found without port.
=============
*/
int NET_StringToAdr( const char *s, netadr_t *a, netadrtype_t family )
{
	char	base[MAX_STRING_CHARS], *search;
	char	*port = NULL;

	Q_strncpyz( base, s, sizeof( base ) );

	if(*base == '[' || Q_CountChar(base, ':') > 1)
	{
		// This is an ipv6 address, handle it specially.
		search = strchr(base, ']');
		if(search)
		{
			*search = '\0';
			search++;

			if(*search == ':')
				port = search + 1;
		}

		if(*base == '[')
			search = base + 1;
		else
			search = base;
	}
	else
	{
		// look for a port number
		port = strchr( base, ':' );

		if ( port ) {
			*port = '\0';
			port++;
		}

		search = base;
	}

	if(!Sys_StringToAdr(search, a, family))
	{
		a->type = NA_BAD;
		return 0;
	}
	netadr_t* defif = NET_GetDefaultCommunicationSocket(a->type);
	if(defif != NULL)
	{
		a->sock = defif->sock;
	}
	if(port)
	{
		a->port = BigShort((short) atoi(port));
		return 1;
	}
	else
	{
		a->port = BigShort(PORT_SERVER);
		return 2;
	}
}




int NET_GetHostPort()
{
	return net_port->integer;
}

const char* NET_GetHostAddress(char* adrstrbuf, int len)
{
	Com_sprintf(adrstrbuf, len, "%s:%hd\n", net_ip->string, net_port->integer);
	return adrstrbuf;
}


/*
==================
Sys_IsReservedAddress

LAN clients will have their rate var ignored
==================
*/
qboolean Sys_IsReservedAddress( netadr_t *adr ) {

	int i;

	if( adr->type == NA_LOOPBACK ) {
		return qtrue;
	}

	if( adr->type == NA_IP )
	{
		// RFC1918:
		// 10.0.0.0        -   10.255.255.255  (10/8 prefix)
		// 172.16.0.0      -   172.31.255.255  (172.16/12 prefix)
		// 192.168.0.0     -   192.168.255.255 (192.168/16 prefix)
		if(adr->ip[0] == 10)
			return qtrue;
		if(adr->ip[0] == 172 && (adr->ip[1]&0xf0) == 16)
			return qtrue;
		if(adr->ip[0] == 192 && adr->ip[1] == 168)
			return qtrue;

		if(adr->ip[0] == 127)
			return qtrue;
	}
	else if(adr->type == NA_IP6)
	{
		if(adr->ip6[0] == 0xfe && (adr->ip6[1] & 0xc0) == 0x80)
			return qtrue;
		if((adr->ip6[0] & 0xfe) == 0xfc)
			return qtrue;

		for(i = 0; i < 15; i++)
		{
			if(adr->ip6[i] != 0)
			{
				return qfalse;
			}
		}
		if(adr->ip6[i] == 1)
			return qtrue;
	}
	return qfalse;
}


netadr_t* NET_GetDefaultCommunicationSocket(netadrtype_t family){

	if(family == NA_IP && ip4_socket.sock != INVALID_SOCKET)
	{
		return &ip4_socket;
	}
	if(ip6_socket.sock != INVALID_SOCKET)
	{
		return &ip6_socket;
	}
	return NULL;
}
