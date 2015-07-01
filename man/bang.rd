\name{Bangladesh Fertility Survey}
\alias{Bang}
\docType{data}
\title{ Dataset from 1988 Bangladesh Fertility Survey}
\description{
The file consists of a subsample of 1934 women grouped in 60 districts.
}
\usage{data(Bang)}
\format{
  A data frame with 1934 observations on the following 7 variables.
  \describe{
    \item{\code{woman}}{identifying code of each woman}
	\item{\code{district}}{identifying code for each district}
	\item{\code{user}}{\code{1} = using contraceptive \code{0} = not using}
    \item{\code{living.children}}{Number of living children at time of survey}
		\tabular{lll}{
        	\tab 1 \tab = none\cr
         	\tab 2 \tab = 1\cr
         	\tab 3 \tab = 2\cr
         	\tab 4 \tab = 3 or more\cr
       }
	\item{\code{age_mean}}{age of woman in years, centred around the mean}
    \item{\code{urban}}{Type of region of residence: \code{1} = urban, \code{0} = rural}
	\item{\code{constant}}{constant term = 1}
  }
}
\source{Huq, N. M., and Cleland, J. 1990. Bangladesh Fertility Survey 1989 (Main Report). Dhaka: \emph{National Institute of Population Research and Training}}
\keyword{datasets}
