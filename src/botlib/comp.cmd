@echo off
gcc.exe -D BOTLIB -c *.c
REM gcc.exe -c ..\q_math.c
REM gcc.exe -c ..\qshared.c
REM gcc.exe -c ..\qvsnprintf.c
echo Linking
ar rcs ../../lib/libbot.a *.o
echo Cleaning up
del *.o
:: pause
