#!/bin/bash

echo Compiling: release
gcc -m32 -Wall -O1 -g -fvisibility=hidden -fpermissive -mtune=core2 -c *.cpp

echo Linking
gcc -m32 -g -shared -o antispam.so *.o
echo Cleaning up
rm *.o

