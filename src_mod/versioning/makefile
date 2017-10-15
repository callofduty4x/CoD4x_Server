# Mandatory input variables:
# DEBUG: 0 or 1
# TARGETPATH: lib/libcod4x_***.a
rwildcard=$(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2) $(filter $(subst *,%,$2),$d))

CC := gcc
CFLAGS := -m32 -Wall

ifeq ($(DEBUG), 1)
CFLAGS += -g3 -O0
else
CFLAGS += -O2
endif

COREDIR ?= ../..
CORETARGETPATH = $(COREDIR)/$(TARGETPATH)

OBJDIR := obj
ALLOBJ =$(patsubst %,$(OBJDIR)/%.o,$(call rwildcard, ,*.c))

# if were running on Windows build for Windows
ifeq ($(OS),Windows_NT)
WINDOWS_BUILD = 1
endif

makedir = @mkdir -p $(dir $1)
ifdef WINDOWS_BUILD
makedir = @if not exist "$(subst /,\\,$(dir $1))" mkdir "$(subst /,\\,$(dir $1))"
endif

.PHONY: all clean

all: $(CORETARGETPATH)

clean:
ifdef WINDOWS_BUILD
	@del /S $(OBJDIR)\\*.o $(subst /,\\,$(CORETARGETPATH))
else
	@rm -f $(OBJDIR)/*.o $(CORETARGETPATH)
endif

$(CORETARGETPATH): $(ALLOBJ)
	@echo   $(AR)  $@
	@$(AR) rcs $@ $^

$(OBJDIR)/%.c.o: %.c
	@echo   $(CC)  $<
	@$(call makedir,$@)
	@$(CC) $(CFLAGS) -o $@ -c $<

