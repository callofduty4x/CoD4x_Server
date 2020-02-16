/*
===========================================================================
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

#pragma once

// this is for determining if we have an asm version of a C function
#define idx64 0

#define DLLEXPORT

//================================================================= WIN64/32 ===

#if defined(_WIN64) || defined(__WIN64__)

#undef idx64
#define idx64 1

#ifdef _MSC_VER 
#define OS_STRING "win_msvc64"
#elif defined __MINGW64__
#define OS_STRING "win_mingw64"
#endif

#define PATH_SEP '\\'

#if defined( __WIN64__ ) 
#define ARCH_STRING "x64"
#elif defined _M_ALPHA
#define ARCH_STRING "AXP"
#endif

#define Q3_LITTLE_ENDIAN

#define DLL_EXT ".dll"

#elif defined(_WIN32) || defined(__WIN32__)

#undef DLLEXPORT
#define DLLEXPORT __declspec(dllexport)

#ifdef _MSC_VER
#define OS_STRING "win_msvc"
#elif defined __MINGW32__
#define OS_STRING "win_mingw"
#endif

#define PATH_SEP '\\'

#if defined( _M_IX86 ) || defined( __i386__ )
#define ARCH_STRING "x86"
#elif defined _M_ALPHA
#define ARCH_STRING "AXP"
#endif

#define Q3_LITTLE_ENDIAN

#define DLL_EXT ".dll"

#endif


//============================================================== MAC OS X ===

#if defined(MACOS_X) || defined(__APPLE_CC__)

// make sure this is defined, just for sanity's sake...
#ifndef MACOS_X
#define MACOS_X
#endif

#define OS_STRING "macosx"
#define PATH_SEP '/'

#ifdef __ppc__
#define ARCH_STRING "ppc"
#define Q3_BIG_ENDIAN
#elif defined __i386__
#define ARCH_STRING "i386"
#define Q3_LITTLE_ENDIAN
#elif defined __x86_64__
#undef idx64
#define idx64 1
#define ARCH_STRING "x86_64"
#define Q3_LITTLE_ENDIAN
#endif

#define DLL_EXT ".dylib"

#endif

//================================================================= LINUX ===

#if defined(__linux__) || defined(__FreeBSD_kernel__)

#include <endian.h>

#if defined(__linux__)
#define OS_STRING "linux"
#else
#define OS_STRING "kFreeBSD"
#endif

#define PATH_SEP '/'

#if defined __i386__
#define ARCH_STRING "i386"
#elif defined __x86_64__
#undef idx64
#define idx64 1
#define ARCH_STRING "x86_64"
#elif defined __powerpc64__
#define ARCH_STRING "ppc64"
#elif defined __powerpc__
#define ARCH_STRING "ppc"
#elif defined __s390__
#define ARCH_STRING "s390"
#elif defined __s390x__
#define ARCH_STRING "s390x"
#elif defined __ia64__
#define ARCH_STRING "ia64"
#elif defined __alpha__
#define ARCH_STRING "alpha"
#elif defined __sparc__
#define ARCH_STRING "sparc"
#elif defined __arm__
#define ARCH_STRING "arm"
#elif defined __cris__
#define ARCH_STRING "cris"
#elif defined __hppa__
#define ARCH_STRING "hppa"
#elif defined __mips__
#define ARCH_STRING "mips"
#elif defined __sh__
#define ARCH_STRING "sh"
#endif

#if __FLOAT_WORD_ORDER == __BIG_ENDIAN
#define Q3_BIG_ENDIAN
#else
#define Q3_LITTLE_ENDIAN
#endif

#define DLL_EXT ".so"

#endif

//=================================================================== BSD ===

#if defined(__FreeBSD__) || defined(__OpenBSD__) || defined(__NetBSD__)

#include <sys/types.h>
#include <machine/endian.h>

#ifndef __BSD__
  #define __BSD__
#endif

#if defined(__FreeBSD__)
#define OS_STRING "freebsd"
#elif defined(__OpenBSD__)
#define OS_STRING "openbsd"
#elif defined(__NetBSD__)
#define OS_STRING "netbsd"
#endif

#define PATH_SEP '/'

#ifdef __i386__
#define ARCH_STRING "i386"
#elif defined __amd64__
#undef idx64
#define idx64 1
#define ARCH_STRING "amd64"
#elif defined __axp__
#define ARCH_STRING "alpha"
#endif

#if BYTE_ORDER == BIG_ENDIAN
#define Q3_BIG_ENDIAN
#else
#define Q3_LITTLE_ENDIAN
#endif

#define DLL_EXT ".so"

#endif

//================================================================= SUNOS ===

#ifdef __sun

#include <stdint.h>
#include <sys/byteorder.h>

#define OS_STRING "solaris"
#define PATH_SEP '/'

#ifdef __i386__
#define ARCH_STRING "i386"
#elif defined __sparc
#define ARCH_STRING "sparc"
#endif

#if defined( _BIG_ENDIAN )
#define Q3_BIG_ENDIAN
#elif defined( _LITTLE_ENDIAN )
#define Q3_LITTLE_ENDIAN
#endif

#define DLL_EXT ".so"

#endif

//================================================================== IRIX ===

#ifdef __sgi

#define OS_STRING "irix"
#define PATH_SEP '/'

#define ARCH_STRING "mips"

#define Q3_BIG_ENDIAN // SGI's MIPS are always big endian

#define DLL_EXT ".so"

#endif

//===========================================================================

//catch missing defines in above blocks
#if !defined( OS_STRING )
#error "Operating system not supported"
#endif

#if !defined( ARCH_STRING )
#error "Architecture not supported"
#endif

#ifndef PATH_SEP
#error "PATH_SEP not defined"
#endif

#ifndef DLL_EXT
#error "DLL_EXT not defined"
#endif


//endianness
void CopyShortSwap (void *dest, void *src);
void CopyLongSwap (void *dest, void *src);
float FloatSwap (const float f);

#if defined( Q3_BIG_ENDIAN ) && defined( Q3_LITTLE_ENDIAN )
#error "Endianness defined as both big and little"
#elif defined( Q3_BIG_ENDIAN )

#define CopyLittleShort(dest, src) CopyShortSwap(dest, src)
#define CopyLittleLong(dest, src) CopyLongSwap(dest, src)
#define LittleShort(x) ShortSwap(x)
#define LittleFloat(x) FloatSwap(&x)
#define BigShort
#define BigFloat

#elif defined( Q3_LITTLE_ENDIAN )

#define CopyLittleShort(dest, src) Com_Memcpy(dest, src, 2)
#define CopyLittleLong(dest, src) Com_Memcpy(dest, src, 4)
#define LittleShort
#define LittleLong
#define LittleFloat
#define BigShort(x) ShortSwap(x)
#define BigFloat(x) FloatSwap(&x)

#else
#error "Endianness not defined"
#endif


//platform string

#ifdef OFFICIAL
    #define PLATFORM_STRING OS_STRING "-" ARCH_STRING
#elif defined OFFICIALTESTING
    #define PLATFORM_STRING OS_STRING "-" ARCH_STRING "-testing"
#elif defined OFFICIALBETA
    #define PLATFORM_STRING OS_STRING "-" ARCH_STRING "-beta"
#elif defined OFFICIALDEBUG
    #define PLATFORM_STRING OS_STRING "-" ARCH_STRING "-debug"
#elif defined BETA
    #define PLATFORM_STRING OS_STRING "-" ARCH_STRING "-custom_beta"
#elif defined TESTING
    #define PLATFORM_STRING OS_STRING "-" ARCH_STRING "-custom_testing"
#elif defined NDEBUG
    #define PLATFORM_STRING OS_STRING "-" ARCH_STRING "-custom"
#else
    #define PLATFORM_STRING OS_STRING "-" ARCH_STRING "-custom_debug"
#endif


#ifndef WIN32

#define __stdcall __attribute__((stdcall))
#define __noreturn __attribute__((noreturn))
#define __cdecl __attribute__((cdecl))
#define __fastcall __attribute__((fastcall))
#define __optimize2 __attribute__ ((optimize("-O2")))
#define __optimize3 __attribute__ ((optimize("-O3"))) __attribute__ ((noinline))

#define DLL_PUBLIC __attribute__ ((visibility ("default")))
#define DLL_LOCAL __attribute__ ((visibility ("hidden")))

#define __align(X) __attribute__((aligned(X)))
#define __packed __attribute__((__packed__))

using DWORD = unsigned int long;
using WORD = unsigned short;

#define LOWORD(a) ((WORD)(a))
#define HIWORD(a) ((WORD)(((DWORD)(a) >> 16) & 0xFFFF))

#define __code_seg __attribute__((section(".text#")))
#include <unistd.h>
#include <errno.h>
#include <libgen.h>
#include <sys/time.h>

#else

#define __noreturn [[ noreturn ]]
#define __optimize2
#define __optimize3

#define DLL_PUBLIC __declspec(dllexport);
#define DLL_LOCAL

#define __align(X) __declspec(align(X))
#define __packed

#define __code_seg __declspec(allocate(".text"))

#include <windows.h>

#endif
