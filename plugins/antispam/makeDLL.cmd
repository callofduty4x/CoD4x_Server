@echo off

echo Compiling: release
g++ -std=gnu++17 -m32 -Wall -s -O1 -mtune=core2 -c *.cpp

echo Linking
g++ -std=gnu++17 -m32 -Wall -s -shared -static-libgcc -static-libstdc++ -o antispam.dll *.o -L..\ -lcom_plugin
echo Cleaning up
del *.o

pause
