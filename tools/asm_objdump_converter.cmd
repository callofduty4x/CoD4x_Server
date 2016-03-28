@echo off
del *.o
gcc -m32 -Wall -g -c asm_objdump_converter.c
gcc -m32 -Wl -o asm_objdump_converter *.o
pause