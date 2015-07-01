\name{Tooth decay}
\docType{data}
\alias{Decay}
\title{Dataset on tooth decay and mutan streptococci}
\description{
Relationship between bacteria and presence of any decayed tooth.
}
\usage{data(Decay)}
\format{
  A data frame with 436 observations on the following 2 variables.
  \describe{
    \item{\code{decay}}{a numeric vector indicating presence of tooth decay}
    \item{\code{strep}}{a numeric vector indicating number of colony-forming-units
    (CFUs) of \emph{Streptococcus mutan} in the saliva}
  }
}
\source{Teanpaisan, R., Kintarak, S., Chuncharoen, C., Akkayanont, P. 1995
Mutans Streptococci and dental -caries in schoolchildren 
in Southern Thailand. 
\emph{Community Dentistry and Oral Epidemiology}  \bold{23}: 317-318.}
\examples{
data(Decay)
des(Decay)
}
\keyword{datasets}
    