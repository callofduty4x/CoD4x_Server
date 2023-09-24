VERSION=0.4
BITS=32

GCC_EXTRA_FLAGS=-m$(BITS)
GCCFLAGS+=-g -Iinclude -Wall -MMD -fno-omit-frame-pointer -O0 -Wno-unused-function -Wno-unused-parameter $(GCC_EXTRA_FLAGS)
ifeq ($(USE_LIBCXX), 1)
GCCFLAGS+=-stdlib=libc++ -DUSE_LIBCXX
CXX_LDFLAGS+=-lc++ -lsupc++ -fsanitize=address
CC=clang
CXX=clang++
endif
CXXFLAGS=$(GCCFLAGS) -W --std=c++11
CFLAGS=$(GCCFLAGS) 

EXES=cod4_dasm

MAC_C_SRCS=$(wildcard mach/*.c)
MAC_CXX_SRCS=$(wildcard mach/*.cc)
MAC_C_BINS=$(MAC_C_SRCS:.c=.c.bin)
MAC_CXX_BINS=$(MAC_CXX_SRCS:.cc=.cc.bin)
MACBINS=$(MAC_C_BINS) $(MAC_CXX_BINS)
MACTXTS=$(MACBINS:.bin=.txt)

OS=$(shell uname)

ifeq ($(OS), Linux)
MAC_TOOL_DIR=/usr/i686-apple-darwin10
MAC_BIN_DIR=$(MAC_TOOL_DIR)/usr/bin
MAC_CC=PATH=$(MAC_BIN_DIR) ./cod4_dasm $(MAC_BIN_DIR)/gcc --sysroot=$(MAC_TOOL_DIR)
MAC_CXX=PATH=$(MAC_BIN_DIR) ./cod4_dasm $(MAC_BIN_DIR)/g++ --sysroot=$(MAC_TOOL_DIR)
MAC_TARGETS=cod4_dasm $(MACBINS) $(MACTXTS)
else
MAC_CC=$(CC)
MAC_CXX=$(CXX)
MAC_TARGETS=$(MACBINS) $(MACTXTS)
endif

all: $(EXES)

profile:
	$(MAKE) clean
	$(MAKE) all GCC_EXTRA_FLAGS=-pg

release:
	$(MAKE) clean
	$(MAKE) all "GCC_EXTRA_FLAGS=-DNOLOG -DNDEBUG"

mach: $(MAC_TARGETS)

check: all mach
	./runtests.sh

check-all: check
	rm -f $(MACBINS)
	MACOSX_DEPLOYMENT_TARGET=10.5 make mach
	MACOSX_DEPLOYMENT_TARGET=10.5 ./runtests.sh

$(MAC_C_BINS): %.c.bin: %.c
	$(MAC_CC) -g -arch i386 -arch x86_64 $^ -o $@

$(MAC_CXX_BINS): %.cc.bin: %.cc
	$(MAC_CXX) -g -arch i386 -arch x86_64 $^ -o $@

#ok: macho2elf
#	./genelf.sh
#	touch $@

cod4_dasm: cod4_dasm.o mach-o.o fat.o log.o libudis86/decode.o libudis86/itab.o libudis86/syn.o libudis86/syn-intel.o libudis86/udis86.o
	$(CXX) $^ -o $@ -g -ldl -lpthread $(GCC_EXTRA_FLAGS) $(CXX_LDFLAGS)

dist:
	cd /tmp && rm -fr maloader-$(VERSION) && git clone git@github.com:shinh/maloader.git && rm -fr maloader/.git && mv maloader maloader-$(VERSION) && tar -cvzf maloader-$(VERSION).tar.gz maloader-$(VERSION)

clean:
	rm -f *.o *.d */*.o */*.d $(EXES)

-include *.d */*.d
