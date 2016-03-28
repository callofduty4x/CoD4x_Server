
echo Compiling C-code...

cd bin

gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -mtune=nocona -I../lib_tomcrypt/headers -I../lib_tomcrypt/math/tommath -D _GNU_SOURCE -c ../src/unix/sys_unix.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -mtune=nocona -I../lib_tomcrypt/headers -I../lib_tomcrypt/math/tommath -D _GNU_SOURCE -c ../src/unix/sys_linux.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -mtune=nocona -I../lib_tomcrypt/headers -I../lib_tomcrypt/math/tommath -D _GNU_SOURCE -c ../src/unix/elf32_parser.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -mtune=nocona -I../lib_tomcrypt/headers -I../lib_tomcrypt/math/tommath -D _GNU_SOURCE -c ../src/unix/sys_cod4linker_linux.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -mtune=nocona -I../lib_tomcrypt/headers -I../lib_tomcrypt/math/tommath -D _GNU_SOURCE -c ../src/unix/sys_con_tty.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -mtune=nocona -I../lib_tomcrypt/headers -I../lib_tomcrypt/math/tommath -D _GNU_SOURCE -c ../src/*.c 
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -mtune=nocona -D _GNU_SOURCE -c ../src/zlib/*.c

cd ../

echo Compiling NASM...

nasm -f elf src/qcommon_hooks.asm    -o bin/qcommon_hooks.o
nasm -f elf src/cmd_hooks.asm        -o bin/cmd_hooks.o
nasm -f elf src/filesystem_hooks.asm -o bin/filesystem_hooks.o
nasm -f elf src/xassets_hooks.asm    -o bin/xassets_hooks.o
nasm -f elf src/trace_hooks.asm      -o bin/trace_hooks.o
nasm -f elf src/misc_hooks.asm       -o bin/misc_hooks.o
nasm -f elf src/scr_vm_hooks.asm     -o bin/scr_vm_hooks.o
nasm -f elf src/g_sv_hooks.asm       -o bin/g_sv_hooks.o
nasm -f elf src/server_hooks.asm     -o bin/server_hooks.o
nasm -f elf src/msg_hooks.asm        -o bin/msg_hooks.o
nasm -f elf src/pluginexports.asm    -o bin/pluginexports.o

echo Linking...
gcc -m32 -rdynamic -Tlinkerscript.ld -o bin/cod4x18_dedrun bin/*.o -L./lib -ltomcrypt_linux -ltommath_linux -lsvsapi_elf -ldl -lpthread -lm -lstdc++ -lsteam_api -Wl,-rpath=./
rm bin/*.o

cp lib/libsteam_api.so bin
cp lib/steamclient.so bin

./version_make_progress.sh
