#ifndef __SYS_UNIX_H__
#define __SYS_UNIX_H__


typedef enum{FALSE, TRUE}BOOL;
typedef unsigned int HANDLE;
typedef pthread_t threadid_t;

#ifdef __cplusplus
extern "C"{
#endif


BOOL __cdecl _CloseHandle(HANDLE handle);

//Just for Win32 code compatibility
threadid_t Sys_CreateThreadWithHandle(void* (*ThreadMain)(void*), threadid_t *tid, void* arg);

int __cdecl _GetFileAttributesA(const char* lpFileName);
BOOL __cdecl _SetFileAttributesA(const char* lpFileName, unsigned int dwFileAttributes);

struct _OVERLAPPED
{
  unsigned int Internal;
  unsigned int InternalHigh;
  unsigned int Offset;
  unsigned int OffsetHigh;
  HANDLE hEvent;
};

BOOL __cdecl _ReadFileEx(HANDLE handle, void *lpBuffer, int nNumberOfBytesToRead, struct _OVERLAPPED *lpOverlapped, void (__stdcall *lpCompletionRoutine)(long unsigned int, long unsigned int,  struct _OVERLAPPED *));
int __cdecl _SleepEx(int dwMilliseconds, BOOL alert);
DWORD __cdecl _GetLastError();
HANDLE __cdecl _CreateFileA(char *lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, void *lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile);
DWORD __cdecl _GetFileSize(HANDLE handle, DWORD *lpFileSizeHigh);

DWORD __cdecl Sys_InterlockedDecrement(DWORD volatile *Addend);
DWORD __cdecl Sys_InterlockedIncrement(DWORD volatile *Addend);
DWORD __cdecl Sys_InterlockedCompareExchange(DWORD volatile *Destination, DWORD Exchange, DWORD Comparand);
DWORD __cdecl Sys_InterlockedExchangeAdd(DWORD volatile *Addend, DWORD value);

void *__cdecl _VirtualAlloc(void *address, int dwSize, int flAllocationType, int flProtect);
bool __cdecl _VirtualFree(void* lpAddress, int dwSize, uint32_t dwFreeType);

typedef DWORD IDirect3DVertexBuffer9;
typedef DWORD IDirect3DIndexBuffer9;
#define InterlockedDecrement Sys_InterlockedDecrement
#define InterlockedIncrement Sys_InterlockedIncrement
#define InterlockedCompareExchange Sys_InterlockedCompareExchange
#define InterlockedExchangeAdd Sys_InterlockedExchangeAdd

#ifdef __cplusplus
}
#endif

#endif

