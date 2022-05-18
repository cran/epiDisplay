\name{print power.for.2p}
\alias{print.power.for.2p}
\title{Print power.for.2p results}
\description{Print results for power of hypothesis testing of 2 proportions}
\usage{
\method{print}{power.for.2p}(x, ...)
}
\arguments{
       \item{x}{object of class 'power.for.2p'}
       \item{...}{further arguments passed to or used by methods.}
}
\author{Virasakdi Chongsuvivatwong
       \email{ cvirasak@gmail.com}
}
\seealso{'n.for.2p'}
\examples{
power.for.2p(p1=.1, p2=.2, n1=10, n2=15)
power.for.2p(p1=seq(1,9,.5)/10, p2=.5, n1=100, n2=120)
}
\keyword{database}                                                                            

