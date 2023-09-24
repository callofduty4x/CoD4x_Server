#include <stdio.h>
#include <stdlib.h>
#define X509_CERT_FILE_EVP       "SSL_CERT_FILE"

char * System_CAStorage[] = {
"/etc/ssl/certs/ca-certificates.crt",                // Debian/Ubuntu/Gentoo etc.
"/etc/pki/tls/certs/ca-bundle.crt",                  // Fedora/RHEL 6
"/etc/ssl/ca-bundle.pem",                            // OpenSUSE
"/etc/pki/tls/cacert.pem",                           // OpenELEC
"/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem", // CentOS/RHEL 7
"/etc/ssl/cert.pem",                                 // Alpine Linux
"/etc/ssl/certs/ca-bundle.crt"}; 


int Sys_TryReadCertFile(const char* filename, FILE** h)
{
    int end = 0;
    *h = fopen(filename, "rb");
    if(*h != NULL)
    {
        fseek (*h, 0, SEEK_END);
        end = ftell (*h);
        fseek (*h, 0, SEEK_SET);
    }
    return end;
}




//Returns 1 if some certs parsed successfully
int Sys_ReadCertificate(void* cacert, int (*store_callback)(void* ca_ctx, const unsigned char* pemderbuf, int lenofpemder))
{
    int i;
    int end = 0;
    FILE *h = NULL;

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
        return 0;
    }

    unsigned char* certbuf = malloc(end +1);
    fread(certbuf, 1, end, h);
    certbuf[end] = 0;
    fclose(h);
//  printf("Certs: %s Len %d\n", System_CAStorage[i], end);

	int result = store_callback(cacert, certbuf, end +1);
	free(certbuf);
	if(result >= 0)
	{
		return 1;
	}
	return 0;
}

