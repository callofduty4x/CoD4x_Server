############################################
# A test makefile for incremental building.#
############################################
############################################################################
# By default, building non-OFFICIAL, non-DEBUG version.                    #
# If you want to get a debug version, use                                  #
# `make DEBUG=true`                                                        #
# If you want to get a official version, which does always autoupdate, use #
# `make release`                                                     #
############################################################################

##############################
# A name of server executable.


TARGETNAME=cod4x18_dedrun

###################################################################
# Build system specific information.
# In git not exist there will be some errors, but nothing critical.
BUILD_NUMBER=$(shell git rev-list --count HEAD)
BUILD_BRANCH=$(shell git rev-parse --abbrev-ref HEAD)
BUILD_REVISION=$(shell git rev-parse HEAD)

ifneq ($(OS),Windows_NT)
VERSION=$(shell grep '\#define SYS_COMMONVERSION' src/version/version.c | cut -d' ' -f3)
$(info You build CoD4 version: $(VERSION))
endif

ifeq ($(BUILD_NUMBER), )
BUILD_NUMBER:=0
endif

ifeq ($(BUILD_BRANCH), )
BUILD_BRANCH:=no-branch
endif

ifeq ($(BUILD_REVISION), )
BUILD_REVISION:=no-revision
endif

###################
# Compiler options.
CC=gcc
CPP=g++
WIN_DEFINES=WINVER=0x501
LINUX_DEFINES=_GNU_SOURCE
CFLAGS=-m32 -msse2 -mfpmath=sse -Wall -fno-omit-frame-pointer -fmax-errors=15 -fcommon

ifeq ($(DEBUG), true)
DCFLAGS=-fno-pie -O0 -g
else
DCFLAGS=-fno-pie -O1 -DNDEBUG
endif

WIN_LFLAGS=-m32 -g -Wl,--nxcompat,--stack,0x800000 -mwindows -static-libgcc -static -lm
WIN_LLIBS=tomcrypt mbedtls mbedcrypto mbedx509 ws2_32 wsock32 iphlpapi gdi32 winmm crypt32 stdc++
LINUX_LFLAGS=-m32 -g -static-libgcc -rdynamic -Wl,-rpath=./ -fcommon
LINUX_LLIBS=tomcrypt mbedtls mbedcrypto mbedx509 dl pthread m stdc++
BSD_LLIBS=tomcrypt mbedtls mbedcrypto mbedx509 pthread m execinfo stdc++
COD4X_DEFINES=COD4X18UPDATE BUILD_NUMBER=$(BUILD_NUMBER) BUILD_BRANCH=$(BUILD_BRANCH) BUILD_REVISION=$(BUILD_REVISION)

########################
# Setup directory names.
SRC_DIR=src
PLUGIN_DIR=plugins
BIN_DIR=bin
LIB_DIR=lib
OBJ_DIR=obj
PLUGINS_DIR=plugins
ZLIB_DIR=$(SRC_DIR)/zlib
WIN_DIR=$(SRC_DIR)/win32
LINUX_DIR=$(SRC_DIR)/unix
ASSETS_DIR=$(SRC_DIR)/xassets
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
NASMFLAGS=-f win -dWin32 --prefix _
OS_SOURCES=$(wildcard $(WIN_DIR)/*.c)
OS_OBJ=$(patsubst $(WIN_DIR)/%.c,$(OBJ_DIR)/%.o,$(OS_SOURCES))
C_DEFINES=$(addprefix -D,$(COD4X_DEFINES) $(WIN_DEFINES))
LFLAGS=$(WIN_LFLAGS)
LLIBS=-L$(LIB_DIR)/ $(addprefix -l,$(WIN_LLIBS))
RESOURCE_FILE=src/win32/win_cod4.res
DEF_FILE=$(BIN_DIR)/$(TARGETNAME).def
INTERFACE_LIB=$(PLUGINS_DIR)/libcom_plugin.a
ADDITIONAL_OBJ=$(INTERFACE_LIB)
CLEAN=-del $(subst /,\\,$(OBJ_DIR)/*.o $(DEF_FILE) $(INTERFACE_LIB))
else
#################
# LINUX variables.
BIN_EXT=
NASMFLAGS=-f elf
OS_SOURCES=$(wildcard $(LINUX_DIR)/*.c)
OS_OBJ=$(patsubst $(LINUX_DIR)/%.c,$(OBJ_DIR)/%.o,$(OS_SOURCES))
C_DEFINES=$(addprefix -D,$(COD4X_DEFINES) $(LINUX_DEFINES))
LFLAGS=$(LINUX_LFLAGS)

UNAME := $(shell uname)
ifeq ($(UNAME),FreeBSD)
LLIBS=-L./$(LIB_DIR) $(addprefix -l,$(BSD_LLIBS))
else
LLIBS=-L./$(LIB_DIR) $(addprefix -l,$(LINUX_LLIBS))
endif

RESOURCE_FILE=
ADDITIONAL_OBJ=
CLEAN=-rm $(OBJ_DIR)/*.o $(DEF_FILE) $(INTERFACE_LIB)

endif

#####################
# Source files lists.
TARGET=$(addprefix $(BIN_DIR)/,$(TARGETNAME)$(BIN_EXT))
ASM_SOURCES=$(wildcard $(SRC_DIR)/asmsource/*.asm)
C_SOURCES=$(wildcard $(SRC_DIR)/*.c)
CPP_SOURCES=$(wildcard $(SRC_DIR)/*.cpp)
ZLIB_SOURCES=$(wildcard $(ZLIB_DIR)/*.c)
ASSETS_SOURCES=$(wildcard $(ASSETS_DIR)/*.c)

#################################################################
# Object files lists. (prefixes for rules may be required later).
ASM_OBJ=$(patsubst $(SRC_DIR)/asmsource/%.asm,$(OBJ_DIR)/%.o,$(ASM_SOURCES))
C_OBJ=$(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(C_SOURCES))
CPP_OBJ=$(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(CPP_SOURCES))
ZLIB_OBJ=$(patsubst $(ZLIB_DIR)/%.c,$(OBJ_DIR)/%.o,$(ZLIB_SOURCES))
ASSETS_OBJ=$(patsubst $(ASSETS_DIR)/%.c,$(OBJ_DIR)/%.o,$(ASSETS_SOURCES))

#############################################################
#############################################################
#############################################################
#############################################################
#############################################################


###############################
# Default rule: rebuild server.
all: notify $(EXTERNAL) $(TARGET) $(ADDITIONAL_OBJ)
	@echo Server done

notify:
	@echo Server start

# defines this new target for tagging and releasing
.PHONY: release
release: C_DEFINES+=$(addprefix -D,OFFICIAL)
release: releaseprolog clean all plugins gittagging

# defines warning message and buildtype official
.PHONY: releaseprolog
releaseprolog:
	@echo ""
ifneq ($(OS),Windows_NT)
	@echo "Are you sure you want to create a GitHub Release? [y/N] " && read ans && [ $${ans:-N} = y ]
endif

.PHONY: gittagging
gittagging:
ifneq ($(OS),Windows_NT)
	git tag -a v$(VERSION)
	git push origin --tags
endif	

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
#	@cmd.exe /C "@cd $(SRC_DIR)/$@ && @comp.cmd"
else
#	cd $(SRC_DIR)/$@ && ./comp.sh
endif

###############################
# A rule to link server binary.
$(TARGET): $(OS_OBJ) $(C_OBJ) $(CPP_OBJ) $(ZLIB_OBJ) $(ASSETS_OBJ) $(ASM_OBJ) obj/version.o
	@echo   $(CC) $(TARGET)
# CFLAGS for compiler, LFLAGS for linker.
	@$(CC) $(LFLAGS) -o $@ $^ $(RESOURCE_FILE) $(LLIBS)

################################
# A rule to make version module.
obj/version.o: src/version/version.c FORCE
	@echo   $(CC)  $@ $(C_DEFINES)
	@$(CC) -c $(CFLAGS) $(DCFLAGS) $(C_DEFINES) -o $@ $<

############################################
# An empty rule to force rebuild other rule.
FORCE:

#####################################
# A rule to build common server code.
# -march=nocona
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) $(DCFLAGS) $(C_DEFINES) -o $@ $<

#####################################
# A rule to build common c++ server code.
# -march=nocona
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@echo   $(CPP)  $@
	@$(CPP) -c $(CFLAGS) $(DCFLAGS) $(C_DEFINES) -o $@ $<

################################
# A rule to build assemler code.
$(OBJ_DIR)/%.o: $(SRC_DIR)/asmsource/%.asm
	@echo   $(NASM)  $@
	@$(NASM) $(NASMFLAGS) $< -o $@

###################################
# A rule to build zlib source code.
$(OBJ_DIR)/%.o: $(ZLIB_DIR)/%.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) $(DCFLAGS) $(C_DEFINES) -o $@ $<

######################################
# A rule to build xassets source code.
$(OBJ_DIR)/%.o: $(ASSETS_DIR)/%.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) $(DCFLAGS) $(C_DEFINES) -o $@ $<

########################################
# A rule to build Windows specific code.
$(OBJ_DIR)/%.o: $(WIN_DIR)/%.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) $(DCFLAGS) $(C_DEFINES) -o $@ $<

########################################
# A rule to build Linux specific code.
$(OBJ_DIR)/%.o: $(LINUX_DIR)/%.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) $(DCFLAGS) $(C_DEFINES) -o $@ $<

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

############################
# Delete built object files. (Server only)
clean:
	@echo   clean Server
	@$(CLEAN)

############################
# Delete built object files. (Server only)
clean_all:
	@echo   clean Server
	@$(CLEAN)
	@echo   clean Mbedtls
	@$(MAKE) -C $(SRC_DIR)/mbedtls clean
	@echo   clean Tomcrypt
	@$(MAKE) -C $(SRC_DIR)/tomcrypt clean

docker: $(TARGET)
	@docker build . -t cod4x/bleeding

plugins: 
	@$(MAKE) -C $(PLUGIN_DIR)/screenshotsender
	#@$(MAKE) -C $(PLUGIN_DIR)/antispam
	@$(MAKE) -C $(PLUGIN_DIR)/censor
	@$(MAKE) -C $(PLUGIN_DIR)/cod4x_b3hide
	@$(MAKE) -C $(PLUGIN_DIR)/simplebanlist
	@$(MAKE) -C $(PLUGIN_DIR)/example_cpp_plugin
	@$(MAKE) -C $(PLUGIN_DIR)/pchat
	@$(MAKE) -C $(PLUGIN_DIR)/sourcebansplugin
	@$(MAKE) -C $(PLUGIN_DIR)/warn
	#@$(MAKE) -C $(PLUGIN_DIR)/julia
	@$(MAKE) -C $(PLUGIN_DIR)/legacybanlist


.PHONY: plugins
