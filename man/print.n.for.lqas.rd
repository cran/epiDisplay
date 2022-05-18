\name{print n.for.lqas}
\alias{print.n.for.lqas}
\title{Print n.for.lqas results}
\description{Print results for sample size for lot quality assurance sampling}
\usage{
\method{print}{n.for.lqas}(x, ...)
}
\arguments{
       \item{x}{object of class 'n.for.lqas'}             
       \item{...}{further arguments passed to or used by methods.}
}
\author{Virasakdi Chongsuvivatwong
       \email{ cvirasak@gmail.com}
}
\examples{
n.for.lqas(p0 = 0.05, q=0)
n.for.lqas(p0 = (10:1)/100, q=0 ) -> a
a
}
\keyword{database}                                                                            

