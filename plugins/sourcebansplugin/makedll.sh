#!/bin/bash

echo Compiling: release
gcc -m32 -Wall -O1 -g -fvisibility=hidden -mtune=core2 -c *.c

echo Linking
gcc -m32 -g -shared -o sourcebansplugin.so *.o
echo Cleaning up
rm *.o

