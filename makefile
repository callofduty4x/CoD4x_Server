####################################################
# By default, building OFFICIAL, non-DEBUG version.#
# If you want to get a debug version, use          #
# `make DEBUG=1`                                   #
####################################################


##############################
# A name of server executable.
TARGETNAME=cod4x18_dedrun

############################################
# Configure type of build.
DEBUG ?= 0
MODULE_PREFIX := libcod4x_

ifeq ($(DEBUG), 0)
COD4X_DEFINES += OFFICIAL
endif

###################
# Compiler options.
CC=gcc
WIN_DEFINES=WINVER=0x501
LINUX_DEFINES=_GNU_SOURCE
CFLAGS = -m32 -Wall -O0 -g -march=nocona -fno-omit-frame-pointer -I$(SRCMOD_DIR)
WIN_LFLAGS=-m32 -g -Wl,--nxcompat,--image-base,0x8040000,--stack,0x800000 -Tlinkerscript_win32.ld -mwindows -static-libgcc -static -lm
WIN_LLIBS=ws2_32 wsock32 iphlpapi gdi32 winmm stdc++
LINUX_LFLAGS=-m32 -static-libgcc -rdynamic -Tlinkerscript.ld -Wl,-rpath=./
LINUX_LLIBS=dl pthread m stdc++
COD4X_DEFINES += COD4X18UPDATE

########################
# Setup directory names.
SRC_DIR=src
SRCMOD_DIR := src_mod
BIN_DIR=bin
LIB_DIR=lib
OBJ_DIR=obj
PLUGINS_DIR=plugins
MODULES := mbedtls tomcrypt versioning xassets zlib phandler

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
C_DEFINES=$(addprefix -D ,$(COD4X_DEFINES) $(WIN_DEFINES))
LDFLAGS=$(WIN_LFLAGS) src_mod/win32/win_cod4.res
LLIBS=-L$(LIB_DIR)/ $(addprefix -l,$(WIN_LLIBS))
ADDITIONAL_OBJ=
#$(DEF_FILE)
CLEAN=del $(subst /,\\,$(OBJ_DIR)/*.o)
SECURITY=
MODULES += win32
else
#################
# LINUX variables.
BIN_EXT=
NASMFLAGS=-f elf
C_DEFINES=$(addprefix -D ,$(COD4X_DEFINES) $(LINUX_DEFINES))
LDFLAGS=$(LINUX_LFLAGS)
LLIBS=-L./$(LIB_DIR) $(addprefix -l,$(LINUX_LLIBS))
RESOURCE_FILE=
ADDITIONAL_OBJ=
CLEAN=rm $(OBJ_DIR)/*.o 
SECURITY=do_paxctl
MODULES += linux32
endif


#####################
# Source files lists.
TARGET=$(addprefix $(BIN_DIR)/,$(TARGETNAME)$(BIN_EXT))
ASM_SOURCES=$(wildcard $(SRC_DIR)/*.asm)
C_SOURCES=$(wildcard $(SRC_DIR)/*.c)

#################################################################
# Object files lists. (prefixes for rules may be required later).
ASM_OBJ=$(patsubst $(SRC_DIR)/%.asm,$(OBJ_DIR)/%.o,$(ASM_SOURCES))
C_OBJ=$(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(C_SOURCES))

###############################################################################
# Modules prerequesites.
MODULES_TARGETPATH = $(patsubst %,$(LIB_DIR)/$(MODULE_PREFIX)%.a,$(MODULES))

#############################################################
#############################################################
#############################################################
#############################################################
#############################################################

###############################
# Default rule: rebuild server.
all: notify $(TARGET) $(ADDITIONAL_OBJ) $(SECURITY)

notify:
	@echo === Building CoD4X Server ===

#################################
# A rule to make modules.
$(LIB_DIR)/$(MODULE_PREFIX)%.a: $(SRCMOD_DIR)/%
	@echo  === $< ===
	@$(MAKE) -s -C $< TARGETPATH="$@" DEBUG=$(DEBUG)

###############################
# A rule to link server binary.
$(TARGET): $(C_OBJ) $(ASM_OBJ) $(MODULES_TARGETPATH)
	@echo === Linking binary ===
	@echo   $(CC)  $@
	@$(CC) $(LDFLAGS) -o $@ $^ $(RESOURCE_FILE) $(LLIBS)

#####################################
# A rule to build common server code.
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@echo   $(CC)  $@
	@$(CC) -march=nocona -Isrc/ -c $(CFLAGS) $(C_DEFINES) -o $@ $< 

################################
# A rule to build assemler code.
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.asm
	@echo   $(NASM)  $@
	@$(NASM) $(NASMFLAGS) $< -o $@

####################################################
# A rule for Linux to remove some memory protection.
do_paxctl: $(TARGET)
	@paxctl -c $<
	@paxctl -em $<

############################
# Delete built object files.
clean_%: $(SRCMOD_DIR)/%
	@echo $@
	@$(MAKE) -s -C $< clean TARGETPATH="$(patsubst %,$(LIB_DIR)/$(MODULE_PREFIX)%.a,$(notdir $<))"

clean: $(addprefix clean_,$(MODULES))
	@echo   clean Server
	@$(CLEAN)


#TODO
clean_all: 