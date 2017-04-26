@set path=C:\MinGW\bin;%path%
@echo off

echo Compiling C-code...

gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c *.c
echo Linking...
gcc -m32 -g -Wl,--nxcompat -o screenshotinfo.exe *.o -static-libgcc -static -lstdc++ -lws2_32

echo Cleaning up...
del *.o

echo Running...
screenshotinfo.exe

pause

