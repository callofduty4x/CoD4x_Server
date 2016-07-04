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

#include "../sys_patch.h"
#include "../sys_cod4loader.h"
#include "../sys_thread.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <netinet/in.h>
#include <dlfcn.h>
#include <sys/mman.h>
#include <setjmp.h>
#include <sys/time.h>
#include <unistd.h>
#include <termios.h>
#include <errno.h>
#include <assert.h>
#include <time.h>
#include <mach/mach_time.h>
#include <math.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <net/if.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <ctype.h>
#include <sys/stat.h>
#include <dirent.h>
#include <pwd.h>
#include <fcntl.h>
#include <semaphore.h>


struct lnx_stat
{
	uint64_t      st_dev;      /* Device */
	uint32_t      st_pad1;
	uint32_t      st_ino;      /* INode */
	uint32_t      st_mode;     /* Zugriffsrechte */
	uint32_t      st_nlink;    /* Anzahl harter Links */
	uint32_t      st_uid;      /* UID des Besitzers */
	uint32_t      st_gid;      /* GID des Besitzers */
	uint64_t      st_rdev;     /* Typ (wenn INode-Gerät) */
	uint32_t      st_pad2;
	uint32_t      st_size;     /* Größe in Bytes*/
	uint32_t      st_blksize;  /* Blockgröße */
	uint32_t      st_blocks;   /* Allozierte Blocks */
	struct timespec st_atim;    /* Letzter Zugriff */
	struct timespec st_mtim;    /* Letzte Modifikation */
	struct timespec st_ctim;    /* Letzte Aenderung */
};

#define __strtol_internal strtol
#define __strtod_internal strtod

void _ZdlPv(void*);
void* _Znwj(unsigned);
void _ZdaPv(void*);
void* _Znam(unsigned);


/* Dummy and wrong declarations: */

void ZNSs4_Rep10_M_destroyERKSaIcE();

void _ZNSs12_M_leak_hardEv();
void _ZNSsC1EPKcRKSaIcE();
void _ZNSs7reserveEm();
void _ZSt20__throw_out_of_rangePKc();
void _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();

void _ZNSs4_Rep10_M_destroyERKSaIcE();
void _ZN9__gnu_cxx18__exchange_and_addEPVii();
void _ZNSs6appendEPKcm();
void _ZNKSs4findEPKcmm();
void _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base();
void _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base();
void _ZNSsC1ERKSs();
void _ZNSs6assignEPKcm();
void _ZNSs9_M_mutateEmmm();
void _ZNSs6assignERKSs();


typedef enum{
     LD_dummy,
     LD_fileno,
     LD_fputs,
     LD___errno_location,
     LD_sprintf,
     LD_srand,
     LD_mkdir,
     LD_isalpha,
     LD_strerror,
     LD___cxa_atexit,
     LD__Znaj,
     LD_sysconf,
     LD___cxa_begin_catch,
     LD_qsort,
     LD__ZNSs4_Rep10_M_destroyERKSaIcE,
     LD_sem_trywait,
     LD__ZdaPv,
     LD_sqrtf,
     LD_signal,
     LD___xstat,
     LD_realloc,
     LD_isspace,
     LD_vsprintf,
     LD_localtime,
     LD_strchr,
     LD_vsnprintf,
     LD_getenv,
     LD_sem_wait,
     LD_inet_addr,
     LD_system,
     LD_strncpy,
     LD__ZNSs12_M_leak_hardEv,
     LD_write,
     LD_sendto,
     LD_sem_timedwait,
     LD_pow,
     LD_dlclose,
     LD_toupper,
     LD_rename,
     LD_memset,
     LD___strtol_internal,
     LD__ZdlPv,
     LD___libc_start_main,
     LD_execl,
     LD__exit,
     LD_strrchr,
     LD_tcgetattr,
     LD__ZNSsC1EPKcRKSaIcE,
     LD_chmod,
     LD_read,
     LD_asinf,
     LD___cxa_pure_virtual,
     LD_usleep,
     LD_readdir,
     LD_gettimeofday,
     LD_free,
     LD__ZNSs7reserveEj,
     LD_atan,
     LD___cxa_allocate_exception,
     LD_access,
     LD_atanf,
     LD_dlsym,
     LD__ZSt20__throw_out_of_rangePKc,
     LD_fflush,
     LD_sqrt,
     LD___gxx_personality_v0,
     LD_opendir,
     LD_ioctl,
     LD_socket,
     LD_fseek,
     LD_pthread_mutex_unlock,
     LD_isatty,
     LD_atan2f,
     LD_pthread_mutexattr_destroy,
     LD_fclose,
     LD__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_,
     LD_memalign,
     LD__setjmp,
     LD__ZNKSs4findEPKcjj,
     LD_acos,
     LD_memcpy,
     LD_cosf,
     LD_fopen,
     LD___cxa_throw,
     LD_cos,
     LD_unlink,
     LD_getpwuid,
     LD___strtod_internal,
     LD__ZNSs6appendEPKcj,
     LD_strcpy,
     LD_dlopen,
     LD_ftell,
     LD_longjmp,
     LD_printf,
     LD_ctime,
     LD_bind,
     LD_getuid,
     LD_pthread_mutex_init,
     LD_strcasecmp,
     LD___cxa_end_catch,
     LD_select,
     LD_closedir,
     LD_close,
     LD_fwrite,
     LD_isalnum,
     LD_fprintf,
     LD_strstr,
     LD_acosf,
     LD_time,
     LD_strncat,
     LD_remove,
     LD_malloc,
     LD_pthread_mutex_lock,
     LD_isupper,
     LD__ZN9__gnu_cxx18__exchange_and_addEPVii,
     LD_gethostname,
     LD_atan2,
     LD_fputc,
     LD_rintf,
     LD_rmdir,
     LD_dlerror,
     LD_pthread_create,
     LD__ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base,
     LD_sleep,
     LD_strncasecmp,
     LD_memmove,
     LD__ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base,
     LD_strcat,
     LD_getcwd,
     LD_sem_post,
     LD_asctime,
     LD_log,
     LD_sinf,
     LD_fork,
     LD__ZNSs6assignERKSs,
     LD_setsockopt,
     LD_tcsetattr,
     LD_fcntl,
     LD_rand,
     LD_sscanf,
     LD___fxstat,
     LD_strncmp,
     LD_vfprintf,
     LD___udivdi3,
     LD_sem_getvalue,
     LD_tan,
     LD_fread,
     LD_seteuid,
     LD_snprintf,
     LD_pthread_mutexattr_init,
     LD_sin,
     LD_strdup,
     LD_gethostbyname,
     LD___cxa_rethrow,
     LD_pthread_mutexattr_settype,
     LD_recvfrom,
     LD__Unwind_Resume,
     LD_tolower,
     LD_strcmp,
     LD_exit,
     LD__ZNSsC1ERKSs,
     LD_sem_init,
     LD_pthread_self,
     LD__ZNSs6assignEPKcj,
     LD__ZNSs9_M_mutateEjjj,
     LD_geteuid,
}plt_offset_t;

void Sys_CoD4LinkObject( plt_offset_t index, void *fun )
{
    typedef byte plt_entry[16];
    plt_entry *entry = BIN_SECT_PLT_START;
    SetJump((DWORD)&entry[index], fun);
}

void _isdead_dbg()
{
    __asm__("int $3");
}

void _isdead()
{

}

void* _memalign(int align, int numbytes)
{/* This can cause crash */
    return calloc(1, numbytes + align);
}

int* ___errno_location()
{
    static int _errorno = 0;
    return &_errorno;
}

int ___xstat(int __ver, const char *__filename, struct lnx_stat *__stat_buf)
{
	struct stat mach_stat_buf;
	struct stat *tran_stat = &mach_stat_buf;
	int ret = stat(__filename, tran_stat);
	
	__stat_buf->st_dev = tran_stat->st_dev;
	__stat_buf->st_ino = tran_stat->st_ino;	
	__stat_buf->st_mode = tran_stat->st_mode;	
	__stat_buf->st_nlink = tran_stat->st_nlink;	
	__stat_buf->st_uid = tran_stat->st_uid;	
	__stat_buf->st_gid = tran_stat->st_gid;	
	__stat_buf->st_rdev = tran_stat->st_rdev;	
	__stat_buf->st_size = tran_stat->st_size;	
	__stat_buf->st_blksize = tran_stat->st_blksize;	
	__stat_buf->st_blocks = tran_stat->st_blocks;
    __stat_buf->st_atim = tran_stat->st_atimespec;
	__stat_buf->st_mtim = tran_stat->st_mtimespec;
	__stat_buf->st_ctim = tran_stat->st_ctimespec;

	return ret;
}

int ___fxstat(int __ver, int __filedesc, struct lnx_stat *__stat_buf)
{
	struct stat mach_stat_buf;
	struct stat *tran_stat = &mach_stat_buf;
    int ret = fstat(__filedesc, tran_stat);
	
	
	__stat_buf->st_dev = tran_stat->st_dev;
	__stat_buf->st_ino = tran_stat->st_ino;	
	__stat_buf->st_mode = tran_stat->st_mode;	
	__stat_buf->st_nlink = tran_stat->st_nlink;	
	__stat_buf->st_uid = tran_stat->st_uid;	
	__stat_buf->st_gid = tran_stat->st_gid;	
	__stat_buf->st_rdev = tran_stat->st_rdev;	
	__stat_buf->st_size = tran_stat->st_size;	
	__stat_buf->st_blksize = tran_stat->st_blksize;	
	__stat_buf->st_blocks = tran_stat->st_blocks;
	__stat_buf->st_atim = tran_stat->st_atimespec;
	__stat_buf->st_mtim = tran_stat->st_mtimespec;
	__stat_buf->st_ctim = tran_stat->st_ctimespec;

	return ret;
}


void Sys_CoD4Linker()
{
     Sys_CoD4LinkObject(LD_fileno , fileno );
     Sys_CoD4LinkObject(LD_fputs , fputs );
     Sys_CoD4LinkObject(LD___errno_location , ___errno_location );
     Sys_CoD4LinkObject(LD_sprintf , sprintf );
     Sys_CoD4LinkObject(LD_srand , srand );
     Sys_CoD4LinkObject(LD_mkdir , mkdir );
     Sys_CoD4LinkObject(LD_isalpha , isalpha );
     Sys_CoD4LinkObject(LD_strerror , strerror );
     Sys_CoD4LinkObject(LD___cxa_atexit , _isdead );
     Sys_CoD4LinkObject(LD__Znaj , _Znam );
     Sys_CoD4LinkObject(LD_sysconf , sysconf );
     Sys_CoD4LinkObject(LD___cxa_begin_catch , _isdead_dbg );
     Sys_CoD4LinkObject(LD_qsort , qsort );
     Sys_CoD4LinkObject(LD__ZNSs4_Rep10_M_destroyERKSaIcE , _ZNSs4_Rep10_M_destroyERKSaIcE );
     Sys_CoD4LinkObject(LD_sem_trywait , sem_trywait );
     Sys_CoD4LinkObject(LD__ZdaPv , _ZdaPv );
     Sys_CoD4LinkObject(LD_sqrtf , sqrtf );
     Sys_CoD4LinkObject(LD_signal , _isdead_dbg );
     Sys_CoD4LinkObject(LD___xstat , ___xstat );
     Sys_CoD4LinkObject(LD_realloc , realloc );
     Sys_CoD4LinkObject(LD_isspace , isspace );
     Sys_CoD4LinkObject(LD_vsprintf , vsprintf );
     Sys_CoD4LinkObject(LD_localtime , localtime );
     Sys_CoD4LinkObject(LD_strchr , strchr );
     Sys_CoD4LinkObject(LD_vsnprintf , vsnprintf );
     Sys_CoD4LinkObject(LD_getenv , getenv );
     Sys_CoD4LinkObject(LD_sem_wait , sem_wait );
     Sys_CoD4LinkObject(LD_inet_addr , inet_addr );
     Sys_CoD4LinkObject(LD_system , system );
     Sys_CoD4LinkObject(LD_strncpy , strncpy );
     Sys_CoD4LinkObject(LD__ZNSs12_M_leak_hardEv , _ZNSs12_M_leak_hardEv );
     Sys_CoD4LinkObject(LD_write , write );
     Sys_CoD4LinkObject(LD_sendto , sendto );
     Sys_CoD4LinkObject(LD_sem_timedwait , _isdead_dbg );
     Sys_CoD4LinkObject(LD_pow , pow );
     Sys_CoD4LinkObject(LD_dlclose , dlclose );
     Sys_CoD4LinkObject(LD_toupper , toupper );
     Sys_CoD4LinkObject(LD_rename , rename );
     Sys_CoD4LinkObject(LD_memset , memset );
     Sys_CoD4LinkObject(LD___strtol_internal , __strtol_internal );
     Sys_CoD4LinkObject(LD__ZdlPv , _ZdlPv );
     Sys_CoD4LinkObject(LD___libc_start_main , _isdead_dbg );
     Sys_CoD4LinkObject(LD_execl , execl );
     Sys_CoD4LinkObject(LD__exit , _exit );
     Sys_CoD4LinkObject(LD_strrchr , strrchr );
     Sys_CoD4LinkObject(LD_tcgetattr , tcgetattr );
     Sys_CoD4LinkObject(LD__ZNSsC1EPKcRKSaIcE , _ZNSsC1EPKcRKSaIcE );
     Sys_CoD4LinkObject(LD_chmod , chmod );
     Sys_CoD4LinkObject(LD_read , read );
     Sys_CoD4LinkObject(LD_asinf , asinf );
     Sys_CoD4LinkObject(LD___cxa_pure_virtual , _isdead_dbg );
     Sys_CoD4LinkObject(LD_usleep, Sys_Sleep);
     Sys_CoD4LinkObject(LD_readdir , readdir );
     Sys_CoD4LinkObject(LD_gettimeofday , gettimeofday );
     Sys_CoD4LinkObject(LD_free , free );
     Sys_CoD4LinkObject(LD__ZNSs7reserveEj , _ZNSs7reserveEm );
     Sys_CoD4LinkObject(LD_atan , atan );
     Sys_CoD4LinkObject(LD___cxa_allocate_exception , _isdead_dbg );
     Sys_CoD4LinkObject(LD_access , access );
     Sys_CoD4LinkObject(LD_atanf , atanf );
     Sys_CoD4LinkObject(LD_dlsym , dlsym );
     Sys_CoD4LinkObject(LD__ZSt20__throw_out_of_rangePKc , _ZSt20__throw_out_of_rangePKc );
     Sys_CoD4LinkObject(LD_fflush , fflush );
     Sys_CoD4LinkObject(LD_sqrt , sqrt );
     Sys_CoD4LinkObject(LD___gxx_personality_v0 , _isdead_dbg );
     Sys_CoD4LinkObject(LD_opendir , opendir );
     Sys_CoD4LinkObject(LD_ioctl , ioctl );
     Sys_CoD4LinkObject(LD_socket , socket );
     Sys_CoD4LinkObject(LD_fseek , fseek );
     Sys_CoD4LinkObject(LD_pthread_mutex_unlock , _isdead_dbg );
     Sys_CoD4LinkObject(LD_isatty , isatty );
     Sys_CoD4LinkObject(LD_atan2f , atan2f );
     Sys_CoD4LinkObject(LD_pthread_mutexattr_destroy , _isdead_dbg );
     Sys_CoD4LinkObject(LD_fclose , fclose );
     Sys_CoD4LinkObject(LD__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_ , _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_ );
     Sys_CoD4LinkObject(LD_memalign , _memalign );
     Sys_CoD4LinkObject(LD__setjmp , _setjmp );
     Sys_CoD4LinkObject(LD__ZNKSs4findEPKcjj , _ZNKSs4findEPKcmm );
     Sys_CoD4LinkObject(LD_acos , acos );
     Sys_CoD4LinkObject(LD_memcpy , memcpy );
     Sys_CoD4LinkObject(LD_cosf , cosf );
     Sys_CoD4LinkObject(LD_fopen , fopen );
     Sys_CoD4LinkObject(LD___cxa_throw , _isdead_dbg );
     Sys_CoD4LinkObject(LD_cos , cos );
     Sys_CoD4LinkObject(LD_unlink , unlink );
     Sys_CoD4LinkObject(LD_getpwuid , getpwuid );
     Sys_CoD4LinkObject(LD___strtod_internal , __strtod_internal );
     Sys_CoD4LinkObject(LD__ZNSs6appendEPKcj , _ZNSs6appendEPKcm );
     Sys_CoD4LinkObject(LD_strcpy , strcpy );
     Sys_CoD4LinkObject(LD_dlopen , dlopen );
     Sys_CoD4LinkObject(LD_ftell , ftell );
     Sys_CoD4LinkObject(LD_longjmp , longjmp );
     Sys_CoD4LinkObject(LD_printf , printf );
     Sys_CoD4LinkObject(LD_ctime , ctime );
     Sys_CoD4LinkObject(LD_bind , bind );
     Sys_CoD4LinkObject(LD_getuid , getuid );
     Sys_CoD4LinkObject(LD_pthread_mutex_init , _isdead_dbg );
     Sys_CoD4LinkObject(LD_strcasecmp , strcasecmp );
     Sys_CoD4LinkObject(LD___cxa_end_catch , _isdead_dbg );
     Sys_CoD4LinkObject(LD_select , select );
     Sys_CoD4LinkObject(LD_closedir , closedir );
     Sys_CoD4LinkObject(LD_close , close );
     Sys_CoD4LinkObject(LD_fwrite , fwrite );
     Sys_CoD4LinkObject(LD_isalnum , isalnum );
     Sys_CoD4LinkObject(LD_fprintf , fprintf );
     Sys_CoD4LinkObject(LD_strstr , strstr );
     Sys_CoD4LinkObject(LD_acosf , acosf );
     Sys_CoD4LinkObject(LD_time , time );
     Sys_CoD4LinkObject(LD_strncat , strncat );
     Sys_CoD4LinkObject(LD_remove , remove );
     Sys_CoD4LinkObject(LD_malloc , malloc );
     Sys_CoD4LinkObject(LD_pthread_mutex_lock , _isdead_dbg );
     Sys_CoD4LinkObject(LD_isupper , isupper );
     Sys_CoD4LinkObject(LD__ZN9__gnu_cxx18__exchange_and_addEPVii , _ZN9__gnu_cxx18__exchange_and_addEPVii );
     Sys_CoD4LinkObject(LD_gethostname , gethostname );
     Sys_CoD4LinkObject(LD_atan2 , atan2 );
     Sys_CoD4LinkObject(LD_fputc , fputc );
     Sys_CoD4LinkObject(LD_rintf , rintf );
     Sys_CoD4LinkObject(LD_rmdir , rmdir );
     Sys_CoD4LinkObject(LD_dlerror , dlerror );
     Sys_CoD4LinkObject(LD_pthread_create , _isdead_dbg );
     Sys_CoD4LinkObject(LD__ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base , _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base );
     Sys_CoD4LinkObject(LD_sleep , sleep );
     Sys_CoD4LinkObject(LD_strncasecmp , strncasecmp );
     Sys_CoD4LinkObject(LD_memmove , memmove );
     Sys_CoD4LinkObject(LD__ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base , _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base );
     Sys_CoD4LinkObject(LD_strcat , strcat );
     Sys_CoD4LinkObject(LD_getcwd , getcwd );
     Sys_CoD4LinkObject(LD_sem_post , sem_post );
     Sys_CoD4LinkObject(LD_asctime , asctime );
     Sys_CoD4LinkObject(LD_log , log );
     Sys_CoD4LinkObject(LD_sinf , sinf );
     Sys_CoD4LinkObject(LD_fork , fork );
     Sys_CoD4LinkObject(LD__ZNSs6assignERKSs , _ZNSs6assignERKSs );
     Sys_CoD4LinkObject(LD_setsockopt , setsockopt );
     Sys_CoD4LinkObject(LD_tcsetattr , tcsetattr );
     Sys_CoD4LinkObject(LD_fcntl , fcntl );
     Sys_CoD4LinkObject(LD_rand , rand );
     Sys_CoD4LinkObject(LD_sscanf , sscanf );
     Sys_CoD4LinkObject(LD___fxstat , ___fxstat );
     Sys_CoD4LinkObject(LD_strncmp , strncmp );
     Sys_CoD4LinkObject(LD_vfprintf , vfprintf );
     Sys_CoD4LinkObject(LD___udivdi3 , _isdead_dbg );
     Sys_CoD4LinkObject(LD_sem_getvalue , sem_getvalue );
     Sys_CoD4LinkObject(LD_tan , tan );
     Sys_CoD4LinkObject(LD_fread , fread );
     Sys_CoD4LinkObject(LD_seteuid , seteuid );
     Sys_CoD4LinkObject(LD_snprintf , snprintf );
     Sys_CoD4LinkObject(LD_pthread_mutexattr_init , _isdead_dbg );
     Sys_CoD4LinkObject(LD_sin , sin );
     Sys_CoD4LinkObject(LD_strdup , strdup );
     Sys_CoD4LinkObject(LD_gethostbyname , gethostbyname );
     Sys_CoD4LinkObject(LD___cxa_rethrow , _isdead_dbg );
     Sys_CoD4LinkObject(LD_pthread_mutexattr_settype , _isdead_dbg );
     Sys_CoD4LinkObject(LD_recvfrom , recvfrom );
     Sys_CoD4LinkObject(LD__Unwind_Resume , _isdead_dbg );
     Sys_CoD4LinkObject(LD_tolower , tolower );
     Sys_CoD4LinkObject(LD_strcmp , strcmp );
     Sys_CoD4LinkObject(LD_exit , exit );
     Sys_CoD4LinkObject(LD__ZNSsC1ERKSs , _ZNSsC1ERKSs );
     Sys_CoD4LinkObject(LD_sem_init , sem_init );
     Sys_CoD4LinkObject(LD_pthread_self , _isdead_dbg );
     Sys_CoD4LinkObject(LD__ZNSs6assignEPKcj , _ZNSs6assignEPKcm );
     Sys_CoD4LinkObject(LD__ZNSs9_M_mutateEjjj , _ZNSs9_M_mutateEmmm );
     Sys_CoD4LinkObject(LD_geteuid , geteuid );
}
