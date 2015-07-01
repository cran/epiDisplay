\name{Data for cleaning}
\docType{data}
\alias{Planning}
\title{Dataset for practicing cleaning, labelling and recoding}
\description{
The data come from clients of a family planning clinic.

For all variables except id: 9, 99, 99.9, 888, 999 represent missing values
}
\format{
  A data frame with 251 observations on the following 11 variables.
  \describe{
    \item{\code{ID}}{a numeric vector: ID code}
    \item{\code{AGE}}{a numeric vector}
    \item{\code{RELIG}}{a numeric vector: Religion}
		\tabular{lll}{
        	\tab 1 \tab = Buddhist\cr
         	\tab 2 \tab = Muslim\cr
       }
    \item{\code{PED}}{a numeric vector: Patient's education level}
		\tabular{lll}{
        	\tab 1 \tab = none\cr
         	\tab 2 \tab = primary school\cr
         	\tab 3 \tab = secondary school\cr
         	\tab 4 \tab = high school\cr
         	\tab 5 \tab = vocational school\cr
         	\tab 6 \tab = university\cr
         	\tab 7 \tab = other\cr
       }
    \item{\code{INCOME}}{a numeric vector: Monthly income in Thai Baht}
		\tabular{lll}{
        	\tab 1 \tab = nil\cr
         	\tab 2 \tab = < 1,000\cr
         	\tab 3 \tab = 1,000-4,999\cr
         	\tab 4 \tab = 5,000-9,999\cr
         	\tab 5 \tab = 10,000\cr
       }
    \item{\code{AM}}{a numeric vector: Age at marriage}
    \item{\code{REASON}}{a numeric vector: Reason for family planning}
		\tabular{lll}{
        	\tab 1 \tab = birth spacing\cr
         	\tab 2 \tab = enough children\cr
         	\tab 3 \tab = other\cr
       }
    \item{\code{BPS}}{a numeric vector: systolic blood pressure}
    \item{\code{BPD}}{a numeric vector: diastolic blood pressure}
    \item{\code{WT}}{a numeric vector: weight (Kg)}
    \item{\code{HT}}{a numeric vector: height (cm)}
  }
}
\usage{data(Planning)}
\examples{
data(Planning)
des(Planning)

# Change var. name to lowercase
names(Planning) <- tolower(names(Planning)) 
.data <- Planning
des(.data)
# Check for duplication of 'id'
attach(.data)
any(duplicated(id))
duplicated(id)
id[duplicated(id)] #215

# Which one(s) are missing?
setdiff(min(id):max(id), id) # 216

# Correct the wrong on
id[duplicated(id)] <- 216
detach(.data)
rm(list=ls())
}
\keyword{datasets}
    