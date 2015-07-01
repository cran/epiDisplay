\name{shapiro.qqnorm}
\alias{shapiro.qqnorm}
\title{Qqnorm plots with Shapiro-Wilk's test}
\description{Quantile-normal plots with Shapiro-Wilk's test result integrated}
\usage{
shapiro.qqnorm (x, ...)
}
\arguments{
	\item{x}{A numeric vector}
	\item{...}{Graphical parameters passed to 'par'}
}
\details{
To test a variable 'x' against the normal distribution, a qqnorm plot is integrated with the Shapiro-Wilk test to enhance interpretation.
}
\author{Virasakdi Chongsuvivatwong
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'shapiro.test', 'qqnorm', 'par'}
\examples{
x <- rnorm(10)
a <- LETTERS[1:10]
shapiro.qqnorm(x, pch=a, col="red")
qqline(x, lty=2, col="black")
}
\keyword{htest}
