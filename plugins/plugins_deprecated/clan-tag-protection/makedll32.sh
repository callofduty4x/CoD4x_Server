#!/bin/bash
NAME='clanP'

#Compiling: release
echo `$(PLUGIN_COMP_CC) -m32 -Wall -O1 -s -fvisibility=hidden -mtune=core2 -c *.c`

#Linking
echo `$(PLUGIN_COMP_CC) -m32 -s -shared -fvisibility=hidden -o $NAME''.so *.o`

#Cleaning up
echo `rm *.o`
