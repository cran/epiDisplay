\name{dotplot}
\alias{dotplot}
\title{Dot plot}
\description{Plot of frequency in dots}
\usage{
dotplot (x, bin = "auto", by = NULL, xmin = NULL, xmax = NULL, 
    time.format = NULL, time.step = NULL, pch = 18, dot.col = "auto", 
    main = "auto", ylab = "auto", cex.X.axis = 1, cex.Y.axis = 1, ...)  
}
\arguments{
	\item{x}{a numeric vector. Allowed types also include "Date" and "POSIXct"}
	\item{bin}{number of bins for the range of 'x'}
	\item{by}{stratification variable}
	\item{xmin}{lower bound of x in the graph}
	\item{xmax}{upper bound of x in the graph}
	\item{time.format}{format for time or date at the tick marks}
	\item{time.step}{a character string indicating increment of the sequence of tick marks}
	\item{pch}{either an integer specifying a symbol or a single character to be used as the default in plotting points}
  \item{dot.col}{a character or a numeric vector indicating the colour of each category of 'by'}
  \item{main}{main title}
  \item{ylab}{Y axis title}
  \item{cex.X.axis}{character extension scale of X axis}
  \item{cex.Y.axis}{character extension scale of Y axis}
	\item{...}{graphical parameters for the dots when there is no stratification}
}
\details{'dotplot' in Epicalc is similar to a histogram. Each dot represents one record. Attributes of the dots can be further specified in '...' when there is no strafication. Otherwise, the dots are plotted as a diamond shape and the colours are automatically chosen based on the current palette and the number of strata.

When 'bin="auto"' (by default), and the class of the vector is 'integer', 'bin' will be automatically set to max(x)-min(x)+1. This strategy is also applied to all other time and date variables. Users can try other values if the defaults are not to their liking. See the example of 'timeExposed' below.

The argument 'xmin' and 'xmax' indicate the range of x to be displayed on the graph. These two arguments are independent from the value of 'bin', which controls only the number of columns for the original data range. 

Dotplot usually starts the first tick mark on the X-axis at 'xmin' (or min(x) if the 'xmin' is not specified). The argument 'time.step' is typically a character string, containing one of 'sec', 'min', 'hour', 'day', 'DSTday', 'week', 'month' or 'year'.  This can optionally be preceded by an integer and a space, or followed by "s", such as "2 weeks".

Setting proper 'xmin', 'xmax' and 'time.step' can improve the location of tick marks on the X-axis. The 'time.format' argument can then be given to further improve the graph. See the last two examples for a better understanding.}
\author{Virasakdi Chongsuvivatwong
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'summ', 'hist', 'seq.Date' and 'seq.POSIXt'}
\examples{
a <- rep(1:2, 250)
b <- rnorm(500,mean=a)
dotplot(b)
dotplot(b, pch=1)
dotplot(b, by=a)
dotplot(b, by=a, pch=1) # You may try other values of 'pch'

# For the commands below,
# if dates in X axis are not readable, 
# try omitting '#' from the next line
# Sys.setlocale("LC_ALL", "C")

# The number of dots in each column is the frequency
# of 'x' for the exact value on the X axis.
data(Outbreak)
.data <- Outbreak
attach(.data)
class(age) # numeric
dotplot(age) # 40 columns
age.as.integer <- as.integer(age)
dotplot(age.as.integer)
# 'bin' is the number of columns in the data range.
# Specifying 'min' and 'max' only expands or truncates
# the range of the X axis and has no effect on the distribution
# of the dots inside the data range.
dotplot(age.as.integer, xmin=0, xmax=150) # Just for demonstration.
dotplot(age.as.integer, xmin=0, xmax=70) # the "99"s are now out of the plot.
dotplot(age.as.integer, xmin=0, xmax=70, by=sex)

# Controlling colours of the dots
dotplot(age.as.integer, xmin=0, xmax=70, dot.col="chocolate") 
sex1 <- factor(sex); levels(sex1) <- list("M"=1,"F"=0)
dotplot(age.as.integer, xmin=0, xmax=70, by=sex1, dot.col=c(2,5)) 
dotplot(age.as.integer, xmin=0, xmax=70, by=sex1, 
  dot.col=c("brown","blue"), main="Age by sex",
  cex.X.axis=1.3, cex.Y.axis=1.5, cex.main=1.5) 
rm(list=ls())
detach(.data)
}
\keyword{aplot}