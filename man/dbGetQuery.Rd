\name{dbGetQuery}
\alias{dbGetQuery}
\title{Submit a query string and fetch results}
\description{
  \code{dbGetQuery} is a generic function that, when called on a valid
  connection object, executes a query and returns a dataframe with the
  query results, or an error if no results were generated.
}
\usage{
dbGetQuery(conn, ...)
}
\arguments{
  \item{conn}{A database connection object}
  \item{\dots}{Arguments that when pasted together form a query string}
}
\details{
  Simply calls \code{\link{dbSendQuery}} and \code{\link{dbGetResult}}.
}
\value{
  A dataframe with the results.
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}
\seealso{\code{\link{dbConnect}}, \code{\link{dbGetResult}},
  \link{methods}, \code{\link{class}}, \code{\link{paste}}}  

\keyword{methods}
\keyword{connection}
\keyword{data}
