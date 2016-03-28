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

__cdecl int PbSvSendToAddrPort(char* netdest, unsigned short port, int msgsize, char* message);
__cdecl int PbSvSendToClient(int msgsize, char* message, int clientnum);
__cdecl char* PbSvGameQuery(int para_01, char* string);
qboolean PbServerInitialize(void);
void __cdecl PbServerProcessEvents( int type );
const char* __cdecl PbAuthClient( const char* NETAdrString, qboolean cl_punkbuster, const char* pbguid);
void __cdecl PbPassConnectString( const char* NETAdrString, const char* connectstring);
void __cdecl PbSvAddEvent( int event_type, int clientnum, int sizeofstring, char* string);
void __cdecl PbCaptureConsoleOutput(const char *msg, int size);
void __cdecl PbServerForceProcess( );
void PbCaptureConsoleOutput_wrapper(const char *msg, int msglen);
void PbServerCompleteCommand(char *string, int len);
void DisablePbSv( );
void EnablePbSv( );
#endif


