\name{dbReconnect}
\alias{dbReconnect}
\alias{dbReconnect.Rdbi.conn}
\title{Reopens a connection to a database}
\description{
  \code{dbReconnect} a generic function that, when called with a valid
  connection object, reopens the connection to the database backend.
}
\usage{
dbReconnect(conn)
}
\arguments{
  \item{conn}{A database connection object.}
}
\details{
  A database connection object contains the necessary information to
  re-establish a connection.  Thus, a database connection object can be
  saved across R sessions and reconnected later.  If I can convince the
  R developers to add a generic function that is always called when
  objects are restored, then it will be possible to have connections
  persist across R sessions.

  Note that packages that implement the Rdbi interface do not need to
  provide a \code{dbReconnect} function as long as the connection object
  returned by \code{\link{dbConnect}} inherits from "Rdbi.conn" and has
  attributes described in the documentation for \code{\link{dbConnect}}.
  \code{dbReconnect.Rdbi.conn} can reconnect the object.  If
  \code{dbReconnect.Rdbi.conn} is not general enough, the
  package can provide its own method.
}
\value{
  A database connection object.
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}
\seealso{\code{\link{dbConnect}}, \code{\link{dbDisconnect}},
  \link{methods}, \code{\link{class}}}
\keyword{methods}
\keyword{connection}
\keyword{data}

