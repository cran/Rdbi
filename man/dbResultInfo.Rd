\name{dbResultInfo}
\alias{dbResultInfo}
\title{Returns information about a query result}
\description{
  \code{dbResultInfo} is a generic function that, when called on a
  result object, returns a list with status information.
}
\usage{
dbResultInfo(result)
}
\arguments{
  \item{result}{A query result object.}
}
\value{
  A list with result status information.
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}

\seealso{\code{\link{dbSendQuery}}}

\keyword{methods}
