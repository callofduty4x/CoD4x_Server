#!/bin/bash

echo Compiling: release
$(PLUGIN_COMP_CC) -m32 -Wall -O0 -g -mtune=core2 -c *.c

echo Linking
$(PLUGIN_COMP_CC) -m32 -g -shared -o sourcebansplugin.so *.o
echo Cleaning up
rm *.o

