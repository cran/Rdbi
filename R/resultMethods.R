# -*- R -*-
# $RCSfile: resultMethods.R,v $
# $Date: 2001/08/28 20:31:20 $
# $Revision: 1.1.1.1 $
# Copyright 2001, Timothy H. Keitt
# Licence: GPL
#

#
# Generic method to be subclassed for each implementation
#

dbGetResult <- function(result) UseMethod("dbGetResult")
#
# Return a data frame with results
#

dbClearResult <- function(result) UseMethod("dbClearResult")
#
# Free resources associated with result object
#

dbResultInfo <- function(result) UseMethod("dbResultInfo")
#
# Returns a list with result information, e.g., status
#

dbColumnInfo <- function(result) UseMethod("dbColumnInfo")
#
# Type information about each column is stored in successive
# rows of the output.
#


#
# Default methods
#

dbGetResult.default <- function(result) {

  stop("Invalid result class")

}

dbClearResult.default <- function(result) {

  stop("Invalid result object")

}

dbResultInfo.default <- function(result) {

  stop("Invalid result object")

}

dbColumnInfo.default <- function(result) {

  stop("Invalid result class")

}

print.Rdbi.result <- function(x, ...)
  print.list.pairs(dbResultInfo(x), ...)


