\name{kap}
\alias{kap}
\alias{kap.default}
\alias{kap.table}
\alias{kap.2.raters}
\alias{kap.m.raters}
\alias{kap.ByCategory}
\title{Kappa statistic}
\description{Measurement of agreement in categorization by 2 or more raters}
\usage{
kap(x, ...)

\method{kap}{default}(x, ...)

\method{kap}{table}(x, decimal =3, wttable = NULL, print.wttable = FALSE, ...)

\method{kap}{2.raters}(x, rater2, decimal =3, ...)

\method{kap}{m.raters}(x, decimal =3, ...)

\method{kap}{ByCategory}(x, decimal =3, ...)
}
\arguments{
	\item{x}{an object serving the first argument for different methods
		\tabular{lll}{
        	\tab FUNCTION \tab 'x'\cr
        	\tab 'kap.table' \tab table\cr
         	\tab 'kap.2.raters' \tab rater1\cr
         	\tab 'kap.m.raters' \tab data frame with raters in column\cr
         	\tab 'kap.ByCategory' \tab data frame with categories in column\cr
       }}

	\item{decimal}{number of decimal in the print}
  \item{wttable}{cross tabulation of weights of agreement among categories. It can be NULL, "w" and "w2". Applicable only for 'kap.table' and 'kap.2.raters'}
	\item{print.wttable}{whether the weights table will be printed out}
	\item{rater2}{a vector or factor containing opinions of the second rater among two raters.}
	\item{...}{further arguments passed to or used by other methods.}
}
\details{
There are two different principles for the calculation of the kappa statistic. 'kap.table' and 'kap.2.raters' use two fixed raters whereas 'kap.m.raters' and 'kap.ByCategory' are based on frequency of category of rating an individual received without a requirement that the raters must be fixed.

'kap.table' analyses kappa statistics from a predefined table of agreement of two raters.
 
'wttable' is important only if the rating can be more than 2 levels. If this argument is left as default or 'NULL', full agreement will be weighted as 1. Partial agreement is considered as non-agreement and weighted as 0. 

When 'wttable = "w"' the weights are given by \deqn{1 - abs(i - j)/(1 - k)} where i and j index the rows and columns of the ratings and k is the maximum number of possible ratings. A weight of 1 indicates an observation of perfect agreement.

When 'wttable = "w2", the weights are given by \deqn{1 - (abs(i - j)/(1 - k))^2.} In this case, weights of partial agreements will further increase.

'wttable' can otherwise be defined by the user.
 
'kap.2.raters' takes two vectors or factors, one for each of the two raters. Cross-tabulation of the two raters is displayed and automatically forwarded for computation of kappa statistic by 'kap.table'.

'kap.m.raters' is used for more than 2 raters. Although the variables are arranged based on columns of individual raters, only the frequency in each category rating is used. This function calculates the frequencies without any display and automatically forwards the results for computation by 'kap.ByCategory'.

'kap.ByCategory' is for the grouped data format, where each category (column) contains the counts for each individual subject being rated.  As mentioned above, the frequencies can come from different sets of raters.

}
\author{Virasakdi Chongsuvivatwong
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'table'}
\examples{
## Computation of kappa from a table
class  <- c("Normal","Benign","Suspect","Cancer")
raterA <- gl(4,4, label=class)
raterB <- gl(4,1,16, label=class)
freq   <- c(50,2,0,1,2,30,4,3,0,0,20,1,1,3,4,25)
table1 <- xtabs(freq ~ raterA + raterB)
table1
kap(table1)
wt <-c(1,.5,0,0,.5,1,0,0,0,0,1,.8,0,0,.8,1)
wttable <- xtabs(wt ~ raterA + raterB)
wttable # Agreement between benign vs normal is .5, suspect vs cancer is .8
kap(table1, wttable=wttable, print.wttable=TRUE)

# The following two lines are computational possible but inappropriate
kap(table1, wttable = "w", print.wttable=TRUE)
kap(table1, wttable = "w2", print.wttable=TRUE)

## A data set from 5 raters with 3 possible categories.
category.lab <- c("yes","no","Don't know")
rater1 <- factor(c(1,1,3,1,1,1,1,2,1,1), labels=category.lab)
rater2 <- factor(c(2,1,3,1,1,2,1,2,3,1), labels=category.lab)
rater3 <- factor(c(2,3,3,1,1,2,1,2,3,1), labels=category.lab)
rater4 <- factor(c(2,3,3,1,3,2,1,2,3,3), labels=category.lab)
rater5 <- factor(c(2,3,3,3,3,2,1,3,3,3), labels=category.lab)
kap.m.raters(data.frame(rater1,rater2,rater3,rater4,rater5))

# The above is the same as
YES <- c(1,2,0,4,3,1,5,0,1,3)
NO <- c(4,0,0,0,0,4,0,4,0,0)
DONTKNOW <- c(0,3,5,1,2,0,0,1,4,2)
kap.ByCategory(data.frame(YES,NO,DONTKNOW))

# Using 'kap.m.raters' for 2 raters is inappropriate. Kappa obtained
# from this method assumes that the agreement can come from any two raters,
# which is usually not the case.
kap.m.raters(data.frame(rater1, rater2))
# 'kap.2.raters' gives correct results
kap.2.raters(rater1, rater2)

# When there are missing values,
rater3[9] <- NA; rater4[c(1,9)] <- NA
kap.m.raters(data.frame(rater1,rater2,rater3,rater4,rater5))
# standard errors and other related statistics are not available.

# Two exclusive rating categories give only one common set of results.
# The standard error is obtainable even if the numbers of raters vary
# among individual subjects being rated.
totalRaters <- c(2,2,3,4,3,4,3,5,2,4,5,3,4,4,2,2,3,2,4,5,3,4,3,3,2)
pos <- c(2,0,2,3,3,1,0,0,0,4,5,3,4,3,0,2,1,1,1,4,2,0,0,3,2)
neg <- totalRaters - pos
kap.ByCategory(data.frame(neg, pos))
}
\keyword{array}
