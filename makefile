####################################################
# By default, building OFFICIAL, non-DEBUG version.#
# If you want to get a debug version, use          #
# `make DEBUG=1`                                   #
####################################################
rwildcard=$(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2) $(filter $(subst *,%,$2),$d))


##############################
# A name of server executable.
TARGETNAME=cod4x18_dedrun

############################################
# Configure type of build.
DEBUG ?= 0
MODULE_PREFIX := libcod4x_

ifeq ($(DEBUG), 0)
#COD4X_DEFINES += OFFICIAL
endif

###################
# Compiler options.
CC=gcc
WIN_LFLAGS=-m32 -g -Wl,--nxcompat,--image-base,0x8040000,--stack,0x800000 -Tlinkerscript_win32.ld -mwindows -static-libgcc -static -lm
WIN_LLIBS=ws2_32 wsock32 iphlpapi gdi32 winmm stdc++
LINUX_LFLAGS=-m32 -static-libgcc -rdynamic -Tlinkerscript.ld -Wl,-rpath=./
LINUX_LLIBS=dl pthread m stdc++

########################
# Setup directory names.
SRC_DIR=src
SRCMOD_DIR := src_mod
BIN_DIR=bin
LIB_DIR=lib
OBJ_DIR=obj
PLUGINS_DIR=plugins
MODULES := core mbedtls tomcrypt versioning xassets zlib phandler

##############################
# Setup external applications.
NASM=nasm


###########################################################
# Setup OS-specific variables (All the garbage goes there).
ifeq ($(OS),Windows_NT)
####################
# Windows variables.
BIN_EXT=.exe
LDFLAGS=$(WIN_LFLAGS) src_mod/win32/win_cod4.res
LLIBS=$(addprefix -l,$(WIN_LLIBS))
RESOURCE_FILE=
ADDITIONAL_OBJ=
#$(DEF_FILE)
CLEAN=del $(subst /,\\,$(OBJ_DIR)/*.o)
SECURITY=
MODULES += win32
else
#################
# LINUX variables.
BIN_EXT=
LDFLAGS=$(LINUX_LFLAGS)
LLIBS=$(addprefix -l,$(LINUX_LLIBS))
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

###############################################################################
# Modules prerequesites.
MODULES_TARGETPATH = $(addprefix module_,$(MODULES))

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

FORCE:

#################################
# A rule to make modules.
module_%: $(SRCMOD_DIR)/%
	@echo  === $< ===
	@$(MAKE) -s -C $< DEBUG=$(DEBUG)

###############################
# A rule to link server binary.
$(TARGET): $(MODULES_TARGETPATH)
	@echo === Linking binary ===
	@echo   $(CC)  $@
	@$(CC) $(LDFLAGS) -o $@ $(RESOURCE_FILE) $(call rwildcard, ,$(patsubst module_%,$(SRCMOD_DIR)/%/obj/*.o,$^)) $(LLIBS)

####################################################
# A rule for Linux to remove some memory protection.
do_paxctl: $(TARGET)
	@paxctl -c $<
	@paxctl -em $<

############################
# Delete built object files.
clean_%: $(SRCMOD_DIR)/%
	@echo  === $@ ===
	@$(MAKE) -s -C $< clean

clean: $(addprefix clean_,$(MODULES))

#TODO
clean_all: 