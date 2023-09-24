/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

    This file is part of CoD4X Plugin Handler source code.

    CoD4X Plugin Handler source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X Plugin Handler source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/

#ifndef PLUGIN_INCLUDES
#define PLUGIN_INCLUDES

// Enums used in this file
#define C 0
#define CPP 1
#define GCC 2
#define BORLAND 3
#define INTEL 4
#define UNKNOWN 5


// Detect the language (C/C++)

#ifdef LANG
    #undef LANG
#endif
#ifdef LANG_NAME
    #undef LANG_NAME
#endif

#ifdef __cplusplus
    #define LANG CPP
    #define LANG_NAME "C++"
#else
    #define LANG C
    #define LANG_NAME "C"
#endif


// Detect the compiler

#ifdef COMPILER
    #undef COMPILER
#endif
#ifdef COMPILER_NAME
    #undef COMPILER_NAME
#endif

#ifdef __GNUC__ 		// GCC
    #define COMPILER GCC
    #define COMPILER_NAME "GCC / G++"
#else
#ifdef __BORLANDC__	// Borland C++
    #define COMPILER BORLAND
    #define COMPILER_NAME "Borland C++"
#else
#ifdef __INTEL_COMPILER	// Intel C Compiler
    #define COMPILER INTEL
    #define COMPILER_NAME "Intel Compiler"
#else				// Some other compiler
    #define COMPILER UNKNOWN
    #define COMPILER_NAME "unknown"
#endif
#endif
#endif

// Show a compilation message
#ifdef msg
#undef msg
#endif


#define msg "Compiling a plugin using CoD4X Plugin API. Your compiler is " COMPILER_NAME ", you are using " LANG_NAME "."
//I am muting this spam, yes!
//#pragma message msg

#undef msg

#define CONVAR_T convariable_t

#ifndef __cdecl
    #define __cdecl __attribute__((cdecl))
#endif /*__cdecl*/

#ifdef PCL
    #undef PCL
#endif /*PCL*/

#ifdef PCL_LOCAL
    #undef PCL_LOCAL
#endif /*PCL_LOCAL*/

#ifdef __iceimport
    #undef __iceimport
#endif /*__iceimport*/

#define __iceimport extern __cdecl

#if defined _WIN32 || defined __CYGWIN__        /*Windows*/
    #ifdef __GNUC__                             /*Windows and mingw*/
        #if LANG == CPP                         /*Windows, mingw and c++*/
            #define PCL extern "C" __attribute__ ((dllexport)) __attribute__ ((cdecl))
        #else                                   /*Windows, mingw and c*/
            #define PCL __attribute__ ((dllexport)) __attribute__ ((cdecl))
        #endif /*LANG == CPP*/
    #else                                       /*Windows and msvc*/
        #if LANG == CPP                         /*Windows and msvc and c++*/
            #define PCL extern "C" __declspec(dllexport) __cdecl
        #else                                   /*Windows and msvc and c*/
            #define PCL __declspec(dllexport) __cdecl
        #endif /*LANG == CPP*/
    #endif
    #define PCL_LOCAL
#else                                           /*Unix*/
    #if __GNUC__ >= 4                           /*Unix, modern GCC*/
        #if LANG == CPP                         /*Unix, modern GCC, G++*/
            #define PCL extern "C" __attribute__ ((visibility ("default"))) __attribute__ ((cdecl))
        #else                                   /*Unix, modern GCC, GCC*/
            #define PCL __attribute__ ((visibility ("default"))) __attribute__ ((cdecl))
        #endif /*LANG == CPP*/
        #define PCL_LOCAL  __attribute__ ((visibility ("hidden")))
    #else                                       /*Unix, old GCC*/
        #define PCL
        #define PCL_LOCAL
    #endif
#endif

#define Com_Memset memset

#if LANG == CPP
extern "C"{
#endif

#include "declarations.h"

#if LANG == CPP
}
#endif

// We don't need those any more :P
#undef C
#undef CPP
#undef GCC
#undef BORLAND
#undef INTEL
#undef UNKNOWN


#else

#error Please include the Plugin Include file (pinc) only once!

#endif
