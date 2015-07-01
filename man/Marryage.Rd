\name{Age at marriage}
\alias{Marryage}
\docType{data}
\title{ Dataset on age at marriage}
\description{
This dataset contains data on age at first marriage of attendants
at a workshop in 1997.
}
\usage{data(Marryage)}
\format{
  A data frame with 27 observations on the following 7 variables.
  \describe{
    \item{\code{id}}{a numeric vector}
    \item{\code{sex}}{a factor with levels \code{male} \code{female}}
    \item{\code{birthyr}}{a numeric vector indicating year of birth}
    \item{\code{educ}}{a factor with levels \code{bach-} \code{bachelor or higher}}
    \item{\code{marital}}{a factor with levels \code{Single} \code{Married}}
    \item{\code{maryr}}{a numeric vector indicating year of marriage}
    \item{\code{endyr}}{a numeric vector indicating year of analysis}
  }
}
\examples{
data(Marryage)
des(Marryage)
}
\keyword{datasets}
