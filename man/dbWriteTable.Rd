\name{dbWriteTable}
\alias{dbWriteTable}
\title{Writes a data frame to a database table}
\description{
  \code{dbWriteTable} is a generic function that, when called on a valid
  connection object, write a data frame to a database table.
}
\usage{
dbWriteTable(conn, ...)
}
\arguments{
  \item{conn}{A database connection object.}
  \item{\dots}{Additional arguments.}
}
\details{
  Any writes to the database backend should be atomic.  Packages
  subclassing Rdbi need to use or emulate transactions.
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}
\seealso{\code{\link{dbConnect}}, \link{methods}, \code{\link{class}},
  \code{\link{on.exit}}}

\keyword{methods}
\keyword{connection}
\keyword{data}
