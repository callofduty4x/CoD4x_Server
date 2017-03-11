# 
CC=cc
CLIBS=-I..\lib_tomcrypt\headers -I..\lib_tomcrypt\math\tommath
CFLAGS=-m32 -Wall -O0 -g -fno-omit-frame-pointer -c
WIN_LFLAGS=-m32 -g -Wl,--nxcompat,--image-base,0x8040000,--stack,0x800000 -Tlinkerscript_win32.ld -mwindows
WIN_LLIBS=-Llib/ -ltomcrypt_win32 -lmbedtls_win32 -lm -lws2_32 -lwsock32 -liphlpapi -lgdi32 -mwindows -lwinmm -static-libgcc -static -lstdc++
LINUX_LFLAGS=-m32 -static-libgcc -rdynamic -Tlinkerscript.ld
LINUX_LLIBS=-L./lib -lmbedtls -lmbedcrypto -lmbedx509 -ltomcrypt_linux -ldl -lpthread -lm -lstdc++ -Wl,-rpath=./
NASM=nasm
COD4XBIN=cod4x18_dedrun

ifeq ($(APPVEYOR),True) 
RM = rm
else
RM = del
endif

all:
	@echo Please specify 'win32', 'win32_dev', 'linux32' or 'linux32_dev' recipy.

win32: windows zlib_win nasm_win common_updateable_win $(COD4XBIN).exe pexports clean_win
	@echo [Windows] Updateable PE built successfully.

win32_dev: windows zlib_win nasm_win common_win $(COD4XBIN).exe pexports clean_win
	@echo [Windows] Developer PE built successfully.

linux32: linux zlib_linux nasm_linux common_updateable_linux $(COD4XBIN).elf clean_linux do_paxctl
	@echo [Linux] Updateable ELF built successfully.

linux32_dev: linux zlib_linux nasm_linux common_linux $(COD4XBIN).elf clean_linux do_paxctl
	@echo [Linux] Developer ELF built successfully.

windows:
	@echo [Windows] Building specific files...
	@cd bin && \
	$(CC) $(CFLAGS) -D WINVER=0x501 -march=nocona $(CLIBS) ../src/win32/*.c

linux:
	@echo [Linux] Building specific files...
	@cd bin && \
	$(CC) $(CFLAGS) -D _GNU_SOURCE -mtune=nocona $(CLIBS) ../src/unix/sys_unix.c ../src/unix/sys_linux.c ../src/unix/elf32_parser.c ../src/unix/sys_cod4linker_linux.c ../src/unix/sys_con_tty.c

common_win: 
	@echo [Windows] Building common code...
	@cd bin && \
	$(CC) $(CFLAGS) -D COD4X18UPDATE -D WINVER=0x501 -march=nocona ../src/*.c ../src/xassets/*.c

common_linux: 
	@echo [Linux] Building common code...
	@cd bin && \
	$(CC) $(CFLAGS) -D COD4X18UPDATE -D _GNU_SOURCE -march=nocona ../src/*.c ../src/xassets/*.c

common_updateable_win:
	@echo [Windows] Building self-updateable common code...
	@cd bin && \
	$(CC) $(CFLAGS) -D COD4X18UPDATE -D OFFICIAL -D WINVER=0x501 -march=nocona ../src/*.c ../src/xassets/*.c

common_updateable_linux:
	@echo [Linux] Building self-updateable common code...
	@cd bin && \
	$(CC) $(CFLAGS) -D COD4X18UPDATE -D OFFICIAL -D _GNU_SOURCE -march=nocona ../src/*.c ../src/xassets/*.c

zlib_win:
	@echo [Windows] Building ZLib...
	@cd bin && \
	$(CC) $(CFLAGS) -D WINVER=0x501 -mtune=nocona ../src/zlib/*.c

zlib_linux:
	@echo [Linux] Building ZLib...
	@cd bin && \
	$(CC) $(CFLAGS) -D _GNU_SOURCE -mtune=nocona ../src/zlib/*.c

nasm_win:
	@echo [Windows] Building NASM code...
	@$(NASM) -f coff src/qcommon_hooks.asm         --prefix _ -o bin/qcommon_hooks.o
	@$(NASM) -f coff src/cmd_hooks.asm             --prefix _ -o bin/cmd_hooks.o
	@$(NASM) -f coff src/filesystem_hooks.asm      --prefix _ -o bin/filesystem_hooks.o
	@$(NASM) -f coff src/misc_hooks.asm            --prefix _ -o bin/misc_hooks.o
	@$(NASM) -f coff src/g_sv_hooks.asm            --prefix _ -o bin/g_sv_hooks.o
	@$(NASM) -f coff src/xassets_hooks.asm         --prefix _ -o bin/xassets_hooks.o
	@$(NASM) -f coff src/trace_hooks.asm           --prefix _ -o bin/trace_hooks.o
	@$(NASM) -f coff src/scr_vm_hooks.asm          --prefix _ -o bin/scr_vm_hooks.o	
	@$(NASM) -f coff src/server_hooks.asm          --prefix _ -o bin/server_hooks.o
	@$(NASM) -f coff src/msg_hooks.asm             --prefix _ -o bin/msg_hooks.o
	@$(NASM) -f coff src/pluginexports.asm -dWin32 --prefix _ -o bin/pluginexports.o

nasm_linux:
	@echo [Linux] Building NASM code...
	@$(NASM) -f elf src/qcommon_hooks.asm    -o bin/qcommon_hooks.o
	@$(NASM) -f elf src/cmd_hooks.asm        -o bin/cmd_hooks.o
	@$(NASM) -f elf src/filesystem_hooks.asm -o bin/filesystem_hooks.o
	@$(NASM) -f elf src/misc_hooks.asm       -o bin/misc_hooks.o
	@$(NASM) -f elf src/g_sv_hooks.asm       -o bin/g_sv_hooks.o
	@$(NASM) -f elf src/xassets_hooks.asm    -o bin/xassets_hooks.o
	@$(NASM) -f elf src/trace_hooks.asm      -o bin/trace_hooks.o
	@$(NASM) -f elf src/scr_vm_hooks.asm     -o bin/scr_vm_hooks.o	
	@$(NASM) -f elf src/server_hooks.asm     -o bin/server_hooks.o
	@$(NASM) -f elf src/msg_hooks.asm        -o bin/msg_hooks.o
	@$(NASM) -f elf src/pluginexports.asm    -o bin/pluginexports.o

$(COD4XBIN).exe:
	@echo [Windows] Linking binary...
	@$(CC) $(WIN_LFLAGS) -o bin/$@ bin/*.o src/win32/win_cod4.res $(WIN_LLIBS)

$(COD4XBIN).elf:
	@echo [Linux] Linking binary...
	@$(CC) $(LINUX_LFLAGS) -o bin/$(COD4XBIN) bin/*.o $(LINUX_LLIBS)


pexports:
	@echo [Windows] Building plugin exports library...
	@pexports bin/$(COD4XBIN).exe > bin/$(COD4XBIN).def
	@cd bin && \
	dlltool -D $(COD4XBIN).exe -d $(COD4XBIN).def -l ../plugins/libcom_plugin.a

clean_win:
	@echo [Windows] Cleaning up...
	@cd bin && \
	$(RM) *.o

clean_linux:
	@echo [Linux] Cleaning up...
	@rm bin/*.o

do_paxctl:
	@/sbin/paxctl -c ./bin/$(COD4XBIN)
	@/sbin/paxctl -em ./bin/$(COD4XBIN)
