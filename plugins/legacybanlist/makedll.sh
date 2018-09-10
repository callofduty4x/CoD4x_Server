#!/bin/bash

echo Compiling: release
$(PLUGIN_COMP_CC) -m32 -Wall -O1 -s -fvisibility=hidden -mtune=core2 -c *.c

echo Linking
$(PLUGIN_COMP_CC) -m32 -s -shared -o legacybanlist.so *.o
echo Cleaning up
rm *.o

