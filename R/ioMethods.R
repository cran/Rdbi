# -*- R -*-
# $RCSfile: ioMethods.R,v $
# $Date: 2001/08/28 20:31:20 $
# $Revision: 1.1.1.1 $
# Copyright 2001, Timothy H. Keitt
# Licence: GPL

#
# Generic method to be subclassed for each implementation
#

dbSendQuery <- function(conn, ...) UseMethod("dbSendQuery")
#
# This function submits a query string to the backend.  Returns an
# object that inherits from Rdbi.result.  See "resultMethods.R".
#

dbGetQuery <- function(conn, ...) UseMethod("dbGetQuery")
#
# Execute the query and return the results as a data frame
#

dbListTables <- function(conn, ...) UseMethod("dbListTables")
#
# Output a list of table names associated with the connection object.
# Output should look like output from ls().
#

dbReadTable <- function(conn, ...) UseMethod("dbReadTable")
#
# Analog of the read.table() function.  Returns a data frame.  Some
# facility for converting DB types to R types is helpfull.  Generally,
# this will just pass a "select * from mytable" to dbGetQuery() which
# returns the data frame.
#

dbWriteTable <- function(conn, ...) UseMethod("dbWriteTable")
#
# Analog of write.table().  It should assemble input into a data frame
# and write the frame into a table in database.  Locking should be
# used to insure that the operation is atomic---either the table is
# written in its entirety or it not written at all.
#

dbAppendTable <- function(conn, ...) UseMethod("dbAppendTable")
#
# Takes a dataframe and appends its contents to an existing table.
# dbWriteTable() can use this after creating an empty table.  Again,
# this must be an atomic operation, no partial updating allowed.
#





#
# Default methods
#

dbSendQuery.default <- function(conn, ...) {

  stop("Invalid connection object")

}

dbGetQuery.default <- function(conn, ...) {

  stop("Invalid connection object")

}

dbListTables.default <- function(conn, ...) {

  stop("Invalid connection object")

}

dbReadTable.default <- function(conn, ...) {

  stop("Invalid connection object")

}

dbWriteTable.default <- function(conn, ...) {

  stop("Invalid connection object")

}

dbAppendTable.default <- function(conn, ...) {

  stop("Invalid connection object")

}




