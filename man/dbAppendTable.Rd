\name{dbAppendTable}
\alias{dbAppendTable}
\title{Appends data to a database table}
\description{
  \code{dbAppendTable} is a generic function that, when called on a
  valid database connection object, appends the contents of a data frame
  to a database table.
}
\usage{
dbAppendTable(conn, ...)
}
\arguments{
  \item{conn}{A database connection object.}
  \item{\dots}{Additional arguments}
}
\details{
  Column names of the data frame must match column names of the database
  table.  Implementations should allow the data frame columns to be a
  subset of the database table columns and match R column names to SQL
  column names.  Appends must be atomic.  Implementations must use
  transactions or emulate them.
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}
\seealso{\code{\link{dbConnect}}, \link{methods}, \code{\link{class}},
  \code{\link{on.exit}}}

\keyword{methods}
\keyword{connection}
\keyword{data}
