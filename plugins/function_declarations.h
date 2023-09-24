/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

    This file is part of CoD4X Plugin Handler source code.

    CoD4X Plugin Handler source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X Plugin Handler source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/


#ifndef PLUGIN_INCLUDES

    #error Please include pinc.h instead!

#endif /*PLUGIN_INCLUDES*/

    // ----------------------------------------------------------------------------//
    // Functions available for use in plugin API, sorted alphabetically by module. //
    // ----------------------------------------------------------------------------//

    //      == Commands ==

    __cdecl char* Plugin_Cmd_Argv(int arg);                // Get a command argument with index arg.
    __cdecl int Plugin_Cmd_Argc();                         // Get number of command arguments
    __cdecl char *Plugin_Cmd_Args( char* buff, int bufsize );

	//Retrives the player info
	__cdecl uint64_t Plugin_SV_Cmd_GetPlayerSteamIDByHandle( const char* handle);
	__cdecl const char* Plugin_SV_Cmd_GetPlayerNameByHandle( const char* handle);
	__cdecl client_t* Plugin_SV_Cmd_GetPlayerClByHandle( const char* handle);
	__cdecl uint64_t Plugin_SV_Cmd_GetPlayerIDByHandle( const char* handle);

    //      == Common ==
    __cdecl void Plugin_G_LogPrintf( const char *fmt, ... );
    __cdecl void Plugin_Printf( const char *fmt, ...);                // Print to a correct place (rcon, player console, logs)
    __cdecl void Plugin_PrintWarning( const char *fmt, ...);          // Print to a correct place (rcon, player console, logs)
    __cdecl void Plugin_PrintError( const char *fmt, ...);            // Print to a correct place (rcon, player console, logs)
    __cdecl void Plugin_DPrintf( const char *fmt, ...);               // Same as Com_Printf, only shows up when developer is set to 1
    __cdecl void Plugin_Cbuf_AddText(const char* text);

    __cdecl void Plugin_PrintAdministrativeLog( const char *fmt, ... );

    //      == Cvars ==
    /* Direct access to cvar value is never thread safe */
    // All of the Cvars module functions are self explanatory
    __cdecl CONVAR_T* Plugin_Cvar_RegisterString(const char *var_name, const char *var_value, int flags, const char *var_description);
    __cdecl CONVAR_T* Plugin_Cvar_RegisterBool(const char *var_name, qboolean var_value, int flags, const char *var_description);
    __cdecl CONVAR_T* Plugin_Cvar_RegisterInt(const char *var_name, int var_value, int min_value, int max_value, int flags, const char *var_description);
//    __cdecl CONVAR_T* Plugin_Cvar_RegisterEnum(const char *var_name, char** valnames, int defaultval, int flags, const char *var_description);
    __cdecl CONVAR_T* Plugin_Cvar_RegisterFloat(const char *var_name, float var_value, float min_value, float max_value, int flags, const char *var_description);
    __cdecl void Plugin_Cvar_SetInt(CONVAR_T const* var, int val);
    __cdecl void Plugin_Cvar_SetBool(CONVAR_T const* var, qboolean val);
    __cdecl void Plugin_Cvar_SetString(CONVAR_T const* var, char const* string);
    __cdecl void Plugin_Cvar_SetFloat(CONVAR_T const* var, float val);

    __cdecl int Plugin_Cvar_GetInteger(CONVAR_T const *var); //Thread safe
    __cdecl qboolean Plugin_Cvar_GetBoolean(CONVAR_T const *var); //Thread safe
    __cdecl float Plugin_Cvar_GetValue(CONVAR_T const *var); //Thread safe
    __cdecl const char* Plugin_Cvar_GetString(CONVAR_T const *var, char* buf, int sizebuf); //Thread safe

    __cdecl void Plugin_Cvar_VariableStringBuffer(const char* cvarname, char* buff, size_t size);  //Thread safe
    __cdecl float Plugin_Cvar_VariableValue( const char *var_name ); //Thread safe
    __cdecl int Plugin_Cvar_VariableIntegerValue( const char *var_name ); //Thread safe
    __cdecl int Plugin_Cvar_VariableBooleanValue( const char *var_name ); //Thread safe
    // __cdecl const char* Plugin_Cvar_VariableString( const char *var_name ); deprecated. Use Plugin_Cvar_VariableStringBuffer
    // Sets a cvar by name and by a string value which gets interpreted correctly depending on the cvar type
    __cdecl void Plugin_Cvar_Set( const char *var_name, const char* value );


    //      == File handling functions == - Do we really need those?

    __cdecl long Plugin_FS_SV_FOpenFileRead(const char *filename, fileHandle_t *fp); //Open a file for reading. First from fs_homepath. If not found from fs_baspath. Returns length of file which should be greater than 0. Writes into *fp the filehandle. Needs to be closed with Plugin_FS_FCloseFile() once operation is done.
     /*
      Example code:
      fileHandle_t fh;
      long len;
      int readnumbytes;
      char* textoffile[10000];

      len = Plugin_FS_SV_FOpenFileRead("whateverfile.txt", &fh);
      if(fh == 0)
      {
        Plugin_Printf("Couldn't open file");
        return;
      }
      if(len < 1)
      {
        Plugin_Printf("Empty file");
        Plugin_FS_FCloseFile(fh);
        return;
      }
      readnumbytes = Plugin_FS_Read(textoffile, sizeof(textoffile), fh);
      if(readnumbytes > 0)
      {
        Plugin_Printf("%s", textoffile);
      }else{
        Plugin_Printf("Couldn't read file");
      }
      Plugin_FS_FCloseFile(fh);
    */
    __cdecl fileHandle_t Plugin_FS_SV_FOpenFileWrite(const char *filename);         // Open a file for writing to fs_homepath/filename. Needs to be closed with Plugin_FS_FCloseFile() once operation is done.
    __cdecl fileHandle_t Plugin_FS_SV_FOpenFileAppend( const char *filename );      // Open a file for appending to fs_homepath/filename. Needs to be closed with Plugin_FS_FCloseFile() once operation is done.
    __cdecl long Plugin_FS_FOpenFileRead(const char *filename, fileHandle_t *fp);        // Open a file for reading. First from fs_homepath/fs_game/filename. If not found from fs_baspath/fs_game/filename. Searches in .zip (.iwd) files. Returns length of file which should be greater than 0. Writes into *fp the filehandle. Needs to be closed with Plugin_FS_FCloseFile() once operation is done.
    __cdecl fileHandle_t Plugin_FS_FOpenFileWrite( const char *filename );                 // Open a file for writing to fs_homepath/fs_game/filename . Needs to be closed with Plugin_FS_FCloseFile() once operation is done.
    __cdecl fileHandle_t Plugin_FS_FOpenFileAppend( const char *filename );                // Open a file for appending to fs_homepath/fs_game/filename . Needs to be closed with Plugin_FS_FCloseFile() once operation is done.

    __cdecl int Plugin_FS_Read(void *bufferToReadIntoFromFile, int maxBytesToRead, fileHandle_t f);              // Read data from file opened with Plugin_FS_SV_FOpenFileRead() or Plugin_FS_FOpenFileRead()
    __cdecl int Plugin_FS_Write(const void *bufferToWriteIntoFile, int numBytesToWrite, fileHandle_t h);       // Write data to a file opened with Plugin_FS_SV_FOpenFileWrite() or Plugin_FS_FOpenFileWrite().

    __cdecl int Plugin_FS_ReadLine(void *buffer, int len, fileHandle_t f);          // Read a line from file opened with Plugin_FS_SV_FOpenFileRead() but not others. [Better don't use]

    __cdecl qboolean Plugin_FS_FCloseFile(fileHandle_t f);                           // Close an open file opened with Plugin_FS_SV_FOpenFileRead(), Plugin_FS_SV_FOpenFileWrite(), Plugin_FS_SV_FOpenFileAppend(), Plugin_FS_FOpenFileRead(), Plugin_FS_FOpenFileWrite(), Plugin_FS_FOpenFileAppend().



    __cdecl int Plugin_FS_ReadFile( const char *qpath, void **buffer );
    /* Reads file into a memory buffer. You have to free the buffer after usage unless you want to keep it. Read file on normal searchpath order. fs_homepath/fs_game/qpath, fs_basepath/fs_game/qpath, or in loaded zip files
       Example:
       char* buf;
       Plugin_FS_ReadFile("myfile.txt", (void**)&buf);
       Plugin_Printf("%s", buf);
       Plugin_FS_FreeFile(buf);
    */

    //Writes the provided buffer into the file named by qpath. This is the most easiest way to write a file. File gets written to fs_homepath/fs_game/qpath .
    __cdecl int Plugin_FS_WriteFile( const char *qpath, const void *buffer, int size);
    /* Writes a memory buffer into a file. Example:
       char* buf = "My text which gets written into file mytext.txt";
       Plugin_FS_WriteFile("mytext.txt", buf, strlen(buf));
    */
    int Plugin_FS_SV_HomeWriteFile( const char *qpath, const void *buffer, int size);  //Same as Plugin_FS_WriteFile() but file gets written to fs_homepath/qpath
    int Plugin_FS_SV_BaseWriteFile( const char *qpath, const void *buffer, int size);  //Same as Plugin_FS_WriteFile() but file gets written to fs_basepath/qpath


    void Plugin_FS_SV_HomeCopyFile( char *from, char *to );  //Makes a copy of a file from fs_homepath/from to fs_homepath/to



    //      == Networking ==

    __cdecl int Plugin_NET_StringToAdr(const char* string, netadr_t* , netadrtype_t);
    __cdecl qboolean Plugin_NET_CompareAdr (netadr_t *a, netadr_t *b);
    __cdecl qboolean Plugin_NET_CompareBaseAdrMask(netadr_t *a, netadr_t *b, int netmask);
    __cdecl qboolean Plugin_NET_CompareBaseAdr (netadr_t *a, netadr_t *b);

    /* Do not use anymore */
//    __cdecl const char *Plugin_NET_AdrToString (netadr_t *a);
//    __cdecl const char *Plugin_NET_AdrToStringShort (netadr_t *a);

    __cdecl const char	*Plugin_NET_AdrToStringShortMT(netadr_t *a, char* buf, int len);
    __cdecl const char	*Plugin_NET_AdrToStringMT(netadr_t *a, char* buf, int len);
    __cdecl const char	*Plugin_NET_AdrMaskToStringMT(netadr_t *a, char* buf, int len);





    //      == Plugin Handler's functions ==

    __cdecl clientScoreboard_t Plugin_GetClientScoreboard(int clientNum);    // Get the scoreboard of a player
    __cdecl int Plugin_GetPlayerUid(int slot);                               // Get UID of a plyer
    __cdecl int Plugin_GetSlotCount();                                       // Get number of server slots
    __cdecl qboolean Plugin_IsSvRunning();                                   // Is server running?
    __cdecl void Plugin_ChatPrintf(int slot, const char *fmt, ...);          // Print to player's chat (-1 for all)
    __cdecl void Plugin_BoldPrintf(int slot, const char *fmt, ...);          // Print to the player's screen (-1 for all)
    __cdecl char *Plugin_GetPlayerName(int slot);                            // Get a name of a player
    __cdecl void Plugin_AddCommand(const char *name, xcommand_t command, int defaultpower); // Add a server command
    __cdecl void Plugin_RemoveCommand(char *name); //Removes a command. Works also with non plugin added commands.
    __cdecl void Plugin_AddCommandForClientToWhitelist(int clnum, const char* cmd); //Use this function to allow the player clnum to execute it whatever his powerpoints are
    __cdecl void *Plugin_Malloc(size_t size);                                // Same as stdlib.h function malloc
    __cdecl void Plugin_Free(void *ptr);                                     // Same as stdlib.h function free
    __cdecl void Plugin_Error(int code, const char *fmt, ...);               // Notify the server of an error, action depends on code parameter
    __cdecl int Plugin_GetLevelTime();                                       // Self explanatory
    __cdecl int Plugin_GetServerTime();                                      // Self explanatory
    __cdecl time_t Plugin_GetRealtime();                                     //Seconds since 1/1/1970

	//	-- Functions for clients --

	__cdecl void Plugin_DropClient( int clientnum, const char *reason );	// Kicks the client from server
	__cdecl void Plugin_BanClient( unsigned int clientnum, int minutes, int invokerid, char *reason ); //Bans the client for minutes from server. minutes can be "-1" to create a permanent ban. invokerid can be 0 or the numeric uid. banreason can be NULL or a valid char* pointer.

    //  -- TCP Connection functions --
    /*
    connection is a static constant number. Every plugin can use a connection 0 up to 3. This is not a socket. This is handled internal.
    You can not use the same number for 2 open connections on the same time.

    !!!Attention: Behaviour has changed!!!
    */
    __cdecl qboolean Plugin_TcpConnect(int connection, const char* remote);      // Open a new TCP connection - Returns qfalse if failed, remote can be a domainname
    __cdecl qboolean Plugin_TcpConnectMT(int pluginID, int connection, const char* remote); //Threadsafe needs plugin ID
    __cdecl int Plugin_TcpGetData(int connection, void *buf, int size);          // Receive TCP data - buf and size is the receiving buffer. It returns -1 if the connection is closed. It returns 0 when no new data is available. All other return values is the number of bytes received.
    __cdecl int Plugin_TcpGetDataMT(int pluginID, int connection, void *buf, int size); //Threadsafe needs plugin ID
    __cdecl int Plugin_TcpSendData(int connection, void *data, int len);         // Send TCP data - buf and len point to the buffer which has the data to send. Len is the amount to bytes to send. Returns -1 if connection got closed. Returns 0 if nothing could be sent. All other values are the sent data
    __cdecl int Plugin_TcpSendDataMT(int pluginID, int connection, void *data, int len);  //Threadsafe needs plugin ID
    __cdecl void Plugin_TcpCloseConnection(int connection);                      // Close an open TCP connection
    __cdecl void Plugin_TcpCloseConnectionMT(int pluginID, int connection);      //Threadsafe needs plugin ID
    __cdecl qboolean Plugin_UdpSendData(netadr_t* to, void* data, int len);      // Send UDP data
    __cdecl void Plugin_ServerPacketEvent(netadr_t* to, void* data, int len);    // Receive UDP data

    //Plugin ID
    __cdecl int Plugin_GetPluginID(); //Call this from the mainthread after init and store it in a global/static variable

    //  -- UIDS / GUIDs --
    __cdecl uint64_t Plugin_GetPlayerID(unsigned int clientslot);//Get the ID from player
    __cdecl uint64_t Plugin_GetPlayerSteamID(unsigned int clientslot);//Get the ID from player
    /* Dead functions. Don't use. */
/*
    __cdecl void Plugin_SetPlayerUID(unsigned int clientslot, unsigned int uid);     // Set player's UID
    __cdecl unsigned int Plugin_GetPlayerUID(unsigned int clientslot);               // Get player's UID
    __cdecl const char* Plugin_GetPlayerGUID(unsigned int clientslot);               // Get player's GUID
    __cdecl void Plugin_SetPlayerGUID(unsigned int clientslot, const char* guid);    // Set player's GUID
    __cdecl int Plugin_DoesServerUseUids(void);                                      // Self explanatory
    __cdecl void Plugin_SetServerToUseUids(int useuids);                             // Self explanatory
*/

    //      == System functions ==

    __cdecl int Plugin_Milliseconds();  // Milliseconds since server start
    __cdecl void Plugin_RandomBytes( byte *string, int len );

    //      == Scriptfunctions ==
    __cdecl void Plugin_ScrAddFunction(char *name, void (*function)());
    __cdecl void Plugin_ScrAddMethod(char *name, void (*function)(scr_entref_t object));
    __cdecl void Plugin_ScrReplaceFunction(char *name, xfunction_t function);
    __cdecl void Plugin_ScrReplaceMethod(char *name, xfunction_t function);

    __cdecl void Plugin_Scr_AddEntity(gentity_t* ent);
    __cdecl int Plugin_Scr_GetNumParam( void );
    __cdecl int Plugin_Scr_GetInt( unsigned int );
    __cdecl float Plugin_Scr_GetFloat( unsigned int );
    __cdecl char* Plugin_Scr_GetString( unsigned int );
    __cdecl gentity_t* Plugin_Scr_GetEntity( unsigned int );
    __cdecl short Plugin_Scr_GetConstString( unsigned int );
    __cdecl unsigned int Plugin_Scr_GetType( unsigned int );
    __cdecl void Plugin_Scr_GetVector( unsigned int, vec3_t* );
    __cdecl int Plugin_Scr_GetFunc( unsigned int paramnum );
    __cdecl void Plugin_Scr_Error( const char *string);
    __cdecl void Plugin_Scr_ParamError( int, const char *string);
    __cdecl void Plugin_Scr_ObjectError( const char *string);
    __cdecl void Plugin_Scr_AddInt(int value);
    __cdecl void Plugin_Scr_AddFloat(float);
    __cdecl void Plugin_Scr_AddBool(qboolean);
    __cdecl void Plugin_Scr_AddString(const char *string);
    __cdecl void Plugin_Scr_AddUndefined(void);
    __cdecl void Plugin_Scr_AddVector( vec3_t vec );
    __cdecl void Plugin_Scr_AddArray( void );
    __cdecl void Plugin_Scr_MakeArray( void );
    __cdecl void Plugin_Scr_AddArrayKeys( int strIdx );
    __cdecl void Plugin_Scr_AddArrayStringIndexed( int strIdx );
    __cdecl short Plugin_Scr_ExecEntThread( gentity_t* ent, int callbackHook, unsigned int numArgs);
    __cdecl short Plugin_Scr_ExecThread( int callbackHook, unsigned int numArgs);
    __cdecl void Plugin_Scr_FreeThread( short threadId);



    __cdecl void Plugin_Scr_NotifyLevel(int constString, unsigned int numArgs);
    __cdecl void Plugin_Scr_NotifyNum(int entityNum, unsigned int entType, unsigned int constString, unsigned int numArgs);
    __cdecl void Plugin_Scr_Notify(gentity_t* ent, unsigned short constString, unsigned int numArgs);
    __cdecl int Plugin_Scr_AllocString(const char*);



    __cdecl playerState_t *Plugin_SV_GameClientNum( int num ); //Retrives the playerState_t* object from a client number

    __cdecl gentity_t* Plugin_GetGentityForEntityNum(int entnum);
    __cdecl client_t* Plugin_GetClientForClientNum(int clientnum); //Can return NULL have to check
    __cdecl unsigned int Plugin_GetClientNumForClient(client_t* cl);

    __cdecl const char* Plugin_SL_ConvertToString(int index);

    __cdecl void Plugin_SV_SetConfigstring(int index, const char *text);
    __cdecl void Plugin_SV_GetConfigstring( int index, char *buffer, int bufferSize );

    /* If someone called a command the following functions return data about who invoked it */
    __cdecl int Plugin_Cmd_GetInvokerSlot();                              //clientnum of commandinvoker. -1 if undefined
    __cdecl int Plugin_Cmd_GetInvokerUID();                              //UID of commandinvoker. 0 if undefined . Deprecated in COD4x18 Do not Use this !
    __cdecl int Plugin_Cmd_GetInvokerClnum();                            //Client slot number of invoker. -1 if undefined
    __cdecl int Plugin_Cmd_GetInvokerPower();                            //Power points of command invoker. 100 if undefined or have all permissions
    __cdecl uint64_t Plugin_Cmd_GetInvokerSteamID();                     //Steam ID of invoker. 0 if undefined
    __cdecl const char* Plugin_Cmd_GetInvokerName(char *buf, int len);   //Playername/stored name of command invoker. "" if undefined

    __cdecl qboolean Plugin_CanPlayerUseCommand(int clientnum, const char* commandname);  //Returns if the player is allowed to use this command (power)

    /* For converting IDs */
    void Plugin_SteamIDToString(uint64_t steamid, char* string, int length);
    void Plugin_SteamIDTo64String(uint64_t steamid, char* string, int length);
    uint64_t Plugin_StringToSteamID(const char* steamidstring);
    qboolean Plugin_SteamIDIsIndividual(uint64_t steamid);
    qboolean Plugin_SteamIDIsIndividualAndSteamAccount(uint64_t steamid);
    uint64_t Plugin_GUID2PlayerID(const char* guid);



    __cdecl void Plugin_RemoveBanByip(netadr_t *remote);
    __cdecl void Plugin_PlayerAddBanByip(netadr_t *remote, char *message, int expire);		//Bans a player by ip into a temp banlist. message should be the displayed message without including times. expire is unixtime when this player is getting unbanned or -1
    __cdecl char* Plugin_PlayerBannedByip(netadr_t *netadr, char* message, int len);      //Checks if the given IP is on the banlist. Returns NULL if this player is not banned. Otherwise it is the stored message assigned to this ban.
    __cdecl const char* Plugin_FormatBanMessage(int timeleftsecs, char *outbuffer, int outbufferlen, const char* reasonfmt, ...); //function to merge the banreason and add this text "You have been banned from this server with the following reason:" includeing appealurl if available
    __cdecl const char* Plugin_WriteBanTimelimit(int timeleftsecs, char *outbuffer, int outbufferlen); //Function to turn the remaining ban time into a text

    /* blocking HTTP */
    __cdecl ftRequest_t* Plugin_HTTP_Request(const char* url, const char* method, byte* requestpayload, int payloadlen, const char* additionalheaderlines); /* blocking */
    __cdecl ftRequest_t* Plugin_HTTP_GET(const char* url); /* blocking */

    /* non blocking HTTP */
    __cdecl ftRequest_t* Plugin_HTTP_MakeHttpRequest(const char* url, const char* method, byte* requestpayload, int payloadlen, const char* additionalheaderlines);
    __cdecl int Plugin_HTTP_SendReceiveData(ftRequest_t* request);

    __cdecl void Plugin_HTTP_FreeObj(ftRequest_t* request);

    __cdecl void Plugin_HTTP_CreateString_x_www_form_urlencoded(char* outencodedstring, int len, const char* key, const char *value);
    __cdecl void Plugin_HTTP_ParseFormDataBody(const char* body, httpPostVals_t* values);
    __cdecl const char* Plugin_HTTP_GetFormDataItem(httpPostVals_t* values, const char* search);


    __cdecl void Plugin_EnterCriticalSection();                              //Create critical section mutex
    __cdecl void Plugin_LeaveCriticalSection();                              //Destroy critical section mutex
    __cdecl threadid_t Plugin_GetCurrentThreadId();                             //Returns thread id of the current calling thread
    __cdecl qboolean Plugin_IsMainThread( void );                               //Returns qtrue if the current calling thread is the main thread
    __cdecl qboolean Plugin_ThreadisSame(threadid_t threadid);                  //Returns qtrue if the current calling thread has the same thread id as the argument

    /* Plugin_CreateNewThread creates a new thread. ThreadMain has to be function invoked by new thread. tid can be NULL or a pointer to a threadid_t variable returning new thread id into it. funcarg can be NULL or anything which getting passed to thread main function
    Example:

    void* ThreadMain(void* arg)
    {
      int argval = (int)arg;
      Plugin_Printf("Created Thread with arg %d", argval);
      return NULL;
    }

    void somefunc()
    {
      ...
      int arg = 20;
      threadid_t ti;

      if(Plugin_CreateNewThread(ThreadMain, &ti, (void*)arg) == qfalse)
      {
        Plugin_Printf("Failure creating thread");
      }
      ...
    }
    */
    __cdecl qboolean Plugin_CreateNewThread(void* (*ThreadMain)(void* funcarg), threadid_t* tid, void* funcarg);


    __cdecl qboolean Plugin_SetupThreadCallback(void* callbackMain,...);
    __cdecl qboolean Plugin_CreateCallbackThread(void* threadMain,...);

    __cdecl void Plugin_ExitThread(int code);                                   //Exit the current thread
    __cdecl void Plugin_EnableThreadDebug();                                    //Enables debug info printing
    __cdecl void Plugin_DisableThreadDebug();                                   //Disables debug info printing
    __cdecl void Plugin_SleepSec(int sec);
    __cdecl void Plugin_SleepMSec(int msec);
    __cdecl void Plugin_SetStat(int clientNum, signed int index, int value);
    __cdecl int Plugin_GetStat(int clientNum, signed int index);

    __cdecl const char* Plugin_GetCommonVersionString(); //return cod4x version
    __cdecl level_locals_t* Plugin_GetLevelBase( );
    __cdecl void Plugin_UpdatePlayername(unsigned int clientnumber, const char* newname);
