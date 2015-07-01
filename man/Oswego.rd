\name{Oswego}
\docType{data}
\alias{Oswego}
\title{Dataset from an outbreak of food poisoning in US}
\description{
This dataset contains information on the records of 75 persons under investigation
for the cause of acute food poisoning after a dinner party.
}
\usage{data(Oswego)}
\format{A data frame containing 75 observations and 20 variables.}
\source{EpiInfo package}
\examples{
data(Oswego)
.data <- Oswego
attach(.data)
pyramid(age, sex)
detach(.data)
}
\keyword{datasets}
    