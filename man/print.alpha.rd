\name{print alpha}
\alias{print.alpha}
\title{Print alpha object}
\description{Print results related to Cronbach's alpha}
\usage{
\method{print}{alpha}(x, ...)
}
\arguments{
       \item{x}{object of class 'alpha'}
       \item{...}{further arguments passed to or used by methods.}
}
\author{Virasakdi Chongsuvivatwong
       \email{ cvirasak@gmail.com}
}
\seealso{'tableStack'}
\examples{
data(Attitudes)
alpha(qa1:qa18, dataFrame=Attitudes) -> a
print(a)
a}
\keyword{database}

