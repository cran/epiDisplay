\name{Power}
\alias{power.for.2means}
\alias{power.for.2p}
\title{Power calculation for two sample means and proportions}
\description{Calculation of power given the results from a study}
\usage{
power.for.2p(p1, p2, n1, n2, alpha = 0.05) 
power.for.2means(mu1, mu2, n1, n2, sd1, sd2, alpha = 0.05) 
}
\arguments{
	\item{p1, p2}{probabilities of the two samples}
	\item{n1, n2}{sample sizes of the two samples}
	\item{alpha}{significance level}
	\item{mu1, mu2}{means of the two samples}
	\item{sd1, sd2}{standard deviations of the two samples}
}
\details{These two functions compute the power of a study from the given arguments
}
\author{Virasakdi Chongsuvivatwong
	\email{ cvirasak@gmail.com}
}
\seealso{'n.for.2means', 'n.for.2p'}
\examples{
# Suppose, in the example found in 'help(n.for.2p)', 
# given the two proportions are .8 and .6 and the sample size 
# for each group is 60.

power.for.2p(p1=.8, p2=.6, n1=60, n2=60) # 59 percent

# If the means of a continuous outcome variable in the same 
# two groups were 50 and 60 units and the standard deviations were 30 
# and 35 units, then the power to detect a statistical significance 
# would be

power.for.2means(mu1=50, mu2=60, sd1=30, sd2=35, n1=60, n2=60) 
# 39 percent. Note the graphic display
}
\keyword{math}
