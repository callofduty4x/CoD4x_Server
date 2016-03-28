#define MAC_MIN_UID 10*1000*1000

typedef struct macDB_s{
    struct macDB_s *next;
    char name[33];
    char pass[65];
    char salt[16];
    int uid;
}macDB_t;

qboolean Mac_LoadDB();
void Mac_SaveDB();
void Mac_UnloadDB();
int Mac_Authorize(char *,char *);
int Mac_Register(char *,char *);