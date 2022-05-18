\name{lrtest}
\alias{lrtest}
\title{Likelihood ratio test}
\description{Likelihood ratio test for objects of class 'glm'}
\usage{
lrtest (model1, model2)
}
\details{Likelihood ratio test checks the difference between -2*logLikelihood of the two models against the change in degrees of freedom using a chi-squared test. It is best applied to a model from 'glm' to test the effect of a factor with more than two levels. The records used in the dataset for both models MUST be the same. The function can also be used with "clogit", which does not have real logLikelihood. 
}
\arguments{
	\item{model1, model2}{Two models of class "glm" having the same set of records and the same type ('family' and 'link')}
}
\author{Virasakdi Chongsuvivatwong
	\email{ cvirasak@gmail.com}
}
\seealso{'glm', 'logLik', 'deviance'}
\examples{
model0 <- glm(case ~ induced + spontaneous, family=binomial, data=infert)
model1 <- glm(case ~ induced, family=binomial, data=infert)
lrtest (model0, model1)
lrtest (model1, model0) # same result
lrtest (model1, model0) -> a
a
}
\keyword{htest}
