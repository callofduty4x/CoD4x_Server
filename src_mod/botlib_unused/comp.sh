#!/bin/bash

gcc -m32 -D BOTLIB -c *.c
# gcc -c ../q_math.c
# gcc -c ../qshared.c
# gcc -c ../qvsnprintf.c
echo Linking
ar rcs ../../lib/libbot.a *.o
echo Cleaning up
rm -r *.o

