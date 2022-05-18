\name{List non-function objects}
\alias{lsNoFunction}
\title{List non-function objects}
\description{List all objects visible in the global environment except user created functions.}
\usage{
lsNoFunction()
}
\details{Compared to standard 'ls()', this function displays only the subset of 'ls()' which are not functions. 

The member of this list can be removed by 'zap()' but not the set of the functions created.
}

\author{Virasakdi Chongsuvivatwong
	\email{ cvirasak@gmail.com}
}
\seealso{'use', 'detach', 'ls', 'rm'}
\examples{
object1 <- 1:5
object2 <- list(a=3, b=5)
function1 <- function(x) {x^3 +1}
ls() 
lsNoFunction()

## To show only functions
as.character(lsf.str()[])
}
\keyword{database}
