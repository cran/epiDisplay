\name{Matched case-control study}
\docType{data}
\alias{VC1to1}
\alias{VC1to6}
\title{Datasets on a matched case-control study of esophageal cancer}
\description{
Two different datasets for the same matched case-control study. VC1to6 has 1 case : varying number of controls (from 1 to 6) whereas VC1to1 has the number of control reduced to 1 for each case.

}
\usage{data(VC1to1)

data(VC1to6)}
\format{
  A data frame with the following 5 variables.
  \describe{
    \item{\code{matset}}{a numeric vector indicating matched set number from 1 to 26}
    \item{\code{case}}{a numeric vector: 1=case, 0=control}
    \item{\code{smoking}}{a numeric vector: 1=smoker, 0=non-smoker}
    \item{\code{rubber}}{a numeric vector: 1=exposed, 0=never exposed to rubber industry}
    \item{\code{alcohol}}{a numeric vector: 1=drinker, 0=non-drinker}
  }
}
\source{Chongsuvivatwong,  V. 1990
A case-control study of esophageal cancer  in Southern Thailand. 
\emph{J Gastro Hep} \bold{5}:391--394.}
\seealso{
'infert' in the datasets package.
}
\examples{
data(VC1to6)
.data <- VC1to6
des(.data)
with(.data, matchTab(case, alcohol, matset))
rm(.data)
}
\keyword{datasets}
    