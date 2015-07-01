\name{Ectopic pregnancy}
\alias{Ectopic}
\docType{data}
\title{ Dataset of a case-control study looking at history of 
abortion as a risk factor for ectopic pregnancy}
\description{
This case-control study has one case series and two control groups.\cr
The subjects were recruited based on three types of pregnancy outcome
}
\usage{data(Ectopic)}
\format{
  A data frame with 723 observations on the following 4 variables.
  \describe{
    \item{\code{id}}{a numeric vector}
    \item{\code{outc}}{a factor with levels \code{EP} \code{IA} \code{Deli}}
		\tabular{lll}{
        	\tab EP \tab = ectopic pregnancy\cr
         	\tab IA \tab = women coming for induced abortion\cr
         	\tab Deli \tab = women admitted for full-term delivery\cr
       }
    \item{\code{hia}}{a factor with levels \code{never IA} \code{ever IA}}
    \item{\code{gravi}}{a factor with levels \code{1-2} \code{3-4} \code{>4}}
  }
}

\examples{data(Ectopic)
library(nnet)
data(Ectopic)
.data <- Ectopic
multi1 <- multinom(outc ~ hia + gravi, data=.data)
summary(multi1)
mlogit.display(multi1)

# Changing referent group of outcome
.data$outcIA <- relevel(.data$outc, ref="IA")
multi2 <- multinom(outcIA ~ hia + gravi, data=.data)
summary(multi2)
mlogit.display(multi2)
}
\keyword{datasets}
