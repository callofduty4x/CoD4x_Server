
# Also see "include/mbedtls/config.h"
CC=gcc
CFLAGS	?= -O2 -m32
WARNING_CFLAGS ?=  -Wall -W -Wdeclaration-after-statement
LDFLAGS ?= -m32

LOCAL_CFLAGS = $(WARNING_CFLAGS) -I../ -D_FILE_OFFSET_BITS=64
LOCAL_LDFLAGS =

ifdef DEBUG
LOCAL_CFLAGS += -g3
endif

# MicroBlaze specific options:
# CFLAGS += -mno-xl-soft-mul -mxl-barrel-shift

# To compile on Plan9:
# CFLAGS += -D_BSD_EXTENSION

# if were running on Windows build for Windows
ifeq ($(OS),Windows_NT)
WINDOWS_BUILD=1
endif

# To compile as a shared library:
ifdef SHARED
# all code is position-indep with mingw, avoid warning about useless flag
ifndef WINDOWS_BUILD
LOCAL_CFLAGS += -fPIC -fpic -m32
endif
endif

SOEXT_TLS=so.10
SOEXT_X509=so.0
SOEXT_CRYPTO=so.0

DLEXT=so
# OSX shared library extension:
# DLEXT=dylib

# Windows shared library extension:
ifdef WINDOWS_BUILD
DLEXT=dll
endif

OBJS_CRYPTO=	aes.o		aesni.o		arc4.o		\
		asn1parse.o	asn1write.o	base64.o	\
		bignum.o	blowfish.o	camellia.o	\
		ccm.o		cipher.o	cipher_wrap.o	\
		ctr_drbg.o	des.o		dhm.o		\
		ecdh.o		ecdsa.o		ecjpake.o	\
		ecp.o						\
		ecp_curves.o	entropy.o	entropy_poll.o	\
		error.o		gcm.o		havege.o	\
		hmac_drbg.o	md.o		md2.o		\
		md4.o		md5.o		md_wrap.o	\
		memory_buffer_alloc.o		oid.o		\
		padlock.o	pem.o		pk.o		\
		pk_wrap.o	pkcs12.o	pkcs5.o		\
		pkparse.o	pkwrite.o	platform.o	\
		ripemd160.o	rsa.o		sha1.o		\
		sha256.o	sha512.o	threading.o	\
		timing.o	version.o	platform_util.o	\
		version_features.o		xtea.o		\
		chacha20.o	chachapoly.o	poly1305.o	\
		rsa_internal.o	

OBJS_X509=	certs.o		pkcs11.o	x509.o		\
		x509_create.o	x509_crl.o	x509_crt.o	\
		x509_csr.o	x509write_crt.o	x509write_csr.o pkparse.o pkcs5.o pk.o pkcs12.o

OBJS_TLS=	debug.o				ssl_cache.o	\
		ssl_ciphersuites.o		ssl_cli.o	\
		ssl_cookie.o	ssl_srv.o	ssl_ticket.o	\
		ssl_tls.o pkparse.o pkcs5.o

TARGETDIR=../../lib

.SILENT:

.PHONY: all static shared clean notify

ifndef SHARED
all: notify static
else
all: notify shared static
endif
	@echo Mbedtls done

notify:
	@echo Mbedtls start

static: $(TARGETDIR)/libmbedcrypto.a $(TARGETDIR)/libmbedx509.a $(TARGETDIR)/libmbedtls.a

shared: libmbedcrypto.$(DLEXT) libmbedx509.$(DLEXT) libmbedtls.$(DLEXT)

# tls
$(TARGETDIR)/libmbedtls.a: $(OBJS_TLS)
	echo   $(AR)  $@
	$(AR) rcs $@ $(OBJS_TLS)

libmbedtls.$(SOEXT_TLS): $(OBJS_TLS) libmbedx509.so
	echo   $(CC)  $@
	$(CC) -shared -Wl,-soname,$@ -L. -lmbedcrypto -lmbedx509 $(LOCAL_LDFLAGS) $(LDFLAGS) -o $@ $(OBJS_TLS)

libmbedtls.so: libmbedtls.$(SOEXT_TLS)
	echo   ln  $@ -> $<
	ln -sf $< $@

libmbedtls.dylib: $(OBJS_TLS)
	echo   $(CC)    $@
	$(CC) -dynamiclib $(LOCAL_LDFLAGS) $(LDFLAGS) -o $@ $(OBJS_TLS)

libmbedtls.dll: $(OBJS_TLS) libmbedx509.dll
	echo   $(CC)  $@
	$(CC) -shared -Wl,-soname,$@ -Wl,--out-implib,$@.a -o $@ $(OBJS_TLS) -lws2_32 -lwinmm -lgdi32 -L. -lmbedcrypto -lmbedx509 -static-libgcc $(LOCAL_LDFLAGS) $(LDFLAGS)

# x509
$(TARGETDIR)/libmbedx509.a: $(OBJS_X509)
	echo   $(AR)  $@
	$(AR) rcs $@ $(OBJS_X509)

libmbedx509.$(SOEXT_X509): $(OBJS_X509) libmbedcrypto.so
	echo"  $(CC)  $@
	$(CC) -shared -Wl,-soname,$@ -L. -lmbedcrypto $(LOCAL_LDFLAGS) $(LDFLAGS) -o $@ $(OBJS_X509)

libmbedx509.so: libmbedx509.$(SOEXT_X509)
	echo   ln  $@ -> $<
	ln -sf $< $@

libmbedx509.dylib: $(OBJS_X509)
	echo   $(CC)  $@
	$(CC) -dynamiclib $(LOCAL_LDFLAGS) $(LDFLAGS) -o $@ $(OBJS_X509)

libmbedx509.dll: $(OBJS_X509) libmbedcrypto.dll
	echo   $(CC)  $@
	$(CC) -shared -Wl,-soname,$@ -Wl,--out-implib,$@.a -o $@ $(OBJS_X509) -lws2_32 -lwinmm -lgdi32 -L. -lmbedcrypto -static-libgcc $(LOCAL_LDFLAGS) $(LDFLAGS)

# crypto
$(TARGETDIR)/libmbedcrypto.a: $(OBJS_CRYPTO)
	echo   $(AR)  $@
	$(AR) rcs $@ $(OBJS_CRYPTO)

libmbedcrypto.$(SOEXT_CRYPTO): $(OBJS_CRYPTO)
	echo"  $(CC)  $@
	$(CC) -shared -Wl,-soname,$@ $(LOCAL_LDFLAGS) $(LDFLAGS) -o $@ $(OBJS_CRYPTO)

libmbedcrypto.so: libmbedcrypto.$(SOEXT_CRYPTO)
	echo   ln  $@ -> $<
	ln -sf $< $@

libmbedcrypto.dylib: $(OBJS_CRYPTO)
	echo   $(CC)  $@
	$(CC) -dynamiclib $(LOCAL_LDFLAGS) $(LDFLAGS) -o $@ $(OBJS_CRYPTO)

libmbedcrypto.dll: $(OBJS_CRYPTO)
	echo   $(CC)  $@
	$(CC) -shared -Wl,-soname,$@ -Wl,--out-implib,$@.a -o $@ $(OBJS_CRYPTO) -lws2_32 -lwinmm -lgdi32 -static-libgcc $(LOCAL_LDFLAGS) $(LDFLAGS)

.c.o:
	echo   $(CC)  $<
	$(CC) $(LOCAL_CFLAGS) $(CFLAGS) -c $<

clean:
ifndef WINDOWS_BUILD
	rm -f *.o libmbed*
else
	del *.o libmbed*
endif
