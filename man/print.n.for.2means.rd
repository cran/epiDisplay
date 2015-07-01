\name{print n.for.2means}
\alias{print.n.for.2means}
\title{Print n.for.2means results}
\description{Print results for sample size for hypothesis testing of 2 means}
\usage{
\method{print}{n.for.2means}(x, ...)
}
\arguments{
       \item{x}{object of class 'n.for.2means'}
       \item{...}{further arguments passed to or used by methods.}
}
\author{Virasakdi Chongsuvivatwong
       \email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'n.for.2p'}
\examples{
n.for.2means(mu1 = 10, mu2 = 14, sd1=3, sd2=3.5)
n.for.2means(mu1 = 10, mu2 = 7:14, sd1=3, sd2=3.5) -> a
a
}
\keyword{database}                                                                            

