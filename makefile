CC=gcc
WIN_CLIBS=-I..\lib_tomcrypt\headers -I..\lib_tomcrypt\math\tommath
WIN_CFLAGS=-m32 -Wall -O0 -g -fno-omit-frame-pointer -D WINVER=0x501 -c
WIN_LFLAGS=-m32 -g -Wl,--nxcompat,--image-base,0x8040000,--stack,0x800000 -Tlinkerscript_win32.ld -mwindows
WIN_LLIBS=-Llib\ -ltomcrypt_win32 -lmbedtls_win32 -lm -lws2_32 -lwsock32 -liphlpapi -lgdi32 -mwindows -lwinmm -static-libgcc -static -lstdc++
NASM=nasm
COD4XBIN=cod4x18_dedrun

all:
	@echo Please select 'makefile.*' instead of this one.

updateable_exe: windows zlib nasm common $(COD4XBIN).exe pexports clean_win
	@echo Updateable Windows PE compiled successfully.

exe: windows zlib nasm common_updateable $(COD4XBIN).exe pexports clean_win
	@echo Developer Windows PE build compiled successfully.

windows:
	@echo Compiling Windows-specific files...
	@cd bin
	$(CC) $(WIN_CFLAGS) -march=nocona $(WIN_CLIBS) ..\src\win32\sys_win32.c
	$(CC) $(WIN_CFLAGS) -march=nocona $(WIN_CLIBS) ..\src\win32\win_syscon.c
	$(CC) $(WIN_CFLAGS) -march=nocona $(WIN_CLIBS) ..\src\win32\sys_cod4linker_win32.c
	$(CC) $(WIN_CFLAGS) -march=nocona $(WIN_CLIBS) ..\src\win32\pe32_parser.c
	@cd ..

common: 
	@echo Compiling common...
	@cd bin
	$(CC) $(WIN_CFLAGS) -march=nocona -D COD4X18UPDATE ..\src\*.c
	@cd ..

common_updateable:
	@echo Compiling common...
	@cd bin
	$(CC) $(WIN_CFLAGS) -march=nocona -D COD4X18UPDATE -D OFFICIAL ..\src\*.c
	@cd ..

zlib:
	@echo Compiling ZLib...
	@cd bin
	$(CC) $(WIN_CFLAGS) -mtune=nocona ..\src\zlib\*.c
	@cd ..

nasm:
	@echo Compiling NASM...
	$(NASM) -f coff src\qcommon_hooks.asm         --prefix _ -o bin\qcommon_hooks.o
	$(NASM) -f coff src\cmd_hooks.asm             --prefix _ -o bin\cmd_hooks.o
	$(NASM) -f coff src\filesystem_hooks.asm      --prefix _ -o bin\filesystem_hooks.o
	$(NASM) -f coff src\misc_hooks.asm            --prefix _ -o bin\misc_hooks.o
	$(NASM) -f coff src\g_sv_hooks.asm            --prefix _ -o bin\g_sv_hooks.o
	$(NASM) -f coff src\xassets_hooks.asm         --prefix _ -o bin\xassets_hooks.o
	$(NASM) -f coff src\trace_hooks.asm           --prefix _ -o bin\trace_hooks.o
	$(NASM) -f coff src\scr_vm_hooks.asm          --prefix _ -o bin\scr_vm_hooks.o	
	$(NASM) -f coff src\server_hooks.asm          --prefix _ -o bin\server_hooks.o
	$(NASM) -f coff src\msg_hooks.asm             --prefix _ -o bin\msg_hooks.o
	$(NASM) -f coff src\pluginexports.asm -dWin32 --prefix _ -o bin\pluginexports.o

$(COD4XBIN).exe:
	@echo Linking binary...
	$(CC) $(WIN_LFLAGS) -o bin\$@ bin\*.o src\win32\win_cod4.res $(WIN_LLIBS)

pexports:
	@echo Creating plugin export lib...
	@cd bin
	pexports $(COD4XBIN).exe > $(COD4XBIN).def
	dlltool -D $(COD4XBIN).exe -d $(COD4XBIN).def -l ..\plugins\libcom_plugin.a
	@cd ..

clean_win:
	@echo Cleaning up...
	@cd bin
	del *.o
	@cd ..

clean_unix:
	@rm src\*.o
