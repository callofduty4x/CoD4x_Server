#!/bin/bash

echo Compiling: release
gcc -m32 -Wall -O1 -s -fvisibility=hidden -mtune=core2 -c *.c

echo Linking
gcc -m32 -s -shared -o legacybanlist.so *.o
echo Cleaning up
rm *.o

