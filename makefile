CC=gcc
CLIBS=-I..\lib_tomcrypt\headers -I..\lib_tomcrypt\math\tommath
CFLAGS=-m32 -Wall -O0 -g -fno-omit-frame-pointer -c
WIN_LFLAGS=-m32 -g -Wl,--nxcompat,--image-base,0x8040000,--stack,0x800000 -Tlinkerscript_win32.ld -mwindows
WIN_LLIBS=-Llib\ -ltomcrypt_win32 -lmbedtls_win32 -lm -lws2_32 -lwsock32 -liphlpapi -lgdi32 -mwindows -lwinmm -static-libgcc -static -lstdc++
LINUX_LLIBS=-L./lib -ltomcrypt_linux -ltommath_linux -lsvsapi_elf -ldl -lpthread -lm -lstdc++ -lsteam_api -Wl,-rpath=./
NASM=nasm
COD4XBIN=cod4x18_dedrun

all:
	@echo Please select 'makefile.*' instead of this one.

updateable_exe: windows zlib_win nasm common_updateable_win $(COD4XBIN).exe pexports clean_win
	@echo Updateable Windows PE compiled successfully.

exe: windows zlib_win nasm common_win $(COD4XBIN).exe pexports clean_win
	@echo Developer Windows PE build compiled successfully.

updateable_elf: linux zlib_linux nasm common_updateable_linux $(COD4XBIN).elf clean_linux
	@echo Updateable Linux ELF compiled successfully.

elf: linux zlib_linux nasm common_linux $(COD4XBIN).elf clean_linux
	@echo Developer Linux ELF build compiled successfully.

windows:
	@echo Compiling Windows-specific files...
	@cd bin
	$(CC) $(CFLAGS) -D WINVER=0x501 -march=nocona $(CLIBS) ..\src\win32\*.c
	@cd ..

linux:
	@echo Compiling Linux-specific files...
	@cd bin
	$(CC) $(CFLAGS) -D _GNU_SOURCE -mtune=nocona $(CLIBS) ../src/unix/*.c
	@cd ..

common_win: 
	@echo Compiling common...
	@cd bin
	$(CC) $(CFLAGS) -D COD4X18UPDATE -D WINVER=0x501 -march=nocona ..\src\*.c
	@cd ..

common_linux: 
	@echo Compiling common...
	@cd bin
	$(CC) $(CFLAGS) -D COD4X18UPDATE -D _GNU_SOURCE -march=nocona ../src/*.c
	@cd ..

common_updateable_win:
	@echo Compiling common...
	@cd bin
	$(CC) $(CFLAGS) -D COD4X18UPDATE -D OFFICIAL -D WINVER=0x501 -march=nocona ..\src\*.c
	@cd ..

common_updateable_linux:
	@echo Compiling common...
	@cd bin
	$(CC) $(CFLAGS) -D COD4X18UPDATE -D OFFICIAL -D _GNU_SOURCE -march=nocona ../src/*.c
	@cd ..

zlib_win:
	@echo Compiling ZLib...
	@cd bin
	$(CC) $(CFLAGS) -D WINVER=0x501 -mtune=nocona ..\src\zlib\*.c
	@cd ..

zlib_linux:
	@echo Compiling ZLib...
	@cd bin
	$(CC) $(CFLAGS) -D _GNU_SOURCE -mtune=nocona ../src/zlib/*.c
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

$(COD4XBIN).elf:
	@echo Linking binary...
	$(CC) -m32 -rdynamic -Tlinkerscript.ld -o bin/$(COD4XBIN) bin/*.o $(LINUX_LLIBS)

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

clean_linux:
	@rm src\*.o
