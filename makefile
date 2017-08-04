############################################
# A test makefile for incremental building.#
############################################
####################################################
# By default, building OFFICIAL, non-DEBUG version.#
# If you want to get a debug version, use          #
# `make DEBUG=true`                                #
####################################################
########################################################################
# TODO: linux.                                                         #
# Check if something wrong. I got 2.3 mb file like in good old days ;D #
########################################################################


##############################
# A name of server executable.
TARGETNAME=cod4x18_dedrun

############################################
# Configure type of build.
ifeq ($(DEBUG), true)
BUILD_TYPE=
else
BUILD_TYPE=OFFICIAL
endif

###################
# Compiler options.
CC=gcc
WIN_DEFINES=WINVER=0x501
LINUX_DEFINES=_GNU_SOURCE
CFLAGS=-m32 -Wall -O0 -g -fno-omit-frame-pointer
WIN_LFLAGS=-m32 -g -Wl,--nxcompat,--image-base,0x8040000,--stack,0x800000 -Tlinkerscript_win32.ld -mwindows -static-libgcc -static -lm
WIN_LLIBS=tomcrypt mbedtls mbedcrypto mbedx509 ws2_32 wsock32 iphlpapi gdi32 winmm stdc++
LINUX_LFLAGS=-m32 -static-libgcc -rdynamic -Tlinkerscript.ld -Wl,-rpath=./
LINUX_LLIBS=tomcrypt mbedtls mbedcrypto mbedx509 dl pthread m stdc++
COD4X_DEFINES=COD4X18UPDATE $(BUILD_TYPE)

########################
# Setup directory names.
SRC_DIR=src
BIN_DIR=bin
LIB_DIR=lib
OBJ_DIR=obj
PLUGINS_DIR=plugins
ZLIB_DIR=$(SRC_DIR)/zlib
WIN_DIR=$(SRC_DIR)/win32
LINUX_DIR=$(SRC_DIR)/unix
ASSETS_DIR=$(SRC_DIR)/xassets
#botlib
EXTERNAL=mbedtls tomcrypt

##############################
# Setup external applications.
NASM=nasm


###########################################################
# Setup OS-specific variables (All the garbage goes there).
ifeq ($(OS),Windows_NT)
####################
# Windows variables.
BIN_EXT=.exe
NASMFLAGS=-f coff -dWin32 --prefix _
OS_SOURCES=$(wildcard $(WIN_DIR)/*.c)
OS_OBJ=$(patsubst $(WIN_DIR)/%.c,$(OBJ_DIR)/%.o,$(OS_SOURCES))
C_DEFINES=$(addprefix -D ,$(COD4X_DEFINES) $(WIN_DEFINES))
LFLAGS=$(WIN_LFLAGS)
LLIBS=-L$(LIB_DIR)/ $(addprefix -l,$(WIN_LLIBS))
RESOURCE_FILE=src/win32/win_cod4.res
DEF_FILE=$(BIN_DIR)/$(TARGETNAME).def
INTERFACE_LIB=$(PLUGINS_DIR)/libcom_plugin.a
ADDITIONAL_OBJ=$(INTERFACE_LIB)
CLEAN=del $(subst /,\\,$(OBJ_DIR)/*.o $(DEF_FILE) $(INTERFACE_LIB))
SECURITY=
else
#################
# LINUX variables.
BIN_EXT=
NASMFLAGS=-f elf
OS_SOURCES=$(wildcard $(LINUX_DIR)/*.c)
OS_OBJ=$(patsubst $(LINUX_DIR)/%.c,$(OBJ_DIR)/%.o,$(OS_SOURCES))
C_DEFINES=$(addprefix -D ,$(COD4X_DEFINES) $(LINUX_DEFINES))
LFLAGS=$(LINUX_LFLAGS)
LLIBS=-L./$(LIB_DIR) $(addprefix -l,$(LINUX_LLIBS))
RESOURCE_FILE=
ADDITIONAL_OBJ=
CLEAN=rm $(OBJ_DIR)/*.o $(DEF_FILE) $(INTERFACE_LIB)
SECURITY=do_paxctl
endif


#####################
# Source files lists.
TARGET=$(addprefix $(BIN_DIR)/,$(TARGETNAME)$(BIN_EXT))
ASM_SOURCES=$(wildcard $(SRC_DIR)/*.asm)
C_SOURCES=$(wildcard $(SRC_DIR)/*.c)
ZLIB_SOURCES=$(wildcard $(ZLIB_DIR)/*.c)
ASSETS_SOURCES=$(wildcard $(ASSETS_DIR)/*.c)

#################################################################
# Object files lists. (prefixes for rules may be required later).
ASM_OBJ=$(patsubst $(SRC_DIR)/%.asm,$(OBJ_DIR)/%.o,$(ASM_SOURCES))
C_OBJ=$(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(C_SOURCES))
ZLIB_OBJ=$(patsubst $(ZLIB_DIR)/%.c,$(OBJ_DIR)/%.o,$(ZLIB_SOURCES))
ASSETS_OBJ=$(patsubst $(ASSETS_DIR)/%.c,$(OBJ_DIR)/%.o,$(ASSETS_SOURCES))

#############################################################
#############################################################
#############################################################
#############################################################
#############################################################

###############################
# Default rule: rebuild server.
all: notify $(EXTERNAL) $(TARGET) $(ADDITIONAL_OBJ) $(SECURITY)
	@echo Server done

notify:
	@echo Server start

#################################
# A rule to make mbedtls library.
mbedtls:
	@echo   $(MAKE)  $@
	@$(MAKE) -C $(SRC_DIR)/$@

##################################
# A rule to make tomcrypt library.
tomcrypt:
	@echo   $(MAKE)  $@
	@$(MAKE) -C $(SRC_DIR)/$@

##################################
# A rule to make bot library.
botlib:
	@echo   sh  $@
ifeq ($(OS),Windows_NT)
	@cmd.exe /C "@cd $(SRC_DIR)/$@ && @comp.cmd"
else
	cd $(SRC_DIR)/$@ && ./comp.sh
endif

###############################
# A rule to link server binary.
$(TARGET): $(OS_OBJ) $(C_OBJ) $(ZLIB_OBJ) $(ASSETS_OBJ) $(ASM_OBJ) obj/version.o
	@echo   $(CC)  $@
# CFLAGS for compiler, LFLAGS for linker.
	@$(CC) $(LFLAGS) -o $@ $^ $(RESOURCE_FILE) $(LLIBS)

################################
# A rule to make version module.
obj/version.o: src/version/version.c FORCE
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) -o $@ $<

############################################
# An empty rule to force rebuild other rule.
FORCE:

#####################################
# A rule to build common server code.
# -march=nocona
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) $(C_DEFINES) -o $@ $<

################################
# A rule to build assemler code.
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.asm
	@echo   $(NASM)  $@
	@$(NASM) $(NASMFLAGS) $< -o $@

###################################
# A rule to build zlib source code.
$(OBJ_DIR)/%.o: $(ZLIB_DIR)/%.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) $(C_DEFINES) -o $@ $<

######################################
# A rule to build xassets source code.
$(OBJ_DIR)/%.o: $(ASSETS_DIR)/%.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) $(C_DEFINES) -o $@ $<

########################################
# A rule to build Windows specific code.
$(OBJ_DIR)/%.o: $(WIN_DIR)/%.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) $(C_DEFINES) -o $@ $<

########################################
# A rule to build Linux specific code.
$(OBJ_DIR)/%.o: $(LINUX_DIR)/%.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) $(C_DEFINES) -o $@ $<

########################################################
# A rule for Windows to create server interface library.
$(INTERFACE_LIB): $(DEF_FILE) $(TARGET)
	@echo   dlltool  $@
	@dlltool -D $(TARGET) -d $(DEF_FILE) -l $@

####################################################################
# A rule for Windows to create server module definition file (.def).
$(DEF_FILE): $(TARGET)
	@echo   pexports  $@
	@pexports $^ > $@

####################################################
# A rule for Linux to remove some memory protection.
do_paxctl: $(TARGET)
	@paxctl -c $<
	@paxctl -em $<

############################
# Delete built object files.
clean:
	@echo   clean Server
	@$(CLEAN)
	@echo   clean Mbedtls
	@$(MAKE) -C $(SRC_DIR)/mbedtls clean
	@echo   clean Tomcrypt
	@$(MAKE) -C $(SRC_DIR)/tomcrypt clean

