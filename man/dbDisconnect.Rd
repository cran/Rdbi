\name{dbDisconnect}
\alias{dbDisconnect}
\title{Closes a database connection}
\description{
  \code{dbDisconnect} a generic function that, when called with a valid
  connection object, closes the database connection and frees any
  resource associated with the connection.
}
\usage{
dbDisconnect(conn)
}
\arguments{
  \item{conn}{A database connection object.}
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}
\seealso{\code{\link{dbConnect}}, \code{\link{dbReconnect}},
  \link{methods}, \code{\link{class}}}
\keyword{methods}
\keyword{connection}
\keyword{data}

