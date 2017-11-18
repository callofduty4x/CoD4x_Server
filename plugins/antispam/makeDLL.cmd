@echo off

echo Compiling: release
g++ -std=c++17 -m32 -Wall -O1 -s -mtune=core2 -c *.cpp

echo Linking
g++ -std=c++17 -m32 -s -shared -static-libgcc -static-libstdc++ -o antispam.dll *.o -L..\ -lcom_plugin
echo Cleaning up
del *.o

pause
