\name{dbConnect}
\alias{dbConnect}
\title{Connect to a database}
\description{
  \code{dbConnect} is a generic function that, when evoked with a valid
  database class, will return a connection object.
}
\usage{
dbConnect(dbObj, ...)
}
\arguments{
  \item{dbObj}{A database class object.}
  \item{\dots}{An argument list specifying connection options.}
}
\details{
  Each package that sub-classes Rdbi must provide a \code{dbConnect}
  function.  The first argument of the \code{dbConnect} function is an
  object whose class determines which \code{dbConnect} method is
  actually called.  For example, the Rdbi.PgSQL package provides a
  function \code{PgSQL()} that returns an object of class
  \code{c("PgSQL", "Rdbi")}.  Therefore the call
  \code{dbConnect(PgSQL(), ...)} will invoke the method
  \code{dbConnect.PgSQL}.  Rdbi arranges for the specific package
  to be loaded via the \code{\link{autoload}} mechanism.  In this
  example, Rdbi.PgSQL is autoloaded when \code{PgSQL} is called.
}
\value{
  A database connection object that inherits from "Rdbi.conn".
  Additionally, the connection object should possess two attributes
  required to reopen the connection from the object.  The
  "library.call" contains a call or expression that will load the
  library necessary to support the connection object.  The
  "connect.call" attribute should contain the call that created the
  connection object.  Also, it is very convenient to arrange for
  low-level connection resources to be freed when the R connection
  object is garbage collected.  See the Rdbi.PgSQL C code for an
  example.  
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}
\seealso{\code{\link{dbDisconnect}}, \code{\link{dbReconnect}},
  \link{methods}, \code{\link{class}}, \code{\link{match.call}}}

\keyword{methods}
\keyword{connection}
\keyword{data}
