\name{dbReadTable}
\alias{dbReadTable}
\title{Reads a table into a data frame}
\description{
  \code{dbReadTable} is a generic function that, when called on a valid
  connection object, reads a table from the database backend and returns
  a data frame with the contents.
}
\usage{
dbReadTable(conn, ...)
}
\arguments{
  \item{conn}{A database connection object.}
  \item{\dots}{Additional arguments.}
}
\details{
  SQL types should be cast to R types to the extent possible.  A generic
  mechanism for type conversion is lacking.
}
\value{
  A data frame.
}

\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}
\seealso{\code{\link{dbConnect}}, \link{methods}, \code{\link{class}}}

\keyword{methods}
\keyword{connection}
\keyword{data}
