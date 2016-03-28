//#include "mac_authorize.h"

#define MAC_DB_FILENAME "MacUsers.dat"

macDB_t *database;

qboolean Mac_LoadDB()
{
    FILE *fp;
    macDB_t *tmp,*last;
    int i,/*len,*/lines=0,errors = 0;
    char line[128],c;
    if(database){
	Mac_UnloadDB();
    }
    database = (macDB_t *) malloc(sizeof(macDB_t));
    if(!database){
	Com_Error(ERR_FATAL,"Mac_LoadDB: out of memory.");
	return qfalse;
    }
    last = database;
    memset(database,0,sizeof(macDB_t));
    fp = fopen(MAC_DB_FILENAME,"r");
    if(!fp){
	return qfalse;
    }
    // Parse the file, line by line
    i = 0;
    do{
	c = fgetc(fp);
	if(c=='\n'){
	    line[i] = 0;
/*	    len = i-1;*/
	    i=0;
	    tmp = (macDB_t *) malloc(sizeof(macDB_t));
	    tmp->next = NULL;
	    tmp->uid = -1;
	    tmp->name[0]=0;
	    tmp->pass[0]=0;
	    strcpy(tmp->name,Info_ValueForKey(line,"name"));
	    strcpy(tmp->pass,Info_ValueForKey(line,"pass"));
	    strcpy((char *)tmp->salt,Info_ValueForKey(line,"salt"));
	    tmp->uid = atoi(Info_ValueForKey(line,"uid"));
	    if(tmp->pass[0]!=0 && tmp->name[0]!=0 && tmp->uid != -1){
		last->next = tmp;
		last = tmp;
	    }
	    else
		++errors;
	    ++lines;
	    i=0;
	}
	else if(i>=sizeof(line)){
	    fclose(fp);
	    Com_Error(ERR_FATAL,"Mac_LoadDB: buffer overflow.");
	    return false;
	}
	else{
	    line[i] = c;
	    ++i;
	}
	    
	
    }while(!feof(fp));
    fclose(fp);
    Com_DPrintf("Parsed %d mac user login credentials. %d errors occured.\n",lines,errors);
    return (lines>errors);
}
void Mac_UnloadDB()
{
    macDB_t *tmp = database;
    while(database!=NULL){
	tmp = database->next;
	free(database);
	database = tmp;
    }
    database = NULL;
}

int Mac_AuthorizeNoUpdate(char *login, char *pass)
{
    macDB_t *tmp = database->next;
    while(tmp!=NULL){
	//Com_Printf("Mac_Authorize: DEBUG: name: \"%s\", pass: \"%s\", uid: %d, login: \"%s\", pass2: \"%s\"\n",tmp->name,tmp->pass,tmp->uid,login,pass);
	if(strcmp(tmp->name,login)==0){
	    //strcpy(h_pass, Com_SHA256(va("%s.%s",pass, Com_SHA256(tmp->salt))));
	    //Com_Printf("Authorizing user \"%s\"... Hash from the pass he provided: \"%s\", correct hash: \"%s\".\n",tmp->name,h_pass,tmp->pass);
	    //h_pass[64]=0;
	    if(strcmp(tmp->pass,Com_SHA256(va("%s.%s",pass, Com_SHA256(tmp->salt))))==0){
		return tmp->uid;
	    }
	    return -2;
	}
	tmp = tmp->next;
    }
    return -1;
}
int Mac_Authorize(char *login, char *pass)
{
    Mac_LoadDB();
    return Mac_AuthorizeNoUpdate(login,pass);
}
int Mac_Register(char *login, char *pass)
{
    Mac_LoadDB();
    int i;
    macDB_t *tmp = database->next,*tmp2 = database;
    i = Mac_AuthorizeNoUpdate(login,pass);
    byte salt[sizeof(tmp->salt)];
    if(i!=-1)
	return i;
    while(tmp!=NULL){
	tmp2 = tmp;
	tmp = tmp->next;
    }
    tmp2->next = (macDB_t *)malloc(sizeof(macDB_t));
    tmp2->next->uid = tmp2->uid == 0 ? MAC_MIN_UID : tmp2->uid + 1;
    Com_RandomBytes((byte *)salt,sizeof(salt));
    for(i = 0; i < sizeof(salt) -1; i++){
	Com_Printf("%d,",salt[i]);
	while(salt[i] > 126)
	    salt[i] -= 100;
	if(salt[i] < 32)
	    salt[i] +=32;
	if(salt[i] == (byte)';' || salt[i]==(byte)'\\' || salt[i] == (byte)'%' || salt[i] == (byte)'"')
	    ++salt[i];
	//Com_Printf("%d\n",salt[i]);
	tmp2->next->salt[i] = (char) salt[i];
    }
    salt[i] = 0;
    tmp2->next->salt[i] = 0;
    //Com_Printf("DEBUG: Salt: \"%s\".\n",tmp2->next->salt);
    strcpy(tmp2->next->pass,Com_SHA256(va("%s.%s",pass, Com_SHA256(tmp2->next->salt))));
    strcpy(tmp2->next->name,login);
    //strcpy(tmp2->next->pass,pass);
    tmp2->next->next = NULL;
    Mac_SaveDB();
    return tmp2->next->uid;
}
void Mac_SaveDB()
{
    macDB_t *tmp = database->next;
    FILE *fp = fopen(MAC_DB_FILENAME,"w");
    while(tmp!=NULL){
	fprintf(fp,"\\uid\\%d\\name\\%s\\pass\\%s\\salt\\%s\\\n",tmp->uid,tmp->name,tmp->pass,tmp->salt);
	tmp = tmp->next;
    }
    fclose(fp);
}