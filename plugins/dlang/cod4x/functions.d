module cod4x.functions;

import cod4x.server;

extern (C) char* Plugin_Cmd_Argv(int arg);                // Get a command argument with index arg.
extern (C) int Plugin_Cmd_Argc();                         // Get number of command arguments
extern (C) char *Plugin_Cmd_Args( char* buff, int bufsize );

//      == Common ==
extern (C) void Plugin_G_LogPrintf( const char *fmt, ... );
extern (C) void Plugin_Printf( const char * fmt, ... );                // Print to a correct place (rcon, player console, logs)

extern (C) void Plugin_PrintWarning( const char *fmt, ...);          // Print to a correct place (rcon, player console, logs)
extern (C) void Plugin_PrintError( const char *fmt, ...);            // Print to a correct place (rcon, player console, logs)
extern (C) void Plugin_DPrintf( const char *fmt, ...);               // Same as Com_Printf, only shows up when developer is set to 1
extern (C) char* Plugin_ParseGetToken(char* line);                 // Tokenize a string - get next token
extern (C) int Plugin_ParseTokenLength(char* token);               // Tokenize a string - get the token's length
extern (C) void Plugin_ParseReset();               			// Tokenize a string - Reset the parsers position
extern (C) void Plugin_Cbuf_AddText(const char* text);

//      == Cvars ==

// All of the Cvars module functions are self explanatory
extern (C) void* Plugin_Cvar_RegisterString(const char *var_name, const char *var_value, int flags, const char *var_description);
extern (C) void* Plugin_Cvar_RegisterBool(const char *var_name, qboolean var_value, int flags, const char *var_description);
extern (C) void* Plugin_Cvar_RegisterInt(const char *var_name, int var_value, int min_value, int max_value, int flags, const char *var_description);
//    extern (C) void* Plugin_Cvar_RegisterEnum(const char *var_name, char** valnames, int defaultval, int flags, const char *var_description);
extern (C) void* Plugin_Cvar_RegisterFloat(const char *var_name, float var_value, float min_value, float max_value, int flags, const char *var_description);
extern (C) void Plugin_Cvar_SetInt(void* var, int val);
extern (C) void Plugin_Cvar_SetBool(void* var, qboolean val);
extern (C) void Plugin_Cvar_SetString(void* var, char* string);
extern (C) void Plugin_Cvar_SetFloat(void* var, float val);
extern (C) int Plugin_Cvar_GetInteger(void *var);
extern (C) qboolean Plugin_Cvar_GetBoolean(void *var);
extern (C) float Plugin_Cvar_GetValue(void *var);
extern (C) immutable(char)* Plugin_Cvar_GetString(immutable(char)* var);

extern (C) void Plugin_Cvar_VariableStringBuffer(const char* cvarname, char* buff, size_t size);
extern (C) float Plugin_Cvar_VariableValue( const char *var_name );
extern (C) int Plugin_Cvar_VariableIntegerValue( const char *var_name );
extern (C) int Plugin_Cvar_VariableBooleanValue( const char *var_name );
//Mimi please fix extern (C) char* Plugin_Cvar_VariableString( const char *var_name );
// Sets a cvar by name and by a string value which gets interpreted correctly depending on the cvar type
extern (C) void Plugin_Cvar_Set( const char *var_name, const char* value );


//      == File handling functions == - Do we really need those?

extern (C) int Plugin_FS_SV_FOpenFileRead(const char *filename, void *fp); // Open a file for reading
extern (C) void Plugin_FS_SV_FOpenFileWrite(const char *filename);         // Open a file for writing
//extern (C) int Plugin_FS_Read(void *buffer, int len, void f);              // Read data from file
//extern (C) int Plugin_FS_ReadLine(void *buffer, int len, void f);          // Read a line from file
//extern (C) int Plugin_FS_Write(const void *buffer, int len, void h);       // Write to file
//extern (C) qboolean Plugin_FS_FCloseFile(void f);                          // Cloase an open file

//Writes the provided buffer into the file named by qpath. This is the most easiest way to write a file
extern (C) int Plugin_FS_SV_WriteFile( const char *qpath, const void *buffer, int size);


//      == Networking ==

extern (C) int Plugin_NET_StringToAdr(const char* string, netadr_t* , netadrtype_t);
extern (C) qboolean Plugin_NET_CompareAdr (netadr_t *a, netadr_t *b);
extern (C) qboolean Plugin_NET_CompareBaseAdrMask(netadr_t *a, netadr_t *b, int netmask);
extern (C) qboolean Plugin_NET_CompareBaseAdr (netadr_t *a, netadr_t *b);
extern (C) char *Plugin_NET_AdrToString (netadr_t *a);
extern (C) char *Plugin_NET_AdrToStringShort (netadr_t *a);



//      == Plugin Handler's functions ==

extern (C) clientScoreboard_t Plugin_GetClientScoreboard(int clientNum);    // Get the scoreboard of a player
extern (C) int Plugin_Cmd_GetInvokerUid();                                  // Get UID of command invoker
extern (C) int Plugin_Cmd_GetInvokerSlot();                                 // Get slot number of command invoker
extern (C) int Plugin_GetPlayerUid(int slot);                               // Get UID of a plyer
extern (C) int Plugin_GetSlotCount();                                       // Get number of server slots
extern (C) qboolean Plugin_IsSvRunning();                                   // Is server running?
extern (C) void Plugin_ChatPrintf(int slot, const char *fmt, ...);          // Print to player's chat (-1 for all)
extern (C) void Plugin_BoldPrintf(int slot, const char *fmt, ...);          // Print to the player's screen (-1 for all)
extern (C) char *Plugin_GetPlayerName(int slot);                            // Get a name of a player
//extern (C) void Plugin_AddCommand(char *name, xcommand_t command, int defaultpower); // Add a server command
extern (C) void *Plugin_Malloc(size_t size);                                // Same as stdlib.h function malloc
extern (C) void Plugin_Free(void *ptr);                                     // Same as stdlib.h function free
extern (C) void Plugin_Error(int code, const char *fmt, ...);               // Notify the server of an error, action depends on code parameter
extern (C) int Plugin_GetLevelTime();                                       // Self explanatory
extern (C) int Plugin_GetServerTime();                                      // Self explanatory

//	-- Functions for clients --

extern (C) void Plugin_DropClient( int clientnum, const char *reason );	// Kicks the client from server
extern (C) void Plugin_BanClient( uint clientnum, int seconds, int invokerid, char *reason ); //Bans the client for seconds from server. Seconds can be "-1" to create a permanent ban. invokerid can be 0 or the numeric uid. banreason can be NULL or a valid char* pointer.

//  -- TCP Connection functions --
/*
connection is a static constant number. Every plugin can use a connection 0 up to 3. This is not a socket. This is handled internal.
You can not use the same number for 2 open connections on the same time.

*/
extern (C) qboolean Plugin_TcpConnect(int connection, const char* remote);      // Open a new TCP connection - Returns qfalse if failed, remote can be a domainname
extern (C) int Plugin_TcpGetData(int connection, void *buf, int size);          // Receive TCP data - buf and size is the receiving buffer. It returns -1 if the connection is closed. It returns 0 when no new data is available. All other return values is the number of bytes received.
extern (C) qboolean Plugin_TcpSendData(int connection, void *data, int len);    // Send TCP data - buf and len point to the buffer which has the data to send. Len is the amount to bytes to send. Returns qfalse if something has failed.
extern (C) void Plugin_TcpCloseConnection(int connection);                      // Close an open TCP connection
extern (C) qboolean Plugin_UdpSendData(netadr_t* to, void* data, int len);      // Send UDP data
extern (C) void Plugin_ServerPacketEvent(netadr_t* to, void* data, int len);    // Receive UDP data


//  -- UIDS / GUIDs --

extern (C) void Plugin_SetPlayerUID(int clientslot, int uid);     // Set player's UID
extern (C) uint Plugin_GetPlayerUID(uint clientslot);               // Get player's UID
extern (C) immutable(char)* Plugin_GetPlayerGUID(int clientslot);               // Get player's GUID
extern (C) void Plugin_SetPlayerGUID(int clientslot, const char* guid);    // Set player's GUID
extern (C) int Plugin_DoesServerUseUids();                                      // Self explanatory
extern (C) void Plugin_SetServerToUseUids(int useuids);                             // Self explanatory


//      == System functions ==

extern (C) int Plugin_Milliseconds();  // Milliseconds since server start
extern (C) void Plugin_RandomBytes( byte *string, int len );

//      == Scriptfunctions ==

extern(C) alias Fun = void function();
extern (C) void Plugin_ScrAddFunction(immutable(char)* name, Fun fun);
//extern (C) void Plugin_ScrAddMethod(char *name, void (*function)(scr_entref_t object));
extern (C) void Plugin_ScrReplaceFunction(immutable(char)* name, Fun fun);
//extern (C) void Plugin_ScrReplaceMethod(char *name, xfunction_t function);

extern (C) void Plugin_Scr_AddEntity(gentity_t* ent);
extern (C) int Plugin_Scr_GetNumParam();
extern (C) int Plugin_Scr_GetInt( int );
extern (C) float Plugin_Scr_GetFloat( int );
extern (C) char* Plugin_Scr_GetString( int );
extern (C) gentity_t* Plugin_Scr_GetEntity( int );
extern (C) short Plugin_Scr_GetConstString( int );
extern (C) int Plugin_Scr_GetType( int );
extern (C) void Plugin_Scr_GetVector( int, vec3_t* );
extern (C) void Plugin_Scr_Error( const char *string);
extern (C) void Plugin_Scr_ParamError( int, const char *string);
extern (C) void Plugin_Scr_ObjectError( const char *string);
extern (C) void Plugin_Scr_AddInt(int value);
extern (C) void Plugin_Scr_AddFloat(float);
extern (C) void Plugin_Scr_AddBool(qboolean);
extern (C) void Plugin_Scr_AddString(const char *string);
extern (C) void Plugin_Scr_AddUndefined();
extern (C) void Plugin_Scr_AddVector( vec3_t vec );
extern (C) void Plugin_Scr_AddArray( );
extern (C) void Plugin_Scr_MakeArray( );
extern (C) void Plugin_Scr_AddArrayKey( int strIdx );
extern (C) short Plugin_Scr_ExecEntThread( gentity_t* ent, int callbackHook, int numArgs);
extern (C) short Plugin_Scr_ExecThread( int callbackHook, int numArgs);
extern (C) void Plugin_Scr_FreeThread( short threadId);



extern (C) void Plugin_Scr_NotifyLevel(int constString, int numArgs);
extern (C) void Plugin_Scr_NotifyNum(int entityNum, int entType, int constString, int numArgs);
extern (C) void Plugin_Scr_Notify(gentity_t* ent, ushort constString, int numArgs);
extern (C) ushort Plugin_Scr_AllocString(const char*);



extern (C) playerState_t *Plugin_SV_GameClientNum( int num ); //Retrives the playerState_t* object from a client number

extern (C) gentity_t* Plugin_GetGentityForEntityNum(int entnum);
extern (C) client_t* Plugin_GetClientForClientNum(int clientnum);

extern (C) char* Plugin_SL_ConvertToString(int index);

extern (C) void Plugin_SV_SetConfigstring(int index, const char *text);
extern (C) void Plugin_SV_GetConfigstring( int index, char *buffer, int bufferSize );
