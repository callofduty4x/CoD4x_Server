#include <stdio.h>
#include "../q_shared.h"
#include "../qcommon_io.h"
#include "../filesystem.h"

#define X509_CERT_FILE_EVP       "SSL_CERT_FILE"

char * System_CAStorage[] = {
"/etc/ssl/certs/ca-certificates.crt",                // Debian/Ubuntu/Gentoo etc.
"/etc/pki/tls/certs/ca-bundle.crt",                  // Fedora/RHEL 6
"/etc/ssl/ca-bundle.pem",                            // OpenSUSE
"/etc/pki/tls/cacert.pem",                           // OpenELEC
"/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem", // CentOS/RHEL 7
"/etc/ssl/cert.pem",                                 // Alpine Linux
"/etc/ssl/certs/ca-bundle.crt"}; 


int Sys_TryReadCertFile(const char* filename, struct FILE** h)
{
    int end = 0;
    h* = fopen(System_CAStorage[i], "rb");
    if(h != NULL)
    {
        fseek (h, 0, SEEK_END);
        end = ftell (h);
        fseek (h, 0, SEEK_SET);
    }
    return end;
}




//Returns number of successful parsed certs
int Sys_ReadCertificate(void* cacert, int (*store_callback)(void* ca_ctx, const unsigned char* pemderbuf, int lenofpemder))
{
    int i;
    int end = 0;
    struct FILE *h = NULL;

    const char* fileenv = getenv(X509_CERT_FILE_EVP);

    if(fileenv)
    {
        end = Sys_TryReadCertFile(fileenv, &h);
    }
    if(h == NULL)
    {
        for(i = 0; i < sizeof(System_CAStorage) / sizeof(System_CAStorage[0]); ++i)
        {
            end = Sys_TryReadCertFile(System_CAStorage[i], &h);
            if(end > 200)
            {
                break;
            }
        }
    }
    if(h == NULL)
    {
        return;
    }

    const char* certbuf = malloc(end);
    fread(certbuf, 1, end, h);
    fclose(h);
	if(store_callback(cacert, certbuf, end) >= 0)
	{
        free(certbuf);
		return 1;
	}
    free(certbuf);
	return 0;
}
