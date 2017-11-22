#!/bin/bash

echo Compiling: release
gcc -m32 -Wall -O1 -g -fvisibility=hidden -mtune=core2 -c qshared.cpp main.cpp

echo Linking
gcc -m32 -g -shared -o sourcebansplugin.so *.o
echo Cleaning up
rm *.o

if [ $? -ne 0 ]
then
    echo "Compile failed!"
    exit 1
fi
