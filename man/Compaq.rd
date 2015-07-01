\name{Cancer survival}
\docType{data}
\alias{Compaq}
\title{Dataset on cancer survival}
\description{A dataset on cancer survival checking whether there is a survival difference between cancer patients in private and public hospitals.}
\usage{data(Compaq)}
\format{
  A data frame with 1064 observations on the following 7 variables.
  \describe{
    \item{\code{id}}{a numeric vector}
    \item{\code{hospital}}{a factor with levels \code{Public hospital} \code{Private hospital}}
    \item{\code{status}}{a numeric vector}
    \item{\code{stage}}{a factor with levels \code{Stage 1} \code{Stage 2} \code{Stage 3} \code{Stage 4}}
    \item{\code{agegr}}{a factor with levels \code{<40} \code{40-49} \code{50-59} \code{60+}}
    \item{\code{ses}}{a factor with levels \code{Rich} \code{High-middle} \code{Poor-middle} \code{Poor}}
    \item{\code{year}}{a numeric vector indicating the year of recruitment into the study}
  }
}
\examples{
data(Compaq)
des(Compaq)
}
\keyword{datasets}
    