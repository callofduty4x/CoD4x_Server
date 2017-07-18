//############################################################################
//##                                                                        ##
//##  Miles Sound System                                                    ##
//##                                                                        ##
//##  MSS.H: Miles Sound System main header file                            ##
//##                                                                        ##
//##  Author: John Miles                                                    ##
//##                                                                        ##
//############################################################################
//##                                                                        ##
//##  Contact RAD Game Tools at 425-893-4300 for technical support.         ##
//##                                                                        ##
//############################################################################

#ifndef MSS_VERSION



#define MILESVERSION       "8.0b"     // Version string needs to be 4 characters long for benefit of MIDIECHW and SETSOUND
#define MILESMAJORVERSION  8
#define MILESMINORVERSION  0
#define MILESSUBVERSION    1
#define MILESVERSIONDATE   "04-Mar-10"
#define MILESCOPYRIGHT     "Copyright (C) 1991-2010, RAD Game Tools, Inc."



#define MSS_VERSION       MILESVERSION
#define MSS_MAJOR_VERSION MILESMAJORVERSION
#define MSS_MINOR_VERSION MILESMINORVERSION
#define MSS_SUB_VERSION   MILESSUBVERSION
#define MSS_VERSION_DATE  MILESVERSIONDATE
#define MSS_COPYRIGHT     MILESCOPYRIGHT

#endif

#ifndef MSS_H
#define MSS_H

// IS_WINDOWS for Windows or Win32
// IS_WIN64 for Win64
// IS_WIN32 for Win32
// IS_WIN32API for Windows, Xbox and Xenon
// IS_64REG when CPU registers are 64-bit - Xenon, PS3, Win64 and PS2
// IS_32 for at least 32-bit pointers
// IS_LE for little endian (PCs)
// IS_BE for big endian (Macs, x360, ps3)
// IS_X86 for Intel
// IS_MAC for Mac
// IS_MACHO for Macho Mac
// IS_PPC for PPC Mac
// IS_68K for 68K Mac
// IS_LINUX for Linux
// IS_XBOX for Xbox
// IS_XENON for Xbox 360
// IS_PS2 for PS/2
// IS_PS3 for PS/3
// IS_SPU for PS3 SPU
// IS_WII for Wii
// IS_STATIC for static versions (everything but win, mac, linux)


#ifdef IS_WINDOWS
#undef IS_WINDOWS
#endif

#ifdef IS_WIN32
#undef IS_WIN32
#endif

#ifdef IS_WIN64
#undef IS_WIN64
#endif

#ifdef IS_32
#undef IS_32
#endif

#ifdef IS_LE
#undef IS_LE
#endif

#ifdef IS_BE
#undef IS_BE
#endif

#ifdef IS_X86
#undef IS_X86
#endif

#ifdef IS_MAC
#undef IS_MAC
#endif

#ifdef IS_PPC
#undef IS_PPC
#endif

#ifdef IS_68K
#undef IS_68K
#endif

#ifdef IS_LINUX
#undef IS_LINUX
#endif

#ifdef IS_STATIC
#undef IS_STATIC
#endif

#ifdef IS_XBOX
#undef IS_XBOX
#endif

#ifdef IS_XENON
#undef IS_XENON
#endif

#ifdef IS_PSP
#undef IS_PSP
#endif

#undef MSSRESTRICT
#define MSSRESTRICT

#if defined(R5900)
  #define IS_PS2
  #define IS_32
  #define IS_64REGS
  #define IS_STATIC
  #define IS_LE
  #undef MSSRESTRICT
  #define MSSRESTRICT __restrict
#elif defined(__CELLOS_LV2__)

  #define IS_PS3
  #define IS_32
  #define IS_64REGS
  #define IS_STATIC
  #define IS_BE

  #ifdef __SPU__
    #define IS_SPU
  #else
    #define IS_PPC
    #define HOST_SPU_PROCESS
  #endif

  #ifndef __LP32__
  #error "PS3 32bit ABI support only"
  #endif

  #undef MSSRESTRICT
  #define MSSRESTRICT __restrict__
#elif defined(__psp__)
  #define IS_PSP
  #define IS_32
  #define IS_STATIC
  #define IS_LE
  #undef MSSRESTRICT
  #define MSSRESTRICT __restrict

#elif defined(HOLLYWOOD_REV) || defined(REVOLUTION)

  #define IS_WII
  #define IS_32
  #define IS_STATIC
  #define IS_BE
  #define IS_PPC

  #undef MSSRESTRICT
  #define MSSRESTRICT

#else
  #if defined(_XENON) || (_XBOX_VER == 200)

    #undef MSSRESTRICT
    #define MSSRESTRICT __restrict

    // Remember that Xenon also defines _XBOX
    #define IS_WIN32API
    #define IS_32
    #define IS_64REGS
    #define IS_BE
    #define IS_XENON
    #define IS_STATIC
    #define IS_PPC

  #else
    #ifdef _XBOX
      #define IS_WIN32API
      #define IS_32
      #define IS_LE
      #define IS_X86
      #define IS_XBOX
      #define IS_STATIC
    #else
      #if defined(_WIN32) || defined(_WIN64) || defined(WIN32) || defined(__NT__) || defined(__WIN32__)
        #define IS_WIN32API
        #define IS_WINDOWS
        #define IS_WIN32
        #define IS_32
        #define IS_LE
        #define IS_X86
        #ifndef MSS_SPU_PROCESS
        // #define HOST_SPU_PROCESS // uncomment when building spu emulation (when spu debugging on win32)
        #endif

        #if defined(_WIN64)      // We consider Win64 to be a superset of Win32!
          #define IS_WIN64
          #define IS_64REGS
        #endif

        #if _MSC_VER >= 1400
          #undef MSSRESTRICT
          #define MSSRESTRICT __restrict
        #endif

      #else
        #if (defined(__MWERKS__) && !defined(__INTEL__)) || defined(__MRC__) || defined(THINK_C) || defined(powerc) || defined(macintosh) || defined(__powerc) || defined(__APPLE__) || defined(__MACH__)

          #ifdef __APPLE__
            #include "TargetConditionals.h"
          #endif

          #define IS_MAC
          #if TARGET_API_MAC_CARBON
            #define IS_CARBON
          #endif
          #define IS_32

          #if defined(__MACHO__) || defined(__MACH__)
            #define IS_MACHO
          #elif defined(__GNUC__) || defined(__GNUG__)
            #define IS_MACHO
          #endif

          #if defined(__powerc) || defined(powerc) || defined(__POWERPC__)
            #define IS_PPC
            #define IS_BE
          #elif defined(__i386__)
            #define IS_X86
            #define IS_LE
          #else
            #if defined(__MC68K__)
              #define IS_68K
              #define IS_BE
            #endif
          #endif

          #if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
            #define IS_IPHONE
            #define IS_STATIC

            #if TARGET_IPHONE_SIMULATOR
              #define IS_IPHONESIM
            #endif

            #undef IS_X86
            #undef IS_BE
            #define IS_LE

            #define IS_CARBON
            #define IS_MACHO
          #endif

        #else
          #ifdef linux
            #define IS_LINUX
            #define IS_32
            #define IS_LE
            #ifdef i386
              #define IS_X86
            #endif
          #endif
        #endif
      #endif
    #endif
  #endif
#endif

#if (!defined(IS_LE) && !defined(IS_BE))
  #error MSS.H did not detect your platform.  Define _WINDOWS, WIN32, WIN64, or macintosh.
#endif

#if !defined(IS_PS2) && !defined(IS_PS3) && !defined(IS_PSP)

#if defined(_PUSHPOP_SUPPORTED) || PRAGMA_STRUCT_PACKPUSH
  #pragma pack(push,1)
#else
  #pragma pack(1)
#endif

#endif

//
// Pipeline filters supported on following platforms
//

#if defined(IS_WIN32API) || defined(IS_MAC) || defined(IS_LINUX) || defined(IS_PS2) || defined(IS_XENON) || defined(IS_PS3) || defined(IS_WII) | defined(IS_PSP)
   #define MSS_FLT_SUPPORTED 1
   #define EXTRA_BUILD_BUFFERS 1
   #define FLT_A (MAX_SPEAKERS)

   #if defined(IS_WIN32API)
      #define MSS_VFLT_SUPPORTED 1
   #endif
#else
   #define EXTRA_BUILD_BUFFERS 0
#endif

#if defined(IS_WIN32) || defined(IS_MAC) || defined(IS_LINUX) || defined(IS_PS2) || defined(IS_XENON) || defined(IS_PS3) || defined(IS_WII) || defined(IS_PSP)
   #define MSS_REVERB_SUPPORTED 1
#endif

//================
// doc system stuff
#define EXPAPI DXDEC
#define EXPTYPE
#define EXPMACRO
#define EXPCONST
#define EXPOUT
#define EXPGROUP(GroupName)
#define DEFGROUP(GroupName, Info)
#define EXPTYPEBEGIN
#define EXPTYPEEND

EXPGROUP(_NullGroup)
DEFGROUP(CallingConventions, Calling Conventions)
EXPGROUP(CallingConventions)
#define AILCALL EXPTAG(AILCALL) 
/*
   Internal calling convention that all external Miles functions use.

   Usually cdecl or stdcall on Windows.
*/
#define AILCALLBACK EXPTAG(AILCALLBACK docproto) 
/*
   Calling convention that user supplied callbacks <b>from</b> Miles use.

   Usually cdecl or stdcall on Windows.
*/
#define MSSSOUNDBANK 0 EXPMACRO
/*
   Internal structure.
   
   Use the handle type.
*/

EXPGROUP(_RootGroup)
#undef AILCALL
#undef AILCALLBACK
#undef MSSSOUNDBANK
//================

#ifdef __cplusplus
extern "C" {
#define RADDEFSTART extern "C" {
#define RADDEFEND }
#else
#define RADDEFSTART
#define RADDEFEND
#endif

#undef MSS_STRUCT
#define MSS_STRUCT struct

#ifdef IS_PS2

#if !defined(__MWERKS__)
#undef MSS_STRUCT
#define MSS_STRUCT struct __attribute__((__packed__))
#endif

#define AILCALLBACK //$ __attribute__((cdecl))
#define AILEXPORT //$ __attribute__((cdecl))
#define DXDEC extern
#define DXDEF
#define AILCALL //$__attribute__((cdecl))

#define HIWORD(ptr) (((U32)ptr)>>16)
#define LOWORD(ptr) ((U16)((U32)ptr))
#define WINAPI

#define FOURCC U32

#define MAKEFOURCC(ch0, ch1, ch2, ch3)                              \
              ((U32)(U8)(ch0) | ((U32)(U8)(ch1) << 8) |   \
              ((U32)(U8)(ch2) << 16) | ((U32)(U8)(ch3) << 24 ))

#define mmioFOURCC(w,x,y,z) MAKEFOURCC(w,x,y,z)

#define AILLIBCALLBACK //__attribute__((cdecl))

#define MSS_MAIN_DEF

#define MSS_REDIST_DIR_NAME "redist"

#define MSS_DIR_SEP "\\"
#define MSS_DIR_UP ".." MSS_DIR_SEP
#define MSS_DIR_UP_TWO MSS_DIR_UP MSS_DIR_UP

#else

#ifdef IS_WINDOWS

#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif

#ifndef WIN32_EXTRA_LEAN
#define WIN32_EXTRA_LEAN
#endif

#ifndef STRICT
#define STRICT
#endif

typedef char CHAR;
typedef short SHORT;
typedef int                 BOOL;
typedef long LONG;
typedef CHAR *LPSTR, *PSTR;

#ifdef IS_WIN64
  typedef unsigned __int64 ULONG_PTR, *PULONG_PTR;
#else
  #ifdef _Wp64
    #if !defined(__midl) && (defined(_X86_) || defined(_M_IX86)) && _MSC_VER >= 1300
      typedef __w64 unsigned long ULONG_PTR, *PULONG_PTR;
    #else
      typedef unsigned long ULONG_PTR, *PULONG_PTR;
    #endif
  #else
    typedef unsigned long ULONG_PTR, *PULONG_PTR;
  #endif
#endif

typedef ULONG_PTR DWORD_PTR, *PDWORD_PTR;
typedef unsigned long       DWORD;
typedef unsigned short      WORD;
typedef unsigned int        UINT;
typedef struct HWAVE__ *HWAVE;
typedef struct HWAVEIN__ *HWAVEIN;
typedef struct HWAVEOUT__ *HWAVEOUT;
typedef HWAVEIN  *LPHWAVEIN;
typedef HWAVEOUT  *LPHWAVEOUT;

#ifndef WAVE_MAPPER
#define WAVE_MAPPER     ((UINT)-1)
#endif

typedef struct waveformat_tag *LPWAVEFORMAT;

typedef struct HMIDIOUT__ *HMIDIOUT;
typedef HMIDIOUT  *LPHMIDIOUT;
typedef struct HWND__ *HWND;
typedef struct HINSTANCE__ *HINSTANCE;
typedef HINSTANCE HMODULE;
typedef struct wavehdr_tag *LPWAVEHDR;
typedef DWORD   FOURCC;         /* a four character code */

  #ifndef MAKEFOURCC

  #define MAKEFOURCC(ch0, ch1, ch2, ch3)                              \
                ((U32)(U8)(ch0) | ((U32)(U8)(ch1) << 8) |   \
                ((U32)(U8)(ch2) << 16) | ((U32)(U8)(ch3) << 24 ))
  #endif

  #ifndef mmioFOURCC
  #define mmioFOURCC(w,x,y,z) MAKEFOURCC(w,x,y,z)
  #endif


#define MSS_MAIN_DEF __cdecl

//
// If compiling MSS DLL, use __declspec(dllexport) for both
// declarations and definitions
//

#ifdef IS_WIN32

  #ifndef FORNONWIN
  #define AILLIBCALLBACK __stdcall
  #define AILCALL        __stdcall
  #define AILCALLBACK    __stdcall
  #define AILEXPORT      __stdcall
  #else
  #define AILLIBCALLBACK __cdecl
  #define AILCALL        __cdecl
  #define AILCALLBACK    __cdecl
  #define AILEXPORT      __cdecl
  #endif

  #ifdef __RADINDLL__
    #define DXDEC __declspec(dllexport)
    #define DXDEF __declspec(dllexport)
  #else

    #if defined( __BORLANDC__ ) || defined( MSS_SPU_PROCESS )
      #define DXDEC extern
    #else
      #define DXDEC __declspec(dllimport)
    #endif

  #endif

  #ifdef IS_WIN64
    #define MSSDLLNAME "MSS64.DLL"
    #define MSS_REDIST_DIR_NAME "redist64"
  #else
    #define MSSDLLNAME "MSS32.DLL"
    #define MSS_REDIST_DIR_NAME "redist"
  #endif

  #define MSS_DIR_SEP "\\"
  #define MSS_DIR_UP ".." MSS_DIR_SEP
  #define MSS_DIR_UP_TWO MSS_DIR_UP MSS_DIR_UP

#endif

typedef void * LPVOID;
typedef LPVOID AILLPDIRECTSOUND;
typedef LPVOID AILLPDIRECTSOUNDBUFFER;

#else

#ifdef IS_MAC

  #ifdef IS_X86
    #define AILLIBCALLBACK __attribute__((cdecl))
    #define AILCALL        __attribute__((cdecl))
    #define AILCALLBACK    __attribute__((cdecl))
    #define AILEXPORT      __attribute__((cdecl))

    #ifdef __RADINDLL__
      #define DXDEC __attribute__((visibility("default")))
      #define DXDEF __attribute__((visibility("default")))
    #else
      #define DXDEC extern
      #define DXDEF
    #endif

  #else
    #define AILLIBCALLBACK
    #define AILCALL
    #define AILEXPORT
    #define AILCALLBACK

    #ifdef __RADINDLL__
      #define DXDEC __attribute__((visibility("default")))
      #define DXDEF __attribute__((visibility("default")))
    #else
      #define DXDEC extern
      #define DXDEF
    #endif

  #endif

#ifdef IS_MACHO

#ifdef IS_X86
  #define MSS_REDIST_DIR_NAME "redist/macx86"
#else
  #define MSS_REDIST_DIR_NAME "redist/macho"
#endif

#define MSS_DIR_SEP "/"
#define MSS_DIR_UP ".." MSS_DIR_SEP
#define MSS_DIR_UP_TWO MSS_DIR_UP MSS_DIR_UP

#else

#ifdef IS_CARBON
#define MSS_REDIST_DIR_NAME "redist:carbon"
#define MSSDLLNAME "Miles Carbon Library"
#else
#define MSS_REDIST_DIR_NAME "redist:classic"
#define MSSDLLNAME "Miles Shared Library"
#endif

#define MSS_DIR_SEP ":"
#define MSS_DIR_UP ":" MSS_DIR_SEP
#define MSS_DIR_UP_TWO MSS_DIR_UP MSS_DIR_SEP

#endif

#define HIWORD(ptr) (((U32)ptr)>>16)
#define LOWORD(ptr) ((U16)((U32)ptr))

#define FOURCC U32

#ifndef MAKEFOURCC

#ifdef IS_LE
  #define MAKEFOURCC(ch0, ch1, ch2, ch3)                              \
                ((U32)(U8)(ch0) | ((U32)(U8)(ch1) << 8) |   \
                ((U32)(U8)(ch2) << 16) | ((U32)(U8)(ch3) << 24 ))
#else

  #define MAKEFOURCC(ch0, ch1, ch2, ch3)                              \
               (((U32)(U8)(ch0) << 24) | ((U32)(U8)(ch1) << 16) |   \
               ((U32)(U8)(ch2) <<  8) | ((U32)(U8)(ch3)      ))
#endif

#endif

#define mmioFOURCC(w,x,y,z) MAKEFOURCC(w,x,y,z)

#define MSS_MAIN_DEF

#else

#ifdef IS_LINUX

  #ifdef IS_X86
    #define AILLIBCALLBACK __attribute__((cdecl))
    #define AILCALL        __attribute__((cdecl))
    #define AILCALLBACK    __attribute__((cdecl))
    #define AILEXPORT      __attribute__((cdecl))
  #else
    #define AILLIBCALLBACK
    #define AILCALL
    #define AILEXPORT
    #define AILCALLBACK
  #endif

#define DXDEC __attribute__((visibility("default")))
#define DXDEF __attribute__((visibility("default")))


#define MSS_REDIST_DIR_NAME "redist"
#define MSSDLLNAME "Miles Shared Library"

#define MSS_DIR_SEP "/"
#define MSS_DIR_UP "../"
#define MSS_DIR_UP_TWO MSS_DIR_UP MSS_DIR_UP

#define HIWORD(ptr) (((U32)ptr)>>16)
#define LOWORD(ptr) ((U16)((U32)ptr))

#define FOURCC U32

#ifndef MAKEFOURCC

#define MAKEFOURCC(ch0, ch1, ch2, ch3)                              \
              ((U32)(U8)(ch0) | ((U32)(U8)(ch1) << 8) |   \
              ((U32)(U8)(ch2) << 16) | ((U32)(U8)(ch3) << 24 ))
#endif

#define mmioFOURCC(w,x,y,z) MAKEFOURCC(w,x,y,z)

#define MSS_MAIN_DEF

#else

#ifdef IS_XENON

  #define FOURCC U32

  #undef MAKEFOURCC  // refine it - the xtl makes a bad one

  #define MAKEFOURCC(ch0, ch1, ch2, ch3)                              \
        (((U32)(U8)(ch0) << 24) | ((U32)(U8)(ch1) << 16) |   \
              ((U32)(U8)(ch2) <<  8) | ((U32)(U8)(ch3)      ))

  #define mmioFOURCC(w,x,y,z) MAKEFOURCC(w,x,y,z)

  #define AILLIBCALLBACK __stdcall
  #define AILCALL        __stdcall
  #define AILEXPORT      __stdcall
  #define AILCALLBACK    __stdcall

  #define DXDEC extern
  #define DXDEF

  #define MSS_REDIST_DIR_NAME "redist"

  #define MSS_DIR_SEP "\\"
  #define MSS_DIR_UP ".." MSS_DIR_SEP
  #define MSS_DIR_UP_TWO MSS_DIR_UP MSS_DIR_UP

typedef void * AILLPDIRECTSOUND;
typedef void * AILLPDIRECTSOUNDBUFFER;

#else

#ifdef IS_PS3

  #undef MSS_STRUCT
  #define MSS_STRUCT struct __attribute__((__packed__))

  #define FOURCC U32

  #undef MAKEFOURCC  // refine it - the xtl makes a bad one

  #define MAKEFOURCC(ch0, ch1, ch2, ch3)                              \
        (((U32)(U8)(ch0) << 24) | ((U32)(U8)(ch1) << 16) |   \
              ((U32)(U8)(ch2) <<  8) | ((U32)(U8)(ch3)      ))

  #define mmioFOURCC(w,x,y,z) MAKEFOURCC(w,x,y,z)

  #define AILLIBCALLBACK
  #define AILCALL
  #define AILEXPORT
  #define AILCALLBACK

  #define DXDEC extern
  #define DXDEF

  #define MSS_REDIST_DIR_NAME "redist"

  #define MSS_DIR_SEP "/"
  #define MSS_DIR_UP ".." MSS_DIR_SEP
  #define MSS_DIR_UP_TWO MSS_DIR_UP MSS_DIR_UP

#elif defined(IS_PSP)

  #define FOURCC U32

  #undef MSS_STRUCT
  #define MSS_STRUCT struct __attribute__((__packed__))

  #undef MAKEFOURCC  // refine it - the xtl makes a bad one

  #define MAKEFOURCC(ch0, ch1, ch2, ch3)                              \
              ((U32)(U8)(ch0) | ((U32)(U8)(ch1) << 8) |   \
              ((U32)(U8)(ch2) << 16) | ((U32)(U8)(ch3) << 24 ))


  #define mmioFOURCC(w,x,y,z) MAKEFOURCC(w,x,y,z)

  #define AILLIBCALLBACK
  #define AILCALL
  #define AILEXPORT
  #define AILCALLBACK

  #define DXDEC extern
  #define DXDEF

  #define MSS_REDIST_DIR_NAME "redist"

  #define MSS_DIR_SEP "/"
  #define MSS_DIR_UP ".." MSS_DIR_SEP
  #define MSS_DIR_UP_TWO MSS_DIR_UP MSS_DIR_UP

#elif defined( IS_WII)

  #define FOURCC U32

  #undef MAKEFOURCC  // refine it - the xtl makes a bad one

  #define MAKEFOURCC(ch0, ch1, ch2, ch3)                              \
        (((U32)(U8)(ch0) << 24) | ((U32)(U8)(ch1) << 16) |   \
              ((U32)(U8)(ch2) <<  8) | ((U32)(U8)(ch3)      ))

  #define mmioFOURCC(w,x,y,z) MAKEFOURCC(w,x,y,z)

  #define AILLIBCALLBACK
  #define AILCALL
  #define AILEXPORT
  #define AILCALLBACK

  #define DXDEC extern
  #define DXDEF

  #define MSS_REDIST_DIR_NAME "redist"

  #define MSS_DIR_SEP "/"
  #define MSS_DIR_UP ".." MSS_DIR_SEP
  #define MSS_DIR_UP_TWO MSS_DIR_UP MSS_DIR_UP

#endif
#endif

#endif

#endif

#endif

#endif

#ifndef NULL
#define NULL 0
#endif

//
// Misc. constant definitions
//

#define MAX_DRVRS                16       // Max. # of simultaneous drivers
#define MAX_TIMERS               16       // Max. # of simultaneous timers
#define MAX_NOTES                32       // Max # of notes "on"
#define FOR_NEST                 4        // # of nested XMIDI FOR loops
#define NUM_CHANS                16       // # of possible MIDI channels
#define MAX_W_VOICES             16       // Max virtual wave synth voice cnt
#define MAX_W_ENTRIES            512      // 512 wave library entries max.
#ifdef IS_WIN32
#define MAX_SPEAKERS             9        // Up to 9 hardware output channels supported on Win32
#elif defined(IS_PS3) || defined(IS_PS2) || defined(IS_WII)
#define MAX_SPEAKERS             8        // Up to 8 hardware output channels on PS3, PS2, Wii
#elif defined(IS_PSP) || defined(IS_IPHONE)
#define MAX_SPEAKERS             2        // Up to 2 hardware output channels on PSP
#else
#define MAX_SPEAKERS             6        // Up to 6 hardware output channels supported on other platforms
#endif
#define MAX_RECEIVER_SPECS       32       // Up to 32 receiver point specifications

#define MIN_CHAN                 ( 1-1)   // Min channel recognized (0-based)
#define MAX_CHAN                 (16-1)   // Max channel recognized
#define MIN_LOCK_CHAN            ( 1-1)   // Min channel available for locking
#define MAX_LOCK_CHAN            (16-1)   // Max channel available for locking
#define PERCUSS_CHAN             (10-1)   // Percussion channel (no locking)

#define AIL_MAX_FILE_HEADER_SIZE 8192     // AIL_set_named_sample_file() requires at least 8K
                                          // of data or the entire file image, whichever is less,
                                          // to determine sample format
#define DIG_F_16BITS_MASK          1
#define DIG_F_STEREO_MASK          2
#define DIG_F_ADPCM_MASK           4
#define DIG_F_XBOX_ADPCM_MASK      8
#define DIG_F_MULTICHANNEL_MASK    16
#define DIG_F_OUTPUT_FILTER_IN_USE 32

#define DIG_F_MONO_8                     0        // PCM data formats
#define DIG_F_MONO_16                    (DIG_F_16BITS_MASK)
#define DIG_F_STEREO_8                   (DIG_F_STEREO_MASK)
#define DIG_F_MULTICHANNEL_8             (DIG_F_MULTICHANNEL_MASK)   // (not actually supported)
#define DIG_F_STEREO_16                  (DIG_F_STEREO_MASK|DIG_F_16BITS_MASK)
#define DIG_F_MULTICHANNEL_16            (DIG_F_MULTICHANNEL_MASK|DIG_F_16BITS_MASK)
#define DIG_F_ADPCM_MONO_16              (DIG_F_ADPCM_MASK |DIG_F_16BITS_MASK)
#define DIG_F_ADPCM_STEREO_16            (DIG_F_ADPCM_MASK |DIG_F_16BITS_MASK|DIG_F_STEREO_MASK)
#define DIG_F_ADPCM_MULTICHANNEL_16      (DIG_F_ADPCM_MASK |DIG_F_16BITS_MASK|DIG_F_STEREO_MASK)
#define DIG_F_XBOX_ADPCM_MONO_16         (DIG_F_XBOX_ADPCM_MASK |DIG_F_16BITS_MASK)
#define DIG_F_XBOX_ADPCM_STEREO_16       (DIG_F_XBOX_ADPCM_MASK |DIG_F_16BITS_MASK|DIG_F_STEREO_MASK)
#define DIG_F_XBOX_ADPCM_MULTICHANNEL_16 (DIG_F_XBOX_ADPCM_MASK |DIG_F_16BITS_MASK|DIG_F_MULTICHANNEL_MASK)

#define DIG_F_NOT_8_BITS (DIG_F_16BITS_MASK | DIG_F_ADPCM_MASK | DIG_F_XBOX_ADPCM_MASK | DIG_F_MULTICHANNEL_MASK)

#define DIG_F_USING_ASI          16

#define DIG_PCM_POLARITY         0x0004   // PCM flags used by driver hardware
#define DIG_PCM_SPLIT            0x0008
#define DIG_BUFFER_SERVICE       0x0010
#define DIG_DUAL_DMA             0x0020
#define DIG_RECORDING_SUPPORTED  0x8000

#ifndef WAVE_FORMAT_PCM
  #define WAVE_FORMAT_PCM          1
#endif
#ifndef WAVE_FORMAT_IMA_ADPCM
  #define WAVE_FORMAT_IMA_ADPCM    0x0011
#endif
#ifndef WAVE_FORMAT_XBOX_ADPCM
  #define WAVE_FORMAT_XBOX_ADPCM   0x0069
#endif
#ifndef WAVE_FORMAT_EXTENSIBLE
  #define WAVE_FORMAT_EXTENSIBLE   0xFFFE
#endif

typedef enum
{
   MSS_SPEAKER_MONO                  = 0,
   MSS_SPEAKER_FRONT_LEFT            = 0,     // Speaker order indexes correspond to
   MSS_SPEAKER_FRONT_RIGHT           = 1,     // bitmasks in PSDK's ksmedia.h
   MSS_SPEAKER_FRONT_CENTER          = 2,     // Also see microsoft.com/whdc/device/audio/multichaud.mspx
   MSS_SPEAKER_LOW_FREQUENCY         = 3,
   MSS_SPEAKER_BACK_LEFT             = 4,
   MSS_SPEAKER_BACK_RIGHT            = 5,
   MSS_SPEAKER_FRONT_LEFT_OF_CENTER  = 6,
   MSS_SPEAKER_FRONT_RIGHT_OF_CENTER = 7,
   MSS_SPEAKER_BACK_CENTER           = 8,
   MSS_SPEAKER_SIDE_LEFT             = 9,
   MSS_SPEAKER_SIDE_RIGHT            = 10,
   MSS_SPEAKER_TOP_CENTER            = 11,
   MSS_SPEAKER_TOP_FRONT_LEFT        = 12,
   MSS_SPEAKER_TOP_FRONT_CENTER      = 13,
   MSS_SPEAKER_TOP_FRONT_RIGHT       = 14,
   MSS_SPEAKER_TOP_BACK_LEFT         = 15,
   MSS_SPEAKER_TOP_BACK_CENTER       = 16,
   MSS_SPEAKER_TOP_BACK_RIGHT        = 17,
   MSS_SPEAKER_MAX_INDEX             = 17
}
MSS_SPEAKER;

//
// Pass to AIL_midiOutOpen for NULL MIDI driver
//

#define MIDI_NULL_DRIVER ((U32)(S32)-2)


//
// Non-specific XMIDI/MIDI controllers and event types
//

#define SYSEX_BYTE        105
#define PB_RANGE          106
#define CHAN_MUTE         107
#define CALLBACK_PFX      108
#define SEQ_BRANCH        109
#define CHAN_LOCK         110
#define CHAN_PROTECT      111
#define VOICE_PROTECT     112
#define TIMBRE_PROTECT    113
#define PATCH_BANK_SEL    114
#define INDIRECT_C_PFX    115
#define FOR_LOOP          116
#define NEXT_LOOP         117
#define CLEAR_BEAT_BAR    118
#define CALLBACK_TRIG     119
#define SEQ_INDEX         120

#define GM_BANK_MSB       0
#define MODULATION        1
#define DATA_MSB          6
#define PART_VOLUME       7
#define PANPOT            10
#define EXPRESSION        11
#define GM_BANK_LSB       32
#define DATA_LSB          38
#define SUSTAIN           64
#define REVERB            91
#define CHORUS            93
#define RPN_LSB           100
#define RPN_MSB           101
#define RESET_ALL_CTRLS   121
#define ALL_NOTES_OFF     123

#define EV_NOTE_OFF       0x80
#define EV_NOTE_ON        0x90
#define EV_POLY_PRESS     0xa0
#define EV_CONTROL        0xb0
#define EV_PROGRAM        0xc0
#define EV_CHAN_PRESS     0xd0
#define EV_PITCH          0xe0
#define EV_SYSEX          0xf0
#define EV_ESC            0xf7
#define EV_META           0xff

#define META_EOT          0x2f
#define META_TEMPO        0x51
#define META_TIME_SIG     0x58

//
// SAMPLE.system_data[] usage
//

#define VOC_BLK_PTR       1  // Pointer to current block
#define VOC_REP_BLK       2  // Pointer to beginning of repeat loop block
#define VOC_N_REPS        3  // # of iterations left in repeat loop
#define VOC_MARKER        4  // Marker to search for, or -1 if all
#define VOC_MARKER_FOUND  5  // Desired marker found if 1, else 0
#define STR_HSTREAM       6  // Stream, if any, that owns the HSAMPLE
#define SSD_TEMP          7  // Temporary storage location for general use

//
// Timer status values
//

#define AILT_FREE         0         // Timer handle is free for allocation
#define AILT_STOPPED      1         // Timer is stopped
#define AILT_RUNNING      2         // Timer is running

//
// SAMPLE.status flag values
//

#define SMP_FREE          0x0001    // Sample is available for allocation

#define SMP_DONE          0x0002    // Sample has finished playing, or has
                                    // never been started

#define SMP_PLAYING       0x0004    // Sample is playing

#define SMP_STOPPED       0x0008    // Sample has been stopped

#define SMP_PLAYINGBUTRELEASED 0x0010 // Sample is playing, but digital handle
                                      // has been temporarily released



//
// SEQUENCE.status flag values
//

#define SEQ_FREE          0x0001    // Sequence is available for allocation

#define SEQ_DONE          0x0002    // Sequence has finished playing, or has
                                    // never been started

#define SEQ_PLAYING       0x0004    // Sequence is playing

#define SEQ_STOPPED       0x0008    // Sequence has been stopped

#define SEQ_PLAYINGBUTRELEASED 0x0010 // Sequence is playing, but MIDI handle
                                      // has been temporarily released

#ifdef IS_WINDOWS

//
// AIL_set_direct_buffer_control() command values
//

#define AILDS_RELINQUISH  0         // App returns control of secondary buffer
#define AILDS_SEIZE       1         // App takes control of secondary buffer
#define AILDS_SEIZE_LOOP  2         // App wishes to loop the secondary buffer

#endif

//
// General type definitions for portability
//

#ifndef C8
#define C8 char
#endif

#ifndef U8
#define U8 unsigned char
#endif

#ifndef S8
#define S8 signed char
#endif

#ifndef U16
#define U16 unsigned short
#endif

#ifndef S16
#define S16 signed short
#endif

typedef void VOIDFUNC(void);

#ifdef IS_PS2

#ifndef U128
#define U128 u_long128
#endif

#ifndef U64
#define U64 unsigned long
#endif

#ifndef S64
#define S64 signed long
#endif

#ifndef U32
#define U32 unsigned int
#endif

#ifndef S32
#define S32 signed int
#endif

#ifndef UINTa
#define UINTa unsigned int
#endif

#ifndef SINTa
#define SINTa signed int
#endif

#else

#ifdef IS_PS3

#ifndef U64
#define U64 unsigned long long
#endif

#ifndef S64
#define S64 signed long long
#endif

#ifndef U32
#define U32 unsigned int
#endif

#ifndef S32
#define S32 signed int
#endif

#ifndef UINTa
#define UINTa unsigned int
#endif

#ifndef SINTa
#define SINTa signed int
#endif

#elif defined(IS_PSP)

#ifndef U64
#define U64 unsigned long long
#endif

#ifndef S64
#define S64 signed long long
#endif

#ifndef U32
#define U32 unsigned int
#endif

#ifndef S32
#define S32 signed int
#endif

#ifndef UINTa
#define UINTa unsigned int
#endif

#ifndef SINTa
#define SINTa signed int
#endif

#else

#ifdef IS_16

#ifndef U32
#define U32 unsigned long
#endif

#ifndef S32
#define S32 signed long
#endif

#ifndef UINTa
#define UINTa unsigned long
#endif

#ifndef SINTa
#define SINTa signed long
#endif
#else

#if defined(IS_MAC) || defined(IS_WII) || defined(IS_LINUX)


#ifndef U64
#define U64 unsigned long long
#endif

#ifndef S64
#define S64 signed long long
#endif

#else

#ifndef U64
#define U64 unsigned __int64
#endif

#ifndef S64
#define S64 signed __int64
#endif

#endif

#ifndef U32
#define U32 unsigned int
#endif

#ifndef S32
#define S32 signed int
#endif

#ifdef _WIN64

#ifndef UINTa
#define UINTa unsigned __int64
#endif

#ifndef SINTa
#define SINTa signed __int64
#endif

#else

#ifdef _Wp64

#if !defined(__midl) && (defined(_X86_) || defined(_M_IX86)) && _MSC_VER >= 1300

#ifndef UINTa
typedef __w64 unsigned long UINTa;
#define UINTa UINTa
#endif

#ifndef SINTa
typedef __w64 signed long SINTa;
#define SINTa SINTa
#endif

#else

#ifndef UINTa
#define UINTa unsigned long
#endif

#ifndef SINTa
#define SINTa signed long
#endif
#endif

#else

#ifndef UINTa
#define UINTa unsigned int
#endif

#ifndef SINTa
#define SINTa signed int
#endif

#endif

#endif

#endif

#endif

#endif

#ifndef F32
#define F32 float
#endif

#ifndef F64
#define F64 double
#endif

#ifndef MSS_BASIC

#ifndef FILE_ERRS
#define FILE_ERRS

#define AIL_NO_ERROR        0
#define AIL_IO_ERROR        1
#define AIL_OUT_OF_MEMORY   2
#define AIL_FILE_NOT_FOUND  3
#define AIL_CANT_WRITE_FILE 4
#define AIL_CANT_READ_FILE  5
#define AIL_DISK_FULL       6

#endif

#define MIN_VAL 0
#define NOM_VAL 1
#define MAX_VAL 2


EXPGROUP(Basic Types)
EXPTYPEBEGIN typedef SINTa HMSSENUM;
#define MSS_FIRST ((HMSSENUM)-1)
EXPTYPEEND
/*
  specifies a type used to enumerate through a list of properties.
  
  $:MSS_FIRST use this value to start the enumeration process.
  
  HMSSENUM is the Miles enumeration type. 
  
The Miles enumeration functions all work similarly - you set a local variable of type $HMSSENUM to $(HMSSENUM::MSS_FIRST)[MSS_FIRST] and then call
the enumeration function until it returns 0.
*/
EXPGROUP(_RootGroup)



//
// Preference names and default values
//

#define DIG_RESAMPLING_TOLERANCE   0
#define DEFAULT_DRT                131    // Resampling triggered at +/- 0.2%

#define DIG_MIXER_CHANNELS         1
#define DEFAULT_DMC                64     // 64 allocatable SAMPLE structures

#define DIG_MAX_PREDELAY_MS        2
#define DEFAULT_MPDMS              500    // Max predelay reverb time in ms

#define MDI_SERVICE_RATE           3
#define DEFAULT_MSR                120    // XMIDI sequencer timing = 120 Hz

#define MDI_SEQUENCES              4
#define DEFAULT_MS                 8      // 8 sequence handles/driver

#define MDI_DEFAULT_VOLUME         5
#define DEFAULT_MDV                127    // Default sequence volume = 127 (0-127)

#define MDI_QUANT_ADVANCE          6
#define DEFAULT_MQA                1      // Beat/bar count +1 interval

#define MDI_ALLOW_LOOP_BRANCHING   7
#define DEFAULT_ALB                NO     // Branches cancel XMIDI FOR loops

#define MDI_DEFAULT_BEND_RANGE     8
#define DEFAULT_MDBR               2      // Default pitch-bend range = 2

#define DIG_3D_MUTE_AT_MAX        46
#define DEFAULT_D3MAM             NO      // off by default

#if defined(IS_WINDOWS) 

#define MDI_DOUBLE_NOTE_OFF        9
#define DEFAULT_MDNO               NO     // For stuck notes on SB daughterboards

#endif

#define DIG_ENABLE_RESAMPLE_FILTER 31     // Enable resampling filter by
#define DEFAULT_DERF               YES    // default

#if defined(IS_WINDOWS) || defined(IS_MAC) || defined(IS_LINUX)

#define MDI_SYSEX_BUFFER_SIZE      10
#define DEFAULT_MSBS               1536   // Default sysex buffer = 1536 bytes

#define DIG_OUTPUT_BUFFER_SIZE     11
#define DEFAULT_DOBS               49152  // 48K output buffer size

#define AIL_MM_PERIOD              12

#if defined(IS_WINDOWS)
#define DEFAULT_AMP                5      // Default MM timer period = 5 msec.
#else
#define DEFAULT_AMP                15     // Default MM timer period = 15 msec (mac and linux)
#endif

#endif

#ifdef IS_PS2

#define MDI_SYSEX_BUFFER_SIZE      10
#define DEFAULT_MSBS               1536   // Default sysex buffer = 1536 bytes

#define AIL_MM_PERIOD              12
#define DEFAULT_AMP                5      // Default MM timer period = 5 msec.

#define AIL_TIMERS                 13
#define DEFAULT_AT                 16     // 16 allocatable HTIMER handles

#define AIL_MUTEX_PROTECTION       44
#define DEFAULT_AMPR               YES    // Lock each call into Miles with a mutex

#define DIG_DS_FRAGMENT_SIZE       34
#define DEFAULT_DDFS               12     // Use 12 millisecond buffer fragments with PS2

#define DIG_DS_FRAGMENT_CNT        35
#define DEFAULT_DDFC               32     // Use 32 buffers with PS2

#define AIL_LOCK_PROTECTION        18
#define DEFAULT_ALP                NO     // Don't suspend foreground thread by default

#endif

#ifdef IS_PS3

#define MDI_SYSEX_BUFFER_SIZE      10
#define DEFAULT_MSBS               1536   // Default sysex buffer = 1536 bytes

#define DIG_DS_FRAGMENT_SIZE       34
#define DEFAULT_DDFS               5     // Use 5 millisecond buffer fragments

#define DIG_DS_FRAGMENT_CNT        35
#define DEFAULT_DDFC               32     // Use 32 buffer fragments

#define DIG_DS_MIX_FRAGMENT_CNT    42
#define DEFAULT_DDMFC              8      // Mix ahead 8 buffer fragments


#define AIL_MM_PERIOD              12
#define DEFAULT_AMP                5      // Default MM timer period = 5 msec.

#define AIL_TIMERS                 13
#define DEFAULT_AT                 16     // 16 allocatable HTIMER handles

#define AIL_MUTEX_PROTECTION       44
#define DEFAULT_AMPR               YES    // Lock each call into Miles with a mutex

#define AIL_LOCK_PROTECTION        18
#define DEFAULT_ALP                NO     // Don't suspend foreground thread by default

#endif

#if defined(IS_PSP)

#define MDI_SYSEX_BUFFER_SIZE      10
#define DEFAULT_MSBS               1536   // Default sysex buffer = 1536 bytes

#define DIG_DS_FRAGMENT_SIZE       34
#define DEFAULT_DDFS               8     // Use 10 millisecond buffer fragments

#define DIG_DS_FRAGMENT_CNT        35
#define DEFAULT_DDFC               32     // Use 32 buffer fragments

#define DIG_DS_MIX_FRAGMENT_CNT    42
#define DEFAULT_DDMFC              8     // Mix ahead 10 buffer fragments


#define AIL_MM_PERIOD              12
#define DEFAULT_AMP                5      // Default MM timer period = 5 msec.

#define AIL_TIMERS                 13
#define DEFAULT_AT                 16     // 16 allocatable HTIMER handles

#define AIL_MUTEX_PROTECTION       44
#define DEFAULT_AMPR               YES    // Lock each call into Miles with a mutex

#define AIL_LOCK_PROTECTION        18
#define DEFAULT_ALP                NO     // Don't suspend foreground thread by default

#endif

#if defined(IS_IPHONE)

#define MDI_SYSEX_BUFFER_SIZE      10
#define DEFAULT_MSBS               1536   // Default sysex buffer = 1536 bytes

#define DIG_DS_FRAGMENT_SIZE       34
#define DEFAULT_DDFS               8     // Use 10 millisecond buffer fragments

#define DIG_DS_FRAGMENT_CNT        35
#define DEFAULT_DDFC               32     // Use 32 buffer fragments

#define DIG_DS_MIX_FRAGMENT_CNT    42
#define DEFAULT_DDMFC              8     // Mix ahead 10 buffer fragments

#define AIL_TIMERS                 13
#define DEFAULT_AT                 16     // 16 allocatable HTIMER handles

#define AIL_MUTEX_PROTECTION       44
#define DEFAULT_AMPR               YES    // Lock each call into Miles with a mutex

#define AIL_LOCK_PROTECTION        18
#define DEFAULT_ALP                NO     // Don't suspend foreground thread by default

#endif

#ifdef IS_WII

#define MDI_SYSEX_BUFFER_SIZE      10
#define DEFAULT_MSBS               1536   // Default sysex buffer = 1536 bytes

#define DIG_DS_FRAGMENT_CNT        35
#define DEFAULT_DDFC               96     // Use 96 buffer fragments (of 1 sec buffer)

#define DIG_DS_MIX_FRAGMENT_CNT    42
#define DEFAULT_DDMFC              3      // Mix ahead 3 buffer fragments


#define AIL_MM_PERIOD              12
#define DEFAULT_AMP                5      // Default MM timer period = 5 msec.

#define AIL_TIMERS                 13
#define DEFAULT_AT                 16     // 16 allocatable HTIMER handles

#endif

#ifdef IS_XENON

#define MDI_SYSEX_BUFFER_SIZE      10
#define DEFAULT_MSBS               1536   // Default sysex buffer = 1536 bytes

#define DIG_DS_FRAGMENT_SIZE       34
#define DEFAULT_DDFS               16     // Use 16 millisecond buffer fragments

#define DIG_DS_FRAGMENT_CNT        35
#define DEFAULT_DDFC               48     // Use 48 buffer fragments

#define DIG_DS_MIX_FRAGMENT_CNT    42
#define DEFAULT_DDMFC              4      // Mix ahead 4 buffer fragments


#define AIL_MM_PERIOD              12
#define DEFAULT_AMP                7      // Default MM timer period = 7 msec.

#define AIL_TIMERS                 13
#define DEFAULT_AT                 16     // 16 allocatable HTIMER handles

#define AIL_MUTEX_PROTECTION       44
#define DEFAULT_AMPR               YES    // Lock each call into Miles with a mutex

#define AIL_LOCK_PROTECTION        18
#define DEFAULT_ALP                NO     // Don't suspend foreground thread by default

#endif

#ifdef IS_LINUX

#define AIL_TIMERS                 13
#define DEFAULT_AT                 16     // 16 allocatable HTIMER handles

#define AIL_MUTEX_PROTECTION       44
#define DEFAULT_AMPR               YES    // Lock each call into Miles with a mutex

#define DIG_DS_FRAGMENT_SIZE       34
#define DEFAULT_DDFS               5     // Use 5 millisecond buffer fragments

#define DIG_DS_FRAGMENT_CNT        35
#define DEFAULT_DDFC               32     // Use 32 buffer fragments

#define DIG_DS_MIX_FRAGMENT_CNT    42
#define DEFAULT_DDMFC              8      // Mix ahead 8 buffer fragments

#define AIL_LOCK_PROTECTION        18
#define DEFAULT_ALP                NO     // Don't suspend foreground thread by default

#endif

#ifdef IS_MAC

//
//#define MDI_SYSEX_BUFFER_SIZE      10
//#define DEFAULT_MSBS               1536   // Default sysex buffer = 1536 bytes

#define DIG_DS_FRAGMENT_SIZE       34
#define DEFAULT_DDFS               8     // Use 10 millisecond buffer fragments

#define DIG_DS_FRAGMENT_CNT        35
#define DEFAULT_DDFC               32     // Use 32 buffer fragments

#define DIG_DS_MIX_FRAGMENT_CNT    42
#define DEFAULT_DDMFC              8     // Mix ahead 10 buffer fragments

#define AIL_TIMERS                 13
#define DEFAULT_AT                 16     // 16 allocatable HTIMER handles

#define AIL_MUTEX_PROTECTION       44
#define DEFAULT_AMPR               YES    // Lock each call into Miles with a mutex

#define AIL_LOCK_PROTECTION        18
#define DEFAULT_ALP                NO     // Don't suspend foreground thread by default

#endif

#if defined(IS_WINDOWS)

#define DIG_DS_FRAGMENT_SIZE       34
#define DEFAULT_DDFS               8      // Use 8 millisecond buffer fragments with DirectSound if MSS mixer in use

#define DIG_DS_FRAGMENT_CNT        35
#define DEFAULT_DDFC               96     // Use 96 buffer fragments with DirectSound if MSS mixer in use

#define DIG_DS_MIX_FRAGMENT_CNT    42
#define DEFAULT_DDMFC              8      // Mix ahead 8 buffer fragments

#define DIG_DS_USE_PRIMARY         36
#define DEFAULT_DDUP               NO     // Mix into secondary DirectSound buffer by default

#define DIG_DS_DSBCAPS_CTRL3D      37
#define DEFAULT_DDDC               NO     // Do not use DSBCAPS_CTRL3D by default

#define DIG_DS_CREATION_HANDLER    38
#define DEFAULT_DDCH               NULL   // Use DirectSoundCreate() by default

#define AIL_TIMERS                 13
#define DEFAULT_AT                 16     // 16 allocatable HTIMER handles

#define DIG_MAX_CHAIN_ELEMENT_SIZE 14
#define DEFAULT_MCES               8192   // max of 8192 bytes/waveOut buffer

#define DIG_MIN_CHAIN_ELEMENT_TIME 45
#define DEFAULT_MCET               100    // 100 milliseconds buffers

#define DIG_USE_WAVEOUT            15
#define DEFAULT_DUW                NO     // Use DirectSound by default

#define DIG_DS_SECONDARY_SIZE      16
#define DEFAULT_DDSS               (32*1024L)  // Must be 2^n -- use 32K by default

#define DIG_DS_SAMPLE_CEILING      17
#define DEFAULT_DDSC               44100  // Allow up to 44 kHz samples

#define AIL_LOCK_PROTECTION        18
#define DEFAULT_ALP                NO     // Don't suspend foreground thread by default

#define AIL_MUTEX_PROTECTION       44
#define DEFAULT_AMPR               YES    // Lock each call into Miles with a mutex

#define DIG_PREFERRED_WO_DEVICE    40
#define DEFAULT_DPWOD              WAVE_MAPPER  // Preferred WaveOut device == WAVE_MAPPER

#define DIG_PREFERRED_DS_DEVICE    47
#define DEFAULT_DPDSD              0            // Preferred DirectSound device == default NULL GUID

#endif

// ----------------------------------
// DLS Preference names and default values
// Unless otherwise specified, values must be established
// BEFORE calling DLSMSSOpen()!
// ----------------------------------

#define DLS_TIMEBASE               20
#define DEFAULT_DTB                120  // 120 intervals/second by default

#define DLS_VOICE_LIMIT            21
#define DEFAULT_DVL                64   // 64 voices supported

#define DLS_BANK_SELECT_ALIAS      22
#define DEFAULT_DBSA               NO   // Do not treat controller 114 as bank

#define DLS_STREAM_BOOTSTRAP       23   // Don't submit first stream buffer
#define DEFAULT_DSB                YES  // until at least 2 available

#define DLS_VOLUME_BOOST           24
#define DEFAULT_DVB                0    // Boost final volume by 0 dB

#define DLS_ENABLE_FILTERING       25   // Filtering = on by default
#define DEFAULT_DEF                YES  // (may be changed at any time)

#ifdef IS_X86

#define AIL_ENABLE_MMX_SUPPORT     27   // Enable MMX support if present
#define DEFAULT_AEMS               YES  // (may be changed at any time)

#endif

#define DLS_GM_PASSTHROUGH         28   // Pass unrecognized traffic on to
#define DEFAULT_DGP                YES  // default GM driver layer
                                        // (may be changed at any time)

#define DLS_ADPCM_TO_ASI_THRESHOLD 39   // Size in samples to switch to ASI
#define DEFAULT_DATAT              32768

//
// Add'l platform-independent prefs
//

#define DIG_INPUT_LATENCY          41   // Use >= 250-millisecond input buffers if
#define DEFAULT_DIL                250  // explicit size request cannot be satisfied

#ifdef IS_WINDOWS

#define DIG_USE_WAVEIN             43
#define DEFAULT_DUWI               YES  // Use waveIn for input by default

#endif

#define DIG_LEVEL_RAMP_SAMPLES     48
#define DEFAULT_DLRS               32  // Ramp level changes over first 32 samples in each buffer to reduce zipper noise

#define DIG_ENCODE_QUALITY_PERCENT 49
#define DEFAULT_DEQP               50  // Default encoding quality (e.g., for DTS) = 50%

#define N_PREFS 51                      // # of preference types

typedef struct Mwavehdr_tag {
    C8 *       lpData;
    U32       dwBufferLength;
    U32       dwBytesRecorded;
    UINTa   dwUser;
    U32       dwFlags;
    U32       dwLoops;
    struct Mwavehdr_tag  *lpNext;
    UINTa   reserved;
} MWAVEHDR;
typedef MSS_STRUCT Mwaveformat_tag {
    U16    wFormatTag;
    U16    nChannels;
    U32    nSamplesPerSec;
    U32    nAvgBytesPerSec;
    U16    nBlockAlign;
} MWAVEFORMAT;
typedef MSS_STRUCT Mpcmwaveformat_tag {
    MWAVEFORMAT  wf;
    U16        wBitsPerSample;
} MPCMWAVEFORMAT;
typedef MSS_STRUCT Mwaveformatex_tag {
    U16    wFormatTag;
    U16    nChannels;
    U32    nSamplesPerSec;
    U32    nAvgBytesPerSec;
    U16    nBlockAlign;
    U16    wBitsPerSample;
    U16    cbSize;
} MWAVEFORMATEX;
typedef MSS_STRUCT Mwaveformatextensible_tag {
  MWAVEFORMATEX Format;
  union {
      U16 wValidBitsPerSample;
      U16 wSamplesPerBlock;
      U16 wReserved;
  } Samples;
  U32 dwChannelMask;
  U8 SubFormat[16];
} MWAVEFORMATEXTENSIBLE;

typedef struct _AILSOUNDINFO {
  S32 format;
  void const* data_ptr;
  U32 data_len;
  U32 rate;
  S32 bits;
  S32 channels;
  U32 channel_mask;
  U32 samples;
  U32 block_size;
  void const* initial_ptr;
} AILSOUNDINFO;

#ifndef RIB_H        // RIB.H contents included if RIB.H not already included

#define RIB_H
#define ARY_CNT(x) (sizeof((x)) / sizeof((x)[0]))

// ----------------------------------
// RIB data types
// ----------------------------------

typedef S32 RIBRESULT;

#define RIB_NOERR                    0   // Success -- no error
#define RIB_NOT_ALL_AVAILABLE        1   // Some requested functions/attribs not available
#define RIB_NOT_FOUND                2   // Resource not found
#define RIB_OUT_OF_MEM               3   // Out of system RAM

//
// Handle to interface provider
//

typedef UINTa HPROVIDER;

//
// Handle representing token used to obtain property data
//
// This needs to be large enough to store a function pointer
//

typedef UINTa HPROPERTY;

//
// Data types for RIB properties
//

typedef enum
{
   RIB_NONE = 0, // No type
   RIB_CUSTOM,   // Used for pointers to application-specific structures
   RIB_DEC,      // Used for 32-bit integer values to be reported in decimal
   RIB_HEX,      // Used for 32-bit integer values to be reported in hex
   RIB_FLOAT,    // Used for 32-bit single-precision FP values
   RIB_PERCENT,  // Used for 32-bit single-precision FP values to be reported as percentages
   RIB_BOOL,     // Used for Boolean-constrained integer values to be reported as TRUE or FALSE
   RIB_STRING,   // Used for pointers to null-terminated ASCII strings
   RIB_READONLY = 0x80000000  // Property is read-only
}
RIB_DATA_SUBTYPE;

//
// RIB_ENTRY_TYPE structure, used to register an interface or request one
//

typedef enum
{
   RIB_FUNCTION = 0,
   RIB_PROPERTY       // Property: read-only or read-write data type
}
RIB_ENTRY_TYPE;

//
// RIB_INTERFACE_ENTRY, used to represent a function or data entry in an
// interface
//

typedef struct
{
   RIB_ENTRY_TYPE   type;        // See list above
   const C8          *entry_name;  // Name of desired function or property
   UINTa            token;       // Function pointer or property token
   RIB_DATA_SUBTYPE subtype;     // Property subtype
}
RIB_INTERFACE_ENTRY;

//
// Standard RAD Interface Broker provider identification properties
//

#define PROVIDER_NAME    ((U32) (S32) (-100))    // RIB_STRING name of decoder
#define PROVIDER_VERSION ((U32) (S32) (-101))    // RIB_HEX BCD version number

//
// Standard function to obtain provider properties (see PROVIDER_ defines
// above)
//
// Each provider of a searchable interface must export this function
//

typedef S32 (AILCALL *PROVIDER_PROPERTY) (HPROPERTY        index,
                                              void *       before_value,
                                              void const * new_value,
                                              void *       after_value
                                              );

//
// Macros to simplify interface registrations/requests for functions,
// and properties
//

#define FN(entry_name)        { RIB_FUNCTION, #entry_name, (UINTa) &(entry_name), RIB_NONE }
#define REG_FN(entry_name)    { RIB_FUNCTION, #entry_name, (UINTa) &(entry_name), RIB_NONE }

#define PR(entry_name,ID)             { RIB_PROPERTY, (entry_name), (UINTa) &(ID), RIB_NONE }
#define REG_PR(entry_name,ID,subtype) { RIB_PROPERTY, (entry_name), (UINTa)  (ID), subtype  }

#define RIB_register(x,y,z)   RIB_register_interface  ((HPROVIDER)(x), y, ARY_CNT(z), z)
#define RIB_unregister(x,y,z) RIB_unregister_interface((HPROVIDER)(ssx), y, ARY_CNT(z), z)
#define RIB_unregister_all(x) RIB_unregister_interface((HPROVIDER)(x), NULL, 0, NULL)
#define RIB_free_libraries()  RIB_free_provider_library((HPROVIDER)(NULL));
#define RIB_request(x,y,z)    RIB_request_interface   (x, y, ARY_CNT(z), z)

// ----------------------------------
// Standard RIB API prototypes
// ----------------------------------

DXDEC  HPROVIDER  AILCALL RIB_alloc_provider_handle   (long           module);
DXDEC  void       AILCALL RIB_free_provider_handle    (HPROVIDER      provider);

DXDEC  HPROVIDER  AILCALL RIB_load_provider_library   (C8 const *filename);
DXDEC  void       AILCALL RIB_free_provider_library   (HPROVIDER      provider);

DXDEC  RIBRESULT  AILCALL RIB_register_interface      (HPROVIDER                      provider,
                                                       C8 const                   *interface_name,
                                                       S32                            entry_count,
                                                       RIB_INTERFACE_ENTRY const *rlist);

DXDEC  RIBRESULT  AILCALL RIB_unregister_interface    (HPROVIDER                      provider,
                                                       C8 const                  *interface_name,
                                                       S32                            entry_count,
                                                       RIB_INTERFACE_ENTRY const *rlist);

DXDEC  RIBRESULT  AILCALL RIB_request_interface       (HPROVIDER                provider,
                                                       C8 const            *interface_name,
                                                       S32                      entry_count,
                                                       RIB_INTERFACE_ENTRY *rlist);

DXDEC  RIBRESULT  AILCALL RIB_request_interface_entry (HPROVIDER                provider,
                                                       C8 const            *interface_name,
                                                       RIB_ENTRY_TYPE           entry_type,
                                                       C8 const            *entry_name,
                                                       UINTa               *token);

DXDEC  S32        AILCALL RIB_enumerate_interface     (HPROVIDER                provider,
                                                       C8                  *interface_name,
                                                       RIB_ENTRY_TYPE           type,
                                                       HMSSENUM            *next,
                                                       RIB_INTERFACE_ENTRY *dest);

DXDEC  S32        AILCALL RIB_enumerate_providers     (C8                  *interface_name,
                                                       HMSSENUM            *next,
                                                       HPROVIDER           *dest);

DXDEC  C8 *   AILCALL RIB_type_string             (void const *         data,
                                                       RIB_DATA_SUBTYPE         subtype);

DXDEC  HPROVIDER  AILCALL RIB_find_file_provider      (C8 const            *interface_name,
                                                       C8 const            *property_name,
                                                       C8 const            *file_suffix);

DXDEC  HPROVIDER  AILCALL RIB_find_provider           (C8 const            *interface_name,
                                                       C8 const            *property_name,
                                                       void const          *property_value);

//
// Static library definitions
//

#ifdef IS_STATIC
  #define RIB_MAIN_NAME( name ) name##_RIB_Main

  DXDEC S32 AILCALL RIB_MAIN_NAME(SRS)( HPROVIDER provider_handle, U32 up_down );
  DXDEC S32 AILCALL RIB_MAIN_NAME(DTS)( HPROVIDER provider_handle, U32 up_down );
  DXDEC S32 AILCALL RIB_MAIN_NAME(DolbySurround)( HPROVIDER provider_handle, U32 up_down );
  DXDEC S32 AILCALL RIB_MAIN_NAME(MP3Dec)( HPROVIDER provider_handle, U32 up_down );
  DXDEC S32 AILCALL RIB_MAIN_NAME(OggDec)( HPROVIDER provider_handle, U32 up_down );
  DXDEC S32 AILCALL RIB_MAIN_NAME(BinkADec)( HPROVIDER provider_handle, U32 up_down );
  DXDEC S32 AILCALL RIB_MAIN_NAME(SpxDec)( HPROVIDER provider_handle, U32 up_down );
  DXDEC S32 AILCALL RIB_MAIN_NAME(SpxEnc)( HPROVIDER provider_handle, U32 up_down );
  DXDEC S32 AILCALL RIB_MAIN_NAME(Voice)( HPROVIDER provider_handle, U32 up_down );
  DXDEC S32 AILCALL RIB_MAIN_NAME(SpxVoice)( HPROVIDER provider_handle, U32 up_down );
  DXDEC S32 AILCALL RIB_MAIN_NAME(DSP)( HPROVIDER provider_handle, U32 up_down );

#ifdef IS_XENON
  DXDEC S32 AILCALL RIB_MAIN_NAME(XMADec)( HPROVIDER provider_handle, U32 up_down );
#endif

  #define Register_RIB(name) RIB_load_static_provider_library(RIB_MAIN_NAME(name),#name)

#else
  #define RIB_MAIN_NAME( name ) RIB_Main
  DXDEC S32 AILCALL RIB_Main( HPROVIDER provider_handle, U32 up_down );
#endif

typedef S32 ( AILCALL * RIB_MAIN_FUNC) ( HPROVIDER provider_handle, U32 up_down );

DXDEC HPROVIDER AILCALL RIB_load_static_provider_library (RIB_MAIN_FUNC main, char* description);


DXDEC  HPROVIDER  AILCALL RIB_find_files_provider     (C8 const *interface_name,
                                                       C8 const *property_name_1,
                                                       C8 const *file_suffix_1,
                                                       C8 const *property_name_2,
                                                       C8 const *file_suffix_2);

DXDEC  HPROVIDER  AILCALL RIB_find_file_dec_provider  (C8 const *interface_name,
                                                       C8 const *property_name_1,
                                                       U32           decimal_property_value_1,
                                                       C8 const *property_name_2,
                                                       C8 const *file_suffix_2);

DXDEC  S32        AILCALL RIB_load_application_providers
                                                      (C8 const  *filespec);

DXDEC  void       AILCALL RIB_set_provider_user_data  (HPROVIDER provider,
                                                       U32       index,
                                                       SINTa     value);

DXDEC  SINTa      AILCALL RIB_provider_user_data      (HPROVIDER provider,
                                                       U32       index);

DXDEC  void       AILCALL RIB_set_provider_system_data
                                                      (HPROVIDER provider,
                                                       U32       index,
                                                       SINTa     value);

DXDEC  SINTa      AILCALL RIB_provider_system_data    (HPROVIDER provider,
                                                       U32       index);

DXDEC  C8 *  AILCALL  RIB_error                   (void);

#endif

#ifndef MSS_ASI_VERSION // MSSASI.H contents included if MSSASI.H not already included

#define AIL_ASI_VERSION  1
#define AIL_ASI_REVISION 0

//
// Handle to stream being managed by ASI codec
//

typedef SINTa HASISTREAM;

//
// ASI result codes
//

typedef S32 ASIRESULT;

#define ASI_NOERR                   0   // Success -- no error
#define ASI_NOT_ENABLED             1   // ASI not enabled
#define ASI_ALREADY_STARTED         2   // ASI already started
#define ASI_INVALID_PARAM           3   // Invalid parameters used
#define ASI_INTERNAL_ERR            4   // Internal error in ASI driver
#define ASI_OUT_OF_MEM              5   // Out of system RAM
#define ASI_ERR_NOT_IMPLEMENTED     6   // Feature not implemented
#define ASI_NOT_FOUND               7   // ASI supported device not found
#define ASI_NOT_INIT                8   // ASI not initialized
#define ASI_CLOSE_ERR               9   // ASI not closed correctly

// ----------------------------------
// Application-provided ASI callbacks
// ----------------------------------

//
// AILASIFETCHCB: Called by ASI to obtain data from stream source
//
// offset normally will be either 0 at the first call made by the codec
// or -1 to specify a continuous stream, except when ASI_stream_seek()
// is called to restart the stream codec at a new stream offset.  In this
// case, the application must execute the seek operation on the ASI codec's
// behalf.
//
// In response to this callback, the application should read the requested
// data and copy it to the specified destination buffer, returning the number
// of bytes copied (which can be less than bytes_requested if the end of
// the stream is reached).
//

typedef S32 (AILCALLBACK * AILASIFETCHCB) (UINTa     user,            // User value passed to ASI_open_stream()
                                               void *dest,            // Location to which stream data should be copied by app
                                               S32       bytes_requested, // # of bytes requested by ASI codec
                                               S32       offset);         // If not -1, application should seek to this point in stream

//############################################################################
//##                                                                        ##
//## Interface "ASI codec"                                                  ##
//##                                                                        ##
//############################################################################

//
// Initialize ASI stream codec
//
// No other ASI functions may be called outside an ASI_startup() /
// ASI_shutdown() pair, except for the standard RIB function
// PROVIDER_property() where appropriate.
//

typedef ASIRESULT (AILCALL *ASI_STARTUP)(void);

//
// Shut down ASI codec
//

typedef ASIRESULT (AILCALL * ASI_SHUTDOWN)(void);

//
// Return codec error message, or NULL if no errors have occurred since
// last call
//
// The ASI error text state is global to all streams
//

typedef C8 *  (AILCALL * ASI_ERROR)(void);

//############################################################################
//##                                                                        ##
//## Interface "ASI stream"                                                 ##
//##                                                                        ##
//############################################################################

//
// Open a stream, returning handle to stream
//

typedef HASISTREAM (AILCALL *ASI_STREAM_OPEN) (UINTa         user,              // User value passed to fetch callback
                                                   AILASIFETCHCB fetch_CB,          // Source data fetch handler
                                                   U32           total_size);       // Total size for %-done calculations (0=unknown)

//
// Translate data in stream, returning # of bytes actually decoded or encoded
//
// Any number of bytes may be requested.  Requesting more data than is
// available in the codec's internal buffer will cause the AILASIFETCHCB
// handler to be called to fetch more data from the stream.
//

typedef S32  (AILCALL *ASI_STREAM_PROCESS) (HASISTREAM  stream,              // Handle of stream
                                                void   *buffer,              // Destination for processed data
                                                S32         buffer_size);        // # of bytes to return in buffer

//
// Restart stream decoding process at new offset
//
// Relevant for decoders only
//
// Seek destination is given as offset in bytes from beginning of stream
//
// At next ASI_stream_process() call, decoder will seek to the closest possible
// point in the stream which occurs at or after the specified position
//
// This function has no effect for decoders which do not support random
// seeks on a given stream type
//
// Warning: some decoders may need to implement seeking by reparsing
// the entire stream up to the specified offset, through multiple calls
// to the data-fetch callback.  This operation may be extremely
// time-consuming on large files or slow network connections.
//
// A stream_offset value of -1 may be used to inform the decoder that the
// application has changed the input stream offset on its own, e.g. for a
// double-buffering application where the ASI decoder is not accessing the
// stream directly.  ASI decoders should respond to this by flushing all
// internal buffers and resynchronizing themselves to the data stream.
//

typedef ASIRESULT (AILCALL *ASI_STREAM_SEEK)   (HASISTREAM stream,
                                                     S32        stream_offset);

//
// Retrieve or set a property value by index (returns 1 on success)
//

typedef S32 (AILCALL *ASI_STREAM_PROPERTY) (HASISTREAM stream,
                                                HPROPERTY  property,
                                                void * before_value,
                                                void const * new_value,
                                                void * after_value
                                                );

//
// Close stream, freeing handle and all internally-allocated resources
//

typedef ASIRESULT (AILCALL *ASI_STREAM_CLOSE) (HASISTREAM stream);

#endif

//############################################################################
//##                                                                        ##
//## Interface "MSS mixer services"                                         ##
//##                                                                        ##
//############################################################################

//
// Operation flags used by mixer and filter modules
//

#define M_DEST_STEREO  1       // Set to enable stereo mixer output
#define M_SRC_16       2       // Set to enable mixing of 16-bit samples
#define M_FILTER       4       // Set to enable filtering when resampling
#define M_SRC_STEREO   8       // Set to enable mixing of stereo input samples
#define M_RESAMPLE     16      // Set to enable playback ratios other than 65536
#define M_VOL_SCALING  32      // Set to enable volume scalars other than 2048
#define M_COPY16_NOVOL 64

#ifdef IS_32

//
// Initialize mixer
//
// No other mixer functions may be called outside a MIXER_startup() /
// MIXER_shutdown() pair, except for the standard RIB function
// PROVIDER_property() as appropriate.
//

typedef void (AILCALL *MIXER_STARTUP)(void);

//
// Shut down mixer
//

typedef void (AILCALL *MIXER_SHUTDOWN)(void);

//
// Flush mixer buffer
//

typedef void (AILCALL *MIXER_FLUSH)   (S32 *dest,
                                           S32      len
#ifdef IS_X86
                                           ,U32             MMX_available
#endif
                                           );

//
// Perform audio mixing operation
//

typedef void (AILCALL *MIXER_MERGE)   (void const * *src,
                                           U32        *src_fract,
                                           void const *src_end,
                                           S32  * *dest,
                                           void       *dest_end,
                                           S32        *left_val,
                                           S32        *right_val,
                                           S32             playback_ratio,
                                           S32             scale_left,
                                           S32             scale_right,
                                           U32             operation
#ifdef IS_X86
                                           ,U32             MMX_available
#endif
                                           );

//
// Translate mixer buffer contents to final output format
//
// "option" parameter is big_endian_output on Mac, MMX on x86, overwrite flag on PS2
//

typedef void (AILCALL *MIXER_COPY) (void const  *src,
                                        S32       src_len,
                                        void *dest,
                                        U32       operation
#if defined(IS_BE) || defined(IS_X86) || defined(IS_PS2)
                                        ,U32       option
#endif
                                        );

#else

//
// Initialize mixer
//
// No other mixer functions may be called outside a MIXER_startup() /
// MIXER_shutdown() pair, except for the standard RIB function
// PROVIDER_property() as appropriate.
//

typedef void (AILCALL *MIXER_STARTUP)(void);

//
// Shut down mixer
//

typedef void (AILCALL *MIXER_SHUTDOWN)(void);

//
// Flush mixer buffer
//

typedef void (AILCALL *MIXER_FLUSH)   (S32 *dest,
                                           S32      len,
                                           U32      MMX_available);

//
// Perform audio mixing operation
//

typedef void (AILCALL *MIXER_MERGE)   (U32             src_sel,
                                           U32             dest_sel,
                                           U32        *src_fract,
                                           U32        *src_offset,
                                           U32        *dest_offset,
                                           U32             src_end_offset,
                                           U32             dest_end_offset,
                                           S32        *left_val,
                                           S32        *right_val,
                                           S32             playback_ratio,
                                           S32             scale_both,
                                           U32             operation);

//
// Translate mixer buffer contents to final output format
//

typedef void (AILCALL *MIXER_COPY) (void const *src,
                                        S32       src_len,
                                        void *dest,
                                        U32       operation,
                                        U32       option);
#endif


typedef struct _MSS_BB              // Used in both MC and conventional mono/stereo configurations
{
   S32 *buffer;                 // Build buffer
   S32      bytes;                  // Size in bytes
   S32      chans;                  // Always mono (1) or stereo (2)

   S32      speaker_offset;         // Destination offset in interleaved PCM block for left channel
}
MSS_BB;

typedef struct _ADPCMDATATAG
{
  U32   blocksize;
  U32   extrasamples;
  U32   blockleft;
  U32   step;
  UINTa savesrc;
  U32   sample;
  UINTa destend;
  UINTa srcend;
  U32   samplesL;
  U32   samplesR;
  U16   moresamples[16];
} ADPCMDATA;

typedef void (AILCALL * MIXER_MC_COPY) ( MSS_BB * build,
                                             S32 n_build_buffers,
                                             void * lpWaveAddr,
                                             S32 hw_format,
#ifdef IS_X86
                                             S32 use_MMX,
#endif
                                             S32 samples_per_buffer,
                                             S32 physical_channels_per_sample );


typedef void (AILCALL * MIXER_ADPCM_DECODE ) ( void * dest,
                                                   void const * in,
                                                   S32 out_len,
                                                   S32 in_len,
                                                   S32 input_format,
                                                   ADPCMDATA *adpcm_data);

//
// Type definitions
//

struct _DIG_DRIVER;

struct _MDI_DRIVER;

typedef struct _DIG_DRIVER * HDIGDRIVER;    // Handle to digital driver

typedef struct _MDI_DRIVER * HMDIDRIVER;    // Handle to XMIDI driver

typedef struct _SAMPLE * HSAMPLE;           // Handle to sample

typedef struct _SEQUENCE * HSEQUENCE;       // Handle to sequence

typedef S32 HTIMER;                             // Handle to timer


//
// Function pointer types
//

typedef void (AILCALLBACK* AILINCB)       (void const *data, S32 len, UINTa user_data);

typedef void (AILCALLBACK* AILTRACECB)    (C8 *text, S32 nest_depth);

typedef void (AILCALLBACK* AILTIMERCB)    (UINTa user);

typedef void (AILCALLBACK* AILSAMPLECB)   (HSAMPLE sample);

typedef F32  (AILCALLBACK* AILFALLOFFCB)  (HSAMPLE sample, F32 distance, F32 rolloff_factor, F32 min_dist, F32 max_dist);

typedef S32  (AILCALLBACK* AILEVENTCB)    (HMDIDRIVER hmi,HSEQUENCE seq,S32 status,S32 data_1,S32 data_2);

typedef S32  (AILCALLBACK* AILTIMBRECB)   (HMDIDRIVER hmi,S32 bank,S32 patch);

typedef S32  (AILCALLBACK* AILPREFIXCB)   (HSEQUENCE seq,S32 log,S32 data);

typedef void (AILCALLBACK* AILTRIGGERCB)  (HSEQUENCE seq,S32 log,S32 data);

typedef void (AILCALLBACK* AILBEATCB)     (HMDIDRIVER hmi,HSEQUENCE seq,S32 beat,S32 measure);

typedef void (AILCALLBACK* AILSEQUENCECB) (HSEQUENCE seq);

typedef S32 (AILCALLBACK *SS_STREAM_CB)   (HSAMPLE  S, S16 *dest_mono_sample_buffer, S32 dest_buffer_size);

//
// Handle to sample and driver being managed by pipeline filter
//

typedef SINTa HSAMPLESTATE;
typedef SINTa HDRIVERSTATE;

//
// Digital pipeline stages
//
// These are the points at which external modules may be installed into
// a given HSAMPLE or HDIGDRIVER's processing pipeline
//

typedef enum
{
   SP_ASI_DECODER = 0,          // Must be "ASI codec stream" provider
   SP_FILTER,                   // Must be "MSS pipeline filter" provider
   SP_FILTER_0 = SP_FILTER,     // Must be "MSS pipeline filter" provider
   SP_FILTER_1,                 // Must be "MSS pipeline filter" provider
   SP_FILTER_2,                 // Must be "MSS pipeline filter" provider
   SP_FILTER_3,                 // Must be "MSS pipeline filter" provider
   SP_FILTER_4,                 // Must be "MSS pipeline filter" provider
   SP_FILTER_5,                 // Must be "MSS pipeline filter" provider
   SP_FILTER_6,                 // Must be "MSS pipeline filter" provider
   SP_FILTER_7,                 // Must be "MSS pipeline filter" provider
   SP_MERGE,                    // Must be "MSS mixer" provider
   N_SAMPLE_STAGES,             // Placeholder for end of list (= # of valid sample pipeline stages)
   SP_OUTPUT = N_SAMPLE_STAGES, // Used to set/get prefs/attribs on a driver's output or matrix filter (if present)
   SAMPLE_ALL_STAGES            // Used to signify all pipeline stages, for shutdown
}
SAMPLESTAGE;

#define N_SP_FILTER_STAGES 8    // SP_FILTER_0 ... SP_FILTER_7

typedef enum
{
   DP_FLUSH = 0,      // Must be "MSS mixer" provider
   DP_DEFAULT_FILTER, // Must be "MSS pipeline filter" provider (sets the default)
   DP_DEFAULT_MERGE,  // Must be "MSS mixer" provider (sets the default)
   DP_COPY,           // Must be "MSS mixer" provider
   DP_MC_COPY,        // Must be "MSS mixer" provider
   DP_ADPCM_DECODE,   // Must be "MSS mixer" provider
   N_DIGDRV_STAGES,   // Placeholder for end of list (= # of valid stages)
   DIGDRV_ALL_STAGES  // Used to signify all pipeline stages, for shutdown
}
DIGDRVSTAGE;

typedef struct
   {
   ASI_STREAM_OPEN           ASI_stream_open;
   ASI_STREAM_PROCESS        ASI_stream_process;
   ASI_STREAM_SEEK           ASI_stream_seek;
   ASI_STREAM_CLOSE          ASI_stream_close;
   ASI_STREAM_PROPERTY       ASI_stream_property;

   HPROPERTY INPUT_BIT_RATE;
   HPROPERTY INPUT_SAMPLE_RATE;
   HPROPERTY INPUT_BITS;
   HPROPERTY INPUT_CHANNELS;
   HPROPERTY OUTPUT_BIT_RATE;
   HPROPERTY OUTPUT_SAMPLE_RATE;
   HPROPERTY OUTPUT_BITS;
   HPROPERTY OUTPUT_CHANNELS;
   HPROPERTY OUTPUT_CHANNEL_MASK;
   HPROPERTY OUTPUT_RESERVOIR;
   HPROPERTY POSITION;
   HPROPERTY PERCENT_DONE;
   HPROPERTY MIN_INPUT_BLOCK_SIZE;
   HPROPERTY RAW_RATE;
   HPROPERTY RAW_BITS;
   HPROPERTY RAW_CHANNELS;
   HPROPERTY REQUESTED_RATE;
   HPROPERTY REQUESTED_BITS;
   HPROPERTY REQUESTED_CHANS;
   HPROPERTY STREAM_SEEK_POS;
   HPROPERTY DATA_START_OFFSET;
   HPROPERTY DATA_LEN;

   HASISTREAM stream;
   }
ASISTAGE;

typedef struct
   {
   struct _FLTPROVIDER *provider;
   HSAMPLESTATE             sample_state[MAX_SPEAKERS];
   }
FLTSTAGE;

typedef struct
{
   S32       active;    // Pass-through if 0, active if 1
   HPROVIDER provider;

   union
      {
      ASISTAGE ASI;
      MIXER_MERGE MSS_mixer_merge;
      FLTSTAGE FLT;
      }
   TYPE;
}
SPINFO;

typedef struct
{
   S32       active;    // Pass-through if 0, active if 1
   HPROVIDER provider;

   union
      {
      MIXER_FLUSH         MSS_mixer_flush;
      MIXER_COPY          MSS_mixer_copy;
      MIXER_MC_COPY       MSS_mixer_mc_copy;
      MIXER_ADPCM_DECODE  MSS_mixer_adpcm_decode;
      }
   TYPE;
}
DPINFO;

//
// Other data types
//

typedef enum
{
   WIN32_TIMER_THREAD,   // Handle to thread used to run mixer and all other background tasks/timers
   WIN32_STREAM_THREAD,  // Handle to thread to do disk IO in the streaming API
   WIN32_HWAVEOUT,       // waveOut handle for HDIGDRIVER, if any
   WIN32_HWAVEIN,        // waveIn handle for HDIGINPUT, if any
   WIN32_LPDS,           // lpDirectSound pointer for HSAMPLE
   WIN32_LPDSB,          // lpDirectSoundBuffer pointer for HSAMPLE
   WIN32_HWND,           // HWND that will be used to open DirectSound driver
   WIN32_POSITION_ERR,   // Nonzero if DirectSound play cursor stops moving (e.g., headphones removed)

   PS3_TIMER_THREAD,     // Handle to thread to run background task/timer
   PS3_STREAM_THREAD,    // Handle to thread to do disk IO in the streaming API
   PS3_AUDIO_PORT,       // cellaudio port that Miles is using
   PS3_AUDIO_ADDRESS,    // address of cellaudio sound buffer
   PS3_AUDIO_LENGTH,     // length of cellaudio sound buffer
   PS3_AUDIO_POSITION,   // current playback position of cellaudio sound buffer

   PSP_TIMER_THREAD,     // Handle to thread to run background task/timer
   PSP_STREAM_THREAD,    // Handle to thread to do disk IO in the streaming API
   PSP_SUBMIT_THREAD,    // Handle to thread submitting chucks of audio to the hw
   PSP_AUDIO_PORT,       // Port # Miles is using, -1 for simple audio, >= 0 for libwave

   XB_TIMER_THREAD,      // Handle to thread used to run background tasks/timers
   XB_STREAM_THREAD,     // Handle to thread to do disk IO in the streaming API
   XB_LPDS,              // lpDirectSound pointer for HSAMPLE
   XB_LPDSB,             // lpDirectSoundBuffer pointer for HSAMPLE

   XB360_TIMER_THREAD,   // Handle to thread used to run mixer and all other background tasks/timers
   XB360_STREAM_THREAD,  // Handle to thread to do disk IO in the streaming API
   XB360_LPXAB           // IXAudioSourceVoice pointer for HDIGDRIVER
}
MSS_PLATFORM_PROPERTY;


typedef struct _AIL_INPUT_INFO        // Input descriptor type
{
   U32        device_ID;       // DS LPGUID or wave device ID
   U32        hardware_format; // e.g., DIG_F_STEREO_16
   U32        hardware_rate;   // e.g., 22050
   AILINCB    callback;        // Callback function to receive incoming data
   S32        buffer_size;     // Maximum # of bytes to be passed to callback (-1 to use DIG_INPUT_LATENCY)
   UINTa      user_data;       // this is a user defined value
}
AIL_INPUT_INFO;

typedef struct _AILTIMER                 // Timer instance
{
   U32      status;
   AILTIMERCB callback;
   UINTa    user;

   S32      elapsed;
   S32      value;
   S32      callingCT;           // Calling EXE's task number (16 bit only)
   S32      callingDS;           // Calling EXE's DS (used in 16 bit only)
} AILTIMERSTR;

#ifndef IS_WIN64

  #define OFSblocksize     0     // these constants valid for 32-bit versions only!
  #define OFSextrasamples  4
  #define OFSblockleft     8
  #define OFSstep         12
  #define OFSsavesrc      16
  #define OFSsample       20
  #define OFSdestend      24
  #define OFSsrcend       28
  #define OFSsamplesL     32
  #define OFSsamplesR     36
  #define OFSmoresamples  40

#endif

typedef struct LOWPASS_INFO
{
  S32 X0, X1;
  S32 Y0, Y1;
  S32 A,  B0,  B1;
  S32 flags;
  S32 queuedA, queuedB;
  F32 calculated_cut;
  F32 cutoff;
} LOWPASS_INFO;

typedef union STAGE_BUFFER
{
  union STAGE_BUFFER * next;
  U8 data[ 1 ];
} STAGE_BUFFER;

typedef struct _MSSVECTOR3D
{
  F32 x;
  F32 y;
  F32 z;
} MSSVECTOR3D;

typedef struct _S3DSTATE           // Portion of HSAMPLE that deals with 3D positioning
{
   MSSVECTOR3D   position;         // 3D position
   MSSVECTOR3D   face;             // 3D orientation
   MSSVECTOR3D   up;               // 3D up-vector
   MSSVECTOR3D   velocity;         // 3D velocity

   S32           doppler_valid;    // TRUE if OK to apply Doppler shift
   F32           doppler_shift;    // Scalar for S->playback rate

   F32           inner_angle;      // Cone attenuation parameters
   F32           outer_angle;      // (Angles divided by two and convered to rads for dot-product comparisons)
   F32           outer_volume;
   S32           cone_enabled;

   F32           max_dist;         // Sample distances
   F32           min_dist;
   S32           dist_changed;     // TRUE if min/max distances have changed and need to be sent to the hardware

   S32           auto_3D_atten;    // TRUE if distance/cone attenuation should be applied to wet signal
   F32           atten_3D;         // Attenuation due to distance/cone effects, calculated by software 3D positioner

   HSAMPLE       owner;            // May be NULL if used for temporary/internal calculations
   AILFALLOFFCB  falloff_function; // User function for min/max distance calculations, if desired
}
S3DSTATE;

typedef struct _SMPBUF
{
   void const *start;          // Sample buffer address (W)
   U32             len;            // Sample buffer size in bytes (W)
   U32             pos;            // Index to next byte (R/W)
   U32             done;           // Nonzero if buffer with len=0 sent by app
   S32             reset_ASI;      // Reset the ASI decoder at the end of the buffer
   S32             reset_seek_pos; // New destination offset in stream source data, for ASI codecs that care
}
SMPBUF;

typedef struct _SAMPLE             // Sample instance
{
   char       tag[4];              // HSAM

   HDIGDRIVER driver;              // Driver for playback

   S32        index;               // Numeric index of this sample

   SMPBUF     buf[8];              // Source data buffers

   U32        src_fract;           // Fractional part of source address

   U32        mix_delay;           // ms until start mixing (decreased every buffer mix)
   F32        max_output_mix_volume; // max_volume of any speaker at last mix

   // size of the next dynamic arrays
   U32      chan_buf_alloced;
   U32      chan_buf_used;
   U8*      chan_buf_ptr;

   // these are dynamic arrays sized as n_channels long (so 1 for mono, 2 stereo, 6 for 5.1)
   S32     *left_val;
   S32     *right_val;
   S32     *last_decomp;
   LOWPASS_INFO *lp;             // low pass info

   // these are dynamic arrays pointing to dynamic arrays, each of the sub arrays are n_channels long or [MAX_SPEAKERS][n_channels]
   F32    **user_channel_levels; // Channel levels set by AIL_set_sample_channel_levels() [source_channels][driver->logical_channels]
   S32    **cur_scale;           // Calculated 11-bit volume scale factors for current/previous mixing interval
   S32    **prev_scale;          // (These are all indexed by build buffer*2, not speaker indexes!)
   S32    **ramps_left;

   // these are dynamic arrays
   F32     *auto_3D_channel_levels;         // Channel levels set by 3D positioner (always 1.0 if not 3D-positioned)
   F32     *speaker_levels;                 // one level per speaker (multiplied after user or 3D)
   
   
   
   S8       speaker_enum_to_source_chan[20];    // array[MSS_SPEAKER_xx] = -1 if not present, else channel #
   S32      lp_any_on;                      // are any of the low pass filters on?
   S32      user_channels_need_deinterlace; // do any of the user channels require a stereo sample to be deinterlaced?

   S32      n_buffers;           // # of buffers (default = 2)
   S32      head;
   S32      tail;
   S32      starved;             // Buffer stream has run out of data
   S32      exhaust_ASI;         // Are we prolonging the buffer lifetime until ASI output is exhausted?

   S32      loop_count;          // # of cycles-1 (1=one-shot, 0=indefinite)
   S32      loop_start;          // Starting offset of loop block (0=SOF)
   S32      loop_end;            // End offset of loop block (-1=EOF)
   S32      orig_loop_count;     // Original loop properties specified by app, before any
   S32      orig_loop_start;     // alignment constraints
   S32      orig_loop_end;

   S32      format;              // DIG_F format (8/16 bits, mono/stereo/multichannel)
   S32      n_channels;          // # of channels (which can be >2 for multichannel formats)
   U32      channel_mask;        // Same as WAVEFORMATEXTENSIBLE.dwChannelMask

   S32      original_playback_rate; // Playback rate in hertz
   F32      playback_rate_factor;   // Fractional playback rate, normally 1.0

   F32      save_volume;         // Sample volume 0-1.0
   F32      save_pan;            // Mono panpot/stereo balance (0=L ... 1.0=R)

   F32      left_volume;         // Left/mono volume 0 to 1.0
   F32      right_volume;        // Right volume 0 to 1.0

   F32      wet_level;           // reverb level 0 to 1.0
   F32      dry_level;           // non-reverb level 0 to 1.0
   F32      sys_level;           // system control

   F32      obstruction;
   F32      occlusion;
   F32      exclusion;

   S32      service_type;        // 1 if single-buffered; 2 if streamed

   AILSAMPLECB  SOB;             // Start-of-block callback function
   AILSAMPLECB  EOB;             // End-of-buffer callback function
   AILSAMPLECB  EOS;             // End-of-sample callback function

   SINTa    user_data  [8];      // Miscellaneous user data
   SINTa    system_data[8];      // Miscellaneous system data
   SINTa    hl_marker_list;

   ADPCMDATA adpcm;

   S32      doeob;               // Flags to trigger callbacks
   S32      dosob;
   S32      doeos;

   S32      vol_ramps;
   S32      resamp_tolerance;
   S32      enable_resamp_filter;
   //
   // Sample pipeline stages
   //

   SPINFO   pipeline[N_SAMPLE_STAGES];
   S32      n_active_filters;    // # of SP_FILTER_n stages active

   //
   // 3D-related state for all platforms (including Xbox)
   //

   S32      is_3D;               // TRUE if channel levels are derived automatically from 3D positional state, FALSE if they're controlled manually
   S3DSTATE S3D;                 // Software version applies 3D positioning only if is_3D == TRUE, but output filters always use it

#ifdef MSS_VFLT_SUPPORTED
   void *voice;              // Optional object used by output filter to store per-sample information such as DS3D buffers
#endif

   F32 leftb_volume;         // Left/mono volume 0 to 1.0 (back)
   F32 rightb_volume;        // Right volume 0 to 1.0 (back)
   F32 center_volume;        // Center volume 0 to 1.0
   F32 low_volume;           // Low volume 0 to 1.0
   F32 save_fb_pan;          // Sample volume 0-1.0
   F32 save_center;          // saved center level
   F32 save_low;             // saved sub level

#if defined(HOST_SPU_PROCESS) || defined(MSS_SPU_PROCESS)
   S32    spu_on;
   //U32    align[1];
#endif

#ifdef IS_WINDOWS

   //
   // DirectSound-specific data
   //

   S32      service_interval;    // Service sample every n ms
   S32      service_tick;        // Current service countdown value
   S32      buffer_segment_size; // Buffer segment size to fill

   S32      prev_segment;        // Previous segment # (0...n)
   S32      prev_cursor;         // Previous play cursor location

   S32      bytes_remaining;     // # of bytes left to play (if not -1)

   S32      direct_control;      // 1 if app controls buffer, 0 if MSS

#endif
}
SAMPLE;

//
// used for AIL_process
//

typedef struct _AILMIXINFO {
  AILSOUNDINFO Info;
  ADPCMDATA mss_adpcm;
  U32 src_fract;
  S32 left_val;
  S32 right_val;
} AILMIXINFO;


#if defined(IS_WINDOWS) || defined(IS_MAC) || defined(IS_LINUX) || defined(IS_XENON) || defined(IS_PS3) || defined(IS_PS2) || defined(IS_WII) || defined(IS_PSP)

DXDEC  U32     AILCALL  AIL_get_timer_highest_delay   (void);

DXDEC  void    AILCALL AIL_serve(void);

#ifdef IS_MAC

typedef void * LPSTR;

#define WHDR_DONE 0

typedef struct _WAVEIN
{
  long temp;
} * HWAVEIN;

typedef struct _WAVEHDR
{
  S32  dwFlags;
  S32  dwBytesRecorded;
  S32  dwUser;
  S32  temp;
  void * lpData;
  S32  dwBufferLength;
  S32  longdwLoops;
  S32  dwLoops;
  void * lpNext;
  U32  * reserved;

} WAVEHDR, * LPWAVEHDR;

#endif

#define N_WAVEIN_BUFFERS 8     // Use a ring of 8 buffers by default

typedef struct _DIG_INPUT_DRIVER *HDIGINPUT; // Handle to digital input driver

#ifdef IS_MAC

#define AIL_DIGITAL_INPUT_DEFAULT 0

typedef struct _DIG_INPUT_DRIVER    // Handle to digital input driver
{
   C8  tag[4];                      // HDIN
   S32 input_enabled;               // 1 if enabled, 0 if not
   U32 incoming_buffer_size;
   void * incoming_buffer[ 2 ];
   void* outgoing_buffer;
   U32 which_buffer;
   AIL_INPUT_INFO info;             // Input device descriptor
   AILMIXINFO incoming_info;
   long device;
   #if defined(__SOUND__)
   SPB record_rec;
   #endif
} DIG_INPUT_DRIVER;

#else

#define AIL_DIGITAL_INPUT_DEFAULT ((U32)WAVE_MAPPER)

typedef struct _DIG_INPUT_DRIVER    // Handle to digital input driver
{
   C8     tag[4];                   // HDIN

   HTIMER background_timer;         // Background timer handle

   AIL_INPUT_INFO info;             // Input device descriptor

   S32       input_enabled;         // 1 if enabled, 0 if not

   UINTa     callback_user;         // Callback user value

   //
   // Provider-independent data
   //

   U32       DMA_size;              // Size of each DMA sub-buffer in bytes
   void *DMA[N_WAVEIN_BUFFERS]; // Simulated DMA buffers

   U32       silence;               // Silence value for current format (0 or 128)

   S32       device_active;         // 1 if buffers submittable, 0 if not

#ifdef IS_WINDOWS
   //
   // waveOut-specific data
   //

   HWAVEIN          hWaveIn;                        // Handle to wave input device
   volatile MWAVEHDR wavehdr[N_WAVEIN_BUFFERS];     // Handles to wave headers

#endif
}
DIG_INPUT_DRIVER;
#endif

#endif

typedef struct REVERB_CONSTANT_INFO
{
  F32* start0,* start1,* start2,* start3,* start4,* start5;
  F32* end0,* end1,* end2,* end3,* end4,* end5;
  F32 C0, C1, C2, C3, C4, C5;
  F32 A;
  F32 B0, B1;
} REVERB_CONSTANT_INFO;

typedef struct REVERB_UPDATED_INFO
{
  F32 * address0, * address1, * address2, * address3, * address4, * address5;
  F32 X0, X1, Y0, Y1;
} REVERB_UPDATED_INFO;

typedef struct REVERB_INFO
{
  REVERB_UPDATED_INFO u;
  REVERB_CONSTANT_INFO c;
} REVERB_INFO;

typedef struct _MSS_RECEIVER_LIST
{
   MSSVECTOR3D direction;                      // Normalized direction vector from listener

   S32         speaker_index[MAX_SPEAKERS];    // List of speakers affected by sounds in this direction
   F32         speaker_level[MAX_SPEAKERS];    // Each speaker's degree of effect from this source
   S32         n_speakers_affected;
}
MSS_RECEIVER_LIST;

typedef struct _D3DSTATE
{
   S32         mute_at_max;

   MSSVECTOR3D listen_position;
   MSSVECTOR3D listen_face;
   MSSVECTOR3D listen_up;
   MSSVECTOR3D listen_cross;
   MSSVECTOR3D listen_velocity;

   F32         rolloff_factor;
   F32         doppler_factor;
   F32         distance_factor;
   F32         falloff_power;

   //
   // Precalculated listener info
   //

   S32         ambient_channels    [MAX_SPEAKERS];      // E.g., LFE
   S32         n_ambient_channels;

   S32         directional_channels[MAX_SPEAKERS+1];    // Channel index, or -1 if virtual
   MSSVECTOR3D listener_to_speaker [MAX_SPEAKERS+1];
   S32         n_directional_channels;

   MSS_RECEIVER_LIST receiver_specifications[MAX_RECEIVER_SPECS];  // Constellation of receiver vectors
   S32               n_receiver_specs;

   MSSVECTOR3D speaker_positions           [MAX_SPEAKERS]; // Listener-relative speaker locations
   F32         speaker_wet_reverb_response [MAX_SPEAKERS]; // Reverb sensitivity of each speaker
   F32         speaker_dry_reverb_response [MAX_SPEAKERS];
}
D3DSTATE;

typedef enum
{
   MSS_MC_INVALID             = 0,       // Used for configuration-function errors
   MSS_MC_MONO                = 1,       // For compatibility with S32 channel param
   MSS_MC_STEREO              = 2,
   MSS_MC_USE_SYSTEM_CONFIG   = 0x10,    // Leave space between entries for new variations
   MSS_MC_HEADPHONES          = 0x20,    // with similar quality levels/speaker counts
   MSS_MC_DOLBY_SURROUND      = 0x30,
   MSS_MC_SRS_CIRCLE_SURROUND = 0x40,
   MSS_MC_40_DTS              = 0x48,
   MSS_MC_40_DISCRETE         = 0x50,
   MSS_MC_51_DTS              = 0x58,
   MSS_MC_51_DISCRETE         = 0x60,
   MSS_MC_61_DISCRETE         = 0x70,
   MSS_MC_71_DISCRETE         = 0x80,
   MSS_MC_81_DISCRETE         = 0x90,
   MSS_MC_DIRECTSOUND3D       = 0xA0,
   MSS_MC_EAX2                = 0xC0,
   MSS_MC_EAX3                = 0xD0,
   MSS_MC_EAX4                = 0xE0
}
MSS_MC_SPEC;

typedef struct _DIG_DRIVER          // Handle to digital audio driver
{
   char        tag[4];              // HDIG

   HTIMER      backgroundtimer;     // Background timer handle

   U32         num_mixes;           // incrementing number of mixes
   S32         mix_ms;              // rough ms per mix

   F32         master_volume;       // Master sample volume 0-1.0

   S32         DMA_rate;            // Hardware sample rate
   S32         hw_format;           // DIG_F code in use
   S32         n_active_samples;    // # of samples being processed

   MSS_MC_SPEC channel_spec;        // Original "channels" value passed to AIL_open_digital_driver()

   D3DSTATE    D3D;                 // 3D listener parms for all platforms

#if defined(IS_PSP) || defined(IS_XENON) || defined(IS_IPHONE) || defined(IS_MAC) || defined(IS_LINUX) // generic dig platforms
#define IS_GENERICDIG
   void*       dig_ss;              // Sound system ptr (embed in mss.h?)
   void*       dig_heap;            // Sound system heap.
#endif

#ifdef IS_XENON
   void* x2_voiceptr;           //! \todo get rid of this? Only expose dig_ss?
#endif

   S32         quiet;               // # of consecutive quiet sample periods
   S32         playing;             // Playback active if non-zero

   S32         bytes_per_channel;            // # of bytes per channel (always 1 or 2 for 8- or 16-bit hardware output)
   S32         samples_per_buffer;           // # of samples per build buffer / half-buffer
   S32         physical_channels_per_sample; // # of channels per *physical* sample (1 or 2, or more in discrete MC mode)
   S32         logical_channels_per_sample;  // # of logical channels per sample (may differ from physical channel count in matrix formats)

#ifdef IS_LINUX
   S32         released;            // has the sound manager been released?
#endif

#ifdef IS_PS2
   struct RAD_IOP_SOUND_DATA * IOP;
   S32         IOP_overwrite;       // FALSE if RADIOP layer requests addition to output buffer (rather than writes)
   HDIGDRIVER  next;                // Pointer to next HDIGDRIVER in use
#endif

   HSAMPLE     samples;             // Pointer to list of SAMPLEs

   U32        *sample_status;       // SMP_ flags: _FREE, _DONE, _PLAYING, moved out of SAMPLEs for faster iteration
   S32         n_samples;           // # of SAMPLEs

   SINTa       system_data[8];      // Miscellaneous system data

   //
   // Build buffers
   //
   // In multichannel mode, source samples may be mixed into more than one
   // build buffer
   //

   MSS_BB      build[MAX_SPEAKERS+EXTRA_BUILD_BUFFERS];
   S32         n_build_buffers;      // # of build buffers actually used for output processing

   S32         hardware_buffer_size; // Size of each output buffer

#ifdef IS_WINDOWS

   //
   // waveOut-specific interface data
   //

   HWAVEOUT    hWaveOut;            // Wave output driver

   U32         reset_works;         // TRUE if OK to do waveOutReset
   U32         request_reset;       // If nonzero, do waveOutReset ASAP

   LPWAVEHDR   first;               // Pointer to first WAVEHDR in chain
   S32         n_buffers;           // # of output WAVEHDRs in chain

   LPWAVEHDR volatile *return_list; // Circular list of returned WAVEHDRs
   S32       volatile      return_head; // Head of WAVEHDR list (insertion point)
   S32       volatile      return_tail; // Tail of WAVEHDR list (retrieval point)

   //
   // DirectSound-specific interface data
   //

   UINTa                  guid;        // The guid id of the ds driver
   AILLPDIRECTSOUND       pDS;         // DirectSound output driver (don't
                                       // use with Smacker directly anymore!)

   U32                    ds_priority; // priority opened with

   S32                    emulated_ds; // is ds emulated or not?
   AILLPDIRECTSOUNDBUFFER lppdsb;      // primary buffer or null

   UINTa                  dsHwnd;      // HWND used with DirectSound

   AILLPDIRECTSOUNDBUFFER * lpbufflist;   // List of pointers to secondary buffers
   HSAMPLE         *samp_list;      // HSAMPLE associated with each buffer
   S32             *sec_format;     // DIG_F_ format for secondary buffer
   S32                  max_buffs;      // Max. allowable # of secondary buffers

   //
   // Driver output configuration
   //
   // Note: # of "logical" (source) channels per sample = dig->channels_per_sample
   //       # of "physical" (DAC) channels per sample = dig->wformat.wf.nChannels
   //
   //       These may be different if a matrix format (e.g., Dolby/SRS)
   //       is in use!
   //

   MPCMWAVEFORMAT wformat;          // format from waveout open
   C8             wfextra[32];      // Extension to PCMWAVEFORMAT (e.g., WAVE_FORMAT_EXTENSIBLE)

   //
   // Misc. data
   //

   S32         released;            // has the sound manager been released?

   HDIGDRIVER  next;                // Pointer to next HDIGDRIVER in use
   S32      callingCT;              // Calling EXE's task number (16 bit only)
   S32      callingDS;              // Calling EXE's DS (used in 16 bit only)

   //
   // Vars for waveOut emulation
   //

   S32 DS_initialized;

   AILLPDIRECTSOUNDBUFFER DS_sec_buff;    // Secondary buffer (or NULL if none)
   AILLPDIRECTSOUNDBUFFER DS_out_buff;    // Output buffer (may be sec or prim)
   S32 DS_buffer_size;                    // Size of entire output buffer

   S32 DS_frag_cnt;                 // Total fragment count and size, and
   S32 DS_frag_size;                // last fragment occupied by play cursor
   S32 DS_last_frag;
   S32 DS_last_write;
   S32 DS_last_timer;
   S32 DS_skip_time;

   S32 DS_use_default_format;       // 1 to force use of default DS primary buffer format

   U32 position_error;              // last status from position report (can be used
                                    //   to watch for headset removal)
   U32 last_ds_play;
   U32 last_ds_write;
   U32 last_ds_move;
   
#endif

#ifdef IS_X86
   S32         use_MMX;             // Use MMX with this driver if TRUE
#endif

   U32 us_count;
   U32 ms_count;
   U32 last_ms_polled;
   U32 last_percent;

   void * MC_buffer;

   //
   // Digital driver pipeline filter stages
   //

   DPINFO pipeline[N_DIGDRV_STAGES];

#ifdef MSS_VFLT_SUPPORTED
   struct _FLTPROVIDER *voice_filter;
   SS_STREAM_CB             stream_callback;
#endif

   struct _FLTPROVIDER *matrix_filter;

   //
   // Reverb
   //

   S32      room_type;           // Changes to this drive master_wet and duration/damping/predelay!
   F32      master_wet;          // Master reverb level 0-1.0
   F32      master_dry;          // Master non-reverb level 0-1.0

   REVERB_INFO ri;

   S32 *reverb_build_buffer;
   S32      reverb_total_size;
   S32      reverb_fragment_size;
   S32      reverb_buffer_size;
   S32      reverb_on;
   U32      reverb_off_time_ms;

   U32      reverb_duration_ms;

   F32      reverb_decay_time_s;
   F32      reverb_predelay_s;
   F32      reverb_damping;

   S32      reverb_head;
   S32      reverb_tail;

#ifdef IS_PS3
   HDIGDRIVER  next;                // Pointer to next HDIGDRIVER in use

   void * hw_buf;
   U32    hw_datarate;
   U32    hw_align;
   U32    port;
   S32    hw_buffer_size;
   S32    snd_frag_cnt;
   S32    snd_frag_size;
   S32    snd_last_frag;
   S32    snd_last_write;
   S32    snd_skip_time;
   U32    snd_last_play;
   U32    snd_last_move;
   S32    snd_last_timer;
#endif

#ifdef IS_GENERICDIG
   HDIGDRIVER next;
#endif

#ifdef IS_WII
   HDIGDRIVER  next;                // Pointer to next HDIGDRIVER in use

   U32    hw_datarate;
   S32    hw_buffer_size;
   S32    each_buffer_size;
   S32    snd_frag_cnt;
   S32    snd_frag_size;
   S32    snd_last_frag;
   S32    snd_last_write;
   S32    snd_skip_time;
   U32    snd_last_play;
   U32    snd_last_move;
   S32    snd_last_timer;

   void * buffer[ 2 ];
   U32    physical[ 2 ];

   #ifdef AX_OUTPUT_BUFFER_DOUBLE
   AXVPB* voice[ 2 ];
   #endif

#endif


#ifdef IS_WINDOWS
   S32                  no_wom_done;    // don't process WOM_DONEs on this driver
   U32                  wom_done_buffers;
#endif

#ifdef XAUDIOFRAMESIZE_NATIVE
   XAUDIOPACKET packet;
#endif


#if defined(HOST_SPU_PROCESS) || defined(MSS_SPU_PROCESS)
   U32    spu_num;
   S32    spu_on;
   U32    spu_us_count;
   U32    spu_ms_count;
   U32    spu_last_ms_polled;
   U32    spu_last_percent;
   #ifdef IS_PS3
     U32    align[ 3 ];
   #endif
#endif
}
DIG_DRIVER;

typedef struct                      // MIDI status log structure
   {
   S32      program   [NUM_CHANS];  // Program Change
   S32      pitch_l   [NUM_CHANS];  // Pitch Bend LSB
   S32      pitch_h   [NUM_CHANS];  // Pitch Bend MSB

   S32      c_lock    [NUM_CHANS];  // Channel Lock
   S32      c_prot    [NUM_CHANS];  // Channel Lock Protection
   S32      c_mute    [NUM_CHANS];  // Channel Mute
   S32      c_v_prot  [NUM_CHANS];  // Voice Protection
   S32      bank      [NUM_CHANS];  // Patch Bank Select
   S32      gm_bank_l [NUM_CHANS];  // GM Bank Select
   S32      gm_bank_m [NUM_CHANS];  // GM Bank Select
   S32      indirect  [NUM_CHANS];  // ICA indirect controller value
   S32      callback  [NUM_CHANS];  // Callback Trigger

   S32      mod       [NUM_CHANS];  // Modulation
   S32      vol       [NUM_CHANS];  // Volume
   S32      pan       [NUM_CHANS];  // Panpot
   S32      exp       [NUM_CHANS];  // Expression
   S32      sus       [NUM_CHANS];  // Sustain
   S32      reverb    [NUM_CHANS];  // Reverb
   S32      chorus    [NUM_CHANS];  // Chorus

   S32      bend_range[NUM_CHANS];  // Bender Range (data MSB, RPN 0 assumed)

   S32      RPN_L     [NUM_CHANS];  // RPN # LSB
   S32      RPN_M     [NUM_CHANS];  // RPN # MSB
   }
CTRL_LOG;

typedef struct _SEQUENCE                  // XMIDI sequence state table
{
   char     tag[4];                       // HSEQ

   HMDIDRIVER driver;                     // Driver for playback

   U32      status;                       // SEQ_ flagsstruct

   void const   *TIMB;                // XMIDI IFF chunk pointers
   void const   *RBRN;
   void const   *EVNT;

   U8 const     *EVNT_ptr;            // Current event pointer

   U8      *ICA;                      // Indirect Controller Array

   AILPREFIXCB   prefix_callback;         // XMIDI Callback Prefix handler
   AILTRIGGERCB  trigger_callback;        // XMIDI Callback Trigger handler
   AILBEATCB     beat_callback;           // XMIDI beat/bar change handler
   AILSEQUENCECB EOS;                     // End-of-sequence callback function

   S32      loop_count;                   // 0=one-shot, -1=indefinite, ...

   S32      interval_count;               // # of intervals until next event
   S32      interval_num;                 // # of intervals since start

   S32      volume;                       // Sequence volume 0-127
   S32      volume_target;                // Target sequence volume 0-127
   S32      volume_accum;                 // Accumulated volume period
   S32      volume_period;                // Period for volume stepping

   S32      tempo_percent;                // Relative tempo percentage 0-100
   S32      tempo_target;                 // Target tempo 0-100
   S32      tempo_accum;                  // Accumulated tempo period
   S32      tempo_period;                 // Period for tempo stepping
   S32      tempo_error;                  // Error counter for tempo DDA

   S32      beat_count;                   // Sequence playback position
   S32      measure_count;

   S32      time_numerator;               // Sequence timing data
   S32      time_fraction;
   S32      beat_fraction;
   S32      time_per_beat;

   void const *FOR_ptrs[FOR_NEST];    // Loop stack
   S32      FOR_loop_count [FOR_NEST];

   S32      chan_map       [NUM_CHANS];   // Physical channel map for sequence

   CTRL_LOG shadow;                       // Controller values for sequence

   S32      note_count;                   // # of notes "on"

   S32      note_chan      [MAX_NOTES];   // Channel for queued note (-1=free)
   S32      note_num       [MAX_NOTES];   // Note # for queued note
   S32      note_time      [MAX_NOTES];   // Remaining duration in intervals

   SINTa    user_data  [8];               // Miscellaneous user data
   SINTa    system_data[8];               // Miscellaneous system data

} SEQUENCE;

#if defined(IS_MAC) || defined(IS_LINUX) || defined(IS_XENON) || defined(IS_PS2) || defined(IS_PS3) || defined(IS_WII) || defined(IS_PSP)

struct MIDIHDR;
struct MIDIOUT;
typedef struct MIDIOUT* HMIDIOUT;
typedef HMIDIOUT* LPHMIDIOUT;

#endif

typedef struct _MDI_DRIVER          // Handle to XMIDI driver
{
   char     tag[4];                 // HMDI

   HTIMER      timer;               // XMIDI quantization timer
   S32         interval_time;       // XMIDI quantization timer interval in uS

   S32         disable;             // > 0 to disable XMIDI service

   HSEQUENCE   sequences;           // Pointer to list of SEQUENCEs
   S32         n_sequences;         // # of SEQUENCEs

   S32         lock  [NUM_CHANS];   // 1 if locked, 2 if protected, else 0
   HSEQUENCE   locker[NUM_CHANS];   // HSEQUENCE which locked channel
   HSEQUENCE   owner [NUM_CHANS];   // HSEQUENCE which owned locked channel
   HSEQUENCE   user  [NUM_CHANS];   // Last sequence to use channel
   S32         state [NUM_CHANS];   // Lock state prior to being locked

   S32         notes [NUM_CHANS];   // # of active notes in channel

   AILEVENTCB  event_trap;          // MIDI event trap callback function
   AILTIMBRECB timbre_trap;         // Timbre request callback function

   S32         master_volume;       // Master XMIDI note volume 0-127

   SINTa       system_data[8];      // Miscellaneous system data

#if defined(IS_WINDOWS) || defined(IS_MAC) || defined(IS_LINUX)

   S32         released;            // has the hmidiout handle been released
   U32         deviceid;            // ID of the MIDI device
   U8      *sysdata;            // SysEx buffer

#endif

#if defined(IS_XENON) || defined(IS_WII) || defined(IS_PS2) || defined(IS_PS3) || defined(IS_PSP)
   HMDIDRIVER  next;                // Pointer to next HMDIDRIVER in use
#endif

#ifdef IS_LINUX
   struct MIDIHDR *mhdr;        // SysEx header
   HMDIDRIVER  next;                // Pointer to next HMDIDRIVER in use
   HMIDIOUT    hMidiOut;            // MIDI output driver
#endif

#ifdef IS_WINDOWS

   struct midihdr_tag *mhdr;               // SysEx header

   HMDIDRIVER  next;                // Pointer to next HMDIDRIVER in use
   S32      callingCT;              // Calling EXE's task number (16 bit only)
   S32      callingDS;              // Calling EXE's DS (used in 16 bit only)

   HMIDIOUT    hMidiOut;            // MIDI output driver

#else

   #if defined(IS_MAC)
     struct MIDIHDR *mhdr;           // SysEx header
     HMDIDRIVER  next;                // Pointer to next HMDIDRIVER in use
     HMIDIOUT    hMidiOut;            // MIDI output driver
   #endif

#endif

}
MDI_DRIVER;

typedef MSS_STRUCT                      // XMIDI TIMB IFF chunk
   {
   S8    name[4];

   U8    msb;
   U8    lsb;
   U8    lsb2;
   U8    lsb3;

   U16   n_entries;

   U16   timbre[1];
   }
TIMB_chunk;

typedef MSS_STRUCT                      // XMIDI RBRN IFF entry
   {
   S16   bnum;
   U32   offset;
   }
RBRN_entry;

typedef struct                      // Wave library entry
{
   S32   bank;                      // XMIDI bank, MIDI patch for sample
   S32   patch;

   S32   root_key;                  // Root MIDI note # for sample (or -1)

   U32   file_offset;               // Offset of wave data from start-of-file
   U32   size;                      // Size of wave sample in bytes

   S32   format;                    // DIG_F format (8/16 bits, mono/stereo)
   S32   playback_rate;             // Playback rate in hertz
}
WAVE_ENTRY;

typedef struct                      // Virtual "wave synthesizer" descriptor
{
   HMDIDRIVER mdi;                  // MIDI driver for use with synthesizer
   HDIGDRIVER dig;                  // Digital driver for use with synthesizer

   WAVE_ENTRY *library;         // Pointer to wave library

   AILEVENTCB  prev_event_fn;       // Previous MIDI event trap function
   AILTIMBRECB prev_timb_fn;        // Previous timbre request trap function

   CTRL_LOG    controls;            // MIDI controller states

   WAVE_ENTRY *wave [NUM_CHANS];// Pointer to WAVE_ENTRY for each channel

   HSAMPLE     S    [MAX_W_VOICES]; // List of HSAMPLE voices
   S32         n_voices;            // Actual # of voices allocated to synth

   S32         chan [MAX_W_VOICES]; // MIDI channel for each voice, or -1
   S32         note [MAX_W_VOICES]; // MIDI note number for voice
   S32         root [MAX_W_VOICES]; // MIDI root note for voice
   S32         rate [MAX_W_VOICES]; // Playback rate for voice
   S32         vel  [MAX_W_VOICES]; // MIDI note velocity for voice
   U32         time [MAX_W_VOICES]; // Timestamp for voice

   U32         event;               // Event counter for LRU timestamps
}
WAVE_SYNTH;

typedef WAVE_SYNTH * HWAVESYNTH;// Handle to virtual wave synthesizer


//
// Background flag for timers
//

extern volatile S32   AIL_bkgnd_flag;

//
// Global preference array
//
#ifndef MSS_SPU_PROCESS
extern SINTa          AIL_preference   [N_PREFS];
#endif
//
// DIG_DRIVER list
//

extern HDIGDRIVER     DIG_first;

//
// MDI_DRIVER list
//

extern HMDIDRIVER     MDI_first;

//
// Miscellaneous system services
//

#define FILE_READ_WITH_SIZE ((void*)(S32)-1)


extern S32 AILCALLBACK SP_ASI_DECODER_callback(UINTa     user,
                                               void *dest,
                                               S32       bytes_requested,
                                               S32       offset);

DXDEC  void * AILCALL AIL_mem_alloc_lock(UINTa     size);
DXDEC  void       AILCALL AIL_mem_free_lock (void *ptr);

DXDEC  S32        AILCALL AIL_file_error   (void);

DXDEC  S32        AILCALL AIL_file_size    (char const  *filename);

DXDEC  void * AILCALL AIL_file_read    (char const   *filename,
                                           void *dest);

DXDEC  S32        AILCALL AIL_file_write   (char const    *filename,
                                            void const  *buf,
                                            U32       len);

DXDEC  S32        AILCALL AIL_WAV_file_write
                                           (char const    *filename,
                                            void const  *buf,
                                            U32       len,
                                            S32       rate,
                                            S32       format);

DXDEC  S32        AILCALL AIL_file_append  (char const *filename,
                                            void const *buf, U32 len);

typedef void * (AILCALLBACK *AILMEMALLOCCB)(UINTa size);
typedef void (AILCALLBACK *AILMEMFREECB)(void *);

DXDEC AILMEMALLOCCB AILCALL AIL_mem_use_malloc(AILMEMALLOCCB fn);
DXDEC AILMEMFREECB AILCALL AIL_mem_use_free  (AILMEMFREECB fn);


#ifdef __WATCOMC__
#pragma warning 14 10      // disable "no reference to symbol" warning on function args
void MSSBreakPoint();
#pragma aux MSSBreakPoint = "int 3";
#elif defined(IS_PS2) || defined(IS_PSP)
#define MSSBreakPoint() __asm__("break 0")
#elif defined( IS_XENON )
void __twi (const unsigned int to, int a, const int b);
#define MSSBreakPoint() {__twi(31,0,22);}
#elif defined( IS_SPU )
#define MSSBreakPoint() __asm volatile ("stopd 0,1,1");
#elif defined( IS_PS3 )
#define MSSBreakPoint() __asm__ volatile("trap");
#elif defined( IS_WII )
#define MSSBreakPoint() __asm__ volatile("trap");
#elif defined( IS_SPU )
#define MSSBreakPoint() __asm volatile ("stopd 0,1,1");
#elif defined(IS_WIN64)
#define MSSBreakPoint() __debugbreak();
#elif defined(IS_WINDOWS)
#define MSSBreakPoint() __asm {int 3}
#else
#define MSSBreakPoint() *(int*)0=0;
#endif


//
// Compiler-independent CRTL helper functions for PS2
// Exported here for use in demo programs as well as MSS itself
//

#if defined(IS_PS2) || defined(IS_PSP)

DXDEC F32 AILCALL AIL_sin(F32 x);
DXDEC F32 AILCALL AIL_cos(F32 x);
DXDEC F32 AILCALL AIL_tan( F32 x );
DXDEC F32 AILCALL AIL_acos(F32 x);
DXDEC F32 AILCALL AIL_atan(F32 x);
DXDEC F32 AILCALL AIL_ceil( F32 x );
DXDEC F32 AILCALL AIL_floor( F32 x );
DXDEC F32 AILCALL AIL_fsqrt( F32 x );
DXDEC F32 AILCALL AIL_fabs ( F32 x );
DXDEC F32 AILCALL AIL_log10( F32 x );
DXDEC F32 AILCALL AIL_log( F32 x );
DXDEC F32 AILCALL AIL_pow( F32 x, F32 p );
DXDEC F32 AILCALL AIL_frexpf( F32 x, S32 *pw2 );
DXDEC F32 AILCALL AIL_ldexpf( F32 x, S32 pw2 );
#define AIL_exp(x) AIL_pow(2.718281828F,(x))

#else

#ifdef IS_WATCOM
#define AIL_pow   powf
#define AIL_tan   tanf
#else
#define AIL_tan   tan
#define AIL_pow   pow
#endif

#define AIL_sin   sin
#define AIL_cos   cos
#define AIL_acos  acos
#define AIL_atan  atan
#define AIL_ceil  ceil
#define AIL_floor floor

#if defined(IS_PS3) && !defined(IS_SPU)
DXDEC F32 AILCALL AIL_fsqrt( F32 val );
#else
#define AIL_fsqrt(arg) ((F32) sqrt(arg))
#endif

#define AIL_fabs  fabs
#define AIL_log10 log10
#define AIL_log   log
#define AIL_frexpf(a1,a2) ((F32) frexp(a1,a2))
#define AIL_ldexpf(a1,a2) ((F32) ldexp(a1,a2))
#define AIL_exp   exp

#endif

DXDEC C8 * AILCALL AIL_ftoa(F32 val);

//
// High-level support services
//

DXDEC  S32     AILCALL  AIL_startup                   (void);

DXDEC  SINTa   AILCALL  AIL_get_preference            (U32         number);

DXDEC  void    AILCALL  AIL_shutdown                  (void);

DXDEC  SINTa   AILCALL  AIL_set_preference            (U32         number,
                                                       SINTa       value);

DXDEC char *AILCALL  AIL_last_error                (void);

DXDEC  void    AILCALL  AIL_set_error                 (char const * error_msg);

//
// Low-level support services
//

DXDEC  void
#if !defined(IS_MAC) && !defined(IS_LINUX) && !defined(IS_PS2) && !defined(IS_PS3) && !defined(IS_WII) && !defined(IS_PSP)
__cdecl
#endif
AIL_debug_printf              (C8 const *fmt, ...);

#ifdef IS_X86

DXDEC  U32     AILCALL  AIL_MMX_available             (void);

#endif

DXDEC  void    AILCALL  AIL_lock                      (void);
DXDEC  void    AILCALL  AIL_unlock                    (void);

#if !defined(IS_WII) && !defined(IS_PS2)

DXDEC  void    AILCALL  AIL_lock_mutex                (void);
DXDEC  void    AILCALL  AIL_unlock_mutex              (void);

#endif

DXDEC  void    AILCALL  AIL_delay                     (S32         intervals);

DXDEC  S32     AILCALL  AIL_background                (void);

DXDEC  AILTRACECB AILCALL AIL_register_trace_callback (AILTRACECB cb,
                                                       S32 level);


//
// Process services
//

DXDEC  HTIMER  AILCALL  AIL_register_timer            (AILTIMERCB  fn);

DXDEC  UINTa   AILCALL  AIL_set_timer_user            (HTIMER      timer,
                                                       UINTa       user);

DXDEC  void    AILCALL  AIL_set_timer_period          (HTIMER      timer,
                                                       U32         microseconds);

DXDEC  void    AILCALL  AIL_set_timer_frequency       (HTIMER      timer,
                                                       U32         hertz);

DXDEC  void    AILCALL  AIL_set_timer_divisor         (HTIMER      timer,
                                                       U32         PIT_divisor);

DXDEC  void    AILCALL  AIL_start_timer               (HTIMER      timer);
DXDEC  void    AILCALL  AIL_start_all_timers          (void);

DXDEC  void    AILCALL  AIL_stop_timer                (HTIMER      timer);
DXDEC  void    AILCALL  AIL_stop_all_timers           (void);

DXDEC  void    AILCALL  AIL_release_timer_handle      (HTIMER      timer);
DXDEC  void    AILCALL  AIL_release_all_timers        (void);

#ifdef IS_MAC
    #if defined(__PROCESSES__)
        DXDEC ProcessSerialNumber AIL_Process(void);
    #endif
#endif

//
// high-level digital services
//

#define AIL_OPEN_DIGITAL_FORCE_PREFERENCE 1
#define AIL_OPEN_DIGITAL_NEED_HW_3D       2
#define AIL_OPEN_DIGITAL_NEED_FULL_3D     4
#define AIL_OPEN_DIGITAL_NEED_LIGHT_3D    8
#define AIL_OPEN_DIGITAL_NEED_HW_REVERB   16
#define AIL_OPEN_DIGITAL_NEED_REVERB      32
#define AIL_OPEN_DIGITAL_USE_IOP_CORE0    64

#define AIL_OPEN_DIGITAL_USE_SPU0        (1<<24)
#define AIL_OPEN_DIGITAL_USE_SPU1        (2<<24)
#define AIL_OPEN_DIGITAL_USE_SPU2        (3<<24)
#define AIL_OPEN_DIGITAL_USE_SPU3        (4<<24)
#define AIL_OPEN_DIGITAL_USE_SPU4        (5<<24)
#define AIL_OPEN_DIGITAL_USE_SPU5        (6<<24)
#define AIL_OPEN_DIGITAL_USE_SPU6        (7<<24)

#define AIL_OPEN_DIGITAL_USE_SPU( num )   ( ( num + 1 ) << 24 )

#ifdef IS_GENERICDIG

    struct _RadSoundSystem;
    typedef S32 (*RADSS_OPEN_FUNC)(struct _RadSoundSystem* i_SoundSystem, U32 i_MinBufferSizeInMs, U32 i_Frequency, U32 i_ChannelCount, U32 i_MaxLockSize, U32 i_Flags);

    DXDEC HDIGDRIVER AILCALL AIL_open_generic_digital_driver(U32 frequency, S32 bits, S32 channel, U32 flags, RADSS_OPEN_FUNC dig_open);

    #ifdef IS_WIN32
        DXDEC RADSS_OPEN_FUNC AILCALL RADSS_DSInstallDriver(UINTa, UINTa);
        DXDEC RADSS_OPEN_FUNC AILCALL RADSS_WOInstallDriver(UINTa, UINTa);

        #define AIL_open_digital_driver(frequency, bits, channel, flags) \
            AIL_open_generic_digital_driver(frequency, bits, channel, flags, RADSS_DSInstallDriver(0, 0));

    #elif defined(IS_PSP)
        DXDEC RADSS_OPEN_FUNC AILCALL RADSS_PSPInstallDriver(UINTa, UINTa);

        #define AIL_open_digital_driver(frequency, bits, channel, flags) \
            AIL_open_generic_digital_driver(frequency, bits, channel, flags, RADSS_PSPInstallDriver(0, 0));

    #elif defined(IS_XENON)
        DXDEC RADSS_OPEN_FUNC AILCALL RADSS_XAudio2InstallDriver(UINTa, UINTa);

        #define AIL_open_digital_driver(frequency, bits, channel, flags) \
            AIL_open_generic_digital_driver(frequency, bits, channel, flags, RADSS_XAudio2InstallDriver(0, 0));

    #elif defined(IS_MAC) || defined(IS_IPHONE)
        DXDEC RADSS_OPEN_FUNC AILCALL RADSS_OalInstallDriver(UINTa, UINTa);
        DXDEC RADSS_OPEN_FUNC AILCALL RADSS_CAInstallDriver(UINTa, UINTa);

        #define AIL_open_digital_driver(frequency, bits, channel, flags) \
            AIL_open_generic_digital_driver(frequency, bits, channel, flags, RADSS_CAInstallDriver(0, 0));

    #elif defined(IS_LINUX)
        DXDEC RADSS_OPEN_FUNC AILCALL RADSS_OalInstallDriver(UINTa, UINTa);

        #define AIL_open_digital_driver(frequency, bits, channel, flags) \
            AIL_open_generic_digital_driver(frequency, bits, channel, flags, RADSS_OalInstallDriver(0, 0));
    #endif
#else // IS_GENERICDIG

DXDEC HDIGDRIVER AILCALL AIL_open_digital_driver( U32 frequency,
                                                  S32 bits,
                                                  S32 channel,
                                                  U32 flags );

#endif // not IS_GENERICDIG

DXDEC void AILCALL AIL_close_digital_driver( HDIGDRIVER dig );

#ifdef IS_LINUX

#define AIL_MSS_version(str,len)        \
{                                       \
  strncpy(str, MSS_VERSION, len);   \
}

DXDEC  S32          AILCALL AIL_digital_handle_release(HDIGDRIVER drvr);

DXDEC  S32          AILCALL AIL_digital_handle_reacquire
                                                     (HDIGDRIVER drvr);
#else

#ifdef IS_WINDOWS

#define AIL_MSS_version(str,len)        \
{                                       \
  HINSTANCE l=LoadLibrary(MSSDLLNAME);  \
  if ((UINTa)l<=32)                     \
    *(str)=0;                           \
  else {                                \
    LoadString(l,1,str,len);            \
    FreeLibrary(l);                     \
  }                                     \
}

DXDEC  S32          AILCALL AIL_digital_handle_release(HDIGDRIVER drvr);

DXDEC  S32          AILCALL AIL_digital_handle_reacquire
                                                     (HDIGDRIVER drvr);

#else

#ifdef IS_MAC

#if defined(__RESOURCES__)

typedef MSS_STRUCT MSS_VersionType_
{
  Str255 version_name;
} MSS_VersionType;

#define AIL_MSS_version(str,len)                        \
{                                                       \
  long _res = HOpenResFile(0,0,"\p" MSSDLLNAME,fsRdPerm);    \
  if (_res==-1)                                         \
  {                                                     \
    str[0]=0;                                           \
  }                                                     \
  else                                                  \
  {                                                     \
    Handle _H;                                          \
    short _Err;                                         \
    long _cur= CurResFile();                            \
    UseResFile(_res);                                   \
    _H = GetResource('vers', 2);                        \
    _Err = ResError();                                  \
    if((_Err != noErr) || (_H==0))                      \
    {                                                   \
      str[0]=0;                                         \
      UseResFile(_cur);                                 \
      CloseResFile(_res);                               \
    }                                                   \
    else                                                \
    {                                                   \
      if (GetHandleSize(_H)==0)                         \
      {                                                 \
        str[0]=0;                                       \
        UseResFile(_cur);                               \
        CloseResFile(_res);                             \
      }                                                 \
      else                                              \
      {                                                 \
        MSS_VersionType * _vt = (MSS_VersionType*)*_H;  \
        if ((U32)_vt->version_name[6]>4)                \
          _vt->version_name[6]-=4;                      \
        else                                            \
          _vt->version_name[6]=0;                       \
        if (((U32)len) <= ((U32)_vt->version_name[6]))  \
          _vt->version_name[6] = (U8)len-1;             \
        memcpy( str, _vt->version_name+11, _vt->version_name[6] ); \
        str[_vt->version_name[6]]=0;                    \
        UseResFile(_cur);                               \
        CloseResFile(_res);                             \
      }                                                 \
      ReleaseResource(_H);                              \
    }                                                   \
  }                                                     \
}

#endif

DXDEC  S32          AILCALL AIL_digital_handle_release(HDIGDRIVER drvr);

DXDEC  S32          AILCALL AIL_digital_handle_reacquire
                                                     (HDIGDRIVER drvr);

#endif
#endif
#endif

DXDEC char*     AILCALL AIL_set_redist_directory(char const*dir);

DXDEC  S32          AILCALL AIL_background_CPU_percent (void);

DXDEC  S32          AILCALL AIL_digital_CPU_percent   (HDIGDRIVER dig);

#ifdef HOST_SPU_PROCESS
DXDEC  S32          AILCALL AIL_digital_SPU_percent   (HDIGDRIVER dig);
#endif

DXDEC  S32          AILCALL AIL_digital_latency       (HDIGDRIVER dig);

DXDEC  HSAMPLE      AILCALL AIL_allocate_sample_handle
                                                      (HDIGDRIVER dig);

DXDEC void          AILCALL AIL_set_speaker_configuration
                                                      (HDIGDRIVER       dig,
                                                       MSSVECTOR3D *array,
                                                       S32              n_channels,
                                                       F32              falloff_power);

DXDEC MSSVECTOR3D *
                    AILCALL AIL_speaker_configuration
                                                      (HDIGDRIVER       dig,
                                                       S32         *n_physical_channels,
                                                       S32         *n_logical_channels,
                                                       F32         *falloff_power,
                                                       MSS_MC_SPEC *channel_spec);

DXDEC void          AILCALL AIL_set_listener_relative_receiver_array
                                                      (HDIGDRIVER             dig,
                                                       MSS_RECEIVER_LIST *array,
                                                       S32                    n_receivers);

DXDEC MSS_RECEIVER_LIST *
                    AILCALL AIL_listener_relative_receiver_array
                                                      (HDIGDRIVER dig,
                                                       S32   *n_receivers);
DXDEC void         AILCALL AIL_set_speaker_reverb_levels
                                                      (HDIGDRIVER   dig,
                                                       F32     *wet_array,
                                                       F32     *dry_array,
                                                       MSS_SPEAKER const *speaker_index_array,
                                                       S32          n_levels);

DXDEC S32          AILCALL AIL_speaker_reverb_levels  (HDIGDRIVER                   dig,
                                                       F32               * *wet_array,
                                                       F32               * *dry_array,
                                                       MSS_SPEAKER const * *speaker_index_array);


DXDEC
void AILCALL AIL_set_sample_speaker_scale_factors (HSAMPLE                 S, //)
                                                   MSS_SPEAKER const * dest_speaker_indexes,
                                                   F32         const * levels,
                                                   S32                     n_levels );
DXDEC
void AILCALL AIL_sample_speaker_scale_factors (HSAMPLE                 S, //)
                                               MSS_SPEAKER const * dest_speaker_indexes,
                                               F32               * levels,
                                               S32                     n_levels );

DXDEC
S32 AILEXPORT AIL_set_sample_is_3D                   (HSAMPLE                S, //)
                                                      S32                    onoff);


DXDEC
S32   AILEXPORT AIL_calculate_3D_channel_levels      (HDIGDRIVER                   dig, //)
                                                      F32                     *channel_levels,
                                                      MSS_SPEAKER const * *speaker_array,
                                                      MSSVECTOR3D             *src_pos,
                                                      MSSVECTOR3D             *src_face,
                                                      MSSVECTOR3D             *src_up,
                                                      F32                          src_inner_angle,
                                                      F32                          src_outer_angle,
                                                      F32                          src_outer_volume,
                                                      F32                          src_max_dist,
                                                      F32                          src_min_dist,
                                                      MSSVECTOR3D             *listen_pos,
                                                      MSSVECTOR3D             *listen_face,
                                                      MSSVECTOR3D             *listen_up,
                                                      F32                          rolloff_factor,
                                                      MSSVECTOR3D             *doppler_velocity,
                                                      F32                     *doppler_shift);


DXDEC  void         AILCALL AIL_release_sample_handle (HSAMPLE S);

DXDEC  S32          AILCALL AIL_init_sample         (HSAMPLE S,
                                                     S32     format);

DXDEC  S32          AILCALL AIL_set_sample_file       (HSAMPLE   S,
                                                       void const *file_image,
                                                       S32       block);

DXDEC  S32          AILCALL AIL_set_sample_info       (HSAMPLE   S,
                                                       AILSOUNDINFO const * info);

DXDEC  S32          AILCALL AIL_set_named_sample_file (HSAMPLE   S,
                                                       C8 const   *file_type_suffix,
                                                       void const *file_image,
                                                       U32       file_size,
                                                       S32       block);

DXDEC  HPROVIDER    AILCALL AIL_set_sample_processor  (HSAMPLE     S,
                                                       SAMPLESTAGE pipeline_stage,
                                                       HPROVIDER   provider);

DXDEC  HPROVIDER    AILCALL AIL_set_digital_driver_processor
                                                      (HDIGDRIVER  dig,
                                                       DIGDRVSTAGE pipeline_stage,
                                                       HPROVIDER   provider);

DXDEC  HPROVIDER    AILCALL AIL_sample_processor      (HSAMPLE     S,
                                                       SAMPLESTAGE pipeline_stage);

DXDEC  HPROVIDER    AILCALL AIL_digital_driver_processor
                                                      (HDIGDRIVER  dig,
                                                       DIGDRVSTAGE pipeline_stage);

DXDEC  void         AILCALL AIL_set_sample_adpcm_block_size
                                                     (HSAMPLE S,
                                                     U32     blocksize);

DXDEC  void         AILCALL AIL_set_sample_address    (HSAMPLE S,
                                                     void const   *start,
                                                     U32     len);

DXDEC  void         AILCALL AIL_start_sample          (HSAMPLE S);

DXDEC  void         AILCALL AIL_stop_sample           (HSAMPLE S);

DXDEC  void         AILCALL AIL_resume_sample         (HSAMPLE S);

DXDEC  void         AILCALL AIL_end_sample            (HSAMPLE S);

DXDEC  void         AILCALL AIL_set_sample_playback_rate
                                                     (HSAMPLE S,
                                                      S32     playback_rate);

DXDEC  void         AILCALL AIL_set_sample_playback_rate_factor
                                                     (HSAMPLE S,
                                                      F32     playback_rate_factor);

DXDEC  void         AILCALL AIL_set_sample_playback_delay
                                                     (HSAMPLE S,
                                                      S32     playback_delay);

DXDEC  void         AILCALL AIL_set_sample_volume_pan (HSAMPLE S,
                                                       F32     volume,
                                                       F32     pan);

DXDEC  void         AILCALL AIL_set_sample_volume_levels(HSAMPLE S,
                                                         F32     left_level,
                                                         F32     right_level);

DXDEC  void         AILCALL AIL_set_sample_channel_levels (HSAMPLE        S,
                                                           MSS_SPEAKER const *source_speaker_indexes,
                                                           MSS_SPEAKER const *dest_speaker_indexes,
                                                           F32         const *levels,
                                                           S32                    n_levels);

DXDEC  void         AILCALL AIL_set_sample_reverb_levels(HSAMPLE S,
                                                         F32     dry_level,
                                                         F32     wet_level);

DXDEC  void         AILCALL AIL_set_sample_low_pass_cut_off(HSAMPLE S,
                                                            S32 /*-1 or MSS_SPEAKER*/ channel,
                                                            F32         cut_off);

DXDEC  void         AILCALL AIL_set_sample_loop_count (HSAMPLE S,
                                                       S32     loop_count);

DXDEC  void         AILCALL AIL_set_sample_loop_block (HSAMPLE S,
                                                       S32     loop_start_offset,
                                                       S32     loop_end_offset);

DXDEC  S32          AILCALL AIL_sample_loop_block     (HSAMPLE S,
                                                       S32    *loop_start_offset,
                                                       S32    *loop_end_offset);

DXDEC  U32          AILCALL AIL_sample_status         (HSAMPLE S);

DXDEC  S32          AILCALL AIL_sample_playback_rate   (HSAMPLE S);

DXDEC  F32          AILCALL AIL_sample_playback_rate_factor (HSAMPLE S);

DXDEC  S32          AILCALL AIL_sample_playback_delay (HSAMPLE S);

DXDEC  void         AILCALL AIL_sample_volume_pan     (HSAMPLE S, F32* volume, F32* pan);

DXDEC  S32          AILCALL AIL_sample_channel_count  (HSAMPLE S, U32 *mask);

DXDEC  void         AILCALL AIL_sample_channel_levels (HSAMPLE                S,
                                                       MSS_SPEAKER const *source_speaker_indexes,
                                                       MSS_SPEAKER const *dest_speaker_indexes,
                                                       F32               *levels,
                                                       S32                    n_levels);

DXDEC  void         AILCALL AIL_sample_volume_levels  (HSAMPLE  S,
                                                       F32 *left_level,
                                                       F32 *right_level);

DXDEC  void         AILCALL AIL_sample_reverb_levels  (HSAMPLE  S,
                                                       F32 *dry_level,
                                                       F32 *wet_level);

DXDEC  void         AILCALL AIL_sample_output_levels  (HSAMPLE                S,
                                                       MSS_SPEAKER const *source_speaker_indexes,
                                                       MSS_SPEAKER const *dest_speaker_indexes,
                                                       F32               *levels,
                                                       S32                    n_levels);

DXDEC  F32          AILCALL AIL_sample_low_pass_cut_off(HSAMPLE S, S32 /*-1 or MSS_SPEAKER*/ channel);

DXDEC  S32          AILCALL AIL_sample_loop_count     (HSAMPLE S);

DXDEC  void         AILCALL AIL_set_digital_master_volume_level
                                                     (HDIGDRIVER dig,
                                                      F32        master_volume);

DXDEC  F32          AILCALL AIL_digital_master_volume_level (HDIGDRIVER dig);

DXDEC  void         AILCALL AIL_set_sample_51_volume_pan( HSAMPLE S,
                                                          F32     volume,
                                                          F32     pan,
                                                          F32     fb_pan,
                                                          F32     center_level,
                                                          F32     sub_level );

DXDEC  void         AILCALL AIL_sample_51_volume_pan    ( HSAMPLE S,
                                                          F32* volume,
                                                          F32* pan,
                                                          F32* fb_pan,
                                                          F32* center_level,
                                                          F32* sub_level );

DXDEC  void         AILCALL AIL_set_sample_51_volume_levels( HSAMPLE S,
                                                             F32     f_left_level,
                                                             F32     f_right_level,
                                                             F32     b_left_level,
                                                             F32     b_right_level,
                                                             F32     center_level,
                                                             F32     sub_level );

DXDEC  void         AILCALL AIL_sample_51_volume_levels    ( HSAMPLE S,
                                                             F32* f_left_level,
                                                             F32* f_right_level,
                                                             F32* b_left_level,
                                                             F32* b_right_level,
                                                             F32* center_level,
                                                             F32* sub_level );
DXDEC  void         AILCALL AIL_set_digital_master_reverb
                                                     (HDIGDRIVER dig,
                                                      F32        reverb_decay_time,
                                                      F32        reverb_predelay,
                                                      F32        reverb_damping);

DXDEC  void         AILCALL AIL_digital_master_reverb
                                                     (HDIGDRIVER dig,
                                                      F32*   reverb_time,
                                                      F32*   reverb_predelay,
                                                      F32*   reverb_damping);

DXDEC  void         AILCALL AIL_set_digital_master_reverb_levels
                                                     (HDIGDRIVER dig,
                                                      F32        dry_level,
                                                      F32        wet_level);

DXDEC  void         AILCALL AIL_digital_master_reverb_levels
                                                     (HDIGDRIVER dig,
                                                      F32 *  dry_level,
                                                      F32 *  wet_level);


//
// low-level digital services
//

DXDEC  S32      AILCALL AIL_minimum_sample_buffer_size(HDIGDRIVER dig,
                                                     S32         playback_rate,
                                                     S32         format);

DXDEC  S32      AILCALL AIL_set_sample_buffer_count  (HSAMPLE S,
                                                      S32     n_buffers);

DXDEC  S32      AILCALL AIL_sample_buffer_count      (HSAMPLE S);

DXDEC  S32      AILCALL AIL_sample_buffer_available (HSAMPLE S);

DXDEC  S32      AILCALL AIL_load_sample_buffer      (HSAMPLE S,
                                                     S32     buff_num,
                                                     void const *buffer,
                                                     U32     len);

DXDEC  void     AILCALL AIL_request_EOB_ASI_reset   (HSAMPLE S,
                                                     U32     buff_num,
                                                     S32     new_stream_position);

DXDEC  S32      AILCALL AIL_sample_buffer_info      (HSAMPLE S, //)
                                                     S32     buff_num,
                                                     U32     *pos,
                                                     U32     *len,
                                                     S32     *head,
                                                     S32     *tail);

DXDEC  U32      AILCALL AIL_sample_granularity      (HSAMPLE S);

DXDEC  void     AILCALL AIL_set_sample_position      (HSAMPLE S,
                                                      U32     pos);

DXDEC  U32      AILCALL AIL_sample_position          (HSAMPLE S);

DXDEC  AILSAMPLECB AILCALL AIL_register_SOB_callback
                                                    (HSAMPLE S,
                                                     AILSAMPLECB SOB);

DXDEC  AILSAMPLECB AILCALL AIL_register_EOB_callback
                                                    (HSAMPLE S,
                                                     AILSAMPLECB EOB);

DXDEC  AILSAMPLECB AILCALL AIL_register_EOS_callback
                                                    (HSAMPLE S,
                                                     AILSAMPLECB EOS);

DXDEC  AILFALLOFFCB AILCALL AIL_register_falloff_function_callback
                                                    (HSAMPLE S,
                                                     AILFALLOFFCB falloff_cb);

DXDEC  void     AILCALL AIL_set_sample_user_data   (HSAMPLE S,
                                                    U32     index,
                                                    SINTa   value);

DXDEC  SINTa    AILCALL AIL_sample_user_data       (HSAMPLE S,
                                                    U32     index);

DXDEC  S32      AILCALL AIL_active_sample_count    (HDIGDRIVER dig);

DXDEC  void     AILCALL AIL_digital_configuration  (HDIGDRIVER dig,
                                                      S32   *rate,
                                                      S32   *format,
                                                      char  *string);

DXDEC S32     AILCALL AIL_platform_property (void                 *object,
                                       MSS_PLATFORM_PROPERTY property,
                                       void             *before_value,
                                       void const       *new_value,
                                       void             *after_value);


DXDEC  void     AILCALL AIL_set_sample_ms_position (HSAMPLE    S, //)
                                                    S32        milliseconds);

DXDEC  void     AILCALL AIL_sample_ms_position     (HSAMPLE    S, //)
                                                    S32 *  total_milliseconds,
                                                    S32 *  current_milliseconds);

//
// Digital input services
//

#if defined(IS_WINDOWS) || defined (IS_MAC) || defined(IS_LINUX) || defined(IS_XENON)

DXDEC HDIGINPUT AILCALL AIL_open_input             (AIL_INPUT_INFO *info);

DXDEC void      AILCALL AIL_close_input            (HDIGINPUT         dig);

DXDEC AIL_INPUT_INFO *
                AILCALL AIL_get_input_info         (HDIGINPUT         dig);

DXDEC S32       AILCALL AIL_set_input_state        (HDIGINPUT         dig,
                                                    S32               enable);
#endif


//
// High-level XMIDI services
//

DXDEC HMDIDRIVER AILCALL AIL_open_XMIDI_driver( U32 flags );

#define AIL_OPEN_XMIDI_NULL_DRIVER 1

DXDEC void AILCALL AIL_close_XMIDI_driver( HMDIDRIVER mdi );

#if defined(IS_MAC) || defined(IS_LINUX)

DXDEC  S32          AILCALL AIL_MIDI_handle_release
                                                 (HMDIDRIVER mdi);

DXDEC  S32          AILCALL AIL_MIDI_handle_reacquire
                                                 (HMDIDRIVER mdi);

#else

#ifdef IS_WINDOWS

DXDEC  S32          AILCALL AIL_midiOutOpen(HMDIDRIVER *drvr,
                                            LPHMIDIOUT *lphMidiOut,
                                            S32             dwDeviceID);

DXDEC  void         AILCALL AIL_midiOutClose      (HMDIDRIVER mdi);

DXDEC  S32          AILCALL AIL_MIDI_handle_release
                                                 (HMDIDRIVER mdi);

DXDEC  S32          AILCALL AIL_MIDI_handle_reacquire
                                                 (HMDIDRIVER mdi);

#endif

#endif

DXDEC  HSEQUENCE    AILCALL AIL_allocate_sequence_handle
                                                     (HMDIDRIVER mdi);

DXDEC  void         AILCALL AIL_release_sequence_handle
                                                     (HSEQUENCE S);

DXDEC  S32          AILCALL AIL_init_sequence         (HSEQUENCE S,
                                                     void const     *start,
                                                     S32       sequence_num);

DXDEC  void         AILCALL AIL_start_sequence        (HSEQUENCE S);

DXDEC  void         AILCALL AIL_stop_sequence         (HSEQUENCE S);

DXDEC  void         AILCALL AIL_resume_sequence       (HSEQUENCE S);

DXDEC  void         AILCALL AIL_end_sequence          (HSEQUENCE S);

DXDEC  void         AILCALL AIL_set_sequence_tempo    (HSEQUENCE S,
                                                       S32       tempo,
                                                       S32       milliseconds);

DXDEC  void         AILCALL AIL_set_sequence_volume   (HSEQUENCE S,
                                                       S32       volume,
                                                       S32       milliseconds);

DXDEC  void         AILCALL AIL_set_sequence_loop_count
                                                     (HSEQUENCE S,
                                                      S32       loop_count);

DXDEC  U32          AILCALL AIL_sequence_status       (HSEQUENCE S);

DXDEC  S32          AILCALL AIL_sequence_tempo        (HSEQUENCE S);

DXDEC  S32          AILCALL AIL_sequence_volume       (HSEQUENCE S);

DXDEC  S32          AILCALL AIL_sequence_loop_count   (HSEQUENCE S);

DXDEC  void         AILCALL AIL_set_XMIDI_master_volume
                                                     (HMDIDRIVER mdi,
                                                      S32         master_volume);

DXDEC  S32          AILCALL AIL_XMIDI_master_volume   (HMDIDRIVER mdi);


//
// Low-level XMIDI services
//

DXDEC  S32      AILCALL AIL_active_sequence_count     (HMDIDRIVER mdi);

DXDEC  S32      AILCALL AIL_controller_value          (HSEQUENCE S,
                                                      S32       channel,
                                                      S32       controller_num);

DXDEC  S32      AILCALL AIL_channel_notes             (HSEQUENCE S,
                                                      S32       channel);

DXDEC  void     AILCALL AIL_sequence_position         (HSEQUENCE S,
                                                      S32      *beat,
                                                      S32      *measure);

DXDEC  void     AILCALL AIL_branch_index              (HSEQUENCE  S,
                                                      U32        marker);

DXDEC  AILPREFIXCB AILCALL AIL_register_prefix_callback
                                                     (HSEQUENCE  S,
                                                      AILPREFIXCB callback);

DXDEC  AILTRIGGERCB AILCALL AIL_register_trigger_callback
                                                     (HSEQUENCE  S,
                                                      AILTRIGGERCB callback);

DXDEC  AILSEQUENCECB AILCALL AIL_register_sequence_callback
                                                     (HSEQUENCE  S,
                                                      AILSEQUENCECB callback);

DXDEC  AILBEATCB AILCALL AIL_register_beat_callback   (HSEQUENCE  S,
                                                      AILBEATCB callback);

DXDEC  AILEVENTCB AILCALL AIL_register_event_callback (HMDIDRIVER mdi,
                                                      AILEVENTCB callback);

DXDEC  AILTIMBRECB AILCALL AIL_register_timbre_callback
                                                     (HMDIDRIVER mdi,
                                                      AILTIMBRECB callback);

DXDEC  void     AILCALL AIL_set_sequence_user_data    (HSEQUENCE S,
                                                       U32       index,
                                                       SINTa     value);

DXDEC  SINTa    AILCALL AIL_sequence_user_data        (HSEQUENCE S,
                                                       U32       index);

DXDEC  void     AILCALL AIL_register_ICA_array        (HSEQUENCE S,
                                                      U8       *array);

DXDEC  S32      AILCALL AIL_lock_channel              (HMDIDRIVER mdi);

DXDEC  void     AILCALL AIL_release_channel           (HMDIDRIVER mdi,
                                                      S32         channel);

DXDEC  void     AILCALL AIL_map_sequence_channel      (HSEQUENCE S,
                                                      S32       seq_channel,
                                                      S32       new_channel);

DXDEC  S32      AILCALL AIL_true_sequence_channel     (HSEQUENCE S,
                                                      S32       seq_channel);

DXDEC  void     AILCALL AIL_send_channel_voice_message
                                                     (HMDIDRIVER  mdi,
                                                      HSEQUENCE   S,
                                                      S32         status,
                                                      S32         data_1,
                                                      S32         data_2);

DXDEC  void     AILCALL AIL_send_sysex_message        (HMDIDRIVER mdi,
                                                       void const       *buffer);

DXDEC  HWAVESYNTH
                AILCALL AIL_create_wave_synthesizer   (HDIGDRIVER dig,
                                                    HMDIDRIVER mdi,
                                                       void const       *wave_lib,
                                                       S32         polyphony);

DXDEC  void     AILCALL AIL_destroy_wave_synthesizer  (HWAVESYNTH W);

DXDEC  void     AILCALL AIL_set_sequence_ms_position  (HSEQUENCE S, //)
                                                       S32       milliseconds);

DXDEC  void     AILCALL AIL_sequence_ms_position(HSEQUENCE S, //)
                                                 S32 *total_milliseconds,
                                                 S32 *current_milliseconds);



//
// red book functions
//

#ifdef IS_LINUX
MSS_STRUCT SDL_CD;
#endif

#if !defined(IS_XENON) && !defined(IS_PS2) && !defined(IS_PS3)  && !defined(IS_WII) && !defined(IS_PSP) && !defined(IS_IPHONE) && !defined(IS_MAC)

typedef MSS_STRUCT _REDBOOK {
  U32 DeviceID;
  U32 paused;
  U32 pausedsec;
  U32 lastendsec;
#ifdef IS_LINUX
  struct SDL_CD *cdrom;
#endif
} REDBOOK;

typedef MSS_STRUCT _REDBOOK* HREDBOOK;

#define REDBOOK_ERROR    0
#define REDBOOK_PLAYING  1
#define REDBOOK_PAUSED   2
#define REDBOOK_STOPPED  3


DXDEC  HREDBOOK   AILCALL AIL_redbook_open(U32 which);

DXDEC  HREDBOOK   AILCALL AIL_redbook_open_drive(S32 drive);

DXDEC  void       AILCALL AIL_redbook_close(HREDBOOK hand);

DXDEC  void       AILCALL AIL_redbook_eject(HREDBOOK hand);

DXDEC  void       AILCALL AIL_redbook_retract(HREDBOOK hand);

DXDEC  U32        AILCALL AIL_redbook_status(HREDBOOK hand);

DXDEC  U32        AILCALL AIL_redbook_tracks(HREDBOOK hand);

DXDEC  U32        AILCALL AIL_redbook_track(HREDBOOK hand);

DXDEC  void       AILCALL AIL_redbook_track_info(HREDBOOK hand,U32 tracknum,
                                                     U32* startmsec,U32* endmsec);

DXDEC  U32        AILCALL AIL_redbook_id(HREDBOOK hand);

DXDEC  U32        AILCALL AIL_redbook_position(HREDBOOK hand);

DXDEC  U32        AILCALL AIL_redbook_play(HREDBOOK hand,U32 startmsec, U32 endmsec);

DXDEC  U32        AILCALL AIL_redbook_stop(HREDBOOK hand);

DXDEC  U32        AILCALL AIL_redbook_pause(HREDBOOK hand);

DXDEC  U32        AILCALL AIL_redbook_resume(HREDBOOK hand);

DXDEC  F32        AILCALL AIL_redbook_volume_level(HREDBOOK hand);

DXDEC  F32        AILCALL AIL_redbook_set_volume_level(HREDBOOK hand, F32 volume);

#endif

DXDEC U32 AILCALL AIL_ms_count(void);
DXDEC U32 AILCALL AIL_us_count(void);


typedef struct _STREAM* HSTREAM;           // Handle to stream

typedef void (AILCALLBACK* AILSTREAMCB)   (HSTREAM stream);

typedef struct _STREAM {

  S32 block_oriented; // 1 if this is an ADPCM or ASI-compressed stream
  S32 using_ASI;      // 1 if using ASI decoder to uncompress stream data
  ASISTAGE *ASI;  // handy pointer to our ASI coded

  HSAMPLE samp;       // the sample handle

  UINTa fileh;        // the open file handle

  U8* bufs[3];    // the data buffers
  U32 bufsizes[3];    // the size of each buffer
  S32 reset_ASI[3];   // should we reset the ASI at the end of the buffer?
  S32 reset_seek_pos[3]; // new stream position after reset
  S32 bufstart[3];    // offset of where this buffer started
  void* asyncs[3];// async read structures

  S32 loadedbufstart[2]; // offset of where the loaded buffer started
  S32 loadedorder[2]; // order of the buffers as they were loaded
  S32 loadorder;      // incremented as each buffer is loaded

  S32 bufsize;        // size of each buffer
  S32 readsize;       // size of each read block

  U32 buf1;           // 0,1,2 (current buffer that we are reading into)
  S32 size1;          // holds the current amount of data read

  U32 buf2;           // 0,1,2 (the next buffer that we are reading into)
  S32 size2;          // next buffer loaded up to

  U32 buf3;           // 0,1,2 (the next buffer that we are reading into)
  S32 size3;          // next buffer loaded up to

  U32 datarate;       // datarate in bytes per second
  S32 filerate;       // original datarate of the file
  S32 filetype;       // file format type
  U32 filemask;       // channel mask for stream file
  S32 totallen;       // total length of the sound data

  S32 substart;       // subblock loop start
  S32 sublen;         // subblock loop len
  S32 subpadding;     // amount to pad the final block

  U32 blocksize;      // ADPCM block size
  S32 padding;        // padding to be done
  S32 padded;         // padding done

  S32 loadedsome;     // have we done any loads?

  U32 startpos;       // point that the sound data begins
  U32 totalread;      // total bytes read from the disk

  U32 loopsleft;      // how many loops are left

  U32 error;          // read error has occurred

  S32 preload;        // preload the file into the first buffer
  U32 preloadpos;     // position to use in preload
  S32 noback;         // no background processing
  S32 alldone;        // alldone
  S32 primeamount;    // amount to load after a seek
  S32 readatleast;    // forced amount to read on next service

  S32 playcontrol;    // control: 0=stopped, 1=started, |8=paused, |16=sample paused

  AILSTREAMCB callback;  // end of stream callback

  SINTa user_data[8];   // Miscellaneous user data
  void* next;       // pointer to next stream

#if defined(IS_WINDOWS) || defined(IS_MAC) || defined(IS_LINUX) || defined(IS_XENON) || defined(IS_PS2) || defined(IS_PS3) || defined(IS_WII) || defined(IS_PSP)
  S32 autostreaming;  // are we autostreaming this stream
#endif

  S32 docallback;     // set when it time to poll for a callback
} MSTREAM_TYPE;


DXDEC HSTREAM AILCALL AIL_open_stream(HDIGDRIVER dig, char const * filename, S32 stream_mem);

DXDEC void AILCALL AIL_close_stream(HSTREAM stream);

DXDEC HSAMPLE  AILCALL AIL_stream_sample_handle(HSTREAM stream);

DXDEC S32 AILCALL AIL_service_stream(HSTREAM stream, S32 fillup);

DXDEC void AILCALL AIL_start_stream(HSTREAM stream);

DXDEC void AILCALL AIL_pause_stream(HSTREAM stream, S32 onoff);

DXDEC S32 AILCALL AIL_stream_loop_count(HSTREAM stream);

DXDEC void AILCALL AIL_set_stream_loop_count(HSTREAM stream, S32 count);

DXDEC void AILCALL AIL_set_stream_loop_block (HSTREAM S,
                                              S32     loop_start_offset,
                                              S32     loop_end_offset);

DXDEC S32 AILCALL AIL_stream_status(HSTREAM stream);

DXDEC void AILCALL AIL_set_stream_position(HSTREAM stream,S32 offset);

DXDEC S32 AILCALL AIL_stream_position(HSTREAM stream);

DXDEC void AILCALL AIL_stream_info(HSTREAM stream, S32* datarate, S32* sndtype, S32* length, S32* memory);

DXDEC AILSTREAMCB AILCALL AIL_register_stream_callback(HSTREAM stream, AILSTREAMCB callback);

DXDEC void AILCALL AIL_auto_service_stream(HSTREAM stream, S32 onoff);

DXDEC void     AILCALL AIL_set_stream_user_data   (HSTREAM S,
                                                   U32     index,
                                                   SINTa   value);

DXDEC SINTa    AILCALL AIL_stream_user_data       (HSTREAM S,
                                                   U32     index);

DXDEC  void     AILCALL AIL_set_stream_ms_position   (HSTREAM S,
                                                      S32        milliseconds);

DXDEC  void     AILCALL AIL_stream_ms_position     (HSTREAM    S, //)
                                                    S32 *  total_milliseconds,
                                                    S32 *  current_milliseconds);

//! \todo MSS_FILE not needed anymore?
typedef char MSS_FILE;

typedef U32  (AILCALLBACK*AIL_file_open_callback)  (MSS_FILE const* Filename,
                                                        UINTa* FileHandle);

typedef void (AILCALLBACK*AIL_file_close_callback) (UINTa FileHandle);

#define AIL_FILE_SEEK_BEGIN   0
#define AIL_FILE_SEEK_CURRENT 1
#define AIL_FILE_SEEK_END     2

typedef S32  (AILCALLBACK*AIL_file_seek_callback)  (UINTa FileHandle,
                                                        S32 Offset,
                                                        U32 Type);

typedef U32  (AILCALLBACK*AIL_file_read_callback)  (UINTa FileHandle,
                                                        void* Buffer,
                                                        U32 Bytes);

DXDEC  void  AILCALL AIL_set_file_callbacks  (AIL_file_open_callback opencb,
                                              AIL_file_close_callback closecb,
                                              AIL_file_seek_callback seekcb,
                                              AIL_file_read_callback readcb);

#ifdef IS_32

typedef void* (AILCALLBACK *AIL_file_async_read_callback) (UINTa FileHandle,
                                                                   void* Buffer,
                                                                   U32 Bytes);

typedef S32 (AILCALLBACK*AIL_file_async_status_callback)  (void* async,
                                                               S32 wait,
                                                               U32* BytesRead);

DXDEC  void  AILCALL AIL_set_file_async_callbacks (AIL_file_open_callback opencb,
                                                   AIL_file_close_callback closecb,
                                                   AIL_file_seek_callback seekcb,
                                                   AIL_file_async_read_callback areadcb,
                                                   AIL_file_async_status_callback statuscb);

#endif

//
// High-level DLS functions
//

typedef struct _DLSFILEID {
  SINTa id;
  struct _DLSFILEID* next;
} DLSFILEID;

typedef struct _DLSFILEID* HDLSFILEID;

typedef struct _DLSDEVICE {
  VOIDFUNC* pGetPref;
  VOIDFUNC* pSetPref;
  VOIDFUNC* pMSSOpen;
  VOIDFUNC* pOpen;
  VOIDFUNC* pClose;
  VOIDFUNC* pLoadFile;
  VOIDFUNC* pLoadMem;
  VOIDFUNC* pUnloadFile;
  VOIDFUNC* pUnloadAll;
  VOIDFUNC* pGetInfo;
  VOIDFUNC* pCompact;
  VOIDFUNC* pSetAttr;
  SINTa DLSHandle;
  U32 format;
  U32 buffer_size;
  void* buffer[2];
  HSAMPLE sample;
  HMDIDRIVER mdi;
  HDIGDRIVER dig;
  HDLSFILEID first;
#ifdef IS_WINDOWS
  HMODULE lib;
#else
  #ifdef IS_STATIC
  char* DOSname;
  #endif
#endif
} DLSDEVICE;

typedef struct _DLSDEVICE* HDLSDEVICE;

typedef struct _AILDLSINFO {
  char Description[128];
  S32 MaxDLSMemory;
  S32 CurrentDLSMemory;
  S32 LargestSize;
  S32 GMAvailable;
  S32 GMBankSize;
} AILDLSINFO;

#ifdef IS_STATIC

typedef struct _AILSTATICDLS {
  char* description;
  VOIDFUNC* pDLSOpen;
  VOIDFUNC* pMSSOpen;
  VOIDFUNC* pOpen;
  VOIDFUNC* pClose;
  VOIDFUNC* pLoadFile;
  VOIDFUNC* pLoadMem;
  VOIDFUNC* pUnloadFile;
  VOIDFUNC* pUnloadAll;
  VOIDFUNC* pGetInfo;
  VOIDFUNC* pCompact;
  VOIDFUNC* pSetAttr;
} AILSTATICDLS;

#endif


DXDEC  HDLSDEVICE AILCALL AIL_DLS_open(HMDIDRIVER mdi, HDIGDRIVER dig,
#ifdef IS_STATIC
                                          AILSTATICDLS const * staticdls,
#else
                                          char const * libname,
#endif
                                          U32 flags, U32 rate, S32 bits, S32 channels);

//
// Parameters for the dwFlag used in DLSClose() and flags in AIL_DLS_close
//

#define RETAIN_DLS_COLLECTION   0x00000001
#define RETURN_TO_BOOTUP_STATE  0x00000002
#define RETURN_TO_GM_ONLY_STATE 0x00000004
#define DLS_COMPACT_MEMORY      0x00000008

DXDEC  void   AILCALL AIL_DLS_close(HDLSDEVICE dls, U32 flags);

DXDEC  HDLSFILEID AILCALL AIL_DLS_load_file(HDLSDEVICE dls, char const* filename, U32 flags);

DXDEC  HDLSFILEID AILCALL AIL_DLS_load_memory(HDLSDEVICE dls, void const* memfile, U32 flags);

//
// other parameters for AIL_DLS_unload
//

#define AIL_DLS_UNLOAD_MINE 0
#define AIL_DLS_UNLOAD_ALL  ((HDLSFILEID)(UINTa)(SINTa)-1)

DXDEC  void   AILCALL AIL_DLS_unload(HDLSDEVICE dls, HDLSFILEID dlsid);

DXDEC  void   AILCALL AIL_DLS_compact(HDLSDEVICE dls);

DXDEC  void   AILCALL AIL_DLS_get_info(HDLSDEVICE dls, AILDLSINFO* info, S32* PercentCPU);

DXDEC HSAMPLE AILCALL AIL_DLS_sample_handle(HDLSDEVICE dls);


//
// Quick-integration service functions and data types
//

typedef struct
{
   U32 const *data;
   S32  size;
   S32  type;
   void *handle;
   S32  status;
   void* next;
   S32  speed;
   F32  volume;
   F32  extravol;
   F32  dry;
   F32  wet;
   F32  cutoff;
   HDLSFILEID dlsid;
   void* dlsmem;
   void* dlsmemunc;
   S32  milliseconds;
   S32  length;
   SINTa userdata;
}
AUDIO_TYPE;


#define QSTAT_DONE          1       // Data has finished playing
#define QSTAT_LOADED        2       // Data has been loaded, but not yet played
#define QSTAT_PLAYING       3       // Data is currently playing

typedef AUDIO_TYPE * HAUDIO;        // Generic handle to any audio data type

#define AIL_QUICK_USE_WAVEOUT             2
#define AIL_QUICK_MIDI_AND_DLS            2
#define AIL_QUICK_DLS_ONLY                3
#define AIL_QUICK_MIDI_AND_VORTEX_DLS     4
#define AIL_QUICK_MIDI_AND_SONICVIBES_DLS 5

DXDEC S32     AILCALL
#if defined(IS_WINDOWS) || defined(IS_MAC) || defined(IS_LINUX) || defined(IS_XENON) || defined(IS_PS2) || defined(IS_PS3) || defined(IS_WII)
                       AIL_quick_startup           (
#else
                       AIL_quick_startup_with_start(void*       startup,
#endif
                                                    S32         use_digital,
                                                    S32         use_MIDI,
                                                    U32         output_rate,
                                                    S32         output_bits,
                                                    S32         output_channels);

DXDEC void    AILCALL AIL_quick_shutdown            (void);

DXDEC void    AILCALL AIL_quick_handles             (HDIGDRIVER* pdig,
                                                     HMDIDRIVER* pmdi,
                                                     HDLSDEVICE* pdls );

DXDEC HAUDIO  AILCALL AIL_quick_load                (char const   *filename);

DXDEC HAUDIO  AILCALL AIL_quick_load_mem            (void const   *mem,
                                                     U32    size);

DXDEC HAUDIO  AILCALL AIL_quick_load_named_mem      (void const   *mem,
                                                     char const   *filename,
                                                     U32    size);

DXDEC HAUDIO  AILCALL AIL_quick_copy                (HAUDIO      audio);

DXDEC void    AILCALL AIL_quick_unload              (HAUDIO      audio);

DXDEC S32     AILCALL AIL_quick_play                (HAUDIO      audio,
                                                    U32         loop_count);

DXDEC void    AILCALL AIL_quick_halt                (HAUDIO      audio);

DXDEC S32     AILCALL AIL_quick_status              (HAUDIO      audio);

DXDEC HAUDIO  AILCALL AIL_quick_load_and_play       (char const   *filename,
                                                    U32         loop_count,
                                                    S32         wait_request);

DXDEC void   AILCALL AIL_quick_set_speed (HAUDIO audio, S32 speed);

DXDEC void   AILCALL AIL_quick_set_volume (HAUDIO audio, F32 volume, F32 extravol);

DXDEC void   AILCALL AIL_quick_set_reverb_levels (HAUDIO audio,
                                                  F32    dry_level,
                                                  F32    wet_level);

DXDEC void   AILCALL AIL_quick_set_low_pass_cut_off(HAUDIO S,
                                                    S32 channel,
                                                    F32 cut_off);

DXDEC void   AILCALL AIL_quick_set_ms_position(HAUDIO audio,S32 milliseconds);

DXDEC S32    AILCALL AIL_quick_ms_position(HAUDIO audio);

DXDEC S32    AILCALL AIL_quick_ms_length(HAUDIO audio);


#define AIL_QUICK_XMIDI_TYPE        1
#define AIL_QUICK_DIGITAL_TYPE      2
#define AIL_QUICK_DLS_XMIDI_TYPE    3
#define AIL_QUICK_MPEG_DIGITAL_TYPE 4
#define AIL_QUICK_OGG_VORBIS_TYPE   5
#define AIL_QUICK_V12_VOICE_TYPE    6
#define AIL_QUICK_V24_VOICE_TYPE    7
#define AIL_QUICK_V29_VOICE_TYPE    8
#define AIL_QUICK_OGG_SPEEX_TYPE    9
#define AIL_QUICK_S8_VOICE_TYPE     10
#define AIL_QUICK_S16_VOICE_TYPE    11
#define AIL_QUICK_S32_VOICE_TYPE    12
#define AIL_QUICK_BINKA_TYPE        13

DXDEC S32    AILCALL AIL_quick_type(HAUDIO audio);

DXDEC S32 AILCALL AIL_WAV_info(void const* WAV_image, AILSOUNDINFO* info);

DXDEC S32 AILCALL AIL_WAV_marker_count(void const *WAV_image);

DXDEC S32 AILCALL AIL_WAV_marker_by_index(void const *WAV_image, S32 n, C8 const **name);

DXDEC S32 AILCALL AIL_WAV_marker_by_name(void const *WAV_image, C8 *name);

DXDEC S32 AILCALL AIL_size_processed_digital_audio(
                                 U32             dest_rate,
                                 U32             dest_format,
                                 S32             num_srcs,
                                 AILMIXINFO const * src);

DXDEC S32 AILCALL AIL_process_digital_audio(
                                 void       *dest_buffer,
                                 S32             dest_buffer_size,
                                 U32             dest_rate,
                                 U32             dest_format,
                                 S32             num_srcs,
                                 AILMIXINFO* src);

#define AIL_LENGTHY_INIT           0
#define AIL_LENGTHY_SET_PROPERTY   1
#define AIL_LENGTHY_UPDATE         2
#define AIL_LENGTHY_DONE           3

typedef S32 (AILCALLBACK* AILLENGTHYCB)(U32 state,UINTa user);

typedef S32 (AILCALLBACK* AILCODECSETPROP)(char const* property,void const * value);

DXDEC S32 AILCALL AIL_compress_ASI(AILSOUNDINFO const * info, //)
                                   char const* filename_ext,
                                   void** outdata,
                                   U32* outsize,
                                   AILLENGTHYCB callback);

DXDEC S32 AILCALL AIL_decompress_ASI(void const* indata, //)
                                     U32 insize,
                                     char const* filename_ext,
                                     void** wav,
                                     U32* wavsize,
                                     AILLENGTHYCB callback);

DXDEC S32 AILCALL AIL_compress_ADPCM(AILSOUNDINFO const * info,
                                     void** outdata, U32* outsize);

DXDEC S32 AILCALL AIL_decompress_ADPCM(AILSOUNDINFO const * info,
                                       void** outdata, U32* outsize);

DXDEC S32 AILCALL AIL_compress_DLS(void const* dls,
                                   char const* compression_extension,
                                   void** mls, U32* mlssize,
                                   AILLENGTHYCB callback);

DXDEC S32 AILCALL AIL_merge_DLS_with_XMI(void const* xmi, void const* dls,
                                         void** mss, U32* msssize);

DXDEC  S32 AILCALL AIL_extract_DLS( void const *source_image, //)
                                    U32             source_size,
                                    void * *XMI_output_data,
                                    U32        *XMI_output_size,
                                    void * *DLS_output_data,
                                    U32        *DLS_output_size,
                                    AILLENGTHYCB   callback);

#define AILFILTERDLS_USINGLIST 1

DXDEC S32 AILCALL AIL_filter_DLS_with_XMI(void const* xmi, void const* dls,
                                         void** dlsout, U32* dlssize,
                                         S32  flags, AILLENGTHYCB callback);

#define AILMIDITOXMI_USINGLIST 1
#define AILMIDITOXMI_TOLERANT  2

DXDEC  S32 AILCALL AIL_MIDI_to_XMI       (void const*  MIDI,
                                         U32        MIDI_size,
                                         void* *XMIDI,
                                         U32 *  XMIDI_size,
                                         S32        flags);

#define AILDLSLIST_ARTICULATION 1
#define AILDLSLIST_DUMP_WAVS    2

#if defined(IS_WIN32) || defined(IS_MAC)

DXDEC  S32          AILCALL AIL_list_DLS          (void const* DLS,
                                                   char** lst,
                                                   U32 * lst_size,
                                                   S32       flags,
                                                   C8  * title);

#define AILMIDILIST_ROLANDSYSEX 1
#define AILMIDILIST_ROLANDUN    2
#define AILMIDILIST_ROLANDAB    4

DXDEC  S32          AILCALL AIL_list_MIDI         (void const* MIDI,
                                                  U32       MIDI_size,
                                                  char** lst,
                                                  U32 * lst_size,
                                                  S32       flags);
#endif

#define AILFILETYPE_UNKNOWN         0
#define AILFILETYPE_PCM_WAV         1
#define AILFILETYPE_ADPCM_WAV       2
#define AILFILETYPE_OTHER_WAV       3
#define AILFILETYPE_VOC             4
#define AILFILETYPE_MIDI            5
#define AILFILETYPE_XMIDI           6
#define AILFILETYPE_XMIDI_DLS       7
#define AILFILETYPE_XMIDI_MLS       8
#define AILFILETYPE_DLS             9
#define AILFILETYPE_MLS            10
#define AILFILETYPE_MPEG_L1_AUDIO  11
#define AILFILETYPE_MPEG_L2_AUDIO  12
#define AILFILETYPE_MPEG_L3_AUDIO  13
#define AILFILETYPE_OTHER_ASI_WAV  14
#define AILFILETYPE_XBOX_ADPCM_WAV 15
#define AILFILETYPE_OGG_VORBIS     16
#define AILFILETYPE_V12_VOICE      17
#define AILFILETYPE_V24_VOICE      18
#define AILFILETYPE_V29_VOICE      19
#define AILFILETYPE_OGG_SPEEX      20
#define AILFILETYPE_S8_VOICE       21
#define AILFILETYPE_S16_VOICE      22
#define AILFILETYPE_S32_VOICE      23
#define AILFILETYPE_BINKA          24

DXDEC S32 AILCALL AIL_file_type(void const* data, U32 size);

DXDEC S32 AILCALL AIL_file_type_named(void const* data, char const* filename, U32 size);

DXDEC S32 AILCALL AIL_find_DLS       (void const*      data, U32 size,
                                      void** xmi, U32* xmisize,
                                      void** dls, U32* dlssize);
typedef struct
{
   //
   // File-level data accessible to app
   //
   // This is valid after AIL_inspect_MP3() is called (even if the file contains no valid frames)
   //

   U8 *MP3_file_image;       // Original MP3_file_image pointer passed to AIL_inspect_MP3()
   S32     MP3_image_size;       // Original MP3_image_size passed to AIL_inspect_MP3()

   U8 *ID3v2;                // ID3v2 tag, if not NULL
   S32     ID3v2_size;           // Size of tag in bytes

   U8 *ID3v1;                // ID3v1 tag, if not NULL (always 128 bytes long if present)

   U8 *start_MP3_data;       // Pointer to start of data area in file (not necessarily first valid frame)
   U8 *end_MP3_data;         // Pointer to last valid byte in MP3 data area (before ID3v1 tag, if any)

   //
   // Information about current frame being inspected, valid if AIL_enumerate_MP3_frames() returns
   // TRUE
   //

   S32 sample_rate;              // Sample rate in Hz (normally constant across all frames in file)
   S32 bit_rate;                 // Bits/second for current frame
   S32 channels_per_sample;      // 1 or 2
   S32 samples_per_frame;        // Always 576 or 1152 samples in each MP3 frame, depending on rate

   S32 byte_offset;              // Offset of frame from start_MP3_data (i.e., suitable for use as loop point)
   S32 next_frame_expected;      // Anticipated offset of next frame to be enumerated, if any
   S32 average_frame_size;       // Average source bytes per frame, determined solely by bit rate and sample rate
   S32 data_size;                // # of data-only bytes in this particular frame
   S32 header_size;              // 4 or 6 bytes, depending on CRC
   S32 side_info_size;           // Valid for layer 3 side info only
   S32 ngr;                      // Always 2 for MPEG1, else 1
   S32 main_data_begin;          // Always 0 in files with no bit reservoir
   S32 hpos;                     // Current bit position in header/side buffer

   S32 MPEG1;                    // Data copied directly from frame header, see ISO docs for info...
   S32 MPEG25;
   S32 layer;
   S32 protection_bit;
   S32 bitrate_index;
   S32 sampling_frequency;
   S32 padding_bit;
   S32 private_bit;
   S32 mode;
   S32 mode_extension;
   S32 copyright;
   S32 original;
   S32 emphasis;

   //
   // LAME/Xing info tag data
   //

   S32 Xing_valid;
   S32 Info_valid;
   U32 header_flags;
   S32 frame_count;
   S32 byte_count;
   S32 VBR_scale;
   U8  TOC[100];
   S32 enc_delay;
   S32 enc_padding;

   //
   // Private (undocumented) data used during frame enumeration
   //

   U8 *ptr;
   S32 bytes_left;

   S32 check_valid;
   S32 check_MPEG1;
   S32 check_MPEG25;
   S32 check_layer;
   S32 check_protection_bit;
   S32 check_sampling_frequency;
   S32 check_mode;
   S32 check_copyright;
   S32 check_original;
}
MP3_INFO;

DXDEC void AILCALL AIL_inspect_MP3 (MP3_INFO *inspection_state,
                                    U8       *MP3_file_image,
                                    S32           MP3_image_size);

DXDEC S32 AILCALL AIL_enumerate_MP3_frames (MP3_INFO *inspection_state);

typedef struct
{
   //
   // File-level data accessible to app
   //
   // This is valid after AIL_inspect_Ogg() is called (even if the file contains no valid pages)
   //

   U8 *Ogg_file_image;       // Originally passed to AIL_inspect_Ogg()
   S32     Ogg_image_size;       // Originally passed to AIL_inspect_Ogg()

   U8 *start_Ogg_data;       // Pointer to start of data area in file
   U8 *end_Ogg_data;         // Pointer to last valid byte in data area

   //
   // Information about current page being inspected, valid if AIL_enumerate_Ogg_pages() returns
   // TRUE
   //

   S32 page_num;                 // 32-bit page sequence number from OggS header at byte offset 16

   S32 sample_count;             // Total # of samples already generated by encoder at the time the current page was written

   S32 byte_offset;              // Offset of page from start_Ogg_data (i.e., suitable for use as loop point)
   S32 next_page_expected;       // Anticipated offset of next page to be enumerated, if any

   //
   // Private (undocumented) data used during page enumeration
   //

   U8 *ptr;
   S32     bytes_left;
}
OGG_INFO;

DXDEC void AILCALL AIL_inspect_Ogg (OGG_INFO *inspection_state,
                                    U8       *Ogg_file_image, 
                                    S32           Ogg_file_size);

DXDEC S32 AILCALL AIL_enumerate_Ogg_pages (OGG_INFO *inspection_state);

typedef struct
{
    const char* file_image;
    S32 image_size;

    S32 channel_count;
    S32 sample_rate;

    S32 total_samples;
    S32 samples_per_frame;

    const char* current_frame;

    // output data - byte offset for current frame.
    S32 byte_offset;
} BINKA_INFO;

DXDEC U32 AILCALL AIL_inspect_BinkA(BINKA_INFO* state, char const* file_image, S32 file_size);
DXDEC S32 AILCALL AIL_enumerate_BinkA_frames(BINKA_INFO* state);

//
// RAD room types - currently the same as EAX
//

enum
{
    ENVIRONMENT_GENERIC,                // factory default
    ENVIRONMENT_PADDEDCELL,
    ENVIRONMENT_ROOM,                   // standard environments
    ENVIRONMENT_BATHROOM,
    ENVIRONMENT_LIVINGROOM,
    ENVIRONMENT_STONEROOM,
    ENVIRONMENT_AUDITORIUM,
    ENVIRONMENT_CONCERTHALL,
    ENVIRONMENT_CAVE,
    ENVIRONMENT_ARENA,
    ENVIRONMENT_HANGAR,
    ENVIRONMENT_CARPETEDHALLWAY,
    ENVIRONMENT_HALLWAY,
    ENVIRONMENT_STONECORRIDOR,
    ENVIRONMENT_ALLEY,
    ENVIRONMENT_FOREST,
    ENVIRONMENT_CITY,
    ENVIRONMENT_MOUNTAINS,
    ENVIRONMENT_QUARRY,
    ENVIRONMENT_PLAIN,
    ENVIRONMENT_PARKINGLOT,
    ENVIRONMENT_SEWERPIPE,
    ENVIRONMENT_UNDERWATER,
    ENVIRONMENT_DRUGGED,
    ENVIRONMENT_DIZZY,
    ENVIRONMENT_PSYCHOTIC,

    ENVIRONMENT_COUNT           // total number of environments
};

//
// enumerated values for EAX
//

#ifndef EAX_H_INCLUDED

enum
{
    EAX_ENVIRONMENT_GENERIC,                // factory default
    EAX_ENVIRONMENT_PADDEDCELL,
    EAX_ENVIRONMENT_ROOM,              // standard environments
    EAX_ENVIRONMENT_BATHROOM,
    EAX_ENVIRONMENT_LIVINGROOM,
    EAX_ENVIRONMENT_STONEROOM,
    EAX_ENVIRONMENT_AUDITORIUM,
    EAX_ENVIRONMENT_CONCERTHALL,
    EAX_ENVIRONMENT_CAVE,
    EAX_ENVIRONMENT_ARENA,
    EAX_ENVIRONMENT_HANGAR,
    EAX_ENVIRONMENT_CARPETEDHALLWAY,
    EAX_ENVIRONMENT_HALLWAY,
    EAX_ENVIRONMENT_STONECORRIDOR,
    EAX_ENVIRONMENT_ALLEY,
    EAX_ENVIRONMENT_FOREST,
    EAX_ENVIRONMENT_CITY,
    EAX_ENVIRONMENT_MOUNTAINS,
    EAX_ENVIRONMENT_QUARRY,
    EAX_ENVIRONMENT_PLAIN,
    EAX_ENVIRONMENT_PARKINGLOT,
    EAX_ENVIRONMENT_SEWERPIPE,
    EAX_ENVIRONMENT_UNDERWATER,
    EAX_ENVIRONMENT_DRUGGED,
    EAX_ENVIRONMENT_DIZZY,
    EAX_ENVIRONMENT_PSYCHOTIC,

    EAX_ENVIRONMENT_COUNT           // total number of environments
};

#define EAX_REVERBMIX_USEDISTANCE (-1.0F)

#endif

#define MSS_BUFFER_HEAD (-1)

#if defined(IS_WIN32API) || defined(IS_MAC) || defined(IS_LINUX) || defined(IS_PS2) || defined(IS_PS3) || defined(IS_WII) || defined(IS_PSP)

//
// Auxiliary 2D interface calls
//

DXDEC HDIGDRIVER AILCALL AIL_primary_digital_driver  (HDIGDRIVER new_primary);

//
// 3D-related calls
//

DXDEC  S32      AILCALL AIL_room_type                (HDIGDRIVER dig);

DXDEC  void     AILCALL AIL_set_room_type            (HDIGDRIVER dig,
                                                      S32        room_type);

DXDEC  F32      AILCALL AIL_3D_rolloff_factor        (HDIGDRIVER dig);

DXDEC  void     AILCALL AIL_set_3D_rolloff_factor    (HDIGDRIVER dig,
                                                      F32       factor);

DXDEC  F32      AILCALL AIL_3D_doppler_factor        (HDIGDRIVER dig);

DXDEC  void     AILCALL AIL_set_3D_doppler_factor    (HDIGDRIVER dig,
                                                      F32       factor);

DXDEC  F32      AILCALL AIL_3D_distance_factor       (HDIGDRIVER dig);

DXDEC  void     AILCALL AIL_set_3D_distance_factor   (HDIGDRIVER dig,
                                                      F32       factor);

DXDEC void       AILCALL AIL_set_sample_obstruction  (HSAMPLE S,
                                                      F32     obstruction);

DXDEC void       AILCALL AIL_set_sample_occlusion    (HSAMPLE S,
                                                      F32     occlusion);

DXDEC void       AILCALL AIL_set_sample_exclusion    (HSAMPLE S,
                                                      F32     exclusion);

DXDEC F32        AILCALL AIL_sample_obstruction      (HSAMPLE S);

DXDEC F32        AILCALL AIL_sample_occlusion        (HSAMPLE S);

DXDEC F32        AILCALL AIL_sample_exclusion        (HSAMPLE S);

DXDEC void       AILCALL AIL_set_sample_3D_distances (HSAMPLE S,
                                                      F32     max_dist,
                                                      F32     min_dist,
                                                      S32     auto_3D_wet_atten);


DXDEC void       AILCALL AIL_sample_3D_distances     (HSAMPLE S,
                                                      F32 * max_dist,
                                                      F32 * min_dist,
                                                      S32 * auto_3D_wet_atten);

DXDEC void       AILCALL AIL_set_sample_3D_cone        (HSAMPLE S,
                                                        F32     inner_angle,
                                                        F32     outer_angle,
                                                        F32     outer_volume_level);

DXDEC void       AILCALL AIL_sample_3D_cone            (HSAMPLE S,
                                                        F32*  inner_angle,
                                                        F32*  outer_angle,
                                                        F32*  outer_volume_level);

DXDEC void       AILCALL AIL_set_sample_3D_position    (HSAMPLE obj,
                                                        F32     X,
                                                        F32     Y,
                                                        F32     Z);

DXDEC void       AILCALL AIL_set_sample_3D_velocity    (HSAMPLE obj,
                                                        F32     dX_per_ms,
                                                        F32     dY_per_ms,
                                                        F32     dZ_per_ms,
                                                        F32     magnitude);

DXDEC void       AILCALL AIL_set_sample_3D_velocity_vector  (HSAMPLE obj,
                                                             F32     dX_per_ms,
                                                             F32     dY_per_ms,
                                                             F32     dZ_per_ms);

DXDEC void       AILCALL AIL_set_sample_3D_orientation      (HSAMPLE obj,
                                                             F32     X_face,
                                                             F32     Y_face,
                                                             F32     Z_face,
                                                             F32     X_up,
                                                             F32     Y_up,
                                                             F32     Z_up);

DXDEC S32        AILCALL AIL_sample_3D_position             (HSAMPLE  obj,
                                                             F32 *X,
                                                             F32 *Y,
                                                             F32 *Z);

DXDEC void       AILCALL AIL_sample_3D_velocity             (HSAMPLE  obj,
                                                             F32 *dX_per_ms,
                                                             F32 *dY_per_ms,
                                                             F32 *dZ_per_ms);

DXDEC void       AILCALL AIL_sample_3D_orientation          (HSAMPLE  obj,
                                                             F32 *X_face,
                                                             F32 *Y_face,
                                                             F32 *Z_face,
                                                             F32 *X_up,
                                                             F32 *Y_up,
                                                             F32 *Z_up);

DXDEC void       AILCALL AIL_update_sample_3D_position      (HSAMPLE obj,
                                                             F32     dt_milliseconds);

DXDEC void       AILCALL AIL_set_listener_3D_position         (HDIGDRIVER dig,
                                                               F32     X,
                                                               F32     Y,
                                                               F32     Z);

DXDEC void       AILCALL AIL_set_listener_3D_velocity         (HDIGDRIVER dig,
                                                               F32     dX_per_ms,
                                                               F32     dY_per_ms,
                                                               F32     dZ_per_ms,
                                                               F32     magnitude);

DXDEC void       AILCALL AIL_set_listener_3D_velocity_vector  (HDIGDRIVER dig,
                                                               F32     dX_per_ms,
                                                               F32     dY_per_ms,
                                                               F32     dZ_per_ms);

DXDEC void       AILCALL AIL_set_listener_3D_orientation      (HDIGDRIVER dig,
                                                               F32     X_face,
                                                               F32     Y_face,
                                                               F32     Z_face,
                                                               F32     X_up,
                                                               F32     Y_up,
                                                               F32     Z_up);

DXDEC void       AILCALL AIL_listener_3D_position             (HDIGDRIVER  dig,
                                                               F32 *X,
                                                               F32 *Y,
                                                               F32 *Z);

DXDEC void       AILCALL AIL_listener_3D_velocity             (HDIGDRIVER  dig,
                                                               F32 *dX_per_ms,
                                                               F32 *dY_per_ms,
                                                               F32 *dZ_per_ms);

DXDEC void       AILCALL AIL_listener_3D_orientation          (HDIGDRIVER  dig,
                                                               F32 *X_face,
                                                               F32 *Y_face,
                                                               F32 *Z_face,
                                                               F32 *X_up,
                                                               F32 *Y_up,
                                                               F32 *Z_up);

DXDEC void       AILCALL AIL_update_listener_3D_position      (HDIGDRIVER dig,
                                                               F32     dt_milliseconds);

#endif

#if defined( HOST_SPU_PROCESS )

DXDEC S32 AILCALL MilesStartAsyncThread( S32 thread_num, void const * param );

DXDEC S32 AILCALL MilesRequestStopAsyncThread( S32 thread_num );

DXDEC S32 AILCALL MilesWaitStopAsyncThread( S32 thread_num );

#endif


//-----------------------------------------------------------------------------
//
// MSS 8 Bank API
//
//-----------------------------------------------------------------------------


// misc character maxes.
#define MSS_MAX_ASSET_NAME_BYTES 512
#define MSS_MAX_PATH_BYTES       512

EXPGROUP(highlevel_util)

EXPTYPE typedef struct MSSSOUNDBANK *HMSOUNDBANK;
/*
  Describes a handle to an open sound bank.
  
  This handle typedef refers to an open soundbank which is usually obtained from the AIL_add_soundbank() function.
*/

EXPAPI HMSOUNDBANK AILCALL AIL_open_soundbank(char const *filename);
/*
    Open a sound bank. If you are using the event execution engine, use the open soundbank function
    provided there.

    $:return 0 on fail, or a valid HMSOUNDBANK.
    $:filename The filename of the soundbank to open.

    Opens a sound bank for use with the MSS8 high level functions. The sound bank must be
    closed with $AIL_close_soundbank. Use $AIL_add_soundbank if the Miles Event system is used.
*/

EXPAPI void AILCALL AIL_close_soundbank(HMSOUNDBANK bank);
/*
    Close a soundbank previously opened with $AIL_open_soundbank.

    $:bank Soundbank to close.
      
    Close a soundbank previously opened with $AIL_open_soundbank. Presets/events loaded from
            this soundbank are no longer valid.
*/

EXPAPI char const * AILCALL AIL_get_soundbank_filename(HMSOUNDBANK bank );
/*
    Return the filename used to open the given soundbank.

    $:bank Soundbank to query.

    $:return A pointer to the filename for the given soundbank, or 0 if bank is invalid.

    Returns a pointer to the filename for a soundbank. This pointer should not be deleted.
*/

EXPAPI S32 AILCALL AIL_get_soundbank_mem_usage(HMSOUNDBANK bank);
/*
    Returns the amount of data used by the soundbank management structures.
    
    $:bank Soundbank to query.
    $:return Total memory allocated.

    Returns the memory used via AIL_mem_alloc_lock during the creation of this structure.
*/

EXPAPI S32 AILCALL AIL_enumerate_sound_presets(HMSOUNDBANK bank, HMSSENUM* next, char const* list, char const** name);
/*
  Enumerate the sound presets stored in a soundbank.

  $:bank Containing soundbank.
  $:next Enumeration token. Prior to first call, initialize to MSS_FIRST
  $:list Optional filter. If specified, presets will only enumerate from the given preset sound preset list.
  $:name The pointer to the currently enumerated preset name. This should not be deleted.

  $:return Returns 0 when enumeration is complete.

   Enumerates the sound presets available inside of a bank file. Example usage:
     
   ${
            HMSSENUM Token = MSS_FIRST;
            const char* PresetName = 0;
            while (AIL_enumerate_sound_presets(MyBank, &Token, 0, &PresetName))
            {
                printf("Found a preset named %s!", PresetName);

                AIL_apply_sound_preset(MySample, MyBank, PresetName);
            }
    $}

    Note that name should NOT be deleted by the caller - this points at memory owned by
    Miles.
*/

EXPAPI S32 AILCALL AIL_enumerate_environment_presets(HMSOUNDBANK bank, HMSSENUM* next, char const* list, char const** name);
/*
    Enumerate the environment presets stored in a soundbank.

    $:bank Containing soundbank.
    $:next Enumeration token. Prior to first call, initialize to MSS_FIRST
    $:list Optional filter. If specified, presets will only enumerate from the given environment preset list.
    $:name The pointer to the currently enumerated preset name. This should not be deleted.
    $:return Returns 0 when enumeration is complete.

    Enumerates the environment presets available inside of a bank file. Example usage:
      
    ${
            HMSSENUM Token = MSS_FIRST;
            const char* PresetName = 0;
            while (AIL_enumerate_environment_presets(MyBank, &Token, 0, &PresetName))
            {
                printf("Found a preset named %s!", PresetName);

                AIL_apply_environment_preset(MyDriver, MyBank, PresetName);
            }
    $}

    Note that name should NOT be deleted by the caller - this points at memory owned by
    Miles.
*/


EXPAPI S32 AILCALL AIL_enumerate_sound_assets(HMSOUNDBANK bank, HMSSENUM* next, char const** name);
/*
    Enumerate sounds stored in a soundbank.

    $:bank Containing soundbank.
    $:next Enumeration token. Prior to first call, initialize to MSS_FIRST
    $:name The pointer to the currently enumerated sound name. This should not be deleted.
    $:return Returns 0 when enumeration is complete.

    Enumerates the sounds available inside of a bank file. Example usage:
    
    ${
            HMSSENUM Token = MSS_FIRST;
            const char* SoundName = 0;
            while (AIL_enumerate_sound_assets(MyBank, &Token, &SoundName))
            {
                char filename[MSS_MAX_PATH_BYTES];
                AIL_sound_asset_filename(MyBank, SoundName, filename);

                printf("Found a sound named %s!", SoundName);

                S32* pData = (S32*)AIL_file_read(filename, FILE_READ_WITH_SIZE);
                AIL_mem_free_lock(pData);
            }
    $}

    Note that name should NOT be deleted by the caller - this points at memory owned by
    Miles.
*/
    
EXPAPI S32 AILCALL AIL_enumerate_events(HMSOUNDBANK bank, HMSSENUM* next, char const * list, char const ** name);
/*
    Enumerate the events stored in a soundbank.

    $:bank Soundbank to enumerate within.
    $:next Enumeration token. Prior to first call, initialize to MSS_FIRST
    $:list Optional filter. If specified, event will only enumerate from the given event list.
    $:name The pointer to the currently enumerated preset name. This should not be deleted.
    $:return Returns 0 when enumeration is complete.

    Enumerates the events available inside of a bank file. Example usage:
      
    ${
            HMSSENUM Token = MSS_FIRST;
            const char* EventName = 0;
            while (AIL_enumerate_events(MyBank, &Token, 0, &EventName))
            {
                printf("Found an event named %s!", EventName);

                const U8* EventContents = 0;
                AIL_get_event_contents(MyBank, EventName, &EventContents);

                AIL_enqueue_event(EventContents, 0, 0, 0, 0);
            }
    $}

    Note that name should NOT be deleted by the caller - this points at memory owned by
    Miles.
*/


/*!
    Preset Application Functions

    (Un)Apply presets to the driver or sample. Unapply returns the properties affected by
    the preset to their default state.
*/
    
EXPAPI S32 AILCALL AIL_apply_sound_preset(HSAMPLE sample, HMSOUNDBANK bank, char const *name);
/*
    Apply the sound preset to the given sample.

    $:sample The sample that will have its properties updated by the preset.
    $:bank The sound bank containing the named preset.
    $:name The name of the preset to apply.
    $:return Returns 0 on fail - check for sample/bank validity, and that the preset is in the correct bank.

    This will alter the properties on a given sample, based on the given preset.
*/    

EXPAPI S32 AILCALL AIL_unapply_sound_preset(HSAMPLE sample, HMSOUNDBANK bank, char const *name);
/*
    Restore the properties affected by the given preset to defaults.

    $:sample The sample that will have its properties updated by the preset.
    $:bank The sound bank containing the named preset.
    $:name The name of the preset to apply.
    $:return Returns 0 on fail - check for sample/bank validity, and that the preset is in the correct bank.

    Presets may or may not affect any given property. Only the properties affected by the specified
    preset will have their values restored to default. 
*/

EXPAPI S32 AILCALL AIL_apply_environment_preset(HDIGDRIVER dig, HMSOUNDBANK bank, char const *name);
/*
    Apply the environment preset to the given driver.

    $:dig The driver that will have its properties updated by the preset.
    $:bank The sound bank containing the named preset.
    $:name The name of the preset to apply.
    $:return Returns 0 on fail - check for sample/bank validity, and that the preset is in the correct bank.

    This will alter properties on a given driver, based on the given preset.
*/

EXPAPI S32 AILCALL AIL_unapply_environment_preset(HDIGDRIVER dig, HMSOUNDBANK bank, char const *name);
/*
    Restore the properties affected by the given preset to defaults.

    $:dig The driver that will have its properties updated by the preset.
    $:bank The sound bank containing the named preset.
    $:name The name of the preset to apply.
    $:return Returns 0 on fail - check for sample/bank validity, and that the preset is in the correct bank.

    Presets may or may not affect any given property. Only the properties affected by the specified
    preset will have its value restored to default.
*/




EXPAPI S32 AILCALL AIL_sound_asset_filename(HMSOUNDBANK bank, char const *name, char *out_name);
/*
    Return the filename to use for the given sound asset in calls to Miles' file APIs.

    $:bank The soundbank containing the sound asset.
    $:name The name of the sound asset to find.
    $:out_name Returns an output pointer to the file name of the sound asset.
    $:return Returns the file size of the asset on success, or -1 on fail.

    This function must be called in order to resolve the sound asset name to
    something that can be used by miles. The filename format will represent whether
    the asset is stored in the soundbank itself, or stored separately.
*/

EXPAPI SINTa AILCALL AIL_get_marker_list(HMSOUNDBANK bank, char const* sound_name);
/*
    Return an opaque value representing the list of markers attached to a given sound name.

    $:bank The bank containing the sound asset.
    $:sound_name The name of the sound asset.

    $:return on fail/nonexistent list, or a nonzero opaque value to be passed to $AIL_find_marker_in_list.

    Returns the marker list for a given sound asset. This value should just be passed directly to $AIL_find_marker_in_list
    to retrieve the offset for a marker by name.
*/

EXPAPI S32 AILCALL AIL_find_marker_in_list(SINTa marker_list, char const * marker_name);
/*
   Returns the byte offset into a sample corresponding to the given marker name.

   $:marker_list The marker list returned from $AIL_get_marker_list.
   $:marker_name The name of the marker to look up.

   $:return -1 if the marker was not found, or the byte offset of the marker.

   Looks up an offset to use in functions such as $AIL_set_sample_position. marker_list can be retrieved with
   $AIL_get_marker_list.
*/

// ----------------------------
// End MSS8 declarations
// ----------------------------

//
// Event routines
//
typedef struct _MEMDUMP* HMEMDUMP;
#define HMSSEVENTCONSTRUCT HMEMDUMP

/*!
    function
    {
        ExcludeOn = 1

        Name = "AIL_create_event", "Creates an empty event to be filled with steps."

        ReturnType = "HMSSEVENTCONSTRUCT", "An empty event to be passed to the various step addition functions, or 0 if out of memory."

        Discussion = "Primarily designed for offline use, this function is the first step in 
            creating an event that can be consumed by the MilesEvent system. Usage is as follows:

            HMSSEVENTCONSTRUCT hEvent = AIL_create_event();

            // misc add functions
            AIL_add_start_sound_event_step(hEvent, ...);
            AIL_add_control_sounds_event_step(hEvent, ...);
            // etc

            char* pEvent = AIL_close_event(hEvent);

            // Do something with the event

            AIL_mem_free_lock(pEvent);

            Note that if immediately passed to AIL_enqueue_event(), the memory must remain valid until the following
            $AIL_complete_event_queue_processing.
            
            Events are generally tailored to the MilesEvent system, even though there is nothing preventing you
            from writing your own event system, or creation ui.
            "
    }
*/
DXDEC HMSSEVENTCONSTRUCT AILCALL AIL_create_event(void);

/*!
    function
    {
        ExcludeOn = 1

        Name = "AIL_close_event", "Returns a completed event, ready for enqueueing in to the MilesEvent system."

        In = "HMSSEVENTCONSTRUCT", "i_Event", "The event to complete."

        ReturnType = "char*", "An allocated event string that can be passed to AIL_next_event_step or enqueued in the
            MilesEvent system via AIL_enqueue_event."

        Discussion = "The returned pointer must be deleted via AIL_mem_free_lock(). Note that if the MilesEvent system
            is used, the event pointer must remain valid through the following $AIL_complete_event_queue_processing call."

    }
*/
DXDEC U8* AILCALL AIL_close_event(HMSSEVENTCONSTRUCT i_Event);

#define MILES_START_STEP_PRIORITY 0
#define MILES_START_STEP_DISTANCE 1
#define MILES_START_STEP_VOLUME 2
#define MILES_START_STEP_OLDEST 3

/*!
    function
    {
        ExcludeOn = 1

        Name = "AIL_add_start_sound_event_step", "Adds a step to a given event to start a sound with the given specifications."

        In = "HMSSEVENTCONSTRUCT", "i_Event", "The event to add the step to."
        In = "const char*", "i_SoundNames", "The names and associated weights for the event step to choose from. 
            If there are multiple names listed, the sound will be chosen at random based on the given weights. This 
            string is of the form 'BankName1/SoundName1:Weight1:BankName2/SoundName2:Weight2:' etc. The string must always
            terminate in a ':'. Weight must be between 0 and 200. To provide a null sound to randomly choose to not play anything, use 
            an empty string as an entry."

        In = "const char*", "i_PresetBank", "[optional] The bank containing the preset to use when starting this sound. Required if i_PresetName is not null."
        In = "const char*", "i_PresetName", "[optional] The name of the preset, of the form 'PresetList/PresetName'"
        In = "const char*", "i_EventBank", "[optional] The bank containing the event to execute upon completion of the sound. Required if event_name is not null."
        In = "const char*", "event_name", "[optional] The name of the event to execute upon completion of the sound, of the form 'PresetList/PresetName'"
        In = "const char*", "i_StartMarker", "[optional] The name of a marker to use as the loop start point."
        In = "const char*", "i_EndMarker", "[optional] The name of a marker to use as the loop end point."
        In = "const char*", "i_Labels", "[optional] A comma delimited list of labels to assign to the sound."
        In = "U32", "i_Streaming", "If nonzero, the sound will be setup and started as a stream."
        In = "U8", "i_CanLoad", "If nonzero, the sound is allowed to hit the disk instead of only accessing cached sounds. If true, this might cause a hitch."
        In = "U16", "i_Delay", "The minimum delay in ms to apply to the sound before start."
        In = "U16", "i_DelayMax", "The maximum delay in ms to apply to the sound before start."
        In = "U8", "i_Priority", "The priority to assign to the sound. If a sound encounters a limit based on its labels, it will evict any sound 
            with a priority strictly less than the given priority."
        In = "U8", "i_LoopCount", "The loop count as per AIL_set_sample_loop_count."
        In = "const char*", "i_StartOffset", "[optional] The name of the marker to use as the sound's initial offset."
        In = "U8", "i_EvictionType", "The basis for deciding what sound will get kicked out if a limit is hit when trying to play this sound."

        ReturnType = "S32", "Returns 1 on success."

        Discussion = "Adds an event that can start a sound. If the sound names list contains multiple entries, one will be selected
            randomly based on the given weights. Weights are effectively ratios for liklihood. A sound with 100 weight will be twice as likely
            as a sound with 50 weight. Some times you may want to have an event that only *might* play a sound. To do this, add a empty sound name
            with an associated weight.

            (contrived) Example:

            AIL_add_start_sound_event_step(hEvent,
                `":50:MyBank.mssbnk/Footstep:100:`",
                `"MyBank.mssbnk`", `"PlayerEffects/FootEcho`",
                0, 0,
                `"WalkStart`", `"WalkEnd`",
                `"player, footstep`",
                0,
                0,
                0, 100,
                64);

            This example will play the Footstep sound from MyBank.mssbnk roughly 67% of the time this event step fires.
            The preset PlayerEffects/FootEcho will be applied upon start, and no event will be executed when the sound completes.
            The loop endpoints are defined by the markers `"WalkStart`", and `"WalkEnd`". When playing, it can be found by enumerating
            the labels `"player`" or `"footstep`". It will not stream, it can not hit the disk, and it will randomly delay starting by 
            some value between 0 and 100 milliseconds. It has a low-ish priority (64 out of 256), so odds are it will get kicked out
            by another sound if there are too many sounds with the labels `"player`" or `"footstep`" playing.
            
            For eviction type, one of the following constants sshould be used:
            MILES_START_STEP_PRIORITY - Evict a sound less than our priority.
            MILES_START_STEP_DISTANCE - Evict thethest sound from the listener.
            MILES_START_STEP_VOLUME - Evict the quietest sound after mixing, using the loudest channel as the qualifier.
            MILES_START_STEP_OLDEST - Evict the sound that has been playing the longest.
            "
    }
*/
DXDEC
S32
AILCALL
AIL_add_start_sound_event_step(
    HMSSEVENTCONSTRUCT i_Event, 
    const char* i_SoundNames,
    const char* i_PresetBank, const char* i_PresetName, 
    const char* i_EventBank, const char* event_name,
    const char* i_StartMarker, const char* i_EndMarker,
    const char* i_Labels, U32 i_Streaming, U8 i_CanLoad, 
    U16 i_Delay, U16 i_DelayMax, U8 i_Priority, U8 i_LoopCount,
    const char* i_StartOffset,
    F32 i_VolMin, F32 i_VolMax, F32 i_PitchMin, F32 i_PitchMax,
    U8 i_EvictionType
    );

/*!
    function
    {
        ExcludeOn = 1

        Name = "AIL_add_cache_sounds_event_step", "Adds a step to an event to load a list of sounds in to memory for play."

        In = "HMSSEVENTCONSTRUCT", "i_Event", "The event to add on to."
        In = "const char*", "bankName", "The bank filename containing all of the sounds."
        In = "const char*", "i_Sounds", "A list of colon separated sounds to load from the bank file."

        ReturnType = "S32", "Returns 1 on success."

        Discussion = "In general events are not allowed to hit the disk in order to prevent unexpected hitching during
            gameplay. In order to facilitate that, sounds need to be preloaded by this event. Each cache step can only
            load sounds from a single bank file, so for multiple bank files, multiple steps will be needed.

            In order to release the data loaded by this event, AIL_add_uncache_sounds_event_step() needs to
            be called with the same parameters.
            
            If you are using MilesEvent, the data is refcounted so the sound will not be freed until all
            samples using it complete."
    }
*/
DXDEC
S32
AILCALL
AIL_add_cache_sounds_event_step(
    HMSSEVENTCONSTRUCT i_Event, const char* bankName, const char* i_Sounds);


/*!
    function
    {
        ExcludeOn = 1

        Name = "AIL_add_uncache_sounds_event_step", "Adds a step to an event to free a list of sounds previously loaded in to memory for play."

        In = "HMSSEVENTCONSTRUCT", "i_Event", "The event to add on to."
        In = "const char*", "bankName", "The bank filename containing all of the sounds."
        In = "const char*", "i_Sounds", "A list of colon separated sounds from the bank file to uncache."

        ReturnType = "S32", "Returns 1 on success."

        Discussion = "This event released sounds loaded via AIL_add_cache_sounds_event_step()"
    }
*/
DXDEC
S32
AILCALL
AIL_add_uncache_sounds_event_step(
    HMSSEVENTCONSTRUCT i_Event, const char* bankName, const char* i_Sounds);



#define MILES_CONTROL_STEP_STOP 3
#define MILES_CONTROL_STEP_STOP_NO_EVENTS 4
#define MILES_CONTROL_STEP_PASS 0
#define MILES_CONTROL_STEP_PAUSE 1
#define MILES_CONTROL_STEP_RESUME 2

#define MILES_CONTROL_STEP_IGNORELOOP 255

/*!
    function
    {
        ExcludeOn = 1

        Name = "AIL_add_control_sounds_event_step", "Adds a step to an event to control sample playback by label."

        In = "HMSSEVENTCONSTRUCT", "i_Event", "The event to add on to."
        In = "const char*", "i_Labels", "[optional] A comma seperated list of labels to control."
        In = "const char*", "i_MarkerStart", "[optional] If exists, sets the loop start to the marker's offset."
        In = "const char*", "i_MarkerEnd", "[optional] If exists, sets the loop end to the marker's offset."
        In = "const char*", "i_Position", "[optional] If exists, sets the current playback position to the marker's offset."
        In = "const char*", "i_PresetBank", "[optional] The bank containing a preset to apply."
        In = "const char*", "i_PresetName", "[optional] The name of the preset to apply, of the form PresetList/PresetName."
        In = "U8", "i_LoopCount", "If the loop count is not to be affected, pass MILES_CONTROL_STEP_IGNORELOOP. Otherwise, the sample's loop count will be set to this value."
        In = "U8", "i_Type", "The control type requested. See Discussion."

        ReturnType = "S32", "Returns 1 on success."

        Discussion = "Controls playback of current instances. The sounds are matched either on name or label. If
            i_Labels is null, all sounds will be controlled.
            
            The following flags may be used as i_Type:
                MILES_CONTROL_STEP_STOP
                MILES_CONTROL_STEP_PASS
                MILES_CONTROL_STEP_PAUSE
                MILES_CONTROL_STEP_RESUME
                MILES_CONTROL_STEP_STOP_NO_EVENTS - if used, completion events on stopped sounds will *not* be queued.
            "
    }
*/
DXDEC
S32
AILCALL
AIL_add_control_sounds_event_step(
    HMSSEVENTCONSTRUCT i_Event, 
    const char* i_Labels, const char* i_MarkerStart, const char* i_MarkerEnd, const char* i_Position,
    const char* i_PresetBank, const char* i_PresetName,
    U8 i_LoopCount, U8 i_Type);


/*!
    function
    {
        ExcludeOn = 1

        Name = "AIL_add_apply_environment_event_step", "Adds a step to an event to apply an environment preset."

        In = "HMSSEVENTCONSTRUCT", "i_Event", "The event to add on to."
        In = "const char*", "i_EnvBank", "The bank containing environment preset."
        In = "const char*", "i_EnvName", "The name of the environment preset to apply, of the form EnvList/EnvName."

        ReturnType = "S32", "Returns 1 on success."

        Discussion = "Applies the specified environment preset to the current HDIGDRIVER."
    }
*/
DXDEC
S32
AILCALL
AIL_add_apply_environment_event_step(HMSSEVENTCONSTRUCT i_Event, const char* i_EnvBank, const char* i_EnvName);

/*!
    function
    {
        ExcludeOn = 1

        Name = "AIL_add_comment_event_step", "Adds a step that represents a comment to the user of the editing tool."

        In = "HMSSEVENTCONSTRUCT", "i_Event", "The event to add on to."
        In = "const char*", "i_Comment", "A string to display in the editing tool."

        ReturnType = "S32", "Returns 1 on success."

        Discussion = "This event is ignored in the runtime, and only exist for editing convenience."
    }
*/
DXDEC
S32
AILCALL
AIL_add_comment_event_step(HMSSEVENTCONSTRUCT i_Event, const char* i_Comment);

/*!
    function
    {
        ExcludeOn = 1

        Name = "AIL_add_sound_limit_event_step", "Adds a step that defines the maximum number of playing sounds per label."

        In = "HMSSEVENTCONSTRUCT", "i_Event", "The event to add on to."
        In = "const char*", "i_SoundLimits", "A string of the form `"label count:anotherlabel count`"."

        ReturnType = "S32", "Returns 1 on success."

        Discussion = "Defines limits for instances of sounds on a per label basis. Sounds with multiple labels
            must fit under the limits for all of their labels. By default sounds are not limited other than the
            Miles max sample count."
    }
*/
DXDEC
S32
AILCALL
AIL_add_sound_limit_event_step(HMSSEVENTCONSTRUCT i_Event, const char* i_SoundLimits);

/*!
    function
    {
        ExcludeOn = 1

        Name = "AIL_add_persist_preset_event_step", "Adds a preset that applies to current sound instances, and continues to be applied to new sounds as they are started."
        In = "HMSSEVENTCONSTRUCT", "i_Event", "The event to add on to."
        In = "const char*", "i_PresetBank", "The bank containing the sound preset."
        In = "const char*", "i_PresetName", "The name of the preset, of the form PresetList/PresetName. See discussion."
        In = "const char*", "i_PersistName", "The name of this persisted preset, for future removal."
        In = "const char*", "i_Labels", "The labels to apply this preset to."

        ReturnType = "S32", "Returns 1 on success."

        Discussion = "Defines a preset by name that remains in the system, testing against all started sounds for label match. If a
            match occurs, then the preset is applied to the new sound, before the preset specified in the startsound step itself.

            In order to remove a persisted preset, refer to it by name, but leave all other parameters null.

            Example:

            // Persist a preset for players.
            AIL_add_persist_preset_event_step(hEvent, `"MyBank.mssbnk`", `"PlayerEffects/Underwater`", `"Underwater`", `"player`");

            // Remove the above preset.
            AIL_add_persist_preset_event_step(hEvent, 0, 0, `"Underwater`", 0);"
    }
*/
DXDEC
S32
AILCALL
AIL_add_persist_preset_event_step(
    HMSSEVENTCONSTRUCT i_Event, 
    const char* i_PresetBank, const char* i_PresetName,
    const char* i_PersistName, const char* i_Labels);

DXDEC
S32 AILCALL AIL_get_event_contents(HMSOUNDBANK bank, char const * name, U8 const** event);
/*
    Return the event data for an event, by name.

    $:bank Soundbank containing the event.
    $:name Name of the event to retrieve.
    $:event Returns an output pointer to the event contents. Note that this string isn't null terminated, and
      thus shouldn't be checked via strlen, etc.
    $:return Returns 0 on fail.

    Normally, event contents are meant to be handled by the Miles high-level system via $AIL_enqueue_event, 
    rather than inspected directly.
*/


enum EVENT_STEPTYPE
{
    EVENT_STEPTYPE_STARTSOUND = 1,
    EVENT_STEPTYPE_CONTROLSOUNDS,
    EVENT_STEPTYPE_APPLYENV,
    EVENT_STEPTYPE_COMMENT,
    EVENT_STEPTYPE_CACHESOUNDS,
    EVENT_STEPTYPE_PURGESOUNDS,
    EVENT_STEPTYPE_SETLIMITS,
    EVENT_STEPTYPE_PERSIST,
    EVENT_STEPTYPE_VERSION,
};

//! Represents an immutable string that is not null terminated, and shouldn't be deleted.
struct _MSSSTRINGC
{
    const char* str;
    S32 len;
};
typedef struct _MSSSTRINGC MSSSTRINGC;


/*!
    Represents a single step that needs to be executed for an event.

    All of the members in the structures share the same definition as
    their counterpart params in the functions that added them during
    event construction.
*/
struct EVENT_STEP_INFO
{
    //! type controls which struct in the union is accessed.
    enum EVENT_STEPTYPE type;
    union
    {
        struct
        {
            MSSSTRINGC soundname;
            MSSSTRINGC presetlib;
            MSSSTRINGC presetname;
            MSSSTRINGC eventlib;
            MSSSTRINGC eventname;
            MSSSTRINGC labels;
            MSSSTRINGC markerstart;
            MSSSTRINGC markerend;
            MSSSTRINGC startoffset;
            U32 stream;
            F32 volmin,volmax,pitchmin,pitchmax;
            U16 delaymin;
            U16 delaymax;
            U8 canload;
            U8 priority;
            U8 loopcount;
            U8 evictiontype;
        } start;

        struct
        {
            MSSSTRINGC labels;
            MSSSTRINGC markerstart;
            MSSSTRINGC markerend;
            MSSSTRINGC position;
            MSSSTRINGC presetlib;
            MSSSTRINGC presetname;
            U8 loopcount;
            U8 type;
        } control;

        struct
        {
            MSSSTRINGC envlib;
            MSSSTRINGC envname;
        } env;

        struct
        {
            MSSSTRINGC comment;
        } comment;

        struct
        {
            MSSSTRINGC lib;
            const char** namelist;
            S32 namecount;
        } load;

        struct
        {
            MSSSTRINGC limits;
        } limits;

        struct
        {
            MSSSTRINGC name;
            MSSSTRINGC presetlib;
            MSSSTRINGC presetname;
            MSSSTRINGC labels;
        } persist;
    };
};

/*!
    function
    {
        ExcludeOn = 1

        Name = "AIL_next_event_step", "Retrieves the next step in the event buffer, parsing it in to a provided buffer."

        In = "const U8*", "i_EventString", "The event returned by $AIL_close_event, or a previous call to $AIL_next_event_step"
        Out = "const EVENT_STEP_INFO*", "o_Step", "A pointer to the step struct will be stored here."
        In = "void*", "i_Buffer", "A working buffer for the function to use for parsing."
        In = "S32", "i_BufferSize", "The size in bytes of the working buffer."

        ReturnType = "U8 char*", "Returns 0 on fail or when the event string has been exhausted of steps. Otherwise, returns
            the string location of the next event step in the buffer."

        Discussion = "This function parses the event string in to a struct for usage by the user. This function should only be
            used by the MilesEvent system. It returns the pointer to the next step to be passed to this function to get the 
            next step. In this manner it can be used in a loop:

            // Create an event to stop all sounds.
            HMSSEVENTCONSTRUCT hEvent = AIL_create_event();
            AIL_add_control_sound_event_step(hEvent, 0, 0, 0, 0, 0, 0, 255, 3);
            char* pEvent = AIL_close_event(hEvent);

            char EventBuffer[4096];
            EVENT_STEP_INFO* pStep = 0;
            char* pCurrentStep = pEvent;

            while (pCurrentStep)
            {
                pStep = 0;
                pCurrentStep = AIL_next_event_step(pCurrentStep, &pStep, EventBuffer, 4096);
                if (pStep == 0)
                {
                    // Error!
                    break;
                }

                // Handle event step.
                switch (pStep->type)
                {
                    default: break;
                }
            }

            AIL_mem_free_lock(pEvent);
            "
    }
*/
DXDEC const U8* AILCALL AIL_next_event_step(const U8* i_EventString, struct EVENT_STEP_INFO** o_Step, void* i_Buffer, S32 i_BufferSize);


// Old style names.
#define AIL_find_event                      MilesFindEvent
#define AIL_clear_event_queue               MilesClearEventQueue
#define AIL_register_random                 MilesRegisterRand
#define AIL_enumerate_sound_instances       MilesEnumerateSoundInstances
#define AIL_enumerate_preset_persists       MilesEnumeratePresetPersists
#define AIL_enqueue_event                   MilesEnqueueEvent
#define AIL_begin_event_queue_processing    MilesBeginEventQueueProcessing
#define AIL_complete_event_queue_processing MilesCompleteEventQueueProcessing
#define AIL_startup_event_system            MilesStartupEventSystem
#define AIL_shutdown_event_system           MilesShutdownEventSystem
#define AIL_add_soundbank                   MilesAddSoundBank
#define AIL_release_soundbank               MilesReleaseSoundBank
#define AIL_set_sound_label_limits          MilesSetSoundLabelLimits
#define AIL_text_dump_event_system          MilesTextDumpEventSystem
#define AIL_event_system_state              MilesGetEventSystemState
#define AIL_stop_sound_instances            MilesStopSoundInstances
#define AIL_pause_sound_instances           MilesPauseSoundInstances
#define AIL_resume_sound_instances          MilesResumeSoundInstances
#define AIL_start_sound_instance            MilesStartSoundInstance



EXPGROUP(Miles High Level Event System)


EXPAPI S32 AILCALL AIL_startup_event_system(HDIGDRIVER dig, char const* base_path, S32 command_buf_len, EXPOUT char* memory_buf, S32 memory_len);
/*
   Initializes the Miles Event system and associates it with an open digital driver.
   
   $:dig The digital sound driver that this event system should use.
   $:base_path The file path from which library names and external sound assets are 
            loaded from. For example, $AIL_add_soundbank with "filename" will use "base_path/filename"
            at the file system level.
            (Also, events that reference soundbanks will look for the files relative to this location.) 
   $:command_buf_len An optional number of bytes to use for the command buffer. If you pass 0, a reasonable default will be used (currently 5K).
   $:memory_buf An optional pointer to a memory buffer buffer that the event 
            system will use for all event allocations. Note that the sound data itself is not stored in this buffer - it is
            only for internal buffers, the command buffer, and instance data. Use 0 to let Miles to allocate this buffer itself.
   $:memory_len If memory_buf is non-null, then this parameter provides the length.  If memory_buf is null, the Miles will
      allocate this much memory for internal buffers. If both memory_buf and memory_len are null, the Miles will allocate reasonable default (currently 64K).
   $:return Returns 0 on startup failure.

   This function starts up the Miles Event System, which is used to trigger events throughout your game.
   You usually call it after $AIL_open_digital_driver.
*/

EXPAPI void AILCALL AIL_shutdown_event_system( void );
/*
  Shuts down the Miles event system.
      
  This function will closes everything in the event system - it ignores reference counts. It will free
  all event memory, sound banks, and samples used by the system.
*/

EXPAPI HMSOUNDBANK AILCALL AIL_add_soundbank(char const * filename);
/*
    Open and add a sound bank for use with the event system.

    $:filename Filename of the bank to load (relative to the path specified in $AIL_startup_event_system.
    $:return The handle to the newly loaded soundbank (zero on failure).

    This function opens the sound bank (if not already open) and makes it available to the event system by incrementing its 
    internal reference count.  You must call $AIL_release_soundbank for every call to this function.
    
    This function will access the disc, so you will usually call it at level load time.
*/

EXPAPI S32 AILCALL AIL_release_soundbank(HMSOUNDBANK bank);
/*
   Releases a sound bank from the event system.

   $:bank   The bank to close.
   $:return Returns non-zero for success (zero on failure).

    This function decrements the soundbank's file reference count and if 
    the count drops to zero, then will the soundbank be freed.  Because
    the soundbanks are referenced counted, you can free it while sounds
    are still being played, and as soon as the last sound completes, 
    it will be freed.
*/

EXPAPI U8 const * AILCALL AIL_find_event(HMSOUNDBANK bank,char const* event_name);
/*
    Searches for an event by name in the event system.
    
    $:bank The soundbank to search within, or 0 to search all open banks (which is the normal case).
    $:event_name The name of the event to find.  This name should be of the form "event_list/event_name".
    $:return A pointer to the event contents (or 0, if the event isn't found).
    
    This function is normally used as the event parameter for $AIL_enqueue_event. It
    searches one or all open soundbanks for a particular event name.
    
    This is how you trigger your sound designer's events - you use this function to find them, and then use $AIL_enqueue_event to start them.
*/

EXPAPI U64 AILCALL AIL_enqueue_event(U8 const * event, void* user_buffer, S32 user_buffer_len, S32 enqueue_flags, U64 apply_to_ID );
/*
    Enqueue an event to be processed by the next $AIL_begin_event_queue_processing function.
    
    $:event Pointer to the event contents to queue. The contents must be valid until the
            next call to $AIL_begin_event_queue_processing. Note that the pointer returned by $AIL_find_event
            satisfies this requirement. 
    $:user_buffer Pointer to a user buffer. This pointer can be saved directly, or it's contents copied into the sound instance. 
            This data is then accessible later, when enumerating the instances. 
    $:user_buffer_len Size of the buffer pointed to by user_buffer.
    $:enqueue_flags Optional flags that control how to enqueue this event (default is 0).
    $:apply_to_ID Optional value that is used for events that contain "Apply Sound Preset" or "Control Sound" Event Steps. Normally,
      when Miles triggers one of these event steps, it matches the name and labels stored with the event step. However, if 
      you specify an apply_to_ID value, then event step will only run on sounds that matches this QueuedID or InstanceID too.  This is how you
      execute events only specific sound instances.  QueuedIDs are returned from each call $AIL_enqueue_event, and 
      InstanceIDs are returned from $AIL_enumerate_sound_instances.
    $:return  On success, returns a queuedID value that is unique to this queued event for the rest of this 
              program run (you can use this ID to uniquely identify sounds triggered from this event).
    
     This function enqueues an event to be triggered - this is how you begin execution of an event.  First, you
     queue it, and then later (usually once a game frame), you call $AIL_begin_event_queue_processing to
     execute an event.
          
     This function is very lightweight.  It does nothing more than post the
        event and data to a command buffer that gets executed via $AIL_begin_event_queue_processing.

            The user_buffer parameter can be used in different ways. If no flags are passed in, then
            Miles will copy the data from user_buffer (user_buffer_len bytes long) and store the data with
            the queued sound - you can then free the user_buffer data completely!  This lets Miles keep track
            of all your sound related memory directly and is the normal way to use the system (it is very 
            convenient once you get used to it).

            If you instead pass the MILESEVENT_ENQUEUE_BUFFER_PTR flag, then user_buffer pointer will
            simply be associated with each sound that this event may start. In this case, user_buffer_len
            is ignored. 
            
            In both cases, when you later enumerate the sound instances, you can access your sound data 
            with the $(MILESEVENTSOUNDINFO::UserBuffer) field.
            
     You can call this function from any number threads - it's designed to be called from anywhere in your game.
*/

#define MILESEVENT_ENQUEUE_BUFFER_PTR 0x1
#define MILESEVENT_ENQUEUE_FREE_EVENT 0x2

EXPAPI S32 AILCALL AIL_begin_event_queue_processing( void );
/*
    Begin execution of all of the enqueued events.

    $:return Return 0 on failure. The only failures are unrecoverable errors in the queued events 
      (out of memory, bank file not found, bad data, etc).  You can get the specific error by
      calling AIL_get_error().
    
      This function executes all the events currently in the queue. This is where all major
            processing takes place in the event system.
            
            Once you execute this functions, then sound instances will be in one of three states:
            
            $(MILESEVENTSOUNDSTATUS::MILESEVENT_SOUND_STATUS_PENDING)[MILESEVENT_SOUND_STATUS_PENDING] - these are new sound instances that were
            created by events that had a "Start Sound Step". Note that these instances aren't audible yet,
            so that you have a chance to modify game driven properties (like the 3D position)
            on the sound before Miles begins to play it.  
            
            $(MILESEVENTSOUNDSTATUS::MILESEVENT_SOUND_STATUS_PLAYING)[MILESEVENT_SOUND_STATUS_PLAYING] - these are sound instances that were previously
            started and are continuing to play (you might update the 3D position for these, for example).
            
            $(MILESEVENTSOUNDSTATUS::MILESEVENT_SOUND_STATUS_COMPLETE)[MILESEVENT_SOUND_STATUS_COMPLETE] - these are sound instances that finished playing
            since the last this frame (you might use this status to free any game related memory, for example).

            You will normally enumerate the active sound instances in-between calls to $AIL_begin_event_queue_processing
            and $AIL_complete_event_queue_processing with $AIL_enumerate_sound_instances.

            $AIL_complete_event_queue_processing must be called after this function to commit
            all the changes.

            Example usage:
${
            // enqueue an event
            AIL_enqueue_event( EventThatStartsSounds, game_data_ptr, 0, MILESEVENT_ENQUEUE_BUFFER_PTR, 0 );

            // now process that event
            AIL_begin_event_queue_processing( );

            // next, enumerate the pending and complete sounds for game processing
            MILESEVENTSOUNDINFO Info;

            HMSSENUM SoundEnum = MSS_FIRST;
            while ( AIL_enumerate_sound_instances( &SoundEnum, MILESEVENT_SOUND_STATUS_PENDING | MILESEVENT_SOUND_STATUS_COMPLETE, 0, &Info ) )    
            {
                game_type * game_data = (game_type*) Info.UserBuffer; // returns the game_data pointer from the enqueue

                if ( Info.Status == MILESEVENT_SOUND_STATUS_PENDING )
                {
                    // setup initial state
                    AIL_set_sample_3D_position( Info.Sample, game_data->x, game_data->y, game_data->z );
                }
                else if ( Info.Status == MILESEVENT_SOUND_STATUS_COMPLETE )
                {
                    // Free some state we have associated with the sound now that its done.
                    game_free( game_data );
                }
            }

            AIL_complete_event_queue_processing( ); 
  $}          
            
            Note that if any event step drastically fails, the rest of the command queue is 
            skipped, and this function returns 0! For this reason, you shouldn't assume
            that a start sound event will always result in a completed sound later.
            
            Therefore, you should allocate memory that you want associated with a sound instance
            during the enumeration loop, rather than at enqueue time.  Otherwise, you
            need to detect that the sound didn't start and then free the memory (which can be complicated).
*/

// Returned by AIL_enumerate_sound_instances()
EXPTYPE typedef struct _MILESEVENTSOUNDINFO
{
    U64 QueuedID;
    U64 InstanceID;
    HSAMPLE Sample;
    HSTREAM Stream;
    void* UserBuffer;
    S32 UserBufferLen;
    S32 Status; 
    U32 Flags;
} MILESEVENTSOUNDINFO;
/*
  Sound instance data that is associated with each active sound instance.
  
  $:QueuedID A unique ID that identifies the queued event that started this sound. Returned from each call to $AIL_enqueue_event.
  $:InstanceID A unique ID that identified this specific sound instance (note that one QueuedID can trigger multiple InstanceIDs).
  $:Sample The $HSAMPLE for this playing sound.
  $:Stream The $HSTREAM for this playing sound (if it is being streamed).
  $:UserBuffer A pointer to the user data for this sound instance.
  $:UserBufferLen The length in bytes of the user data (if known by Miles).
  $:Status One of the $MILESEVENTSOUNDSTATUS status values.
  $:Flags One of the $MILESEVENTSOUNDFLAG flags.
  
  This structure is returned by the $AIL_enumerate_sound_instances function. It
  returns information about an active sound instance.
*/

EXPAPI S32 AILCALL AIL_enumerate_sound_instances(HMSSENUM* next, S32 statuses, char const* label_query, U64 search_for_ID, EXPOUT MILESEVENTSOUNDINFO* info);
/*
    Enumerated the active sound instances managed by the event system.

    $:next Enumeration token - initialize to MSS_FIRST before the first call. You can pass 0 here, if you just want the first instance that matches.
    $:statuses Or-ed list of status values to enumerate. Use 0 for all status types.
    $:label_query A query to match sound instance lables against.  Use 0 to skip label matching.
    $:search_for_ID Match only instances that have a QueuedID or InstanceID that matches this value. Use 0 to skip ID matching.
    $:info Returns the data for each sound instance. 
    $:return  Returns 0 when enumeration is complete.

    Enumerates the sound instances. This will generally be used between
      calls to $AIL_begin_event_queue_processing and $AIL_complete_event_queue_processing to 
      manage the sound instances.

    The label_query is a list of labels to match, separated by commas.  By default, comma-separated
      values only have to match at least one label.  So, if you used "level1, wind", then all sound instances
      that had either "level1" <i>or</i> "wind" would match.  If you want to match <i>all</i> labels,
      then use the + sign first (for example, "+level1, +wind" would only match sound instances that
      had <i>both</i> "level1" and "wind").  You can also use the - sign before a label to <i>not</i>
      match that label (so, "level1, -wind" would match all "level1" labeled sound instances that didn't have
      a "wind" label).  Finally, you can also use * and ? to match wildcard style labels (so, "gun*"
      would match any sound instance with a label that starts with "gun").

      Valid status flags are:

            $(MILESEVENTSOUNDSTATUS::MILESEVENT_SOUND_STATUS_PENDING)[MILESEVENT_SOUND_STATUS_PENDING] - these are new sound instances that were
            created by events that had a "Start Sound Step". Note that these instances aren't audible yet,
            so that you have a chance to modify game driven properties (like the 3D position)
            on the sound before Miles begins to play it.  
            
            $(MILESEVENTSOUNDSTATUS::MILESEVENT_SOUND_STATUS_PLAYING)[MILESEVENT_SOUND_STATUS_PLAYING] - these are sound instances that were previously
            started and are continuing to play (you might update the 3D position for these, for example).
            
            $(MILESEVENTSOUNDSTATUS::MILESEVENT_SOUND_STATUS_COMPLETE)[MILESEVENT_SOUND_STATUS_COMPLETE] - these are sound instances that finished playing
            since the last this frame (you might use this status to free any game related memory, for example).

            Example Usage:
${
            HMSSENUM SoundEnum = MSS_FIRST;
            MILESEVENTSOUNDINFO Info;

            while ( AIL_enumerate_sound_instances( &SoundEnum, 0, 0, &Info ) )    
            {
              if ( Info.Status != MILESEVENT_SOUND_STATUS_COMPLETE )
              {
                game_SoundState* game_data= (game_SoundState*)( Info.UserBuffer );
                AIL_set_sample_is_3D( Info.Sample, 1 );
                AIL_set_sample_3D_position( Info.Sample, game_data->x, game_data->y, game_date->z );
              }
            }

$}
*/



//! Sound status defines
EXPTYPEBEGIN typedef S32 MILESEVENTSOUNDSTATUS;
#define MILESEVENT_SOUND_STATUS_PENDING 0x1
#define MILESEVENT_SOUND_STATUS_PLAYING 0x2
#define MILESEVENT_SOUND_STATUS_COMPLETE 0x4
EXPTYPEEND
/*
  specifies the status of a sounnd instance.
  
  $:MILESEVENT_SOUND_STATUS_PENDING New sound instances that were
            created by events that had a "Start Sound Step". Note that these instances aren't audible yet,
            so that you have a chance to modify game driven properties (like the 3D position)
            on the sound before Miles begins to play it. 
                    
  $:MILESEVENT_SOUND_STATUS_PLAYING Sound instances that were previously
            started and are continuing to play (you might update the 3D position for these, for example).
            
  $:MILESEVENT_SOUND_STATUS_COMPLETE Sound instances that finished playing
            since the last this frame (you might use this status to free any game related memory, for example).
  
These are the status values that each sound instance can have.  Use $AIL_enumerate_sound_instances to retrieve them.
*/


//
// Sound flags
//

//! Sound source was not in memory, and no hitching allowed.
//! Evicted due to sound limit.
EXPTYPEBEGIN typedef U32 MILESEVENTSOUNDFLAG;
#define MILESEVENT_SOUND_FLAG_FAILEDLOAD 0x1
#define MILESEVENT_SOUND_FLAG_EVICTED 0x2
EXPTYPEEND
/*
  specifies the status of a sounnd instance.
  
  $:MILESEVENT_SOUND_FLAG_FAILEDLOAD For sound instances with a $(MILESEVENTSOUNDSTATUS::MILESEVENT_SOUND_STATUS_COMPLETE)[MILESEVENT_SOUND_STATUS_COMPLETE] status,
    this flag means that the sound data wasn't in memory (there was no earlier preload event step, and the 
    sound designer clicked the "don't allow the disc to be accessed" checkbox.
                    
  $:MILESEVENT_SOUND_FLAG_EVICTED For sound instances with a $(MILESEVENTSOUNDSTATUS::MILESEVENT_SOUND_STATUS_COMPLETE)[MILESEVENT_SOUND_STATUS_COMPLETE] status,
    this flag means that the sound instance was evicted because one of the sound limits was hit (a higher priority sound needed to be played and a limit was
    in effect).
  
These are the flag values that each sound instance can have.  Use $AIL_enumerate_sound_instances to retrieve them.
*/

EXPAPI S32 AILCALL AIL_complete_event_queue_processing( void );
/*
  Completes the queue processing (which is started with $AIL_begin_event_queue_processing)."
        
  $:return Returns 0 on failure.

  This function is called in a pair with $AIL_begin_event_queue_processing. 
  
  In $AIL_begin_event_queue_processing,
  all the new sound instances are queued up, but they haven't started playing yet.  Old sound instances that
  have finished playing are still valid - they haven't been freed yet.  $AIL_complete_event_queue_processing
  actually starts the sound instances and frees the completed ones - it's the 2nd half of the event processing.
  
  Usually you call $AIL_enumerate_sound_instances before this function to manage all the sound
  instances.
*/

EXPAPI U64 AILCALL AIL_stop_sound_instances(char const * label_query, U64 apply_to_ID);
/*
    Allows the programmer to manually enqueue a stop sound event into the event system.
    
    $:label_query A query to match sound instance labels against.  Use 0 to skip label matching.
    $:apply_to_ID An optional value returned from a previous $AIL_enqueue_event or $AIL_enumerate_sound_instances that
      tells Miles to stop only those instances who's QueuedID or InstanceID matches this value.
    $:return Returns a non-zero queue ID on success.

    Enqueues an event to stop all sounds matching the specified label query (see $AIL_enumerate_sound_instances
    for a description of the label_query format).
    
    Usually the programmer should trigger an event that the sound designer has specifically
    created to stop the appropriate sounds, but this function gives the programmer 
    manual control, if necessary.
*/

DXDEC U64 AILCALL AIL_pause_sound_instances(char const * label_query, U64 apply_to_ID);
/*
    Allows the programmer to manually enqueue a pause sound event into the event system.
    
    $:label_query A query to match sound instance labels against.  Use 0 to skip label matching.
    $:apply_to_ID An optional value returned from a previous $AIL_enqueue_event or $AIL_enumerate_sound_instances that
      tells Miles to pause only those instances who's QueuedID or InstanceID matches this value.
    $:return Returns a non-zero queue ID on success.

    Enqueues an event to pause all sounds matching the specified label query (see $AIL_enumerate_sound_instances
    for a description of the label_query format).
    
    Usually the programmer should trigger an event that the sound designer has specifically
    created to pause the appropriate sounds, but this function gives the programmer 
    manual control, if necessary.
*/

DXDEC U64 AILCALL AIL_resume_sound_instances(char const * label_query, U64 apply_to_ID);
/*
    Allows the programmer to manually enqueue a resume sound event into the event system.
    
    $:label_query A query to match sound instance labels against.  Use 0 to skip label matching.
    $:apply_to_ID An optional value returned from a previous $AIL_enqueue_event or $AIL_enumerate_sound_instances that
      tells Miles to resume only those instances who's QueuedID or InstanceID matches this value.
    $:return Returns a non-zero enqueue ID on success.

    Enqueues an event to resume all sounds matching the specified label query (see $AIL_enumerate_sound_instances
    for a description of the label_query format).
    
    Usually the programmer should trigger an event that the sound designer has specifically
    created to resume the appropriate sounds, but this function gives the programmer 
    manual control, if necessary.
*/

DXDEC U64 AILCALL AIL_start_sound_instance(HMSOUNDBANK bank, char const * sound, U8 loop_count, S32 should_stream, char const * labels, void* user_buffer, S32 user_buffer_len, S32 enqueue_flags );
/*
    Allows the programmer to manually enqueue a start sound event into the event system.
    
    $:bank The bank containing the sound to start.
    $:sound The name of the sound file to start.
    $:loop_count The loop count to assign to the sound. 0 for infinite, 1 for play once, or just the number of times to loop.
    $:stream Non-zero if the sound playback should stream off the disk.
    $:labels An optional comma-delimited list of labels to assign to the sound playback.
    $:user_buffer See the user_buffer description in $AIL_enqueue_event.
    $:user_buffer_len See the user_buffer_len description in $AIL_enqueue_event.
    $:enqueue_flags See the enqueue_flags description in $AIL_enqueue_event.
    $:return Returns a non-zero enqueue ID on success.

    Enqueues an event to start the specified sound asset. 
    
    Usually the programmer should trigger an event that the sound designer has specifically
    create to start the appropriate sounds, but this function gives the programmer 
    manual control, if necessary.
*/

EXPAPI void AILCALL AIL_clear_event_queue( void );
/*
   Removes all pending events that you have enqueued.

   This function will clears the list of all events that you have previously enqueued.
*/


EXPAPI S32 AILCALL AIL_set_sound_label_limits(char const* sound_limits);
/*
  Sets the maximum number of sounds that matches a particular label.

  $:sound_limits A string that defines one or more limits on a label by label basis.  The string should
    be of the form "label1name label1count:label2name label2count".
  $:return Returns 0 on failure (usually a bad limit string).

  Every time an event triggers a sound to be played, the sound limits are checked, and, if exceeded, a sound is dropped (based
  on the settings in the event step).
  
  Usually event limits are set in an event as well, but this lets the programmer override the limits at runtime.
*/

EXPAPI S32 AILCALL AIL_enumerate_preset_persists(HMSSENUM* next, EXPOUT char const ** name);
/*
    Enumerates the current persisted presets that active in the system.

    $:next Enumeration token - initialize to MSS_FIRST before the first call.
    $:name Pointer to a char* that receives the name of the persist. NOTE
            that this pointer can change frame to frame and should be immediately copied to a client-allocated
            buffer if persistence is desired.
    $:return Returns 0 when enumeration is complete.
    
    This function lets you enumerate all the persisting presets that are currently active in the system.  It
    is mostly a debugging aid.
*/

EXPAPI char * AILCALL AIL_text_dump_event_system(void);
/*
    Returns a big string describing the current state of the event system.
    
    $:return String description of current systems state. 

    This function is a debugging aid - it can be used to show all of the active allocations,
    active sounds, etc.
    
    You must delete the pointer returned from this function with $AIL_mem_free_lock.
*/

EXPTYPE typedef struct _MILESEVENTSTATE
{
    S32 CommandBufferSize;
    S32 HeapSize;
    S32 HeapRemaining;
    S32 LoadedSoundCount;
    S32 PlayingSoundCount;
    S32 LoadedBankCount;
    S32 PersistCount;

    S32 SoundBankManagementMemory;
    S32 SoundDataMemory;
} MILESEVENTSTATE;
/*
  retruns the current state of the Miles Event System.
  
  $:CommandBufferSize The size of the command buffer in bytes. See also the $AIL_startup_event_system.
  $:HeapSize The total size of memory used by the event system for management structures, and is allocated during startup. This does not include loaded file sizes.
  $:HeapRemaining The number of bytes in HeapSize that is remaining.
  $:LoadedSoundCount The number of sounds loaded and ready to play via cache event steps.
  $:PlayingSoundCount The number of sounds currently playing via start sound event steps.
  $:LoadedBankCount The number of sound banks loaded in the system via cache event steps, or AIL_add_soundbank.
  $:PersistCount The number of presets persisted via the persist event step.
  $:SoundBankManagementMemory The number of bytes used for the management of the loaded sound banks.
  $:SoundDataMemory The number of bytes used in file sizes - remember this is not included in HeapSize. Streaming overhead is not included in this number, only fully loaded sounds.

  This structure returns debugging info about the event system. It is used with $AIL_event_system_state.
*/

EXPAPI void AILCALL AIL_event_system_state(MILESEVENTSTATE* state);
/*
  Returns an information structure about the current state of the Miles Event System.
  
  $:state A pointer to a structure to receive the state information.

  This function is a debugging aid - it returns information for the event system. 
*/



#undef EXPAPI
#define EXPAPI
EXPAPI typedef S32 AILCALLBACK MSS_USER_RAND( void );
/*
  The function definition to use when defining your own random function.
  
  You can define a function with this prototype and pass it to $AIL_register_random
  if you want to tie the Miles random calls in with your game's (for logging and such).
*/
#undef EXPAPI
#define EXPAPI DXDEC

EXPAPI void AILCALL AIL_register_random(MSS_USER_RAND * rand);
/*
  Sets the function that Miles will call to obtain a random number.

  Use this function to set your own random function that the Miles Event System will call when it needs a random number.
  This lets you control the determinism of the event system.
*/




#ifdef MSS_FLT_SUPPORTED

//
// Filter result codes
//

typedef SINTa FLTRESULT;

#define FLT_NOERR                   0   // Success -- no error
#define FLT_NOT_ENABLED             1   // FLT not enabled
#define FLT_ALREADY_STARTED         2   // FLT already started
#define FLT_INVALID_PARAM           3   // Invalid parameters used
#define FLT_INTERNAL_ERR            4   // Internal error in FLT driver
#define FLT_OUT_OF_MEM              5   // Out of system RAM
#define FLT_ERR_NOT_IMPLEMENTED     6   // Feature not implemented
#define FLT_NOT_FOUND               7   // FLT supported device not found
#define FLT_NOT_INIT                8   // FLT not initialized
#define FLT_CLOSE_ERR               9   // FLT not closed correctly

//############################################################################
//##                                                                        ##
//## Interface "MSS pipeline filter" (some functions shared by              ##
//## "MSS voice filter")                                                    ##
//##                                                                        ##
//############################################################################

typedef FLTRESULT (AILCALL *FLT_STARTUP)(void);

typedef FLTRESULT (AILCALL *FLT_SHUTDOWN)(void);

typedef C8 *  (AILCALL *FLT_ERROR)(void);

typedef HDRIVERSTATE (AILCALL *FLT_OPEN_DRIVER) (HDIGDRIVER dig, void * memory);

typedef FLTRESULT    (AILCALL *FLT_CLOSE_DRIVER) (HDRIVERSTATE state);

typedef void         (AILCALL *FLT_PREMIX_PROCESS) (HDRIVERSTATE driver);

typedef S32          (AILCALL *FLT_POSTMIX_PROCESS) (HDRIVERSTATE driver, void *output_buffer);

//############################################################################
//##                                                                        ##
//## Interface "Pipeline filter sample services"                            ##
//##                                                                        ##
//############################################################################

typedef HSAMPLESTATE (AILCALL * FLTSMP_OPEN_SAMPLE) (HDRIVERSTATE driver,
                                                         HSAMPLE      S,
                                                         void * memory);

typedef FLTRESULT    (AILCALL * FLTSMP_CLOSE_SAMPLE) (HSAMPLESTATE state);

typedef void         (AILCALL * FLTSMP_SAMPLE_PROCESS) (HSAMPLESTATE    state,
                                                            void *      source_buffer,
                                                            void *      dest_buffer, // may be the same as src
                                                            S32             n_samples,
                                                            S32             is_stereo );

typedef S32          (AILCALL * FLTSMP_SAMPLE_PROPERTY) (HSAMPLESTATE    state,
                                                             HPROPERTY       property,
                                                             void*       before_value,
                                                             void const* new_value,
                                                             void*       after_value
                                                             );

//############################################################################
//##                                                                        ##
//## Interface "MSS output filter"                                          ##
//##                                                                        ##
//############################################################################

typedef S32 (AILCALL * VFLT_ASSIGN_SAMPLE_VOICE) (HDRIVERSTATE driver,
                                                      HSAMPLE      S);

typedef void (AILCALL * VFLT_RELEASE_SAMPLE_VOICE) (HDRIVERSTATE driver,
                                                        HSAMPLE      S);

typedef S32 (AILCALL * VFLT_START_SAMPLE_VOICE) (HDRIVERSTATE driver,
                                                     HSAMPLE      S);

//############################################################################
//##                                                                        ##
//## Interface "Voice filter driver services"                               ##
//##                                                                        ##
//############################################################################

typedef S32          (AILCALL * VDRV_DRIVER_PROPERTY) (HDRIVERSTATE    driver,
                                                           HPROPERTY       property,
                                                           void*       before_value,
                                                           void const* new_value,
                                                           void*       after_value
                                                           );

typedef S32          (AILCALL * VDRV_FORCE_UPDATE)     (HDRIVERSTATE driver);

//############################################################################
//##                                                                        ##
//## Interface "Voice filter sample services"                               ##
//##                                                                        ##
//############################################################################

typedef S32          (AILCALL * VSMP_SAMPLE_PROPERTY) (HSAMPLE      S,
                                                           HPROPERTY       property,
                                                           void*       before_value,
                                                           void const* new_value,
                                                           void*       after_value
                                                           );

//
// Pipeline filter calls
//

DXDEC HPROVIDER  AILCALL AIL_digital_output_filter (HDIGDRIVER dig);

DXDEC S32        AILCALL AIL_enumerate_filters  (HMSSENUM  *next,
                                                 HPROVIDER *dest,
                                                 C8  * *name);
DXDEC HDRIVERSTATE
                 AILCALL AIL_open_filter        (HPROVIDER  lib,
                                                 HDIGDRIVER dig);

DXDEC void       AILCALL AIL_close_filter       (HDRIVERSTATE filter);

DXDEC S32        AILCALL AIL_find_filter        (C8 const  *name,
                                                 HPROVIDER *ret);

DXDEC S32        AILCALL AIL_enumerate_filter_properties
                                                (HPROVIDER                  lib,
                                                 HMSSENUM *             next,
                                                 RIB_INTERFACE_ENTRY *  dest);

DXDEC S32        AILCALL AIL_filter_property    (HPROVIDER  lib,
                                                 C8 const*   name,
                                                 void*       before_value,
                                                 void const* new_value,
                                                 void*       after_value
                                                 );

DXDEC  S32      AILCALL AIL_enumerate_output_filter_driver_properties
                                                (HPROVIDER                 lib,
                                                 HMSSENUM *            next,
                                                 RIB_INTERFACE_ENTRY * dest);

DXDEC  S32     AILCALL AIL_output_filter_driver_property
                                                (HDIGDRIVER     dig,
                                                 C8 const * name,
                                                 void*       before_value,
                                                 void const* new_value,
                                                 void*       after_value
                                                 );

DXDEC  S32      AILCALL AIL_enumerate_output_filter_sample_properties
                                                (HPROVIDER                 lib,
                                                 HMSSENUM *            next,
                                                 RIB_INTERFACE_ENTRY * dest);

DXDEC  S32      AILCALL AIL_enumerate_filter_sample_properties
                                                (HPROVIDER                 lib,
                                                 HMSSENUM *            next,
                                                 RIB_INTERFACE_ENTRY * dest);

DXDEC S32       AILCALL AIL_enumerate_sample_stage_properties
                                                (HSAMPLE                    S,
                                                 SAMPLESTAGE                stage,
                                                 HMSSENUM *             next,
                                                 RIB_INTERFACE_ENTRY *  dest);

DXDEC  S32      AILCALL AIL_sample_stage_property
                                                (HSAMPLE        S,
                                                 SAMPLESTAGE    stage,
                                                 C8 const * name,
                                                 S32            channel,
                                                 void*       before_value,
                                                 void const* new_value,
                                                 void*       after_value
                                                 );

#define AIL_filter_sample_property(S,name,beforev,newv,afterv) AIL_sample_stage_property((S),SP_FILTER_0,(name),-1,(beforev),(newv),(afterv))

typedef struct _FLTPROVIDER
{
   S32          provider_flags;
   S32          driver_size;
   S32          sample_size;

   PROVIDER_PROPERTY               PROVIDER_property;

   FLT_STARTUP                     startup;
   FLT_ERROR                       error;
   FLT_SHUTDOWN                    shutdown;
   FLT_OPEN_DRIVER                 open_driver;
   FLT_CLOSE_DRIVER                close_driver;
   FLT_PREMIX_PROCESS              premix_process;
   FLT_POSTMIX_PROCESS             postmix_process;

   FLTSMP_OPEN_SAMPLE              open_sample;
   FLTSMP_CLOSE_SAMPLE             close_sample;
   FLTSMP_SAMPLE_PROCESS           sample_process;
   FLTSMP_SAMPLE_PROPERTY          sample_property;

   VFLT_ASSIGN_SAMPLE_VOICE        assign_sample_voice;
   VFLT_RELEASE_SAMPLE_VOICE       release_sample_voice;
   VFLT_START_SAMPLE_VOICE         start_sample_voice;

   VDRV_DRIVER_PROPERTY            driver_property;
   VDRV_FORCE_UPDATE               force_update;

   VSMP_SAMPLE_PROPERTY            output_sample_property;

   HDIGDRIVER   dig;
   HPROVIDER    provider;
   HDRIVERSTATE driver_state;

   struct _FLTPROVIDER *next;
}
FLTPROVIDER;

//
// Values for "Flags" property exported by all MSS Pipeline Filter and MSS Output Filter
// providers
//

#define FPROV_ON_SAMPLES 0x0001        // Pipeline filter that operates on input samples (and is enumerated by AIL_enumerate_filters)
#define FPROV_ON_POSTMIX 0x0002        // Pipeline filter that operates on the post mixed output (capture filter)
#define FPROV_MATRIX     0x0004        // This is a matrix output filter (e.g., SRS/Dolby)
#define FPROV_VOICE      0x0008        // This is a per-voice output filter (e.g., DirectSound 3D)
#define FPROV_3D         0x0010        // Output filter uses S3D substructure for positioning
#define FPROV_OCCLUSION  0x0020        // Output filter supports occlusion (doesn't need per-sample lowpass)
#define FPROV_EAX        0x0040        // Output filter supports EAX-compatible environmental reverb

#define FPROV_SPU_MASK   0xff0000      // Mask here the SPU INDEX STARTS
#define FPROV_SPU_INDEX( val ) ( ( val >> 16 ) & 0xff )
#define FPROV_MAKE_SPU_INDEX( val ) ( val << 16 )



#ifdef IS_WIN32

#define MSS_EAX_AUTO_GAIN   1
#define MSS_EAX_AUTOWAH     2
#define MSS_EAX_CHORUS      3
#define MSS_EAX_DISTORTION  4
#define MSS_EAX_ECHO        5
#define MSS_EAX_EQUALIZER   6
#define MSS_EAX_FLANGER     7
#define MSS_EAX_FSHIFTER    8
#define MSS_EAX_VMORPHER    9
#define MSS_EAX_PSHIFTER   10
#define MSS_EAX_RMODULATOR 11
#define MSS_EAX_REVERB     12

typedef struct EAX_SAMPLE_SLOT_VOLUME
{
  S32 Slot;       // 0, 1, 2, 3
  S32 Send;
  S32 SendHF;
  S32 Occlusion;
  F32 OcclusionLFRatio;
  F32 OcclusionRoomRatio;
  F32 OcclusionDirectRatio;
} EAX_SAMPLE_SLOT_VOLUME;

typedef struct EAX_SAMPLE_SLOT_VOLUMES
{
  U32 NumVolumes;  // 0, 1, or 2
  EAX_SAMPLE_SLOT_VOLUME volumes[ 2 ];
} EAX_SAMPLE_SLOT_VOLUMES;

// Use this structure for EAX REVERB
typedef struct EAX_REVERB
{
  S32 Effect;                  // set to MSS_EAX_REVERB
  S32 Volume;                  // -10000 to 0
  U32 Environment;             // one of the ENVIRONMENT_ enums
  F32 EnvironmentSize;         // environment size in meters
  F32 EnvironmentDiffusion;    // environment diffusion
  S32 Room;                    // room effect level (at mid frequencies)
  S32 RoomHF;                  // relative room effect level at high frequencies
  S32 RoomLF;                  // relative room effect level at low frequencies
  F32 DecayTime;               // reverberation decay time at mid frequencies
  F32 DecayHFRatio;            // high-frequency to mid-frequency decay time ratio
  F32 DecayLFRatio;            // low-frequency to mid-frequency decay time ratio
  S32 Reflections;             // early reflections level relative to room effect
  F32 ReflectionsDelay;        // initial reflection delay time
  F32 ReflectionsPanX;         // early reflections panning vector
  F32 ReflectionsPanY;         // early reflections panning vector
  F32 ReflectionsPanZ;         // early reflections panning vector
  S32 Reverb;                  // late reverberation level relative to room effect
  F32 ReverbDelay;             // late reverberation delay time relative to initial reflection
  F32 ReverbPanX;              // late reverberation panning vector
  F32 ReverbPanY;              // late reverberation panning vector
  F32 ReverbPanZ;              // late reverberation panning vector
  F32 EchoTime;                // echo time
  F32 EchoDepth;               // echo depth
  F32 ModulationTime;          // modulation time
  F32 ModulationDepth;         // modulation depth
  F32 AirAbsorptionHF;         // change in level per meter at high frequencies
  F32 HFReference;             // reference high frequency
  F32 LFReference;             // reference low frequency
  F32 RoomRolloffFactor;       // like DS3D flRolloffFactor but for room effect
  U32 Flags;                   // modifies the behavior of properties
} EAX_REVERB;

// Use this structure for EAX AUTOGAIN
typedef struct EAX_AUTOGAIN
{
  S32 Effect;      // set to MSS_EAX_AUTO_GAIN
  S32 Volume;      // -10000 to 0
  U32 OnOff;       // Switch Compressor on or off (1 or 0)
} EAX_AUTOGAIN;

// Use this structure for EAX AUTOWAH
typedef struct EAX_AUTOWAH
{
   S32 Effect;        // set to MSS_EAX_AUTOWAH
   S32 Volume;        // -10000 to 0
   F32 AttackTime;    // Attack time (seconds)
   F32 ReleaseTime;   // Release time (seconds)
   S32 Resonance;     // Resonance (mB)
   S32 PeakLevel;     // Peak level (mB)
} EAX_AUTOWAH;

// Use this structure for EAX CHORUS
typedef struct EAX_CHORUS
{
  S32 Effect;       // set to MSS_EAX_CHORUS
  S32 Volume;       // -10000 to 0
  U32 Waveform;     // Waveform selector - 0 = sinusoid, 1 = triangle
  S32 Phase;        // Phase (Degrees)
  F32 Rate;         // Rate (Hz)
  F32 Depth;        // Depth (0 to 1)
  F32 Feedback;     // Feedback (-1 to 1)
  F32 Delay;        // Delay (seconds)
} EAX_CHORUS;

// Use this structure for EAX DISTORTION
typedef struct EAX_DISTORTION
{
  S32 Effect;        // set to MSS_EAX_DISTORTION
  S32 Volume;        // -10000 to 0
  F32 Edge;          // Controls the shape of the distortion (0 to 1)
  S32 Gain;          // Controls the post distortion gain (mB)
  F32 LowPassCutOff; // Controls the cut-off of the filter pre-distortion (Hz)
  F32 EQCenter;      // Controls the center frequency of the EQ post-distortion (Hz)
  F32 EQBandwidth;   // Controls the bandwidth of the EQ post-distortion (Hz)
} EAX_DISTORTION;

// Use this structure for EAX ECHO
typedef struct EAX_ECHO
{
  S32 Effect;        // set to MSS_EAX_ECHO
  S32 Volume;        // -10000 to 0
  F32 Delay;         // Controls the initial delay time (seconds)
  F32 LRDelay;       // Controls the delay time between the first and second taps (seconds)
  F32 Damping;       // Controls a low-pass filter that dampens the echoes (0 to 1)
  F32 Feedback;      // Controls the duration of echo repetition (0 to 1)
  F32 Spread;        // Controls the left-right spread of the echoes
} EAX_ECHO;

// Use this structure for EAXEQUALIZER_ALLPARAMETERS
typedef struct EAX_EQUALIZER
{
  S32 Effect;        // set to MSS_EAX_EQUALIZER
  S32 Volume;        // -10000 to 0
  S32 LowGain;       // (mB)
  F32 LowCutOff;     // (Hz)
  S32 Mid1Gain;      // (mB)
  F32 Mid1Center;    // (Hz)
  F32 Mid1Width;     // (octaves)
  F32 Mid2Gain;      // (mB)
  F32 Mid2Center;    // (Hz)
  F32 Mid2Width;     // (octaves)
  S32 HighGain;      // (mB)
  F32 HighCutOff;    // (Hz)
} EAX_EQUALIZER;

// Use this structure for EAX FLANGER
typedef struct EAX_FLANGER
{
  S32 Effect;       // set to MSS_EAX_FLANGER
  S32 Volume;       // -10000 to 0
  U32 Waveform;     // Waveform selector - 0 = sinusoid, 1 = triangle
  S32 Phase;        // Phase (Degrees)
  F32 Rate;         // Rate (Hz)
  F32 Depth;        // Depth (0 to 1)
  F32 Feedback;     // Feedback (0 to 1)
  F32 Delay;        // Delay (seconds)
} EAX_FLANGER;


// Use this structure for EAX FREQUENCY SHIFTER
typedef struct EAX_FSHIFTER
{
  S32 Effect;         // set to MSS_EAX_FSHIFTER
  S32 Volume;         // -10000 to 0
  F32 Frequency;      // (Hz)
  U32 LeftDirection;  // direction - 0 = down, 1 = up, 2 = off
  U32 RightDirection; // direction - 0 = down, 1 = up, 2 = off
} EAX_FSHIFTER;

// Use this structure for EAX VOCAL MORPHER
typedef struct EAX_VMORPHER
{
  S32 Effect;                // set to MSS_EAX_VMORPHER
  S32 Volume;                // -10000 to 0
  U32 PhonemeA;              // phoneme: 0 to 29 - A E I O U AA AE AH AO EH ER IH IY UH UW B D G J K L M N P R S T V Z
  S32 PhonemeACoarseTuning;  // (semitones)
  U32 PhonemeB;              // phoneme: 0 to 29 - A E I O U AA AE AH AO EH ER IH IY UH UW B D G J K L M N P R S T V Z
  S32 PhonemeBCoarseTuning;  // (semitones)
  U32 Waveform;              // Waveform selector - 0 = sinusoid, 1 = triangle, 2 = sawtooth
  F32 Rate;                  // (Hz)
} EAX_VMORPHER;


// Use this structure for EAX PITCH SHIFTER
typedef struct EAX_PSHIFTER
{
  S32 Effect;       // set to MSS_EAX_PSHIFTER
  S32 Volume;       // -10000 to 0
  S32 CoarseTune;   // Amount of pitch shift (semitones)
  S32 FineTune;     // Amount of pitch shift (cents)
} EAX_PSHIFTER;

// Use this structure for EAX RING MODULATOR
typedef struct EAX_RMODULATOR
{
  S32 Effect;          // set to MSS_EAX_RMODULATOR
  S32 Volume;          // -10000 to 0
  F32 Frequency;       // Frequency of modulation (Hz)
  F32 HighPassCutOff;  // Cut-off frequency of high-pass filter (Hz)
  U32 Waveform;        // Waveform selector - 0 = sinusoid, 1 = triangle, 2 = sawtooth
} EAX_RMODULATOR;

#endif

#else

typedef struct _FLTPROVIDER
{
  U32 junk;
} FLTPROVIDER;

#endif

#if !defined(IS_PS2) && !defined(IS_PS3) && !defined(IS_PSP)

#if defined(_PUSHPOP_SUPPORTED) || PRAGMA_STRUCT_PACKPUSH
  #pragma pack(pop)
#else
  #pragma pack()
#endif

#endif

#ifdef IS_PS2

// round up to multiples of 16 for DMA alignment
#define SPR_IS_NEEDED  (((2 * 578         * sizeof(S16)) + 15) & ~15)  // 2320
#define SPR_XR_NEEDED  (((2 * 32 * 18     * sizeof(F32)) + 15) & ~15)  // 4608
#define SPR_LR_NEEDED  (((2 * 32 * 18     * sizeof(F32)) + 15) & ~15)  // 4608
#define SPR_RES_NEEDED (((32 * 18         * sizeof(F32)) + 15) & ~15)  // 2304
#define SPR_S_NEEDED   (((2 * 32 * 18     * sizeof(F32)) + 15) & ~15)  // 4608
#define SPR_U_NEEDED   (((2 * 2 * 17 * 16 * sizeof(F32)) + 15) & ~15)  // 4352

#define SPR_MEM        (0x70000000)
#define SPR_U_START    (SPR_MEM)
#define SPR_S_START    (SPR_U_START + SPR_U_NEEDED)
#define SPR_RES_START  (SPR_S_START + SPR_S_NEEDED)
#define SPR_LR_START   (SPR_RES_START + SPR_RES_NEEDED)
#define SPR_IS_START   (SPR_RES_START + SPR_RES_NEEDED)  // Shared with LR space (LR is larger)
#define END_SPR_MEM    (SPR_LR_START + SPR_LR_NEEDED)
#define SPR_BYTES_USED (END_SPR_MEM - SPR_MEM)

typedef enum
{
   MSS_DO_NOT_USE,
   MSS_USE_AND_SAVE,
   MSS_USE_WITHOUT_SAVING,
   MSS_USED = 100,               // Internal use only
}
MSS_RESOURCE_POLICY;

DXDEC MSS_RESOURCE_POLICY AILCALL AIL_set_scratchpad_policy(MSS_RESOURCE_POLICY policy);
DXDEC MSS_RESOURCE_POLICY AILCALL AIL_scratchpad_policy    (void);

#endif

#endif

#ifdef __cplusplus
}
#endif

#endif
