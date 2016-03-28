@echo off
@set path=%LOCALAPPDATA%\nasm;%path%
@set path=C:\MinGW\bin;%path%

echo.
echo Compiling...

gcc.exe -g -std=c99 -c -O0 -Wall "main.c" 

gcc.exe -o guid2playerid.exe *.o -static-libgcc -static -lstdc++ 

echo Cleaning Up...
del *.o

pause
