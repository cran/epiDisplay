\name{IUD trial admission data}
\alias{IudAdmit}
\docType{data}
\title{Dataset admission of cases for IUD trials}
\description{
This dataset is a subset of WHO IUD trial. It should be merged with IudFollowup and IudDiscontinue
}
\usage{data(IudAdmit)}
\format{A data frame containing 918 observations and 4 variables.
  \describe{
    \item{\code{id}}{a numeric vector for personal identification number}
    \item{\code{idate}}{date of IUD insertion}
    \item{\code{lmptime}}{time since last menstrual period}
    \item{\code{a122}}{type of IUD}
  }
}
\examples{
data(IudAdmit)
}
\keyword{datasets}
    