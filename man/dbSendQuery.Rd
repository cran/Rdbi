\name{dbSendQuery}
\alias{dbSendQuery}
\title{Submits a query string to the database backend}
\description{
  \code{dbSendQuery} is a generic function that, when called on a valid
  connection object, pastes is argments into a query string and submits
  it to the database backend for processing.
}
\usage{
dbSendQuery(conn, ...)
}
\arguments{
  \item{conn}{A database connection object.}
  \item{\dots}{Arguments that when pasted together form a query string.}
}
\details{
  Sub-classed \code{dbSendQuery} methods should not fail unless the
  connection is not valid, in which case an error message should be
  printed.  Information about the query result status can be obtained
  by dereferencing the returned result object.
}
\value{
  A result object inheriting from "Rdbi.result".  You can arrange for
  the result buffer to be cleared when the result object is garbage
  collected by registering a finalizer function.  See the C code in
  Rdbi.PgSQL.
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}
\seealso{\code{\link{dbConnect}}, \code{\link{dbGetResult}},
  \code{\link{dbResultInfo}}, \link{methods}, \code{\link{class}},
  \code{\link{paste}}}  

\keyword{methods}
\keyword{connection}
\keyword{data}


