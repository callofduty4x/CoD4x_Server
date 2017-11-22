#!/bin/bash

echo Compiling: release
g++ -m32 -Wall -s -O1 -mtune=core2 -c *.cpp

echo Linking
g++ -m32 -Wall -s -shared -o antispam.so *.o
echo Cleaning up
rm *.o

if [ $? -ne 0 ]
then
    echo "Compile failed!"
    exit 1
fi
