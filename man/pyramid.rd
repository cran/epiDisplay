\name{pyramid}
\alias{pyramid}
\title{Population pyramid}
\description{Create a population pyramid from age and sex}
\usage{
pyramid (age, sex, binwidth = 5, inputTable = NULL, printTable = FALSE, 
    percent = c("none", "each", "total"), col.gender = NULL, 
    bar.label = "auto", decimal = 1, col = NULL, cex.bar.value = 0.8, 
    cex.axis = 1, main = "auto", cex.main = 1.2, ...)
}
\arguments{
	\item{age}{a numeric variable for age}
	\item{sex}{a variable of two levels for sexes, can be numeric but preferrably factor with labelled levels or characters}
	\item{binwidth}{bin width of age for each bar}
	\item{inputTable}{a table to read in with two columns of sexes and rows of age groups}
	\item{printTable}{whether the output table should be displayed on the console}
	\item{percent}{whether the lengths of the bars should be calculated from freqencies (default), percentages of each sex or total percentages}
  \item{col.gender}{vector reflecting colours of the two gender}
  \item{bar.label}{whether the bars would be labelled with the values}
	\item{decimal}{number of decimals displayed in the percent output table}
	\item{col}{colour(s) of the bars}
	\item{cex.bar.value}{character extension factor of the bar labels}
	\item{cex.axis}{character extension factor of the axis}
	\item{main}{main title}
	\item{cex.main}{character extension factor of main title}
	\item{...}{graph options for the bars, e.g. col}
}
\details{'pyramid' draws a horizontal bar graph of age by sex. 

The parameters of graph (par) options can be applied to 'font.lab' and those of the bars, e.g. 'col' but not of others.

Other lower level graph commands should be only for adding a 'title'.

'bar.label' when set as "auto", will be TRUE when 'percent="each"' or 'percent="total"'
}
\author{Virasakdi Chongsuvivatwong
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'barplot', 'levels', 'table'}
\value{When the variables age and sex are input arguments, the return object includes age group variable and the output table. The argument 'decimal' controls only decimals of the output displayed on the console but not the returned table.}
\examples{
data(Oswego)
.data <- Oswego
attach(.data)
pyramid(age, sex)
pyramid(age, sex, bar.label = TRUE)
pyramid(age, sex, printTable=TRUE)
pyramid(age, sex, percent = "each", printTable=TRUE)
pyramid(age, sex, percent = "total", printTable=TRUE)
pyramid(age, sex, percent = "total", bar.label = FALSE)
pyramid(age, sex, percent = "total", cex.bar.value = .5)

pyramid(age, sex, col="red")
pyramid(age, sex, col=1:16) # Too colorful!
pyramid(age, sex, col.gender = c("pink","lightblue"))
output <- pyramid(age, sex, binwidth = 10, percent="each", decimal=2)
agegr <- output$ageGroup
detach(.data)
rm(list=ls())

# Drawing population pyramid from an exisiting table
pyramid(inputTable=VADeaths[,1:2], font.lab=4)
pyramid(inputTable=VADeaths[,1:2], font.lab=4, main=NULL)
title("Death rates per 100 in rural Virginia in 1940")
}
\keyword{aplot}