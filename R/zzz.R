# -*- R -*-
# $RCSfile: zzz.R,v $
# $Date: 2001/08/28 20:31:22 $
# $Revision: 1.1.1.1 $
# Copyright 2001, Timothy H. Keitt
# Licence: GPL

.First.lib <- function(lib, pkg) {
  autoload("PgSQL", "Rdbi.PgSQL")
# autoload("MySQL", "Rdbi.MySQL")
# autoload("ODBC", Rdbi.ODBC")

# Reconnect any connection objects in environment -- doesn't work now
# that .Rprofile get run before objects are restored
  for (objName in ls(envir = globalenv())) {

    obj <- get(objName, envir = globalenv())

    if (inherits(obj, "Rdbi.conn"))
      assign(objName, dbReconnect(obj), envir = globalenv())

  }

  cat("Package Rdbi loaded.  Type ?Rdbi.Overview for details\n")
  
  return(invisible())
}

.Last.lib <- function(...) {

  for (objName in ls(envir = globalenv())) {

    obj <- get(objName, envir = globalenv())

    if (inherits(obj, "Rdbi.conn")) dbDisconnect(obj)

  }

}
