@set path=C:\MinGW\bin;%path%
@echo off

echo Compiling C-code...

REM gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c *.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c bspc.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c l_log.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c l_cmd.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c l_utils.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c l_qfiles.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c l_mem.c

gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c aas_cfg.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/l_precomp.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/l_libvar.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/l_struct.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/l_script.c

gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c be_aas_bspc.c

gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c ../zlib/unzip.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c ../zlib/crc32.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c ../q_math.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c ../cm_trace.c
::gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c ../cm_load.c
::gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -c ../cm_test.c

echo Linking...
gcc -m32 -g -Wl,--nxcompat -o bspc.exe *.o -static-libgcc -static -lstdc++ -lws2_32

echo Cleaning up...
del *.o

pause

