\name{dbListTables}
\alias{dbListTables}
\title{Lists database tables}
\description{
  A generic function that, when called on a valid connection object,
  returns a list of tables stored in the database backend.
}
\usage{
dbListTables(conn, ...)
}
\arguments{
  \item{conn}{A database connection object.}
  \item{\dots}{Additional arguments.}
}
\value{
  A list of character strings with table names.
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}
\seealso{\code{\link{dbConnect}}, \code{\link{ls}}, \link{methods},
  \code{\link{class}}, \code{\link{match.call}}} 
\keyword{methods}
\keyword{connection}
\keyword{data}
