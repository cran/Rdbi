\name{dbConnectionInfo}
\alias{dbConnectionInfo}
\title{Returns a list of connection status attributes}
\description{
  \code{dbConnectionInfo} is a generic function that, when called on a
  valid connection object, returns a list containing connection status
  information.  It is called by \code{print.Rdbi.conn}.
}
\usage{
dbConnectionInfo(conn)
}
\arguments{
  \item{conn}{A database connection object.}
}
\details{
  Any useful information such as the database host and connection status
  should be returned.
}
\value{
  An arbitrary list of connection attributes.
}
\note{I should probably define a \code{dbConnectionOK} method that is
  generic and return \code{TRUE} when the connection is valid.  However,
you don't need to constantly check for a valid connection object.  Keep
the code path short!  For example, in Rdbi.PgSQL, there is a C function
that submits a query request to the database backend.  This is the only
time that the connection object is actually derefenced to its connection
pointer.  This C function checks for a valid connection and returns and
error if needed.  Therefore there is no reason to check whether the
connection is valid before passing it to a query function; the C code
will do the check.  In this way the interface is simplified and the
connection checking is localized to a single call instead of scattered
all over the code.  As Bertrand Meyer put it: \emph{"Defensive coding is
  offensive!"}.}
\references{\url{http://rdbi.sourceforge.net/}}
\author{Timothy H. Keitt} \seealso{\code{\link{dbConnect}},
\code{\link{dbDisconnect}},
  \link{methods}, \code{\link{class}}}
\keyword{methods}
\keyword{connection}
\keyword{data}

