\name{tabpct}
\alias{tabpct}
\title{Two-way tabulation with mosaic plot}
\description{Two-way tabulation with automatic mosaic plot}
\usage{
tabpct(row, column, decimal = 1, percent = "both", 
    graph = TRUE, las = 0, main = "auto", xlab = "auto", 
    ylab = "auto", col = "auto", ...) 
  
}
\arguments{
	\item{row, column}{variables}
	\item{decimal}{number of decimals for the percentage in the table}
	\item{percent}{orientation of the percentage in the table}
	\item{graph}{automatic graphing}
	\item{las}{orientation of group labelling} 
  \item{main}{main title}
  \item{xlab}{X axis label}
  \item{ylab}{Y axis label}
  \item{col}{colours of the bars}
  \item{...}{additional arguments for 'table'}

0: always parallel to axis

1: always horizontal,

2: always perpendicular to the axis,

3: always vertical.
}

\details{'tabpct' gives column and row percent cross-tabulation as well as mosaic plot. 

The width of the bar in the plot denotes the relative proportion of the row variable.

Inside each bar, the relative proportion denotes the distribution of column variables within each row variable.

The default value for the 'percent' orientation is "both". It can also be "col" or "row".

Due to limitation of 'mosaicplot', certain graphic parameters such as 'cex.main', 'cex.lab' are not acceptable. The parameter 'main', 'xlab' and 'ylab' can be suppressed by making equal to " ". An additional line starting with 'title' can be used to write new main and label titles with 'cex.main' and 'cex.lab' specified. 
}
\value{Tables of row and column percentage}
\author{Virasakdi Chongsuvivatwong
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'tab1', 'table', 'mosaicplot'}
\examples{
data(Oswego)
.data <- Oswego
attach(.data)
agegr <- cut(age, breaks=c(0,20,40,60,80))
tabpct(agegr, ill)
tabpct(agegr, ill, cex.axis=1) # enlarge value labels
# To increase the size of the various titles:
tabpct(agegr, ill, cex.axis=1, main="", xlab="", ylab="", col=c("blue","purple"))
title(main="Diseased by Age group", cex.main=1.8,
    xlab="Age (years)",ylab="Diseased", cex.lab=1.5)
detach(.data)
rm(list=ls())    
}
\keyword{aplot}