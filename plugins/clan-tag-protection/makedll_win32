@echo off

echo Compiling: release
gcc -m32 -Wall -O1 -s -mtune=core2 -c *.c

echo Linking
gcc -m32 -s -shared -o clanP.dll *.o -L..\ -lcom_plugin
echo Cleaning up
del *.o

pause
