# Mandatory input variables:
# DEBUG: 0 or 1
rwildcard=$(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2) $(filter $(subst *,%,$2),$d))

CC := gcc
NASM := nasm
CFLAGS := -m32 -Wall -march=nocona -fno-omit-frame-pointer -I..
WIN_DEFINES=WINVER=0x501
LINUX_DEFINES=_GNU_SOURCE
COD4X_DEFINES += COD4X18UPDATE

ifeq ($(DEBUG), 1)
CFLAGS += -g3 -O0
COD4X_DEFINES += OFFICIAL
else
CFLAGS += -O2
endif

OBJDIR := obj
ALLOBJ =$(patsubst %,$(OBJDIR)/%.o,$(call rwildcard, ,*.c) $(call rwildcard, ,*.asm))

# if were running on Windows build for Windows
ifeq ($(OS),Windows_NT)
WINDOWS_BUILD = 1
endif

makedir = @mkdir -p $(dir $1)
NASMFLAGS := -f elf
C_DEFINES := $(addprefix -D ,$(COD4X_DEFINES) $(LINUX_DEFINES))
ifdef WINDOWS_BUILD
makedir = @if not exist "$(subst /,\\,$(dir $1))" mkdir "$(subst /,\\,$(dir $1))"
NASMFLAGS := -f coff -dWin32 --prefix _
C_DEFINES := $(addprefix -D ,$(COD4X_DEFINES) $(WIN_DEFINES))
endif

.PHONY: all clean

all: $(ALLOBJ)

clean:
ifdef WINDOWS_BUILD
	@del /S $(OBJDIR)\\*.o
else
	@rm -f $(OBJDIR)/*.o
endif

$(OBJDIR)/%.c.o: %.c
	@echo   $(CC)  $<
	@$(call makedir,$@)
	@$(CC) $(CFLAGS) $(C_DEFINES) -o $@ -c $<

################################
# A rule to build assemler code.
$(OBJDIR)/%.asm.o: %.asm
	@echo   $(NASM)  $@
	@$(NASM) $(NASMFLAGS) $< -o $@

