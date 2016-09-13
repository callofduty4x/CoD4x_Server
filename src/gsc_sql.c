#include "q_shared.h"
#include "qcommon_io.h"
#include "qcommon.h"
#include "g_hud.h"
#include "scr_vm.h"
#include "cmd.h"
#include "server.h"
#include "maxmind_geoip.h"
#include "q_platform.h"
#include "g_sv_shared.h"
#include "cvar.h"
#include "misc.h"
#include "sec_crypto.h"
#include "sv_auth.h"
#include "sapi.h"

#include <string.h>
#include <time.h>
#include "plugin_handler.h"

#include <mysql/mysql.h>

/* =================================================================
    * URL
        http://dev.mysql.com/doc/refman/5.7/en/mysql-get-client-info.html

    * Description
        Returns a string that represents the MySQL client library version; for example, "5.7.16".

    * Return Value(s)
        A character string that represents the MySQL client library version.
       ================================================================= */
void gsc_mysql_version() {
    /* Set the version, (a pointer of type char const), to the mysql client version */
    const char *version = mysql_get_client_info();

    /* Print out the MySQL Client Version for the user.
     * This is an indication of whether or not cod4x is properly reading <mysql/mysql.h>
     * I recommend using this as a basic test
     */
    Com_Printf("MySQL client version: %s\n", version);
    return;
}

/* =================================================================
* URL
    http://dev.mysql.com/doc/refman/5.7/en/mysql-init.html

* Description
    Allocates or initializes a MYSQL object suitable for mysql_real_connect().
    If mysql is a NULL pointer, the function allocates, initializes, and returns
    a new object. Otherwise, the object is initialized and the address of the
    object is returned. If mysql_init() allocates a new object, it is freed
    when mysql_close() is called to close the connection.

* Return Value(s)
    An initialized MYSQL* handle. NULL if there was insufficient memory to allocate a new object.
   ================================================================= */
void gsc_mysql_init() {

    if (Scr_GetNumParam() != 0) {
        Scr_Error("Usage: gsc_mysql_init();\n");
    }

    /* Print to let the user know that the function initalized */
	Com_Printf("gsc_mysql_init()\n");

    /* Sets my, (a pointer of type MYSQL), to the MySQL Connection Handle ID */
	MYSQL *my = mysql_init(NULL);

    if (my == NULL) {
        Scr_Error("Something went wrong when trying to get the MySQL CID");
    }

    /* Print to let the user know the MySQL Connection Handle ID */
    Com_Printf("The conneciton handle ID is: %d", (int)my);


    /* Returns the MySQL Handle Connection ID */
    Scr_AddInt((int)my);
}

/* =================================================================
* URL
    http://dev.mysql.com/doc/refman/5.7/en/mysql-real-connect.html

* Description
    mysql_real_connect() attempts to establish a connection to a
    MySQL database engine running on host. mysql_real_connect()
    must complete successfully before you can execute any other
    API functions that require a valid MYSQL connection handle structure.

* Return Value(s)
    A MYSQL* connection handle if the connection was successful, NULL
    if the connection was unsuccessful. For a successful connection,
    the return value is the same as the value of the first parameter.
   ================================================================= */
void gsc_mysql_real_connect() {

    int mysql = Scr_GetInt(0);
    char *host = Scr_GetString(1);
    char *user = Scr_GetString(2);
    char *pass = Scr_GetString(3);
    char *db = Scr_GetString(4);
    int port = Scr_GetInt(5);
    MYSQL* mysql2;

    /* On *Unix based systems, using "localhost" instead of 127.0.0.1 causes a unix socket error, we replace it*/
    if (strcmp(host, "localhost") == 0) {
        host = "127.0.0.1";
    }

    if (Scr_GetNumParam() != 6) {
        Scr_Error("Usage: gsc_mysql_real_connect(mysql, host, user, pass, db, port);\n");
    }

    /* Debugging code */
    //Com_Printf("\n gsc_mysql_real_connect(mysql=%d, host=\"%s\", user=\"%s\", pass=\"%s\", db=\"%s\", port=%d)\n", mysql, host, user, pass, db, port);

    /* Attempt to connect to the database */
	//mysql2 = mysql_real_connect((MYSQL *)mysql, host, user, pass, db, port, NULL, 0);


    mysql2 = mysql_real_connect((MYSQL *)mysql, host, user, pass, db, port, NULL, 0);
     /* Check to make sure the CID was properly assigned */


     /* We don't want to crash the server, so we have a check to return nothing to prevent that */
    if (mysql2 == NULL) {
        Com_Printf("Error: %s", mysql_error((MYSQL *)mysql));
        return;
    }

    /* Would you like to reconnect if connection is dropped? */
    qboolean reconnect = qtrue;

    /* Check to see if the mySQL server connection has dropped */
	mysql_options((MYSQL*)mysql, MYSQL_OPT_RECONNECT, &reconnect);

    /* Return the MySQL Connection Handle (should be the same as the first parameter)*/
    Scr_AddBool(qtrue);
}

/* =================================================================
* URL
    http://dev.mysql.com/doc/refman/5.7/en/mysql-close.html

* Description
    Closes a previously opened connection. mysql_close()
    also deallocates the connection handle pointed to by
    mysql if the handle was allocated automatically by
    mysql_init() or mysql_connect().

* Return Value(s)
    None.
   ================================================================= */
void gsc_mysql_close() {
    int mysql = Scr_GetInt(0);

	if (Scr_GetNumParam() != 1) {
		Scr_Error("Usage: gsc_mysql_close(mysql);\n");
	}

    /* Closes the MySQL Handle Connection that is passed as first arguement*/
    Com_Printf("Closing CID: %d\n", (MYSQL *)mysql);
    mysql_close((MYSQL *)mysql);

    /* Let the function properly close */
	return;
}

/* =================================================================
* URL
    http://dev.mysql.com/doc/refman/5.7/en/mysql-query.html

* Description
    Executes the SQL statement pointed to by the null-terminated
    string stmt_str. Normally, the string must consist of a single
    SQL statement without a terminating semicolon (;) or \g.
    If multiple-statement execution has been enabled, the string
    can contain several statements separated by semicolons.

* Return Value(s)
    Zero for success. Nonzero if an error occurred.
   ================================================================= */
void gsc_mysql_query() {
   int mysql = Scr_GetInt(0);
   char *sql = Scr_GetString(1);


   if (Scr_GetNumParam() != 2) {
       Scr_Error("Usage: gsc_mysql_query(mysql, *sql);\n");
       Scr_Error("Where *sql is your query\n");
   }

   /* Set ret (return) to the return value
   *  0 = success
   * !0 = failure
   */

   /* Check to see if the query was a success */
   if (mysql_query((MYSQL *)mysql, sql) == 0) {
       Com_Printf("\nSuccessful query!\n");
       MYSQL_RES *result = mysql_store_result((MYSQL *)mysql);
       int num_fields = mysql_num_fields(result);
       MYSQL_ROW row;

       Scr_MakeArray(); [makearray1][makearray2]

       int count = 0;
       while((row = mysql_fetch_row(result))){
           if( count != 0 ) {
               Scr_AddString("break");
               Scr_AddArray();
           }
           for(int i = 0; i < num_fields; i++){
               Com_Printf("Data [%d]: %s\n", i, row[i]);
               Scr_AddString(row[i]);
               Scr_AddArray();
           }
           count++;
       }
   } else {
       Scr_Error("Query failed\n");
       Scr_AddBool(qfalse);
       return;
   }
}

void gsc_handle_row() {
    char* row = Scr_GetString(0);
    Com_Printf("%s", row);
}

/* =================================================================
* URL
    http://dev.mysql.com/doc/refman/5.7/en/mysql-errno.html

* Description
    For the connection specified by mysql, mysql_errno() returns the
    error code for the most recently invoked API function that can
    succeed or fail. A return value of zero means that no error occurred.
    Client error message numbers are listed in the MySQL errmsg.h header
    file.  Server error message numbers are listed in mysqld_error.h.
    Errors also are listed at Appendix B, Errors, Error Codes, and
    Common Problems.

* Return Value(s)
    An error code value for the last mysql_xxx() call, if it failed. Zero means no error occurred.
   ================================================================= */
void gsc_mysql_errno() {
    int mysql = Scr_GetInt(0);

	if (Scr_GetNumParam() != 1)  {
		printf("Usage: gsc_mysql_errno(mysql);\n");
		return;
	}

    /*Set ret (return value) of the mysql_errno to the error number */
	int ret = mysql_errno((MYSQL *)mysql);

    /* Check to see if ret is 0, if it is, no error*/
    if (ret == 0) {
        Com_Printf("No errors occured (this is a good thing)\n");
        return;
    }

    /* Return the error number*/
	Scr_AddInt(ret);
}

/* =================================================================
* URL
    http://dev.mysql.com/doc/refman/5.7/en/mysql-error.html

* Description
    For the connection specified by mysql, mysql_error() returns
    a null-terminated string containing the error message for the
    most recently invoked API function that failed. If a function
    did not fail, the return value of mysql_error() may be the
    previous error or an empty string to indicate no error.

    A rule of thumb is that all functions that have to ask the
    server for information reset mysql_error() if they succeed.

* Return Value(s)
    A null-terminated character string that describes the error. An empty string if no error occurred.
   ================================================================= */
void gsc_mysql_error() {
    int mysql = Scr_GetInt(0);


    if (Scr_GetNumParam() != 1)  {
		printf("Usage: gsc_mysql_error(mysql);\n");
		return;
	}

    /* Set ret, (which is a char pointer), to the value of mysql_error (casted to a char *, since C doesn't support strings) */
	char *ret = (char *)mysql_error((MYSQL *)mysql);

    /* Check to see if no error occured */
    if (strcmp(ret, "")) {
        Com_Printf("No errors occured (this is a good thing)\n");
        return;
    }
	Scr_AddString(ret);
}
