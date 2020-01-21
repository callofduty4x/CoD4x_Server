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

#include <windows.h>


LPVOID __cdecl _VirtualAlloc(LPVOID address, SIZE_T dwSize, DWORD flAllocationType, DWORD flProtect)
{
    return VirtualAlloc(address, dwSize, flAllocationType, flProtect);
}

BOOL __cdecl _VirtualFree(LPVOID lpAddress, SIZE_T dwSize, DWORD dwFreeType)
{
    return VirtualFree(lpAddress, dwSize, dwFreeType);
}

DWORD __cdecl _SleepEx(DWORD dwMilliseconds, BOOL bAlertable)
{
    return SleepEx(dwMilliseconds, bAlertable);
}

BOOL __cdecl _CloseHandle(HANDLE hObject)
{
    return CloseHandle(hObject);
}

DWORD __cdecl _GetLastError()
{
    return GetLastError();
}

void __cdecl _SetLastError(DWORD dwErrCode)
{
    return SetLastError(dwErrCode);
}

BOOL __cdecl _ReadFileEx(HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPOVERLAPPED lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine)
{
    return ReadFileEx(hFile, lpBuffer, nNumberOfBytesToRead, lpOverlapped, lpCompletionRoutine);
}

HANDLE __cdecl _CreateFileA(char *lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
{
    return CreateFileA(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
}

DWORD __cdecl _GetFileSize(HANDLE hFile, LPDWORD lpFileSizeHigh)
{
    return GetFileSize(hFile, lpFileSizeHigh);
}

DWORD __cdecl _GetFileAttributesA(const char *lpFileName)
{
    return GetFileAttributesA(lpFileName);
}

BOOL __cdecl _SetFileAttributesA(const char *lpFileName, DWORD dwFileAttributes)
{
    return SetFileAttributesA(lpFileName, dwFileAttributes);
}

