\name{dbGetResult}
\alias{dbGetResult}
\title{Fetch results from a query}
\description{
  \code{dbGetResult} is a generic function that, when called on a result
  object, returns any tuples associated with the object.
}
\usage{
dbGetResult(result)
}
\arguments{
  \item{result}{A query result object.}
}
\details{
  Fetches the results of a query and returns a dataframe.  Non-character
  types should probably be converted to the appropriate numeric or
  logical type.  A generic type conversion interface is still needed.
}
\value{
  A dataframe with the results.
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}

\seealso{\code{\link{dbSendQuery}}, \code{\link{data.frame}}}

\keyword{methods}
\keyword{data}
