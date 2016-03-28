
echo Compiling C-code...
cd bin
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -I../lib_tomcrypt/headers -I../lib_tomcrypt/math/tommath -c ../src/unix/sys_unix.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -I../lib_tomcrypt/headers -I../lib_tomcrypt/math/tommath -c ../src/unix/sys_mach.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -I../lib_tomcrypt/headers -I../lib_tomcrypt/math/tommath -c ../src/unix/sys_cod4linker_mach.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -I../lib_tomcrypt/headers -I../lib_tomcrypt/math/tommath -c ../src/unix/sys_con_tty.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -I../lib_tomcrypt/headers -I../lib_tomcrypt/math/tommath -c ../src/*.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -c ../src/zlib/*.c
cd ../

echo Compiling NASM...
nasm -f macho src/qcommon_hooks.asm    --prefix _ -o bin/qcommon_hooks.o
nasm -f macho src/cmd_hooks.asm        --prefix _ -o bin/cmd_hooks.o
nasm -f macho src/filesystem_hooks.asm --prefix _ -o bin/filesystem_hooks.o
nasm -f macho src/xassets_hooks.asm    --prefix _ -o bin/xassets_hooks.o
nasm -f macho src/trace_hooks.asm      --prefix _ -o bin/trace_hooks.o
nasm -f macho src/misc_hooks.asm       --prefix _ -o bin/misc_hooks.o
nasm -f macho src/scr_vm_hooks.asm     --prefix _ -o bin/scr_vm_hooks.o
nasm -f macho src/g_sv_hooks.asm       --prefix _ -o bin/g_sv_hooks.o
nasm -f macho src/server_hooks.asm     --prefix _ -o bin/server_hooks.o
nasm -f macho src/msg_hooks.asm        --prefix _ -o bin/msg_hooks.o
nasm -f macho src/pluginexports.asm    --prefix _ -o bin/pluginexports.o


echo Linking...
gcc -m32 -stdlib=libc++ -rdynamic -o bin/cod4x18_dedrun bin/*.o -Llib/ -ltomcrypt_mach -ltommath_mach -Wl -ldl -lpthread -lm -lstdc++

#rm bin/*.o

./version_make_progress.sh
