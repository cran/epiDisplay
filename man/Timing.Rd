\name{Timing exercise}
\alias{Timing}
\docType{data}
\title{ Dataset on time going to bed, waking up and arrival at a workshop}
\description{
This dataset came from an interview survey on the workshop attendants
on 2004-12-14.

Note that the date of bed time is 2004-12-13 if the respondent went
to bed before midnight.                                        
}
\usage{data(Timing)}
\format{
  A data frame with 18 observations on the following 11 variables.
  \describe{
    \item{\code{id}}{a numeric vector}
    \item{\code{gender}}{a factor with levels \code{male} \code{female}}
    \item{\code{age}}{a numeric vector}
    \item{\code{marital}}{a factor with levels \code{single} \code{married} \code{others}}
    \item{\code{child}}{a numeric vector indicating number of children}
    \item{\code{bedhr}}{a numeric vector indicating the hour of going to bed}
    \item{\code{bedmin}}{a numeric vector indicating the minute of going to bed}
    \item{\code{wokhr}}{a numeric vector indicating the hour of waking up}
    \item{\code{wokmin}}{a numeric vector indicating the minute of waking up}
    \item{\code{arrhr}}{a numeric vector indicating the hour of arrival at the workshop}
    \item{\code{arrmin}}{a numeric vector indicating the minute of arrival at the workshop}
  }
}
\examples{
data(Timing)
des(Timing)
}
\keyword{datasets}
