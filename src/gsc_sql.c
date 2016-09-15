#include "scr_vm.h"
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
    Scr_AddString(version);
    Com_Printf("MySQL Version: %s\n", version);
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
    Com_DPrintf("gsc_mysql_init()\n");

    /* Sets my, (a pointer of type MYSQL), to the MySQL Connection Handle ID */
    MYSQL *my = mysql_init(NULL);

    if (my == NULL) {
        Scr_AddUndefined();
        Scr_Error("\nSomething went wrong when trying to get the MySQL CID\n");
        return;
    }

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

    if (Scr_GetNumParam() != 6) {
        Scr_Error("Usage: gsc_mysql_real_connect(mysql, host, user, pass, db, port);\n");
        Scr_AddUndefined();
        return;
    }

    /* On *Unix based systems, using "localhost" instead of 127.0.0.1 causes a unix socket error, we replace it*/
    if (strcmp(host, "localhost") == 0) {
        host = "127.0.0.1";
    }

    mysql2 = mysql_real_connect((MYSQL *)mysql, host, user, pass, db, port, NULL, 0);

    /* We don't want to crash the server, so we have a check to return nothing to prevent that */
    if (mysql2 == NULL) {
        Com_DPrintf("Error: %s", mysql_error((MYSQL *)mysql));
        Scr_AddUndefined();
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
    Com_DPrintf("Closing CID: %d\n", (MYSQL *)mysql);
    mysql_close((MYSQL *)mysql);
}

/* =================================================================
* URL
    http://dev.mysql.com/doc/refman/5.7/en/mysql-affected-rows.html

* Description
    mysql_affected_rows() may be called immediately after executing
    a statement with mysql_query() or mysql_real_query(). It
    returns the number of rows changed, deleted, or inserted by
    the last statement if it was an UPDATE, DELETE, or INSERT.
    For SELECT statements, mysql_affected_rows() works like
    mysql_num_rows().

* Return Value(s)
    An integer greater than zero indicates the number of rows
    affected or retrieved. Zero indicates that no records
    were updated for an UPDATE statement, no rows matched the
    WHERE clause in the query or that no query has yet been
    executed. -1 indicates that the query returned an error
    or that, for a SELECT query, mysql_affected_rows()
    was called prior to calling mysql_store_result().
   ================================================================= */
void gsc_mysql_affected_rows() {
    int mysql = Scr_GetInt(0);

    if (Scr_GetNumParam() != 1) {
        Scr_Error("Usage: gsc_mysql_affected_rows(mysql);\n");
    }

    int rowsAffected = mysql_affected_rows((MYSQL *)mysql);
    Scr_AddInt(rowsAffected);
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
    char* sql = Scr_GetString(1);

    if (Scr_GetNumParam() != 2) {
        Scr_Error("Usage: gsc_mysql_query(mysql, *sql);\n");
        Scr_Error("Where *sql is your query\n");
    }

    if (mysql_query((MYSQL *)mysql, sql) == 0) {
        Com_DPrintf("\nSuccessful query!\n");
        MYSQL_RES *result = mysql_store_result((MYSQL *) mysql);

        Scr_AddInt((int) result);
    }
    else
        Scr_AddUndefined();
}

/* =================================================================
* URL
    http://dev.mysql.com/doc/refman/5.7/en/mysql-num-rows.html

* Description
    Returns the number of rows in the result set.

* Return Value(s)
    The number of rows in the result set.
   ================================================================= */
void gsc_mysql_rowcount() {
    int result = Scr_GetInt(0);

    if (Scr_GetNumParam() != 1) {
        Scr_Error("Usage: gsc_mysql_rowcount(query result from gsc_mysql_query);\n");
    }

    int rowCount = mysql_num_rows((MYSQL_RES *) result);
    Scr_AddInt( rowCount );
}

/* =================================================================
* URL
    http://dev.mysql.com/doc/refman/5.7/en/mysql-num-fields.html

* Description
    Returns the number of columns in a result set.

* Return Value(s)
    An unsigned integer representing the number of columns in a result set.
   ================================================================= */
void gsc_mysql_num_field() {
    int result = Scr_GetInt(0);

    if (Scr_GetNumParam() != 1) {
        Scr_Error("Usage: gsc_mysql_num_field(query result from gsc_mysql_query);\n");
    }

    int fieldCount = mysql_num_fields((MYSQL_RES *) result);
    Scr_AddInt( fieldCount );
}

/* =================================================================
* URL
    http://dev.mysql.com/doc/refman/5.7/en/mysql-fetch-row.html

* Description
    Retrieves the next row of a result set.

* Return Value(s)
    A MYSQL_ROW structure for the next row. NULL if there are no more rows to retrieve or if an error occurred.
   ================================================================= */
void gsc_mysql_fetch_rows() {
    int results = Scr_GetInt(0);
    MYSQL_RES* result = (MYSQL_RES*) results;

    if (Scr_GetNumParam() != 1) {
        Scr_Error("Usage: gsc_mysql_fetch_row(query result from gsc_mysql_query);\n");
    }

    if( mysql_num_rows(result) != 0 )
    {
        int num_fields = mysql_num_fields(result);
        MYSQL_FIELD *field;
        MYSQL_ROW row;
        MYSQL_FIELD* fieldArray[num_fields];
        int count = 0;
        Scr_MakeArray();

        /* Check to see if this is a single element row */
        if (mysql_num_rows(result) == 1) {
            while((field = mysql_fetch_field(result))) {
                fieldArray[count] = field;
                count++;
            }
            row = mysql_fetch_row(result);
            Scr_MakeArray();
            for (int i = 0; i < num_fields; i++) {
                Scr_AddString(row[i]);
                int tempId = Scr_AllocString(fieldArray[i]->name);
                Scr_AddArrayKey(tempId);
            }
        } else {
            /* If it's not a single row column, get row data*/
            while((row = mysql_fetch_row(result))){
                Scr_MakeArray();
                while((field = mysql_fetch_field(result))) {
                    fieldArray[count] = field;
                    count++;
                }

                for (int i = 0; i < num_fields; i++) {
                    Scr_AddString(row[i]);
                    int tempId = Scr_AllocString(fieldArray[i]->name);
                    Scr_AddArrayKey(tempId);
                }
                Scr_AddArray();
            }
        }
    }
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
        Com_Printf("Usage: gsc_mysql_errno(mysql);\n");
        return;
    }

    /*Set ret (return value) of the mysql_errno to the error number */
    int ret = mysql_errno((MYSQL *)mysql);

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
    if (strcmp(ret, "") == 0) {
        Scr_AddUndefined(); // if( isDefined(gsc_mysql_error)) ...
        return;
    }
    Scr_AddString(ret);
}
