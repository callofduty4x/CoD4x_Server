/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

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

#ifdef PUNKBUSTER

CDECL int PbSvSendToAddrPort(char* netdest, unsigned short port, int msgsize, char* message);
CDECL int PbSvSendToClient(int msgsize, char* message, int clientnum);
CDECL char* PbSvGameQuery(int para_01, char* string);
qboolean PbServerInitialize(void);
void CDECL PbServerProcessEvents( int type );
const char* CDECL PbAuthClient( const char* NETAdrString, qboolean cl_punkbuster, const char* pbguid);
void CDECL PbPassConnectString( const char* NETAdrString, const char* connectstring);
void CDECL PbSvAddEvent( int event_type, int clientnum, int sizeofstring, char* string);
void CDECL PbCaptureConsoleOutput(const char *msg, int size);
void CDECL PbServerForceProcess( );
void PbCaptureConsoleOutput_wrapper(const char *msg, int msglen);
void PbServerCompleteCommand(char *string, int len);
void DisablePbSv( );
void EnablePbSv( );
#endif


