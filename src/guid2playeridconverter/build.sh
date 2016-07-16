gcc -g -m32 -std=c99 -c -O0 -Wall "main.c"
gcc -m32 -o guid2playerid *.o -static-libgcc -static -lstdc++ -L../../lib -ltomcrypt_linux

