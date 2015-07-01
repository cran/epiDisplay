\name{IUD trial follow-up data}
\alias{IudFollowup}
\docType{data}
\title{Dataset followup cases of IUD trials}
\description{
This dataset is a subset of WHO IUD trial. It should be merged with IudAdmit and IudDiscontinue
}
\usage{data(IudFollowup)}
\format{A data frame containing 4235 observations and 6 variables.
  \describe{
    \item{\code{id}}{a numeric vector for personal identification number}
    \item{\code{vlmpdate}}{date of last mentrual period before this visit}
    \item{\code{vdate}}{date of visit}
    \item{\code{f22}}{lactating}
    \item{\code{f51}}{IUD threads visible}
    \item{\code{f61}}{subject continuing}
  }
}
\examples{
data(IudFollowup)
}
\keyword{datasets}
    