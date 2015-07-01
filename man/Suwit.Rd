\name{Hookworm and blood loss}
\alias{Suwit}
\docType{data}
\title{ Hookworm infection and blood loss: SEAJTM 1970}
\description{
A study using radio-isotope to examine daily blood loss
and number of hookworms infecting the patients.
}
\usage{data(Suwit)}
\format{
  A data frame with 15 observations on the following 3 variables.
  \describe{
    \item{\code{id}}{a numeric vector}
    \item{\code{worm}}{a numeric vector: number of worms}
    \item{\code{bloss}}{a numeric vector: estimated daily blood loss (mg/day)}
  }
}
\source{Areekul, S., Devakul, K., Viravan, C., Harinasuta, C. 1970 
Studies on blood loss, iron absorption and iron reabsorption 
in hookworm patients in Thailand. 
\emph{Southeast Asian J Trop Med Pub Hlth} \bold{1(4)}: 519-523.}
\references{
  ~~ possibly secondary sources and usages ~~
}
\examples{
data(Suwit)
with(Suwit, plot(worm, bloss, type="n"))
with(Suwit, text(worm, bloss, labels=id))
abline(lm(bloss ~ worm, data=Suwit), col="red")
}
\keyword{datasets}
