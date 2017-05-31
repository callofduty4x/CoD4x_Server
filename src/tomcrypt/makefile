TARGET=libtomcrypt.a
CFLAGS=-m32 -Wall -Os -s -I. -DLTC_NO_ROLC -DLTC_SOURCE

CC=gcc
TARGETDIR=../../lib
TARGETNAME=$(TARGETDIR)/$(TARGET)
SOURCES=$(wildcard ciphers/aes/aes.c \
	hashes/*.c \
	misc/crypt/*.c \
	misc/base64/*.c \
	misc/*.c \
	misc/pkcs5/*.c \
	mac/hmac/*.c \
	pk/asn1/der/bit/*.c \
	pk/asn1/der/boolean/*.c \
	pk/asn1/der/choice/*.c \
	pk/asn1/der/ia5/*.c \
	pk/asn1/der/integer/*.c \
	pk/asn1/der/object_identifier/*.c \
	pk/asn1/der/octet/*.c \
	pk/asn1/der/printable_string/*.c \
	pk/asn1/der/sequence/*.c \
	pk/asn1/der/short_integer/*.c \
	pk/asn1/der/utctime/*.c \
	pk/asn1/der/utf8/*.c \
	pk/asn1/der/set/*.c \
	pk/rsa/*.c \
	pk/pkcs1/*.c \
	math/*.c)

OBJECTS=$(patsubst %.c,%.o,$(SOURCES))
#MATHSOURCES=$(wildcard math/*.c)
#MATHOBJECTS=$(patsubst %.c,%.o,$(MATHSOURCES))

all: notify $(TARGETNAME)
	@echo TomCrypt done

notify:
	@echo TomCrypt start

$(TARGETNAME): $(OBJECTS) #$(MATHOBJECTS)
	@echo   $(AR)  $@
	@$(AR) cr $@ $^

%.o: %.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) -o $@ $<

math/%.o: math/%.c
	@echo   $(CC)  $@
	@$(CC) -c $(CFLAGS) -o $@ $< -Imath

clean:
ifeq ($(OS),Windows_NT)
	@del $(subst /,\,$(OBJECTS)) $(subst /,\,$(MATHOBJECTS))
else
	@rm $(OBJECTS) $(MATHOBJECTS)
endif
	@echo Clean done