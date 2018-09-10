@echo off

echo Compiling: release
g++ -m32 -Wall -O1 -g -mtune=core2 -c *.cpp

echo Linking
gcc -m32 -g -shared -static-libgcc -static-libstdc++ -o miniadmin.dll *.o -L..\ -lcom_plugin
echo Cleaning up
del *.o

pause