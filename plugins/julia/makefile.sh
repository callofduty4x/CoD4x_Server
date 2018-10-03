#!/bin/bash

echo Compiling: release
g++ -m32 -Wall -O0 -g -fvisibility=hidden -mtune=core2 -c *.cpp

echo Linking
g++ -m32 -g -shared -o julia.so *.o
echo Cleaning up
rm *.o

if [ $? -ne 0 ]
then
    echo "Compile failed!"
    exit 1
fi