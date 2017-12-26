#ifndef __SYS_UNIX_H__
#define __SYS_UNIX_H__


typedef enum{FALSE, TRUE}BOOL;
typedef unsigned int HANDLE;
typedef pthread_t threadid_t;

#ifdef __cplusplus
extern "C"{
#endif


BOOL __cdecl _CloseHandle(HANDLE handle);
signed int __cdecl Sys_ResetEvent(HANDLE handle);
signed int __cdecl Sys_SetEvent(HANDLE handle);
HANDLE Sys_CreateEvent(qboolean bManualReset, qboolean bInitialState, const char *name);
void Sys_SetThreadName(threadid_t tid, const char* name);

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

BOOL __cdecl _ReadFileEx(HANDLE handle, void *lpBuffer, int nNumberOfBytesToRead, struct _OVERLAPPED *lpOverlapped, void (__stdcall *lpCompletionRoutine)(unsigned int,  unsigned int,  struct _OVERLAPPED *));
int __cdecl _SleepEx(int dwMilliseconds, BOOL alert);
DWORD __cdecl _GetLastError();
DWORD __cdecl _GetFileSize(HANDLE handle, DWORD *lpFileSizeHigh);

DWORD __cdecl InterlockedDecrement(DWORD volatile *Addend);
DWORD __cdecl InterlockedIncrement(DWORD volatile *Addend);
DWORD __cdecl InterlockedCompareExchange(DWORD volatile *Destination, DWORD Exchange, DWORD Comparand);
DWORD __cdecl InterlockedExchangeAdd(DWORD volatile *Addend, DWORD value);

#ifdef __cplusplus
}
#endif

#endif

