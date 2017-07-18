#ifndef __SYS_UNIX_H__
#define __SYS_UNIX_H__


typedef enum{FALSE, TRUE}BOOL;
typedef unsigned int HANDLE;
typedef pthread_t threadid_t;

BOOL __cdecl CloseHandle(HANDLE handle);
signed int __cdecl Sys_ResetEvent(HANDLE handle);
signed int __cdecl Sys_SetEvent(HANDLE handle);
HANDLE Sys_CreateEvent(qboolean bManualReset, qboolean bInitialState, const char *name);
void Sys_SetThreadName(threadid_t tid, const char* name);

//Just for Win32 code compatibility
threadid_t Sys_CreateThreadWithHandle(void* (*ThreadMain)(void*), threadid_t *tid, void* arg);

int __cdecl GetFileAttributesA(const char* lpFileName);
BOOL __cdecl SetFileAttributesA(const char* lpFileName, unsigned int dwFileAttributes);

#endif



