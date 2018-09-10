@echo off

echo Compiling: release
gcc -m32 -Wall -O1 -s -march=nocona -c *.c

echo Linking
gcc -m32 -s -shared -o antinamesteal.dll *.o -L..\ -lcom_plugin
echo Cleaning up
del *.o

pause
