\name{Default methods and internal functions}
\alias{dbAppendTable.default}
\alias{dbClearResult.default}
\alias{dbColumnInfo.default}
\alias{dbConnect.default}
\alias{dbConnectionInfo.default}
\alias{dbDisconnect.default}
\alias{dbGetQuery.default}
\alias{dbGetResult.default}
\alias{dbListTables.default}
\alias{dbReadTable.default}
\alias{dbReconnect.default}
\alias{dbResultInfo.default}
\alias{dbSendQuery.default}
\alias{dbWriteTable.default}
\alias{print.Rdbi.result}
\alias{print.Rdbi.conn}
\title{Default methods and internal functions}
\description{Default methods and internal functions}
\usage{
  \method{dbAppendTable}{default}(conn, ...)
  \method{dbClearResult}{default}(result)
  \method{dbColumnInfo}{default}(result)
  \method{dbConnect}{default}(dbObj, ...)
  \method{dbConnectionInfo}{default}(conn)
  \method{dbDisconnect}{default}(conn)
  \method{dbGetQuery}{default}(conn, ...)
  \method{dbGetResult}{default}(result)
  \method{dbListTables}{default}(conn, ...)
  \method{dbReadTable}{default}(conn, ...)
  \method{dbReconnect}{default}(conn)
  \method{dbResultInfo}{default}(result)
  \method{dbSendQuery}{default}(conn, ...)
  \method{dbWriteTable}{default}(conn, ...)
  \method{print}{Rdbi.conn}(x, ...)
  \method{print}{Rdbi.result}(x, ...)
}
\note{See source for details.}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}
\keyword{internal}
