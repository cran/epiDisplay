\name{Sleepiness}
\alias{Sleep3}
\docType{data}
\title{Dataset on sleepiness in a workshop}
\description{ Sleepiness among participants in a workshop}
\usage{data(Sleep3)}
\format{
  A data frame with 15 observations on the following 8 variables.
  \describe{
    \item{\code{id}}{a numeric vector}
    \item{\code{gender}}{a factor with levels \code{male} \code{female}}
    \item{\code{dbirth}}{a Date vector for birth date}
    \item{\code{sleepy}}{a numeric vector for any experience of sleepiness in the class: \code{0=no} \code{1=yes}}
    \item{\code{lecture}}{a numeric vector for ever felt sleepy during a lecture: \code{0=no} \code{1=yes}}
    \item{\code{grwork}}{a numeric vector for ever felt sleepy during a group work: \code{0=no} \code{1=yes}}
    \item{\code{kg}}{a numeric vector}
    \item{\code{cm}}{a numeric vector}
  }
}
\examples{
data(Sleep3)
des(Sleep3)
}
\keyword{datasets}
