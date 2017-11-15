@echo off

REM Compiling: debugging
REM echo `gcc -g -m32 -Wall -O1 -s -mtune=core2 -c *.cpp`

echo Compiling: release
gcc -m32 -Wall -O1 -g -mtune=core2 -c *.cpp

echo Linking
gcc -m32 -g -shared -static-libgcc -static-libstdc++ -o antispam.dll *.o -L..\ -lcom_plugin
echo Cleaning up
del *.o

pause