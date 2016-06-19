@set path=%LOCALAPPDATA%\nasm;C:\MinGW\bin;%path%
@echo off

echo Compiling C-code...
cd bin
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -I..\lib_tomcrypt\headers -I..\lib_tomcrypt\math\tommath -c ..\src\win32\sys_win32.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -I..\lib_tomcrypt\headers -I..\lib_tomcrypt\math\tommath -c ..\src\win32\win_syscon.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -I..\lib_tomcrypt\headers -I..\lib_tomcrypt\math\tommath -c ..\src\win32\sys_cod4linker_win32.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -I..\lib_tomcrypt\headers -I..\lib_tomcrypt\math\tommath -c ..\src\win32\pe32_parser.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D OFFICIAL -D COD4X18UPDATE -D WINVER=0x501 -I..\lib_tomcrypt\headers -I..\lib_tomcrypt\math\tommath -c ..\src\*.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -mtune=nocona -D WINVER=0x501 -c ..\src\zlib\*.c
cd ..\

echo Compiling NASM...
nasm -f coff src\qcommon_hooks.asm         --prefix _ -o bin\qcommon_hooks.o
nasm -f coff src\cmd_hooks.asm             --prefix _ -o bin\cmd_hooks.o
nasm -f coff src\filesystem_hooks.asm      --prefix _ -o bin\filesystem_hooks.o
nasm -f coff src\xassets_hooks.asm         --prefix _ -o bin\xassets_hooks.o
nasm -f coff src\trace_hooks.asm           --prefix _ -o bin\trace_hooks.o
nasm -f coff src\misc_hooks.asm            --prefix _ -o bin\misc_hooks.o
nasm -f coff src\scr_vm_hooks.asm          --prefix _ -o bin\scr_vm_hooks.o
nasm -f coff src\g_sv_hooks.asm            --prefix _ -o bin\g_sv_hooks.o
nasm -f coff src\server_hooks.asm          --prefix _ -o bin\server_hooks.o
nasm -f coff src\msg_hooks.asm             --prefix _ -o bin\msg_hooks.o
nasm -f coff src\pluginexports.asm -dWin32 --prefix _ -o bin\pluginexports.o

echo Linking...
gcc -m32 -g -Wl,--nxcompat,--image-base,0x8040000,--stack,0x800000  -Tlinkerscript_win32.ld -o bin\cod4x18_dedrun bin\*.o src\win32\win_cod4.res -Llib\ -ltomcrypt_win32 -ltommath_win32 -lmbedtls_win32 -lm -lws2_32 -lwsock32 -lgdi32 -mwindows -lwinmm -static-libgcc -static -lstdc++

echo Cleaning up...
cd bin
del *.o

echo Creating plugin export lib...

pexports cod4x18_dedrun.exe > cod4x18_dedrun.def
rename cod4x18_dedrun.exe _____________________________________________cod4x18_dedrun.exe
dlltool -D _____________________________________________cod4x18_dedrun.exe -d cod4x18_dedrun.def -l ..\plugins\libcom_plugin.a
rename _____________________________________________cod4x18_dedrun.exe cod4x18_dedrun.exe

echo Done!
pause
REM .\version_make_progress.sh
