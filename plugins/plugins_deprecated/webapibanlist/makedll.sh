#!/bin/bash

echo Compiling: release
$(PLUGIN_COMP_CC) -m32 -Wall -O1 -g -fvisibility=hidden -mtune=core2 -c *.c

echo Linking
$(PLUGIN_COMP_CC) -m32 -g -shared -o webbanlist.so *.o
echo Cleaning up
rm *.o

if [ $? -ne 0 ]
then
    echo "Compile failed!"
    exit 1
fi