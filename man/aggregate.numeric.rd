\name{aggregate numeric}
\alias{aggregate.numeric}
\title{Summary statistics of a numeric variable by group}
\description{Split the numeric variable into subsets, compute summary statistics for each, and return the results in a data frame.}
\usage{
\method{aggregate}{numeric}(x, by, FUN=c("count","sum","mean","median","sd","se","min","max"), 
	na.rm=TRUE, length.warning=TRUE, ...)
}
\arguments{
       \item{x}{a numeric variable}
       \item{by}{a list of grouping elements, each as long as the variables in 'x'.  Names for the grouping variables are provided if they are not given. The elements of the list will be coerced to factors (if they are not already factors).}
       \item{FUN}{scalar functions to compute the summary statistics which can be applied to all data subsets.}
       \item{na.rm}{whether missing values will be removed during the computation of the statistics.}
       \item{length.warning}{show warning if x has any missing values}
       \item{...}{additional arguments passed on to 'aggregate'}
}
\details{This is the 'aggregate' method for objects inheriting from class 'numeric'.

If Epicalc is loaded, applying 'aggregate' to a numeric variable 'x' will call 'aggregate.numeric'. If 'x' is a data frame, 'aggregate.data.frame' will be called.

If the Epicalc package is not loaded, 'aggregate', from the stats package, coerces numeric variables (including 'ts' objects) into a data frame and calls 'aggregate.data.frame'.

The 'FUN' argument in 'aggregate.data.frame' can accept only one function.

'aggregate.numeric' takes a different approach. More than one function can be suppplied to the 'FUN' argument, however it can only be applied to one numeric variable.

'aggregate' in Epicalc is 'backward compatible' with the 'aggregate' function from the stats package. In other words, Epicalc users do not need to change basic syntax or arguments. However, the naming system of the returned object is slightly different. In addition to the ability to provide more statistics in one command, another useful feature of 'aggregate.numeric' in Epicalc is the default values of FUN. Without typing such an argument, 'aggregate.numeric' gives commonly wanted statistics in a shorter line of command.

Note that 'na.rm' set to TRUE by default to allow computation of descriptive statistics such as 'mean', and 'sd', when they are in the FUN argument, and 'length' is computed with missing records included. In standard R functions, the equivalent argument is '"na.rm"=TRUE'. 

The default value of the argument 'length.warning' is TRUE. A condition where 'x' has any missing value will be noticed, which is useful during data exploration. In further analysis, after missing values have been recognized, users may change 'length.warning' to FALSE to make the output look nicer. Both 'na.rm' and 'length.,warning' will have no effect if there are no missing values in x.

'count' is an additional function specific to 'aggregate.numeric'. It displays the number of non-missing records in each subgroup.

'aggregate.plot' makes use of the above function in drawing bar plots with error lines computed from 'aggregate.numeric'. When 'FUN="mean"', the automactic choice of error values is "se". Users can also choose "sd" or "ci". 'alpha' is effective only for 'error="ci"'.  If 'FUN="median"', the error values are inter-quartile range.
}
\author{Virasakdi Chongsuvivatwong
       \email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'aggregate', 'summ' and 'tapply'}
\examples{
data(Compaq)
.data <- Compaq
attach(.data)

## If 'x' is a data frame, the default S3 aggregate method from the stats package is called.
aggregate(data.frame(id,year), by=list(HOSPITAL=hospital, STAGE=stage),
	FUN="mean")
# The two additional columns are means of 'id' and 'year'

## If 'x' is a numeric vector, 'aggregate.numeric' from Epicalc package is called.
aggregate(year, by = list(HOSPITAL = hospital, STAGE = stage), 
	FUN = mean)
# The above command is the same as the one below. 
# However, note the difference in the name of the last column of the returned 
# data frame.
aggregate.data.frame(year, by = list(HOSPITAL = hospital, 
	STAGE = stage), FUN = mean)

# aggregate in Epicalc can handle multiple functions
aggregate(year, by = list(HOSPITAL = hospital, STAGE = stage), 
	FUN = c("mean", "sd", "length"))

## Handling of missing values
.data$year[8] <- NA
detach(.data)
attach(.data)
aggregate(year, by = list(STAGE = stage), FUN = c("length", "count"))
# Note the difference between 'length' and 'count' in Stage 1
# Means of subsets in 'aggregrate.data.frame' 
# have 'na.rm' set to FALSE.
aggregate.data.frame(year, by = list(STAGE = stage), FUN = "mean")

## The default value of 'na.rm' is TRUE in aggregate.numeric of Epicalc.
aggregate(year, by = list(STAGE = stage), FUN = c("mean","median"))

## It can be set to FALSE though.
aggregate(year, by = list(STAGE = stage), FUN = c("mean","median"), 
	"na.rm"=FALSE)

# Omitting the FUN argument produces various statistics.
options(digits=3)
aggregate(year, by = list(HOSPITAL = hospital, STAGE = stage))

# Warning of na.rm 
aggregate(year, by = list(HOSPITAL = hospital, STAGE = stage), length.warning=FALSE)

# Newly defined functions can be used
p05 <- function(x) quantile(x, prob=.05, na.rm=TRUE)
p95 <- function(x) quantile(x, prob=.95, na.rm=TRUE)
aggregate(year, by = list(HOSPITAL = hospital, STAGE = stage), FUN=c("p05", "p95"))
detach(.data)
rm(list=ls())
}
\keyword{database}

