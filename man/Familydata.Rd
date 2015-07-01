\name{Familydata}
\alias{Familydata}
\docType{data}
\title{ Dataset of a hypothetical family}
\description{ Anthropometric and financial data of a hypothetical family}
\usage{data(Familydata)}
\format{
  A data frame with 11 observations on the following 6 variables.
  \describe{
    \item{\code{code}}{a character vector}
    \item{\code{age}}{a numeric vector}
    \item{\code{ht}}{a numeric vector}
    \item{\code{wt}}{a numeric vector}
    \item{\code{money}}{a numeric vector}
    \item{\code{sex}}{a factor with levels \code{F} \code{M}}
  }
}
\examples{
data(Familydata)
.data <- Familydata
des(.data)
summ(.data)
age2 <- with(.data, age)^2
with(.data, plot(age, money, log="y"))
dots.of.age <- seq(0,80,0.01)
new.data.frame <- data.frame(age=dots.of.age, age2=dots.of.age^2)
lm1 <- lm(log(money) ~ age + age2, data=.data)
summary(lm1)$coefficients
dots.of.money <- predict.lm(lm1, new.data.frame)
lines(dots.of.age, exp(dots.of.money), col="blue")
}
\keyword{datasets}
