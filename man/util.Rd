\name{Utility functions}
\alias{list.to.csv}
\alias{list.to.key.pair.string}
\alias{print.list.pairs}
\alias{single.quote}
\alias{double.quote}
\alias{strip.line.feeds}
\alias{expand.asis}
\title{Utility functions}
\description{
  \code{list.to.csv} converts a list of values to a comma seperated
  string.
  
  \code{list.to.key.pair.string} takes a list and reformats it as a
  string with arbitrary seperators between keys and values and between
  key-value pairs.
  
  \code{print.list.pairs} is a simple utility function that prints list
  key-value pairs nicely formated.
  
  \code{single.quote} pastes its arguments into a single quoted string.
  
  \code{double.quote} pastes its arguments into a double quoted string.
  
  \code{strip.line.feeds} removes line feeds from a string.
  
  \code{expand.asis} takes an "asis" argument as used in
  \code{\link{read.table}}} and returns a vector of bools indicating
  whether columns should be converted to factors.
}
\usage{
list.to.csv(...)
list.to.key.pair.string(key.list, key.sep = "=", pair.sep = " ")
print.list.pairs(x, ...)
single.quote(...)
double.quote(...)
strip.line.feeds(x)
expand.asis(as.is, len = length(as.is))
}
\arguments{
  \item{list}{A list of values.}
  \item{key.sep}{Seperator between keys and values.}
  \item{pair.sep}{Seperator between key-value pairs.}
  \item{string}{A text string.}
  \item{as.is}{A column name or number, or a vector of column numbers,
    or a vector of booleans indicating which columns to leave in
    character mode as opposed to converting to factors.}
  \item{len}{The length of the output "asis" vector.}
}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt}
\examples{
list.to.csv(list(a = 'a', b = 'b', c = 'c'))
print.list.pairs(list(a = 'a', b = 'b', c = 'c'))
list.to.key.pair.string(list(a = 'a', b = 'b', c = 'c'),
 key.sep = " -> ", pair.sep = " | ")
single.quote("test")
double.quote("test")
expand.asis(5, 10)
strip.line.feeds("test\n")
}
\keyword{internal}

