#!/bin/bash
NAME='clanP'

#Compiling: release
echo `gcc -m32 -Wall -O1 -s -fvisibility=hidden -mtune=core2 -c *.c`

#Linking
echo `gcc -m32 -s -shared -fvisibility=hidden -o $NAME''.so *.o`

#Cleaning up
echo `rm *.o`
