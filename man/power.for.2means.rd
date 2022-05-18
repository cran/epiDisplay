\name{print power.for.2means}
\alias{print.power.for.2means}
\title{Print power.for.2means results}
\description{Print results for power for hypothesis testing of 2 means}
\usage{
\method{print}{power.for.2means}(x, ...)
}
\arguments{
       \item{x}{object of class 'power.for.2means'}
       \item{...}{further arguments passed to or used by methods.}
}
\author{Virasakdi Chongsuvivatwong
       \email{ cvirasak@gmail.com}
}
\seealso{'n.for.2means'}
\examples{
power.for.2means(mu1 = 10, mu2=14,   n1=5,  n2=7,  sd1=3, sd2=3.5)
power.for.2means(mu1 = 10, mu2=7:14, n1=20, n2=25, sd1=3, sd2=3.5) -> a
a
}
\keyword{database}                                                                            

