\name{summ}
\alias{summ}
\alias{summ.default}
\alias{summ.data.frame}
\alias{summ.factor}
\alias{summ.logical}
\title{Summary with graph}
\description{Summary of data frame in a convenient table. Summary of a variable 
with statistics and graph}
\usage{
summ(x, ...) 
\method{summ}{default}(x, by=NULL, graph = TRUE, box = FALSE, pch = 18, 
    ylab = "auto", main = "auto", cex.X.axis = 1, cex.Y.axis = 1,
    dot.col = "auto", ...)
\method{summ}{factor}(x, by=NULL, graph=TRUE, ...)
\method{summ}{logical}(x, by=NULL, graph=TRUE, ...)
\method{summ}{data.frame}(x, ...)
}
\details{For data frames, 'summ' gives basic statistics of each variable in 
the data frame. The other arguments are ignored.

For single vectors, a sorted dot chart is also provided, if graph=TRUE 
(default).}
\arguments{
	\item{x}{'x' can be a data frame or a vector}
	\item{by}{a stratification variable, valid only when x is a vector}
	\item{graph}{automatic plot (sorted dot chart) if 'x' is a vector}
	\item{box}{add a boxplot to the graph (by=NULL)}
	\item{pch}{plot characters}
  \item{ylab}{annotation on Y axis}
  \item{main}{main title of the graph}
  \item{cex.X.axis}{character extension scale of X axis}
  \item{cex.Y.axis}{character extension scale of Y axis}
  \item{dot.col}{colour(s) of plot character(s)}
  \item{...}{additional graph parameters}
}
\author{Virasakdi Chongsuvivatwong
	\email{ cvirasak@gmail.com}
}
\seealso{'summary', 'use', 'des'}
\examples{
data(Oswego)
.data <- Oswego
summ(.data)
with(.data, summ(age))
with(.data, summ(age, box=TRUE))
with(.data, summ(age, dot.col="brown"))
with(.data, summ(age, by=sex))
# Changing dot colours
with(.data, summ(age, by=sex, dot.col = c("blue","orange")))
# Enlarging main title and other elements
with(.data, summ(age, by=sex, cex.main=1.5, cex.X.axis=1.5, cex.Y.axis=1.7))

# Free vector
summ(rnorm(1000))
summ((1:100)^2, by=rep(1:2, 50))
summ((1:100)^2, by=rep(c("Odd","Even"), 50), main="Quadratic distribution by odd and even numbers")
}
\keyword{database}
