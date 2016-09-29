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
#	include <winsock2.h>
#	include <ws2tcpip.h>
#	include <iphlpapi.h>
#	if WINVER < 0x501
#		ifdef __MINGW32__
			// wspiapi.h isn't available on MinGW, so if it's
			// present it's because the end user has added it
			// and we should look for it in our tree
#			include "wspiapi.h"
#		else
#			include <wspiapi.h>
#		endif
#	else
#		include <ws2spi.h>
#	endif

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

#	include <sys/socket.h>
#	include <errno.h>
#	include <netdb.h>
#	include <netinet/in.h>
#	include <arpa/inet.h>
#	include <net/if.h>
#	include <sys/ioctl.h>
#	include <sys/types.h>
#	include <sys/time.h>
#	include <unistd.h>
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
/*
static cvar_t	*net_mcast6addr;
static cvar_t	*net_mcast6iface;
*/
static cvar_t	*net_dropsim;



typedef struct{

    SOCKET sock;
    int localipindex;

}socketData_t;

static netadr_t	ip_socket[MAX_IPS];
static netadr_t	ip_defaultSock = { 0 };

static SOCKET	tcp_socket = INVALID_SOCKET;
static SOCKET	tcp6_socket = INVALID_SOCKET;
static SOCKET	socks_socket = INVALID_SOCKET;
//static SOCKET	multicast6_socket = INVALID_SOCKET;

// Keep track of currently joined multicast group.
static struct ipv6_mreq curgroup;
// And the currently bound address.
static struct sockaddr_in6 boundto;

#ifndef IF_NAMESIZE
  #define IF_NAMESIZE 16
#endif

// use an admin local address per default so that network admins can decide on how to handle quake3 traffic.
#define NET_MULTICAST_IP6 "ff04::696f:7175:616b:6533"



typedef struct
{
	char ifname[IF_NAMESIZE];

	netadrtype_t type;
	sa_family_t family;
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

void NET_InitDNS();
void NET_ShutdownDNS();
qboolean NET_ResolveBlocking(const char *domain, struct sockaddr_storage *outaddr, sa_family_t family);


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
	__xpg_strerror_r(socketError, buf, size);
//	strerror_r(socketError, buf, size); //strerror_r() is broken with some versions of libc6
#endif
	return buf;
}


static void NetadrToSockadr( netadr_t *a, struct sockaddr *s ) {
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
	else if(a->type == NA_MULTICAST6)
	{
		((struct sockaddr_in6 *)s)->sin6_family = AF_INET6;
		((struct sockaddr_in6 *)s)->sin6_addr = curgroup.ipv6mr_multiaddr;
		((struct sockaddr_in6 *)s)->sin6_port = a->port;
	}
}


__optimize3 __regparm3 static void SockadrToNetadr( struct sockaddr *s, netadr_t *a, qboolean tcp, int socket) {
	if (s->sa_family == AF_INET) {
		if(!tcp)
			a->type = NA_IP;
		else
			a->type = NA_TCP;

		*(int *)&a->ip = ((struct sockaddr_in *)s)->sin_addr.s_addr;
		a->port = ((struct sockaddr_in *)s)->sin_port;
	}
	else if(s->sa_family == AF_INET6)
	{
		if(!tcp)
			a->type = NA_IP6;
		else
			a->type = NA_TCP6;

		memcpy(a->ip6, &((struct sockaddr_in6 *)s)->sin6_addr, sizeof(a->ip6));
		a->port = ((struct sockaddr_in6 *)s)->sin6_port;
		a->scope_id = ((struct sockaddr_in6 *)s)->sin6_scope_id;
	}
	a->sock = socket;
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

/*
=============
Sys_StringToSockaddr
=============
*/

static qboolean Sys_StringToSockaddr(const char *s, struct sockaddr *sadr, int sadr_len, sa_family_t family)
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
			Com_PrintError("Sys_StringToSockaddr: Error resolving %s: No address of required type found.\n", s);
	}
	else
		Com_PrintError("Sys_StringToSockaddr: Error resolving %s: %s\n", s, gai_strerror(retval));

	if(res)
		freeaddrinfo(res);

	return qfalse;
}

#if 0
static qboolean Sys_StringToSockaddr(const char *s, struct sockaddr *sadr, int sadr_len, sa_family_t family)
{
	int retval;
	char ptonaddr[32];
	struct sockaddr_storage sadrstore;
	struct sockaddr_in *sin = (struct sockaddr_in *)&sadrstore;
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)&sadrstore;
	memset(sadr, '\0', sadr_len);
	memset(&sadrstore, '\0', sizeof(sadrstore));

	sa_family_t ptonfamily = family;

	if(ptonfamily == AF_UNSPEC)
	{
		 if(Q_CountChar(s, ':') > 1)
		 {
			 ptonfamily = AF_INET6;
		 }else{
			 ptonfamily = AF_INET;
		 }
	}
	if(inet_pton(ptonfamily, s, &ptonaddr ) > 0)
	{
		if(ptonfamily == AF_INET6)
		{
			memcpy(&sin6->sin6_addr, ptonaddr, sizeof(sin6->sin6_addr));
			sin6->sin6_family = AF_INET6;
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
		}else{
			return qfalse;
		}
		return qtrue;
	}
	Com_Printf("DNS_Resolving %s\n", s);

	retval = NET_ResolveBlocking(s, &sadrstore ,family);

	memcpy(sadr, &sadrstore, sadr_len);

	//If we got here it is most likely a name which has to be resolved



/*
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
			Com_PrintError("Sys_StringToSockaddr: Error resolving %s: No address of required type found.\n", s);
	}
	else
		Com_PrintError("Sys_StringToSockaddr: Error resolving %s: %s\n", s, gai_strerror(retval));

	if(res)
		freeaddrinfo(res);
*/
	return retval;
}
#endif

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
	int i;

	if(sock == INVALID_SOCKET)
		return NULL;

	for(i = 0; i < numIP; i++)
	{
		if(sock == ip_socket[i].sock)
			return &ip_socket[i];
	}

	return NULL;
}

netadr_t* NET_GetLocalAddressList(int* count)
{
  *count = numIP;
  return ip_socket;
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
		Com_PrintError ("NET_CompareBaseAdr: bad address type\n");
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

	Q_strcat(s, sizeof(s), NET_AdrToString_a( a ));
	Q_strcat(s, sizeof(s), "<=>");
	Q_strcat(s, sizeof(s), NET_AdrToString_b( NET_SockToAdr( a->sock ) ));

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

    byte buff[4];
    int ret, i;

    for(i = 0; i < numIP; i++)
    {

	    if(ip_socket[i].sock == INVALID_SOCKET)
		continue;

	    do{
		ret = recv(ip_socket[i].sock, (void *)buff, 0, 0);
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
				Com_PrintWarningNoRedirect( "NET_GetPacket on (%s - %d): %s\n", NET_AdrToString(NET_SockToAdr(socket)), socket , NET_ErrorString() );
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
				Com_PrintWarningNoRedirect( "Oversize packet from %s\n", NET_AdrToString (net_from) );
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
	int	i;
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
			ret = sendto( to->sock, data, length, 0, (struct sockaddr *) &addr, sizeof(struct sockaddr_in6) );

#ifdef SOCKET_DEBUG

			int err2;

			if(ret == SOCKET_ERROR)
			{
				err2 = socketError;
				if(err2 != EAGAIN)
				{
					Q_strncpyz( tmpstr, NET_AdrToStringMT(NET_SockToAdr(to->sock), adrstr, sizeof(adrstr)), sizeof(tmpstr));
					Com_PrintError( "Sys_SendPacket: socket %d Conn: %s ==> %s failed with: %s\n", to->sock, tmpstr, NET_AdrToStringMT(to, adrstr, sizeof(adrstr)), NET_ErrorStringMT(errstr, sizeof(errstr)) );
				}
			}
#endif

	}else{//Send this packet to any available socket

		for(i = 0; i < numIP; i++)
		{
			ret = 0;

			if(ip_socket[i].sock == INVALID_SOCKET)
				break;

			if( to->type != ip_socket[i].type )
				continue;

			if( to->type == NA_IP )
			{
				if(ip_socket[i].ip[0] == 127)
				{
					continue;
				}
				ret = sendto( ip_socket[i].sock, data, length, 0, (struct sockaddr *) &addr, sizeof(struct sockaddr_in) );
			}
			else if( to->type == NA_IP6 )
			{
				ret = sendto( ip_socket[i].sock, data, length, 0, (struct sockaddr *) &addr, sizeof(struct sockaddr_in6) );
			}
#ifdef SOCKET_DEBUG
			int err2;

			if(ret == SOCKET_ERROR)
			{
				err2 = socketError;
				if(err2 != EAGAIN)
				{
					Q_strncpyz( tmpstr, NET_AdrToStringMT(&ip_socket[i], adrstr, sizeof(adrstr)), sizeof(tmpstr));
					Com_PrintError( "Sys_SendPacket: socket %d Conn: %s ==> %s failed with: %s\n", ip_socket[i].sock, tmpstr, NET_AdrToStringMT(to, adrstr, sizeof(adrstr)), NET_ErrorStringMT(errstr, sizeof(errstr)) );
				}
			}else{
				Q_strncpyz( tmpstr, NET_AdrToStringMT(&ip_socket[i], adrstr, sizeof(adrstr)), sizeof(tmpstr));
				Com_Printf( "^2Sys_SendPacket: socket %d Conn: %s ==> %s successfully sent\n", ip_socket[i].sock, tmpstr, NET_AdrToStringMT(to, adrstr, sizeof(adrstr)) );
			}
#endif


		}
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
		Com_PrintWarningNoRedirect( "NET_SendPacket: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
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
			Com_Printf( "IP: %s\n", addrbuf);
		else if(localIP[i].type == NA_IP6)
			Com_Printf( "IP6: %s\n", addrbuf);
	}
}


//=============================================================================


/*
====================
NET_IPSocket
====================
*/
int NET_IPSocket( char *net_interface, int port, int *err, qboolean tcp) {
	SOCKET				newsocket;
	struct sockaddr_in		address;
	ioctlarg_t			_true = 1;
	int				i = 1;
	int				tos = IPEFF_EF;
	int				reuse;
	char				errstr[256];
//	struct	linger			so_linger;

	*err = 0;
	tos = tos << 2;

	if( net_interface ) {
		if(tcp)
			Com_Printf( "Opening IP socket: %s:%i TCP\n", net_interface, port );
		else
			Com_Printf( "Opening IP socket: %s:%i UDP\n", net_interface, port );
	} else {
		if(tcp)
			Com_Printf( "Opening IP socket: 0.0.0.0:%i TCP\n", port );
		else
			Com_Printf( "Opening IP socket: 0.0.0.0:%i UDP\n", port );
	}
	if(tcp)
		newsocket = socket( PF_INET, SOCK_STREAM, IPPROTO_TCP );
	else
		newsocket = socket( PF_INET, SOCK_DGRAM, IPPROTO_UDP );

	if( newsocket == INVALID_SOCKET ) {
		*err = socketError;
		Com_Printf( "WARNING: NET_IPSocket: socket: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		return newsocket;
	}

	// make it non-blocking
	if( ioctlsocket( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
		Com_PrintWarning( "NET_IPSocket: ioctl FIONBIO: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		*err = socketError;
		closesocket(newsocket);
		return INVALID_SOCKET;
	}

	if(!tcp){
	// make it broadcast capable
		if( setsockopt( newsocket, SOL_SOCKET, SO_BROADCAST, (char *) &i, sizeof(i) ) == SOCKET_ERROR ) {
			Com_PrintWarning( "NET_IPSocket: setsockopt SO_BROADCAST: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}
		if( setsockopt( newsocket, IPPROTO_IP, IP_TOS, (char *) &tos, sizeof(tos) ) == SOCKET_ERROR ) {
			Com_PrintWarning( "NET_IPSocket: setsockopt IP_TOS: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}
	}else{
/*
	// Short WAIT_STATE time
		so_linger.l_onoff = 1;
		so_linger.l_linger = 2; //Two seconds timeout

		if( setsockopt( newsocket, SOL_SOCKET, SO_LINGER, (char *) &so_linger, sizeof(so_linger) ) == SOCKET_ERROR ) {
			Com_PrintWarning( "NET_IPSocket: setsockopt SO_LINGER: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}
*/
		reuse = 1;

		if( setsockopt( newsocket, SOL_SOCKET, SO_REUSEADDR, (char *) &reuse, sizeof(reuse) ) == SOCKET_ERROR ) {
			Com_PrintWarning( "NET_IPSocket: setsockopt SO_REUSEADDR: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
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
		Com_PrintWarning( "NET_IPSocket: bind: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		*err = socketError;
		closesocket( newsocket );
		return INVALID_SOCKET;
	}

	if(tcp){
		// Listen
		if( listen( newsocket, 96) == SOCKET_ERROR ) {
			Com_PrintWarning( "NET_IPSocket: listen: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
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
			Com_PrintError( "NET_IPSocket reading from open socket %d failed with: %s\n", newsocket, NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}else {
			Com_Printf( "NET_IPSocket opening of socket %d was successful\n", newsocket );

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
				Com_Printf( "Opening IP6 socket: [%s]:%i TCP\n", net_interface, port );
			else
				Com_Printf( "Opening IP6 socket: [%s]:%i UDP\n", net_interface, port );
		}else{
			if(tcp)
				Com_Printf( "Opening IP6 socket: %s:%i TCP\n", net_interface, port );
			else
				Com_Printf( "Opening IP6 socket: %s:%i UDP\n", net_interface, port );
		}
	}else{
		if(tcp)
			Com_Printf( "Opening IP6 socket: [::]:%i TCP\n", port );
		else
			Com_Printf( "Opening IP6 socket: [::]:%i UDP\n", port );
	}

	if(tcp)
		newsocket = socket( PF_INET6, SOCK_STREAM, IPPROTO_TCP );
	else
		newsocket = socket( PF_INET6, SOCK_DGRAM, IPPROTO_UDP );


	if( newsocket == INVALID_SOCKET ) {
		*err = socketError;
		Com_PrintWarning( "NET_IP6Socket: socket: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		return newsocket;
	}

	// make it non-blocking
	if( ioctlsocket( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
		Com_PrintWarning( "NET_IP6Socket: ioctl FIONBIO: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
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
			Com_PrintWarning( "NET_IP6Socket: setsockopt SO_LINGER: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}
*/

		reuse = 1;

		if( setsockopt( newsocket, SOL_SOCKET, SO_REUSEADDR, (char *) &reuse, sizeof(reuse) ) == SOCKET_ERROR ) {
			Com_PrintWarning( "NET_IP6Socket: setsockopt SO_REUSEADDR: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}


	}

#ifdef IPV6_V6ONLY
	{
		int i = 1;

		// ipv4 addresses should not be allowed to connect via this socket.
		if(setsockopt(newsocket, IPPROTO_IPV6, IPV6_V6ONLY, (char *) &i, sizeof(i)) == SOCKET_ERROR)
		{
			// win32 systems don't seem to support this anyways.
			Com_DPrintf("WARNING: NET_IP6Socket: setsockopt IPV6_V6ONLY: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)));
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
		Com_PrintWarning( "NET_IP6Socket: bind: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		*err = socketError;
		closesocket( newsocket );
		return INVALID_SOCKET;
	}

	if(bindto)
		*bindto = address;

	if(tcp){
		// Listen
		if( listen( newsocket, 96) == SOCKET_ERROR ) {
			Com_PrintWarning( "NET_IP6Socket: listen: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
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
			Com_PrintError( "NET_IP6Socket reading from open socket %d failed with: %s\n", newsocket, NET_ErrorStringMT(errstr, sizeof(errstr)) );
		}else {
			Com_Printf( "NET_IP6Socket opening of socket %d was successful\n", newsocket );
		}
	}
#endif
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
		Com_Printf("WARNING: NET_JoinMulticast6: Incorrect multicast address given, "
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
			Com_Printf("NET_JoinMulticast6: Couldn't set scope on multicast socket: %s\n", NET_ErrorString());

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
		Com_Printf("NET_JoinMulticast6: Couldn't join multicast group: %s\n", NET_ErrorString());

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

	Com_Printf( "Opening connection to SOCKS server.\n" );

	if ( ( socks_socket = socket( AF_INET, SOCK_STREAM, IPPROTO_TCP ) ) == INVALID_SOCKET ) {
		Com_Printf( "WARNING: NET_OpenSocks: socket: %s\n", NET_ErrorString() );
		return;
	}

	h = gethostbyname( net_socksServer->string );
	if ( h == NULL ) {
		Com_Printf( "WARNING: NET_OpenSocks: gethostbyname: %s\n", NET_ErrorString() );
		return;
	}
	if ( h->h_addrtype != AF_INET ) {
		Com_Printf( "WARNING: NET_OpenSocks: gethostbyname: address type was not AF_INET\n" );
		return;
	}
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = *(int *)h->h_addr_list[0];
	address.sin_port = htons( (short)net_socksPort->integer );

	if ( connect( socks_socket, (struct sockaddr *)&address, sizeof( address ) ) == SOCKET_ERROR ) {
		Com_Printf( "NET_OpenSocks: connect: %s\n", NET_ErrorString() );
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
		Com_Printf( "NET_OpenSocks: send: %s\n", NET_ErrorString() );
		return;
	}

	// get the response
	len = recv( socks_socket, (void *)buf, 64, 0 );
	if ( len == SOCKET_ERROR ) {
		Com_Printf( "NET_OpenSocks: recv: %s\n", NET_ErrorString() );
		return;
	}
	if ( len != 2 || buf[0] != 5 ) {
		Com_Printf( "NET_OpenSocks: bad response\n" );
		return;
	}
	switch( buf[1] ) {
	case 0:	// no authentication
		break;
	case 2: // username/password authentication
		break;
	default:
		Com_Printf( "NET_OpenSocks: request denied\n" );
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
			Com_Printf( "NET_OpenSocks: send: %s\n", NET_ErrorString() );
			return;
		}

		// get the response
		len = recv( socks_socket, (void *)buf, 64, 0 );
		if ( len == SOCKET_ERROR ) {
			Com_Printf( "NET_OpenSocks: recv: %s\n", NET_ErrorString() );
			return;
		}
		if ( len != 2 || buf[0] != 1 ) {
			Com_Printf( "NET_OpenSocks: bad response\n" );
			return;
		}
		if ( buf[1] != 0 ) {
			Com_Printf( "NET_OpenSocks: authentication failed\n" );
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
		Com_Printf( "NET_OpenSocks: send: %s\n", NET_ErrorString() );
		return;
	}

	// get the response
	len = recv( socks_socket, (void *)buf, 64, 0 );
	if( len == SOCKET_ERROR ) {
		Com_Printf( "NET_OpenSocks: recv: %s\n", NET_ErrorString() );
		return;
	}
	if( len < 2 || buf[0] != 5 ) {
		Com_Printf( "NET_OpenSocks: bad response\n" );
		return;
	}
	// check completion code
	if( buf[1] != 0 ) {
		Com_Printf( "NET_OpenSocks: request denied: %i\n", buf[1] );
		return;
	}
	if( buf[3] != 1 ) {
		Com_Printf( "NET_OpenSocks: relay address is not IPV4: %i\n", buf[3] );
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

		localIP[numIP].family = family;

		memcpy(&localIP[numIP].addr, addr, addrlen);
		memcpy(&localIP[numIP].netmask, netmask, addrlen);

		numIP++;
	}
}

#if defined(__linux__) || defined(MACOSX) || defined(__BSD__)
static void NET_GetLocalAddress(void)
{
	struct ifaddrs *ifap, *search;

	numIP = 0;

	if(getifaddrs(&ifap))
		Com_PrintError("NET_GetLocalAddress: Unable to get list of network interfaces: %s\n", NET_ErrorString());
	else
	{
		for(search = ifap; search; search = search->ifa_next)
		{
			// Only add interfaces that are up.
			if(ifap->ifa_flags & IFF_UP)
				NET_AddLocalAddress(search->ifa_name, search->ifa_addr, search->ifa_netmask);
		}

		freeifaddrs(ifap);

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

	Com_Printf( "Hostname: %s\n", hostname );

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
		Sys_ShowIP();
	}

	if(res)
		freeaddrinfo(res);
}
#endif

/*
====================
NET_OpenIP
====================
*/
void NET_OpenIP( void ) {
	int		i, j, socketindex;
	int		socketindex6 = 0;
	int		err;
	int		port;
	int		port6;
	int		limit;
	int		limit6;
	char		addrbuf[NET_ADDRSTRMAXLEN];
	char		addrbuf2[NET_ADDRSTRMAXLEN];
	qboolean	validsock6 = qfalse;
	qboolean	support6;
	qboolean	validsock = qfalse;
	qboolean	support4;

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

	for(i = 0; i < MAX_IPS; i++)
	{
		ip_socket[i].sock = INVALID_SOCKET;
	}
	tcp_socket = INVALID_SOCKET;
	tcp6_socket = INVALID_SOCKET;
	NET_GetLocalAddress();

	// automatically scan for a valid port, so multiple
	// dedicated servers can be started without requiring
	// a different net_port for each one

	if(net_enabled->integer & NET_ENABLEV6)
	{

		support6 = qfalse;
		for( i = 0 ; i < limit6 ; i++ )
		{
			socketindex6 = 0;
			validsock6 = qfalse;

			if(Q_stricmp(net_ip6->string, "::"))
			{

				Com_sprintf(addrbuf2, sizeof(addrbuf2), "[%s]:%d", net_ip6->string, port6 + i );
				NET_StringToAdr(addrbuf2, &ip_socket[0], NA_IP6);

				ip_socket[0].sock = NET_IP6Socket(net_ip6->string, port6 + i, &boundto, &err, qfalse);

				if(ip_socket[0].sock != INVALID_SOCKET)
				{

					validsock6 = qtrue;	//This is a valid port
					support6 = qtrue;
					socketindex6 = 1;

				}else if(err != EAFNOSUPPORT){

					support6 = qtrue;
				}
			}
			else
			{
				for(j = 0; j < numIP; j++)
				{
					if(localIP[j].type != NA_IP6)
						continue;

					Sys_SockaddrToString(addrbuf, sizeof(addrbuf), (struct sockaddr *) &localIP[j].addr);

					ip_socket[socketindex6].sock = INVALID_SOCKET;
					ip_socket[socketindex6 + 1].sock = INVALID_SOCKET;

					if(!Q_stricmp(addrbuf,"::"))
						continue;

					Com_sprintf(addrbuf2, sizeof(addrbuf2), "[%s]:%d", addrbuf, port6 + i );
					NET_StringToAdr(addrbuf2, &ip_socket[socketindex6], NA_IP6);

					ip_socket[socketindex6].sock = NET_IP6Socket(addrbuf, port6 + i, &boundto, &err, qfalse);

					if(ip_socket[socketindex6].sock == INVALID_SOCKET)
					{
						if(err != EAFNOSUPPORT)
							support6 = qtrue;
						continue;
					}
					validsock6 = qtrue;	//This is a valid port
					support6 = qtrue;
					socketindex6++; //This is a valid socket, count up by one
				}
			}

			if(support6 == qfalse)
				break;

			if( validsock6 )// && tcp6_socket != INVALID_SOCKET)
			{

				tcp6_socket = NET_IP6Socket( net_ip6->string, port6 + i, &boundto, &err, qtrue);

				if(tcp6_socket != INVALID_SOCKET){
					Cvar_SetInt( net_port6, port6 + i );
					break;

				}else{

					if(err == EAFNOSUPPORT)
					{
						Cvar_SetInt( net_port6, port6 + i );
						break;
					}else{
						for(j = 0; j < numIP; j++)
						{
							if(ip_socket[j].sock != INVALID_SOCKET)
							{
								validsock6 = qfalse;	//This is an invalid port
								closesocket( ip_socket[j].sock );
								ip_socket[j].sock = INVALID_SOCKET;
							}
						}
						socketindex6 = 0;
					}
				}
			}
		}

		if(!validsock6)
			Com_PrintWarning( "Couldn't bind to a v6 ip address.\n");
	}

	if(net_enabled->integer & NET_ENABLEV4)
	{

		support4 = qfalse;

		for( i = 0 ; i < limit ; i++ ) {

			validsock = qfalse;
			socketindex = socketindex6;

			if(Q_stricmp(net_ip->string, "0.0.0.0")){

				Com_sprintf(addrbuf2, sizeof(addrbuf2), "%s:%d", net_ip->string, port + i );
				NET_StringToAdr(addrbuf2, &ip_socket[socketindex], NA_IP);

				ip_socket[socketindex].sock = NET_IPSocket( net_ip->string, port + i, &err, qfalse);

				if(ip_socket[socketindex].sock != INVALID_SOCKET)
				{

					validsock = qtrue;	//This is a valid port
					support4 = qtrue;
					NET_RegisterDefaultCommunicationSocket(&ip_socket[socketindex]);
					socketindex = socketindex6 +1;
				}else if(err != EAFNOSUPPORT){

					support4 = qtrue;
				}


			}else{

				for(j = 0; j < numIP; j++)
				{

					if(localIP[j].type != NA_IP)
						continue;

					Sys_SockaddrToString(addrbuf, sizeof(addrbuf), (struct sockaddr *) &localIP[j].addr);

					if(!Q_stricmp(addrbuf,"0.0.0.0"))
						continue;

					ip_socket[socketindex].sock = INVALID_SOCKET;
					ip_socket[socketindex + 1].sock = INVALID_SOCKET;

					Com_sprintf(addrbuf2, sizeof(addrbuf2), "%s:%d", addrbuf, port + i );
					NET_StringToAdr(addrbuf2, &ip_socket[socketindex], NA_IP);

					ip_socket[socketindex].sock = NET_IPSocket(addrbuf, port + i, &err, qfalse);

					if(ip_socket[socketindex].sock == INVALID_SOCKET)
					{
						if(err != EAFNOSUPPORT)
							support4 = qtrue;
						continue;
					}
					validsock = qtrue;	//This is a valid port
					support4 = qtrue;
					socketindex++; //This is a valid socket, count up by one
				}

			}

			if(support4 == qfalse)
				break;

			if( validsock )
			{

				tcp_socket = NET_IPSocket( net_ip->string, port + i, &err, qtrue);

				if(tcp_socket != INVALID_SOCKET){
					Cvar_SetInt( net_port, port + i );
					break;

				}else{

					if(err == EAFNOSUPPORT)
					{
						Cvar_SetInt( net_port, port + i );
						break;
					}else{
						for(j = socketindex6; j < numIP; j++)
						{
							if(ip_socket[j].sock != INVALID_SOCKET)
							{
								validsock = qfalse;	//This is an invalid port
								closesocket( ip_socket[j].sock );
								ip_socket[j].sock = INVALID_SOCKET;
							}
						}
						socketindex = socketindex6;
					}
				}
			}
		}

		if(!validsock)
			Com_PrintWarning( "Couldn't bind to a v4 ip address.\n");
	}

	if(!validsock && !validsock6)
		Com_Error(ERR_FATAL,"Could not bind to a IPv4 or IPv6 network socket");

	if(tcp_socket != INVALID_SOCKET || tcp6_socket != INVALID_SOCKET)
	{
		NET_TcpServerInit();
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
/*
	// Some cvars for configuring multicast options which facilitates scanning for servers on local subnets.
	net_mcast6addr = Cvar_RegisterString( "net_mcast6addr", NET_MULTICAST_IP6, CVAR_LATCH | CVAR_ARCHIVE,  "IPv6 Network multicast address");
	modified += net_mcast6addr->modified;
	net_mcast6addr->modified = qfalse;

#ifdef _WIN32
	net_mcast6iface = Cvar_RegisterInt( "net_mcast6iface", 0, 0, 65535, CVAR_LATCH | CVAR_ARCHIVE ,  "IPv6 Network multicast interface");
#else
	net_mcast6iface = Cvar_RegisterString( "net_mcast6iface", "", CVAR_LATCH | CVAR_ARCHIVE ,  "IPv6 Network multicast interface");
#endif

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
				Com_Printf("Close TCP serversocket: %d\n", con->remote.sock);
				NET_TcpCloseSocket(con->remote.sock);
			}
		}

		for(i = 0; i < numIP; i++){

			if(ip_socket[i].sock != INVALID_SOCKET){
				Com_Printf("Close UDP socket: %d\n", ip_socket[i].sock);
				closesocket( ip_socket[i].sock );
				ip_socket[i].sock = INVALID_SOCKET;
			}
		}

		if ( tcp_socket != INVALID_SOCKET ) {
			Com_Printf("Close TCPv4 socket: %d\n", tcp_socket);
			closesocket( tcp_socket );
			tcp_socket = INVALID_SOCKET;
		}

/*
		if(multicast6_socket)
		{
			if(multicast6_socket != ip6_socket)
				closesocket(multicast6_socket);

			multicast6_socket = INVALID_SOCKET;
		}
*/
		if ( tcp6_socket != INVALID_SOCKET ) {
			Com_Printf("Close TCPv6 socket: %d\n", tcp6_socket);
			closesocket( tcp6_socket );
			tcp6_socket = INVALID_SOCKET;
		}

		if ( socks_socket != INVALID_SOCKET ) {
			Com_Printf("Close Socks socket: %d\n", socks_socket);
			closesocket( socks_socket );
			socks_socket = INVALID_SOCKET;
		}
		NET_ShutdownDNS();
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
			Com_PrintWarning( "Winsock initialization failed, returned %d\n", r );
			return;
		}

		winsockInitialized = qtrue;
		Com_Printf( "Winsock Initialized\n" );
#endif

		if (net_enabled->integer)
		{
			NET_OpenIP();
			//NET_SetMulticast6();
			NET_InitDNS();
		}
	}
}

//Dumb trick to find out which socket is suitable to send data over
void NET_RegisterDefaultCommunicationSocket(netadr_t *adr){

	netadr_t *socketadr = NET_SockToAdr(adr->sock);
	netadr_t test;


	if(socketadr != NULL && socketadr->type == NA_IP){
		/* Ignore localhost */
		NET_StringToAdr("127.0.0.1", &test, NA_IP);

		if(NET_CompareBaseAdr(socketadr, &test))
			return;

		ip_defaultSock = *socketadr;
		Com_Printf("NET_Notice: Default address selected for outgoing networkdata is %s\n", NET_AdrToString(&ip_defaultSock));
	}else{
		Com_PrintWarning("NET_RegisterDefaultCommunicationSocket, got packet from bad socket %d at %s\n", adr->sock, NET_AdrToString(adr));

	}

}

netadr_t* NET_GetDefaultCommunicationSocket(){

	if(ip_defaultSock.sock == 0)
		return NULL;

	return &ip_defaultSock;
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
				Com_PrintNoRedirect("Connection closed by: %s\n", NET_AdrToStringMT(&conn->remote, adrstr, sizeof(adrstr)));

				//Connection closed
			}
		}else
			Com_PrintWarningNoRedirect("NET_GetTcpPacket recv() syscall failed: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr))); // BUGFIX: this causes SIGSEGV in case of an error during console stream

		NET_TcpCloseSocket(conn->remote.sock);
		return -1;

	}else if(ret == 0){

		if(conn->state >= TCP_AUTHSUCCESSFULL)
		{
			Com_PrintNoRedirect("Connection closed by client: %s\n", NET_AdrToStringMT(&conn->remote, adrstr, sizeof(adrstr)));
		}
		NET_TcpCloseSocket(conn->remote.sock);
		return -1;

	}else{

		conn->lastMsgTime = NET_TimeGetTime(); //Don't timeout
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
			if(conn->remote.sock > tcpServer.highestfd)
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
		Com_PrintWarningNoRedirect("NET_TcpServerPacketEventLoop: select() syscall failed: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)));
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
				Com_PrintWarningNoRedirect( "NET_TcpServerPacketEventLoop: Oversize packet from %s. Must not happen!\n", NET_AdrToStringMT(&conn->remote, adrstr, sizeof(adrstr)));
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

		}else if(conn->lastMsgTime + MAX_TCPAUTHWAITTIME < NET_TimeGetTime()){
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
		if(tcpServer.activeConnectionCount > MAX_TCPCONNECTIONS / 3 && oldestTimeAccepted + MAX_TCPCONNECTEDTIMEOUT < NET_TimeGetTime()){
				conn = &tcpServer.connections[oldestAccepted];
				tcpServer.activeConnectionCount--; //As this connection is going to be closed decrease the counter
				NET_TCPConnectionClosed(&conn->remote, conn->connectionId, conn->serviceId);

		}else if(oldestTime + MIN_TCPAUTHWAITTIME < NET_TimeGetTime()){
				conn = &tcpServer.connections[oldest];

		}else{
			closesocket(from->sock); //We have already too many open connections. Not possible to open more. Possible attack

			if(tcpServer.lastAttackWarnTime + MIN_TCPAUTHWAITTIME < NET_TimeGetTime())
			{
				tcpServer.lastAttackWarnTime = NET_TimeGetTime();
				Com_PrintWarning("Possible Denial of Service Attack, Dropping connectrequest from: %s\n", NET_AdrToStringMT(from, adrstr, sizeof(adrstr)));
			}
			return;
		}
	}

	if(conn->lastMsgTime > 0)
	{
		NET_TcpCloseSocket(conn->remote.sock);
	}
	conn->remote = *from;
	conn->lastMsgTime = NET_TimeGetTime();
	conn->state = TCP_AUTHWAIT;
	conn->serviceId = -1;
	conn->connectionId = -1;
	conn->wantwrite = qfalse;

	FD_SET(conn->remote.sock, &tcpServer.fdr);

	if(tcpServer.highestfd < conn->remote.sock)
		tcpServer.highestfd = conn->remote.sock;

	Com_DPrintf("Opening a new TCP server connection. Sock: %d Index: %d From:%s\n", conn->remote.sock, i, NET_AdrToStringMT(&conn->remote, adrstr, sizeof(adrstr)));

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
				Com_PrintWarning( "NET_TcpServerConnectRequest: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );

			return qfalse;
		}
		else
		{
			if( ioctlsocket( socket, FIONBIO, &_true ) == SOCKET_ERROR ) {
				Com_PrintWarning( "NET_TcpServerConnectRequest: ioctl FIONBIO: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
				conerr = socketError;
				closesocket( socket );
				return qfalse;
			}
			SockadrToNetadr( (struct sockaddr *) &from, net_from, qtrue, socket);
			return qtrue;
		}
	}

	if(tcp6_socket != INVALID_SOCKET && FD_ISSET(tcp6_socket, fdr))
	{
		fromlen = sizeof(from);
		socket = accept(tcp6_socket, (struct sockaddr *) &from, &fromlen);

		if (socket == SOCKET_ERROR)
		{
			conerr = socketError;

			if( conerr != EAGAIN && conerr != ECONNRESET )
				Com_PrintWarning( "NET_TcpServerConnectRequest: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );

			return qfalse;
		}
		else
		{
			if( ioctlsocket( socket, FIONBIO, &_true ) == SOCKET_ERROR ) {
				Com_PrintWarning( "NET_TcpServerConnectRequest: ioctl FIONBIO: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
				conerr = socketError;
				closesocket( socket );
				return qfalse;
			}
			SockadrToNetadr((struct sockaddr *) &from, net_from, qtrue, socket);
			return qtrue;
		}
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
    if(!silent) Com_Printf( "Connecting to: %s\n", remoteAdr);

  	if(NET_StringToAdr(remoteAdr, &remoteadr, NA_UNSPEC))
  	{
  		if(!silent) Com_Printf( "Resolved %s to: %s\n", remoteAdr, NET_AdrToStringMT(&remoteadr, adrstr, sizeof(adrstr)));
  	}else{
  		if(!silent) Com_PrintWarning( "Couldn't resolve: %s\n", remoteAdr);
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
        if(!silent) Com_PrintWarning( "NET_TCPConnect: Protocol family mismatch for source and destination\n");
        return INVALID_SOCKET;
    }
  }
  NetadrToSockadr( &remoteadr, (struct sockaddr *)&address);

	if( ( newsocket = socket( address.ss_family, SOCK_STREAM, IPPROTO_TCP ) ) == INVALID_SOCKET ) {
		if(!silent) Com_PrintWarning( "NET_TCPConnect: socket: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		return INVALID_SOCKET;
	}
	// make it non-blocking
	ioctlarg_t	_true = 1;
	if( ioctlsocket( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
		if(!silent) Com_PrintWarning( "NET_TCPIPSocket: ioctl FIONBIO: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		closesocket(newsocket);
		return INVALID_SOCKET;
	}


  if(sourceadr)
  {
    NetadrToSockadr(sourceadr, (struct sockaddr *)&bindaddr);
	if( bind( newsocket, (void *)&bindaddr, sizeof(bindaddr) ) == SOCKET_ERROR ) {
		if(!silent) Com_PrintWarning( "NET_TcpClientConnect: bind: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
		closesocket( newsocket );
		return INVALID_SOCKET;
	}
  }



	if( connect( newsocket, (void *)&address, sizeof(address) ) != SOCKET_ERROR )
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
				if(!silent) Com_PrintWarning("NET_TcpConnect: Connecting to: %s timed out\n", NET_AdrToStringMT(&remoteadr, adrstr, sizeof(adrstr)));
				closesocket( newsocket );
				return INVALID_SOCKET;

			case -1:
				if(!silent) Com_PrintWarning("NET_TcpConnect: select() syscall failed: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)));
				closesocket( newsocket );
				return INVALID_SOCKET;

			case -2:
			default:
				break;

		}
	}
	if(!silent) Com_PrintWarning( "NET_TCPOpenConnection: connect error: %s\n", NET_ErrorStringMT(errstr, sizeof(errstr)) );
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

	NET_Config( qtrue );

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
	Com_Printf("---- Network shutdown ----\n");
	NET_Config( qfalse );
	Com_Printf("--------------------------\n");
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
	int i;
	qboolean netabort = qfalse; //This will be true if we had to process more than 666 packets on one single interface
				  //Usually this marks an ongoing floodattack onto this CoD4 server

	if( usec > 999999 )
		usec = 0;

	FD_ZERO(&fdr);

	for(i = 0; i < numIP; i++)
	{
		if(ip_socket[i].sock == INVALID_SOCKET)
			break;

		FD_SET(ip_socket[i].sock, &fdr);

		if(ip_socket[i].sock > highestfd)
			highestfd = ip_socket[i].sock;
	}

	if(tcp_socket != INVALID_SOCKET)
	{

		FD_SET(tcp_socket, &fdr);

		if(tcp_socket > highestfd)
			highestfd = tcp_socket;

	}

	if(tcp6_socket != INVALID_SOCKET)
	{
		FD_SET(tcp6_socket, &fdr);

		if(tcp6_socket > highestfd)
			highestfd = tcp6_socket;
	}

	timeout.tv_sec = 0;
	timeout.tv_usec = usec;

#ifdef _WIN32
	if(highestfd < 0)
	{
		// windows ain't happy when select is called without valid FDs
		SleepEx(usec, 0);
		return qfalse;
	}
#endif

	retval = select(highestfd + 1, &fdr, NULL, NULL, &timeout);

	if(retval < 0){
		if(socketError == EINTR)
		{
			return qfalse;
		}
		Com_PrintWarningNoRedirect("NET_Sleep: select() syscall failed: %s\n", NET_ErrorString());
		return qfalse;
	}
	else if(retval > 0){

		for(i = 0; i < numIP; i++)
		{
			if(ip_socket[i].sock == INVALID_SOCKET)
				break;

			if(FD_ISSET(ip_socket[i].sock, &fdr)){
				if(NET_Event(ip_socket[i].sock))
					netabort = qtrue;
			}

		}

		if((tcp_socket != INVALID_SOCKET && FD_ISSET(tcp_socket, &fdr)) || (tcp6_socket != INVALID_SOCKET && FD_ISSET(tcp6_socket, &fdr)))
		{
			if(NET_TcpServerConnectEvent(&fdr))
				netabort = qtrue;
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

	if (!strcmp (s, "localhost")) {
		Com_Memset (a, 0, sizeof(*a));
		a->type = NA_LOOPBACK;
// as NA_LOOPBACK doesn't require ports report port was given.
		return 1;
	}

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



/*
 * Copyright (c) 2004-2005 Sergey Lyubka <valenok@gmail.com>
 *
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Sergey Lyubka wrote this file.  As long as you retain this notice you
 * can do whatever you want with this stuff. If we meet some day, and you think
 * this stuff is worth it, you can buy me a beer in return.
 */



struct llhead {
	struct llhead *prev, *next;
};

#define	LL_INIT(N)	((N)->next = (N)->prev = (N))

#define LL_HEAD(H)	struct llhead H = { &H, &H }

#define	LL_ENTRY(P,T,N)	((T *) ((char *) (P) - offsetof(T,N)))

#define	LL_ADD(H, N)							\
	do {								\
		((H)->next)->prev = (N);				\
		(N)->next = ((H)->next);				\
		(N)->prev = (H);					\
		(H)->next = (N);					\
	} while (0)

#define	LL_TAIL(H, N)							\
	do {								\
		((H)->prev)->next = (N);				\
		(N)->prev = ((H)->prev);				\
		(N)->next = (H);					\
		(H)->prev = (N);					\
	} while (0)

#define	LL_DEL(N)								\
	do {										\
		((N)->next)->prev = ((N)->prev);		\
		((N)->prev)->next = ((N)->next);		\
		LL_INIT(N);								\
	} while (0)

#define	LL_EMPTY(N)	((N)->next == (N))

#define	LL_FOREACH(H,N)	for (N = (H)->next; N != (H); N = (N)->next)

#define LL_FOREACH_SAFE(H,N,T)						\
	for (N = (H)->next, T = (N)->next; N != (H);			\
			N = (T), T = (N)->next)



enum dns_query_type {
	DNS_A_RECORD = 0x01,		/* Lookup IP adress for host	*/
	DNS_AAAA_RECORD = 28,
	DNS_MX_RECORD = 0x0f		/* Lookup MX for domain		*/
};

/*
 * User defined function that will be called when DNS reply arrives for
 * requested hostname. "struct dns_cb_data" is passed to the user callback,
 * which has an error indicator, resolved address, etc.
 */

enum dns_error {
	DNS_OK,				/* No error			*/
	DNS_DOES_NOT_EXIST,		/* Error: adress does not exist	*/
	DNS_TIMEOUT,			/* Lookup time expired		*/
	DNS_ERROR			/* No memory or other error	*/
};

struct dns_cb_data {
	void			*context;
	enum dns_error		error;
	enum dns_query_type	query_type;
	const char		*name;		/* Requested host name	*/
	const unsigned char	*addr;		/* Resolved address	*/
	size_t			addr_len;	/* Resolved address len	*/
};

typedef void (*dns_callback_t)(struct dns_cb_data *);

#define	DNS_QUERY_TIMEOUT	30	/* Query timeout, seconds	*/

/*
 * The API
 */
struct dns;
extern struct dns *dns_init(void);
extern void	dns_fini(struct dns *);
extern int	dns_get_fd(struct dns *);
extern void	dns_queue(struct dns *, void *context, const char *host,
			enum dns_query_type type, dns_callback_t callback);
extern void	dns_cancel(struct dns *, const void *context);
extern int	dns_poll(struct dns *);


#define	DNS_MAX			1025	/* Maximum host name		*/
#define	DNS_PACKET_LEN		2048	/* Buffer size for DNS packet	*/
#define	MAX_CACHE_ENTRIES	10000	/* Dont cache more than that	*/
#define MAX_DNSSERVERS	8
/*
 * User query. Holds mapping from application-level ID to DNS transaction id,
 * and user defined callback function.
 */
struct query {
	struct llhead	link;		/* Link				*/
	time_t		expire;		/* Time when this query expire	*/
	uint16_t	tid;		/* UDP DNS transaction ID	*/
	uint16_t	qtype;		/* Query type			*/
	char		name[DNS_MAX];	/* Host name			*/
	void		*ctx;		/* Application context		*/
	dns_callback_t	callback;	/* User callback routine	*/
	unsigned char	addr[DNS_MAX];	/* Host address			*/
	size_t		addrlen;	/* Address length		*/
};

/*
 * Resolver descriptor.
 */
struct dns {
	int		sock;		/* UDP socket used for queries	*/
	int 	sock6;
	netadr_t salist[MAX_DNSSERVERS];		/* All DNS servers	*/
	netadr_t sa;							/* The used DNS server	*/
	int numdnsservers;
	uint16_t	tid;		/* Latest tid used		*/

	struct llhead	active;		/* Active queries, MRU order	*/
	struct llhead	cached;		/* Cached queries		*/
	int		num_cached;	/* Number of cached queries	*/
};

/*
 * DNS network packet
 */
struct header {
	uint16_t	tid;		/* Transaction ID		*/
	uint16_t	flags;		/* Flags			*/
	uint16_t	nqueries;	/* Questions			*/
	uint16_t	nanswers;	/* Answers			*/
	uint16_t	nauth;		/* Authority PRs		*/
	uint16_t	nother;		/* Other PRs			*/
	unsigned char	data[1];	/* Data, variable length	*/
};

struct dns *h_dns;

#ifdef _WIN32
// Fetches the MAC address and prints it
int GetAdaptersDetails(struct sockaddr_storage *sin, int maxcount)
{
  int i;
  IP_ADAPTER_ADDRESSES AdapterInfo[256];       // Allocate information
                                         // for up to 16 NICs
  DWORD dwBufLen = sizeof(AdapterInfo);  // Save memory size of buffer

  DWORD dwStatus = GetAdaptersAddresses(      // Call GetAdapterInfo
			AF_UNSPEC,
			GAA_FLAG_SKIP_ANYCAST | GAA_FLAG_SKIP_MULTICAST | GAA_FLAG_INCLUDE_PREFIX | GAA_FLAG_SKIP_FRIENDLY_NAME,
			NULL,
			(IP_ADAPTER_ADDRESSES*)AdapterInfo,                 // [out] buffer to receive data
			&dwBufLen);             // [in] size of receive data buffer
  
  if(dwStatus == ERROR_SUCCESS)
  {  // Verify return value is
										  // valid, no buffer overflow

	  IP_ADAPTER_ADDRESSES* pAdapterInfo = (IP_ADAPTER_ADDRESSES*)AdapterInfo; // Contains pointer to
	  i = 0;
	  do
	  {
		if(pAdapterInfo->FirstDnsServerAddress != NULL)
		{
			sin[i] = *((struct sockaddr_storage*)pAdapterInfo->FirstDnsServerAddress->Address.lpSockaddr);
			++i;
		}
		pAdapterInfo = pAdapterInfo->Next;    // Progress through linked list
	  }
	  while(pAdapterInfo);                   // Terminate if last adapter
  }
  return i;
}
#endif




/*
 * Find what DNS server to use. Return 0 if OK, -1 if error
 */
static int getdnsip(struct dns *dns)
{
	int	ret = 0;

#ifdef _WIN32
	struct sockaddr_storage sins[MAX_DNSSERVERS];
	int sock;
	int i, l;
	

	int dnscount = GetAdaptersDetails(sins, MAX_DNSSERVERS);

	//convert to netadr_t and remove duplicates
	for(i = 0, dns->numdnsservers = 0; i < dnscount; ++i)
	{
		if(sins[i].ss_family == AF_INET)
		{
			sock = dns->sock;
		}else if(sins[i].ss_family == AF_INET6){
			sock = dns->sock6;
		}
		SockadrToNetadr( (struct sockaddr*)&sins[i], &dns->salist[dns->numdnsservers], qfalse, sock);

		//Remove any duplicated dns servers
		for(l = 0; l < dns->numdnsservers; ++l)
		{
			if(NET_CompareBaseAdr(&dns->salist[dns->numdnsservers], &dns->salist[l]))
			{
				break;
			}
		}
		//Is this a new server?
		if(l == dns->numdnsservers)
		{
			dns->salist[dns->numdnsservers].port = BigShort(53);
			++dns->numdnsservers;
		}
	}
	if(dns->numdnsservers == 0)
	{
		ret = -1;
	}
#else
	FILE	*fp;
	char	line[512];
	int	a, b, c, d;

	if ((fp = fopen("/etc/resolv.conf", "r")) == NULL) {
		ret--;
	} else {
		/* Try to figure out what DNS server to use */
		for (ret--; fgets(line, sizeof(line), fp) != NULL; ) {
			if (sscanf(line, "nameserver %d.%d.%d.%d",
			   &a, &b, &c, &d) == 4) {
				dns->salist[0].ip[0] = a;
				dns->salist[0].ip[1] = b;
				dns->salist[0].ip[2] = c;
				dns->salist[0].ip[3] = d;
				ret++;
				dns->numdnsservers = 1;
				break;
			}
		}
		fclose(fp);
	}
#endif /* _WIN32 */

	return (ret);
}



struct dns* dns_init(void)
{
	struct dns	*dns;
	int		rcvbufsiz = 128 * 1024;
	struct sockaddr_in6 boundif;
	int err;

	/* FIXME resource leak here */
	if ((dns = (struct dns *) calloc(1, sizeof(*dns))) == NULL)
		return (NULL);


	dns->sock = NET_IPSocket(NULL, 1230, &err, qfalse);
	dns->sock6 = NET_IP6Socket(NULL, 1230, &boundif, &err, qfalse);

	if(dns->sock == INVALID_SOCKET && dns->sock6 == INVALID_SOCKET)
		return (NULL);

	/* Increase socket's receive buffer */
	if(dns->sock != INVALID_SOCKET)
		setsockopt(dns->sock, SOL_SOCKET, SO_RCVBUF, (char *) &rcvbufsiz, sizeof(rcvbufsiz));

	if(dns->sock6 != INVALID_SOCKET)
		setsockopt(dns->sock6, SOL_SOCKET, SO_RCVBUF, (char *) &rcvbufsiz, sizeof(rcvbufsiz));

	if (getdnsip(dns) != 0)
		return (NULL);


	LL_INIT(&dns->active);
	LL_INIT(&dns->cached);

	return (dns);
}

static void destroy_query(struct query *query)
{
	LL_DEL(&query->link);
	free(query);
}


/*
 * Cleanup
 */
void dns_shutdown(struct dns *dns)
{
	struct llhead	*lp, *tmp;
	struct query	*query;

	if (dns->sock != -1)
		(void) closesocket(dns->sock);

	if (dns->sock6 != -1)
		(void) closesocket(dns->sock6);

	LL_FOREACH_SAFE(&dns->active, lp, tmp) {
		query = LL_ENTRY(lp, struct query, link);
		destroy_query(query);
	}

	LL_FOREACH_SAFE(&dns->cached, lp, tmp) {
		query = LL_ENTRY(lp, struct query, link);
		destroy_query(query);
		dns->num_cached--;
	}
	free(dns);
}

/*
 * Fetch name from DNS packet
 */
static void fetch(const uint8_t *pkt, const uint8_t *s, int pktsiz, char *dst, int dstlen)
{
	const uint8_t	*e = pkt + pktsiz;
	int		j, i = 0, n = 0;


	while (*s != 0 && s < e) {
		if (n > 0)
			dst[i++] = '.';

		if (i >= dstlen)
			break;

		if ((n = *s++) == 0xc0) {
			s = pkt + *s;	/* New offset */
			n = 0;
		} else {
			for (j = 0; j < n && i < dstlen; j++)
				dst[i++] = *s++;
		}
	}

	dst[i] = '\0';
}

/*
 * Find host in host cache. Add it if not found.
 */
static struct query* find_cached_query(struct dns *dns, enum dns_query_type qtype, const char *name)
{
	struct llhead	*lp, *tmp;
	struct query	*query;

	LL_FOREACH_SAFE(&dns->cached, lp, tmp) {
		query = LL_ENTRY(lp, struct query, link);

		if (query->qtype == qtype && Q_stricmp(name, query->name) == 0) {
			/* Keep sorted by LRU: move to the head */
			LL_DEL(&query->link);
			LL_ADD(&dns->cached, &query->link);
			return (query);
		}
	}

	return (NULL);
}

static struct query *find_active_query(struct dns *dns, uint16_t tid)
{
	struct llhead	*lp;
	struct query	*query;

	LL_FOREACH(&dns->active, lp) {
		query = LL_ENTRY(lp, struct query, link);
		if (tid == query->tid)
			return (query);
	}

	return (NULL);
}

/*
 * User wants to cancel query
 */
void dns_cancel(struct dns *dns, const void *context)
{
	struct llhead	*lp, *tmp;
	struct query	*query;

	LL_FOREACH_SAFE(&dns->active, lp, tmp) {
		query = LL_ENTRY(lp, struct query, link);

		if (query->ctx == context) {
			destroy_query(query);
			break;
		}
	}
}

static void call_user(struct dns *dns, struct query *query, enum dns_error error)
{
	struct dns_cb_data	cbd;

	cbd.context	= query->ctx;
	cbd.query_type	= (enum dns_query_type) query->qtype;
	cbd.error	= error;
	cbd.name	= query->name;
	cbd.addr	= query->addr;
	cbd.addr_len	= query->addrlen;

	query->callback(&cbd);

	/* Move query to cache */
	LL_DEL(&query->link);
	LL_ADD(&dns->cached, &query->link);
	dns->num_cached++;
	if (dns->num_cached >= MAX_CACHE_ENTRIES) {
		query = LL_ENTRY(dns->cached.prev, struct query, link);
		destroy_query(query);
		dns->num_cached--;
	}
}

/*
 * Queue the resolution
 */
void dns_queue(struct dns *dns, void *ctx, const char *name, enum dns_query_type qtype, dns_callback_t callback)
{
	struct query	*query;
	struct header	*header;
	int		i, z, n, name_len;
	char		pkt[DNS_PACKET_LEN], *p;
	const char 	*s;
	time_t		now = time(NULL);
	struct dns_cb_data cbd;

	/* XXX Search the cache first */
	if ((query = find_cached_query(dns, qtype, name)) != NULL) {
		query->ctx = ctx;
		call_user(dns, query, DNS_OK);
		if (query->expire < now) {
			destroy_query(query);
			dns->num_cached--;
		}
		return;
	}

	/* Allocate new query */
	if ((query = (struct query *) calloc(1, sizeof(*query))) == NULL) {
		(void) memset(&cbd, 0, sizeof(cbd));
		cbd.error = DNS_ERROR;
		callback(&cbd);
		return;
	}

	/* Init query structure */
	query->ctx	= ctx;
	query->qtype	= (uint16_t) qtype;
	query->tid	= ++dns->tid;
	query->callback	= callback;
	query->expire	= now + DNS_QUERY_TIMEOUT;
	for (p = query->name; *name &&
	    p < query->name + sizeof(query->name) - 1; name++, p++)
		*p = tolower(*name);
	*p = '\0';
	name = query->name;

	/* Prepare DNS packet header */
	header		= (struct header *) pkt;
	header->tid	= query->tid;
	header->flags	= htons(0x100);		/* Haha. guess what it is */
	header->nqueries= htons(1);		/* Just one query */
	header->nanswers= 0;
	header->nauth	= 0;
	header->nother	= 0;

	/* Encode DNS name */

	name_len = strlen(name);
	p = (char *) &header->data;	/* For encoding host name into packet */

	do {
		if ((s = strchr(name, '.')) == NULL)
			s = name + name_len;

		n = s - name;			/* Chunk length */
		*p++ = n;			/* Copy length */
		for (i = 0; i < n; i++)		/* Copy chunk */
			*p++ = name[i];

		if (*s == '.')
			n++;

		name += n;
		name_len -= n;

	} while (*s != '\0');

	*p++ = 0;			/* Mark end of host name */
	*p++ = 0;			/* Well, lets put this byte as well */
	*p++ = (unsigned char) qtype;	/* Query Type */

	*p++ = 0;
	*p++ = 1;			/* Class: inet, 0x0001 */

//	assert(p < pkt + sizeof(pkt)); //Makes no sense!?
	n = p - pkt;			/* Total packet length */

	int sb;
	qboolean success = qfalse;
	if(dns->sa.type == NA_IP || dns->sa.type == NA_IP6)
	{
		sb = Sys_SendPacket( n, pkt, &dns->sa ); //Send to all available dns servers
		if(sb)
		{
			success = qtrue;
		}
	}else{
		for(z = 0; z < dns->numdnsservers; ++z)
		{
			sb = Sys_SendPacket( n, pkt, &dns->salist[z] ); //Send to all available dns servers
			if(sb)
			{
				success = qtrue;
			}
		}
	}
	if (!success)
	{
		memset(&cbd, 0, sizeof(cbd));
		cbd.error = DNS_ERROR;
		callback(&cbd);
		free(query);
	}else{
		LL_TAIL(&dns->active, &query->link);
	}
}

static void parse_udp(struct dns *dns, const unsigned char *pkt, int len)
{
	struct header		*header;
	const unsigned char	*p, *e;
	struct query		*q;
	uint32_t		ttl;
	uint16_t		type;
	char			name[1025];
	int			found, stop, dlen, nlen;

	/* We sent 1 query. We want to see more that 1 answer. */
	header = (struct header *) pkt;
	if (ntohs(header->nqueries) != 1)
		return;

	/* Return if we did not send that query */
	if ((q = find_active_query(dns, header->tid)) == NULL)
		return;

	/* Received 0 answers */
	if (header->nanswers == 0) {
		q->addrlen = 0;
		call_user(dns, q, DNS_DOES_NOT_EXIST);
		return;
	}

	/* Skip host name */
	for (e = pkt + len, nlen = 0, p = &header->data[0];
	    p < e && *p != '\0'; p++)
		nlen++;

#define	NTOHS(p)	(((p)[0] << 8) | (p)[1])

	/* We sent query class 1, query type 1 */
	if (&p[5] > e || NTOHS(p + 1) != q->qtype)
		return;

	/* Go to the first answer section */
	p += 5;

	/* Loop through the answers, we want A type answer */
	for (found = stop = 0; !stop && &p[12] < e; ) {

		/* Skip possible name in CNAME answer */
		if (*p != 0xc0) {
			while (*p && &p[12] < e)
				p++;
			p--;
		}

		type = htons(((uint16_t *)p)[1]);

		if (type == 5) {
			/* CNAME answer. shift to the next section */
			dlen = htons(((uint16_t *) p)[5]);
			p += 12 + dlen;
		} else if (type == q->qtype) {
			found = stop = 1;
		} else {
			stop = 1;
		}
	}

	if (found && &p[12] < e) {
		dlen = htons(((uint16_t *) p)[5]);
		p += 12;

		if (p + dlen <= e) {
			/* Add to the cache */
			(void) memcpy(&ttl, p - 6, sizeof(ttl));
			q->expire = time(NULL) + (time_t) ntohl(ttl);

			/* Call user */
			if (q->qtype == DNS_MX_RECORD) {
				fetch((uint8_t *) header, p + 2,
				    len, name, sizeof(name) - 1);
				p = (const unsigned char *) name;
				dlen = strlen(name);
			}
			q->addrlen = dlen;
			if (q->addrlen > sizeof(q->addr))
				q->addrlen = sizeof(q->addr);
			(void) memcpy(q->addr, p, q->addrlen);
			call_user(dns, q, DNS_OK);
		}
	}
}

static qboolean dns_responsefromvalidsource(struct dns *dns, netadr_t* from)
{
	int i;
	for(i = 0; i < dns->numdnsservers; ++i)
	{
		if(NET_CompareBaseAdr(from, &dns->salist[i]))
		{
			return qtrue;
		}
	}
	return qfalse;
}

int dns_poll(struct dns *dns)
{
	struct llhead		*lp, *tmp;
	struct query		*query;
	int			n, num_packets = 0;
	unsigned char		pkt[DNS_PACKET_LEN];
	time_t			now;
	netadr_t		from;
	now = time(NULL);

	/* Check our socket for new stuff */
	if(dns->sock6 != INVALID_SOCKET)
	{
		while ((n = NET_GetPacket(&from, pkt, sizeof(pkt), dns->sock6)) > 0 && n > (int) sizeof(struct header))
		{
			if(dns_responsefromvalidsource(dns, &from))
			{
				if(dns->sa.type == NA_BAD)
				{
					dns->sa = from;
				}
				parse_udp(dns, pkt, n);
				num_packets++;
			}
		}
	}
	if(dns->sock != INVALID_SOCKET)
	{
		while ((n = NET_GetPacket(&from, pkt, sizeof(pkt), dns->sock)) > 0 && n > (int) sizeof(struct header))
		{
			if(dns_responsefromvalidsource(dns, &from))
			{
				if(dns->sa.type == NA_BAD)
				{
					dns->sa = from;
				}
				parse_udp(dns, pkt, n);
				num_packets++;
			}
		}
	}

	/* Cleanup expired active queries */
	LL_FOREACH_SAFE(&dns->active, lp, tmp) {
		query = LL_ENTRY(lp, struct query, link);

		if (query->expire < now) {
			query->addrlen = 0;
			call_user(dns, query, DNS_TIMEOUT);
			destroy_query(query);
		}
	}

	/* Cleanup cached queries */
	LL_FOREACH_SAFE(&dns->cached, lp, tmp) {
		query = LL_ENTRY(lp, struct query, link);
		if (query->expire < now) {
			destroy_query(query);
			dns->num_cached--;
		}
	}

	return (num_packets);
}


void NET_InitDNS()
{
/*	h_dns = dns_init();
	if(h_dns == NULL)
	{
		Com_PrintError("DNS resolver couldn't get initialized! Name resolution will not work\n");
	}*/
}

void NET_ShutdownDNS()
{
	if(h_dns)
	{
		dns_shutdown(h_dns);
	}
}

typedef struct
{
	enum dns_error status;
	enum dns_query_type qtype;
	char name[1024];
	struct sockaddr_storage addr;
}dnsResolveStatus_t;

static void dns_cb(struct dns_cb_data *cbd)
{
	dnsResolveStatus_t* status = cbd->context;

	status->status = cbd->error;
	status->qtype = cbd->query_type;
	strncpy(status->name, cbd->name, sizeof(status->name));

	memset(&status->addr, 0, sizeof(status->addr));
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)&status->addr;
	struct sockaddr_in *sin = (struct sockaddr_in *)&status->addr;

	if(cbd->error == DNS_OK) {
		switch (cbd->query_type) {
		case DNS_A_RECORD:
			sin->sin_family = AF_INET;
			memcpy(&sin->sin_addr, cbd->addr, sizeof(sin->sin_addr));
			break;
		case DNS_AAAA_RECORD:
			sin6->sin6_family = AF_INET6;
			memcpy(&sin6->sin6_addr, cbd->addr, sizeof(sin6->sin6_addr));
			break;
		case DNS_MX_RECORD:
			strncpy(status->name, (char*)cbd->addr, sizeof(status->name));
			break;
		default:
			Com_Error(ERR_FATAL, "Unexpected DNS query type: %u\n", cbd->query_type);
			/* NOTREACHED */
			break;
		}
	}

}


qboolean NET_ResolveBlocking(const char *domain, struct sockaddr_storage *outaddr, sa_family_t family)
{
	enum dns_query_type	qtype;
	fd_set			set;
	int			highestfd = 0;
	struct timeval		tv = {5, 0};
	dnsResolveStatus_t resolvstatus;

	if(h_dns == NULL)
	{
		return qfalse;
	}

	if(family == AF_INET6)
		qtype = DNS_AAAA_RECORD;
	else
		qtype = DNS_A_RECORD;

	resolvstatus.status = DNS_ERROR;

	dns_queue(h_dns, &resolvstatus, domain, qtype, dns_cb);

	/* Select on resolver socket */
	FD_ZERO(&set);
	if(h_dns->sock != INVALID_SOCKET)
	{
		FD_SET(h_dns->sock, &set);
		if(h_dns->sock > highestfd)
		{
			highestfd = h_dns->sock;
		}
	}
	if(h_dns->sock6 != INVALID_SOCKET)
	{
		FD_SET(h_dns->sock6, &set);
		if(h_dns->sock6 > highestfd)
		{
			highestfd = h_dns->sock6;
		}
	}
	if (select(highestfd + 1, &set, NULL, NULL, &tv) == 1)
	{
		dns_poll(h_dns);
	}

	switch(resolvstatus.status)
	{
		case DNS_TIMEOUT:
			Com_Printf("Query timeout for [%s]\n", resolvstatus.name);
			break;
		case DNS_DOES_NOT_EXIST:
			Com_Printf("No such address: [%s]\n", resolvstatus.name);
			break;
		case DNS_ERROR:
			Com_Printf("System error occured\n");
			break;
		case DNS_OK:
			Com_Printf("Resolved: [%s]\n", resolvstatus.name);
			memcpy(outaddr, &resolvstatus.addr, sizeof(*outaddr));
			return qtrue;
	}
	return qfalse;

}