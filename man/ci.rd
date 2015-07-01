\name{CI}
\alias{ci}
\alias{ci.default}
\alias{ci.binomial}
\alias{ci.numeric}
\alias{ci.poisson}
\title{Confidence interval of probabilty, mean and incidence}
\description{Compute confidence interval(s) of variables or values input from keyboard.}
\usage{
ci(x, ...)

\method{ci}{default}(x,...)

\method{ci}{binomial}(x, size, precision, alpha = 0.05, ...)

\method{ci}{numeric}(x, n, sds, alpha = 0.05, ...)

\method{ci}{poisson}(x, person.time, precision, alpha = 0.05, ...) 
}
\arguments{
       \item{x}{a variable for 'ci', number of success for 'ci.binomial', mean(s) for 'ci.numeric', and counts for 'ci.poisson'}
       \item{size}{denominator for success}
       \item{precision}{level of precision used during computation for the confidence limits}
       \item{alpha}{significance level}
       \item{n}{sample size}
       \item{sds}{standard deviation}
       \item{person.time}{denominator for count}
       \item{...}{further arguments passed to or used by other methods}
}
\details{These functions compute confidence intervals of probability, mean and incidence from variables in a dataset or values from keyboard input.

'ci' will try to identify the nature of the variable 'x' and determine the appropriate method (between 'ci.binomial' and 'ci.numeric') for computation. 'ci' without a specified method will never call 'ci.poisson'.

The specific method, ie. 'ci.binomial', 'ci.numeric' or 'ci.poisson', should be used when the values are input from the keyboard or from an aggregated data frame with columns of variables for the arguments.

'ci.binomial' and 'ci.numeric' employ exact probability computation while 'ci.numeric' is based on the t-distribution assumption.
}
\value{'ci.binomial' and 'ci.poisson' return a data frame containing the number of events, the denominator and the incidence rate. 'ci.numeric' returns means and standard deviations. All of these are followed by the standard error and the confidence limit, the level of which is determined by 'alpha'}
\author{Virasakdi Chongsuvivatwong
       \email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'summ'}
\examples{
data(Oswego)
.data <- Oswego
attach(.data)
# logical variable
ci(ill)
# numeric variable
ci(age)
# factor
ci(sex=="M")
ci(sex=="F")
detach(.data)

# Example of confidence interval for means
library(MASS)
.data <- Cars93
attach(.data)
car.price <- aggregate(Price, by=list(type=Type), FUN=c("mean","length","sd"))
car.price
ci.numeric(x=car.price$mean, n=car.price$length, sds=car.price$sd.Price )
detach(.data)
rm(list=ls())
 
# Example of confidence interval for probabilty
data(ANCdata)
.data <- ANCdata
attach(.data)
death1 <- death=="yes"
death.by.group <- aggregate.numeric(death1, 
	by=list(anc=anc, clinic=clinic), FUN=c("sum","length"))
death.by.group
ci.binomial(death.by.group$sum.death1, death.by.group$length)
detach(.data)
rm(list=ls())

# Example of confidence interval for incidence
data(Montana)
.data <- Montana
attach(.data)
des(.data)
age.Montana <- aggregate.data.frame(Montana[,1:2],
	by=list(agegr=Montana$agegr),FUN="sum")
age.Montana
ci.poisson(age.Montana$respdeath, person.time=age.Montana$personyrs)
detach(.data)
rm(list=ls())

# Keyboard input
# What is the 95 \% CI of sensitivity of a test that gives all
# positive results among 40 diseased individuals
ci.binomial(40,40)

# What is the 99 \% CI of incidence of a disease if the number
# of cases is 25 among 340,000 person-years
ci.poisson(25, 340000, alpha=.01) # 4.1 to 12.0 per 100,000 person-years

}
\keyword{database}

