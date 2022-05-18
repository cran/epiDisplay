\name{print lrtest}
\alias{print.lrtest}
\title{Print lrtest results}
\description{Print results for likelihood ratio test}
\usage{
\method{print}{lrtest}(x, ...)
}
\arguments{
       \item{x}{object of class 'lrtest'}
       \item{...}{further arguments passed to or used by methods.}
}
\author{Virasakdi Chongsuvivatwong
       \email{ cvirasak@gmail.com}
}
\seealso{'logistic.display'}
\examples{
model0 <- glm(case ~ induced + spontaneous, family=binomial, data=infert)
model1 <- glm(case ~ induced, family=binomial, data=infert)
lrtest (model0, model1)
lrtest (model1, model0) -> a
a}
\keyword{database}                                                                            

