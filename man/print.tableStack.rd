\name{print tableStack}
\alias{print.tableStack}
\title{Print tableStack object}
\description{Print a tableStack object}
\usage{
\method{print}{tableStack}(x, ...)
}
\arguments{
       \item{x}{object of class 'tableStack' }
       \item{...}{further arguments passed to or used by methods.}
}
\author{Virasakdi Chongsuvivatwong
       \email{ cvirasak@gmail.com}
}
\seealso{'tableStack'}
\examples{
data(Attitudes)
tableStack(qa1:qa18, dataFrame=Attitudes) -> a
print(a)
data(Ectopic)
tableStack(hia, gravi, by=outc, dataFrame=Ectopic) -> b
print(b)
}
\keyword{database}

