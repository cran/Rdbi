\name{dbColumnInfo}
\alias{dbColumnInfo}
\title{Returns type information about a result column}
\description{
  \code{dbColumnInfo} is a generic function that, when called on a
  result object, returns type information about tuple fields in the
  result.
}
\usage{
dbColumnInfo(result)
}
\arguments{
  \item{result}{A query result object.}
}
\value{
  Returns a data frame with each row corresponding to a different field
  in the result.  Rows are named for each field.  Any available
  information about a field can be presented in columns of the data
  frame.  The most important of these is probably a "Type" column that
  can be used to convert strings returned by the query into appropriate
  R types.
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}

\seealso{\code{\link{dbSendQuery}}, \code{\link{dbResultInfo}}}

\keyword{methods}

