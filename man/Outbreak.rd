\name{Outbreak investigation}
\docType{data}
\alias{Outbreak}
\title{Dataset from an outbreak of food poisoning on a sportsday, Thailand 1990.}
\description{
This dataset contains information from an outbreak investigation concerning food poisoning on a sportsday in Thailand 1990.

Dichotomous variables for exposures and symptoms were coded as follow:
		\tabular{lll}{
        	\tab 0 \tab = no\cr
         	\tab 1 \tab = yes\cr
         	\tab 9 \tab = missing or unknown\cr
       }
}
\usage{data(Outbreak)}
\format{
  A data frame with 1094 observations on the following 13 variables.
  \describe{
    \item{\code{id}}{a numeric vector}
    \item{\code{sex}}{a numeric vector}
		\tabular{lll}{
        	\tab 0 \tab = female\cr
         	\tab 1 \tab = male\cr
       }
    \item{\code{age}}{a numeric vector: age in years}
		\tabular{lll}{
        	\tab 99 \tab = missing\cr
       }
    \item{\code{exptime}}{an AsIs or character vector of exposure times}
    \item{\code{beefcurry}}{a numeric vector: whether the subject had eaten beefcurry}
    \item{\code{saltegg}}{a numeric vector: whether the subject had eaten salted eggs}
    \item{\code{eclair}}{a numeric vector: pieces of eclair eaten}
		\tabular{lll}{
        	\tab 80 \tab = ate but could not remember how much\cr
         	\tab 90 \tab = totally missing information\cr
       }
    \item{\code{water}}{a numeric vector: whether the subject had drunk water}
    \item{\code{onset}}{an AsIs or character vector of onset times}
    \item{\code{nausea}}{a numeric vector}
    \item{\code{vomiting}}{a numeric vector}
    \item{\code{abdpain}}{a numeric vector: abdominal pain}
    \item{\code{diarrhea}}{a numeric vector}
  }
}
\references{Thaikruea, L., Pataraarechachai, J., Savanpunyalert, P., Naluponjiragul, U. 1995
An unusual outbreak of food poisoning. \emph{Southeast Asian J Trop Med Public Health} 
\bold{26(1)}:78-85.
}
\examples{
data(Outbreak)
.data <- Outbreak
# Distribution of reported pieces of eclair taken
attach(.data)
tab1(eclair) 

# Defining missing value
.data$eclair[.data$eclair > 20] <- NA
detach(.data)
attach(.data)
pieces.of.eclair <- cut(eclair, c(0,1,2,20), include.lowest=TRUE, right=FALSE)
tabpct(pieces.of.eclair, diarrhea)
rm(list=ls())
detach(.data) 
}
\keyword{datasets}
    