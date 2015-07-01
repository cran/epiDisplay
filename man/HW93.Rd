\name{Hookworm 1993}
\alias{HW93}
\docType{data}
\title{Dataset from a study on hookworm prevalence and intensity in 1993}
\description{
A dataset from a cross-sectional survey in 1993 examining hookworm
infection}
\usage{data(HW93)}
\format{
  A data frame with 637 observations on the following 6 variables.
  \describe{
    \item{\code{id}}{a numeric vector for personal identification number}
    \item{\code{epg}}{a numeric vector for eggs per gram of faeces}
    \item{\code{age}}{a numeric vector for age in years}
    \item{\code{shoe}}{a factor for shoe wearing with levels \code{no} \code{yes}}
    \item{\code{intense}}{a factor for intensity of infection in epg. with levels \code{0} \code{1-1,999} \code{2,000+}}
    \item{\code{agegr}}{a factor for age group with levels \code{<15 yrs} \code{15-59 yrs} \code{60+ yrs}}
  }
}
\examples{
data(HW93)
des(HW93)
.data <- HW93
.data$order.intense <- ordered(.data$intense)
ord.hw <- polr(ordered(intense) ~ agegr + shoe, data=.data)
summary(ord.hw)
ordinal.or.display(ord.hw)
}
\keyword{datasets}
