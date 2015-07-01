\name{Xerophthalmia and respiratory infection}
\alias{Xerop}
\docType{data}
\title{Dataset from an Indonesian study on vitamin A deficiency and risk of respiratory infection}
\description{
This dataset was adopted from Diggle et al: Analysis of Longitudinal Data. REFERENCE --  Zeger and Karim, JASA (1991)

Note that there are some duplications of id and time combination.
}
\usage{data(Xerop)}
\format{A data frame containing 1200 observations and 10 variables.
  \describe{
    \item{\code{id}}{a numeric vector for personal identification number}
    \item{\code{respinfect}}{whether the child had respiratory infection in that visit}
    \item{\code{age.month}}{current age in month}
    \item{\code{xerop}}{whether the child currently had vitamin A deficiency}
    \item{\code{sex}}{gender of the child no detail on the code}
    \item{\code{ht.for.age}}{height for age}
    \item{\code{stunted}}{whether the child has stunted growth}
    \item{\code{time}}{time of scheduled visit}
    \item{\code{baseline.age}}{baseline age}
    \item{\code{season}}{season}
    }
}
\examples{
data(Xerop)
}
\keyword{datasets}
    