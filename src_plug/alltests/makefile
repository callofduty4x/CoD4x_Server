# Mandatory input variables:
# DEBUG: 0 or 1
###############################################################################
PLUGINNAME := alltests
###############################################################################
rwildcard=$(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2) $(filter $(subst *,%,$2),$d))

CC := g++
CFLAGS := -m32 -Wall -I../../src_mod/plugin
LFLAGS := 

ifeq ($(DEBUG), 1)
CFLAGS += -g3 -O0
else
CFLAGS += -O2
endif

OBJDIR := obj
ALLOBJ =$(patsubst %,$(OBJDIR)/%.o,$(call rwildcard, ,*.c) $(call rwildcard, ,*.cpp))

# if were running on Windows build for Windows
ifeq ($(OS),Windows_NT)
WINDOWS_BUILD = 1
endif

makedir = @mkdir -p $(dir $1)
EXTENSION := .so
ifdef WINDOWS_BUILD
makedir = @if not exist "$(subst /,\\,$(dir $1))" mkdir "$(subst /,\\,$(dir $1))"
EXTENSION := .dll
endif

COREDIR ?= ../..
CORETARGETPATH = $(COREDIR)/bin/libcod4xplugin_$(PLUGINNAME)$(EXTENSION)
###############################################################################
.PHONY: all clean

all: $(CORETARGETPATH)

clean:
ifdef WINDOWS_BUILD
	@del /S $(OBJDIR)\\*.o $(subst /,\\,$(CORETARGETPATH))
else
	@rm -f $(OBJDIR)/*.o $(CORETARGETPATH)
endif

$(CORETARGETPATH): $(ALLOBJ)
	@echo   $(CC)  $@
	@$(CC) -shared $(LFLAGS) -o $@ $^

$(OBJDIR)/%.c.o: %.c
	@echo   $(CC)  $<
	@$(call makedir,$@)
	@$(CC) $(CFLAGS) -o $@ -c $<

$(OBJDIR)/%.cpp.o: %.cpp
	@echo   $(CC)  $<
	@$(call makedir,$@)
	@$(CC) $(CFLAGS) -o $@ -c $<
