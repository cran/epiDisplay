\name{tab1}
\alias{tab1}
\alias{print.tab1}
\title{One-way tabulation}
\description{One-way tabulation with automatic bar chart and optional indicator variables generation}
\usage{
tab1(x0, decimal = 1, sort.group = FALSE, 
    cum.percent = !any(is.na(x0)), graph = TRUE, 
    missing = TRUE, bar.values = "frequency", 
    horiz = FALSE, cex = 1, cex.names = 1, main = "auto", xlab = "auto", 
    ylab = "auto", col = "auto", gen.ind.vars = FALSE, ...) 

\method{print}{tab1}(x, ...)
}
\arguments{
	\item{x0}{a variable}
	\item{decimal}{number of decimals for the percentages in the table}
	\item{sort.group}{pattern for sorting categories in the table and in the chart. Default is no sorting. I can also be "decreasing" or "increasing".}
	\item{cum.percent}{presence of cumulative percentage in the output table. Default is TRUE for a variable without any missing values.}
	\item{graph}{whether a graph should be shown}
	\item{missing}{include the missing values category or <NA> in the graphic display}
	\item{bar.values}{include the value of frequency. This can also be "percent" or "none" at the end of each bar}
	\item{horiz}{set the bar chart to horizontal orientation}
  \item{cex}{parameter for extension of characters or relative size of the bar.values}
  \item{cex.names}{character extension or relative scale of the name labels for the bars}
  \item{main}{main title of the graph}
  \item{xlab}{label of X axis}
  \item{ylab}{label of Y axis}
  \item{col}{colours of the bar}
  \item{gen.ind.vars}{whether the indicator variables will be generated}
  \item{x}{object of class 'tab1' obtained from saving 'tab1' results}
  \item{...}{further arguments passed to or used by other methods}
}
\details{'tab1' is an advanced one-way tabulation providing a nice frequency table as well as a bar chart. The description of the variable is also used in the main title of the graph.

The bar chart is vertical unless the number of categories is more than six \strong{and} any of the labels of the levels consists of more than 8 characters \strong{or} 'horiz' is set to TRUE.

For table has less than categories, the automatic colour is "grey". Otherwise, the graph will be colourful. The argument, 'col' can be overwritten by the user.

The argument 'gen.ind.vars' is effective only if x0 is factor.
}
\value{Output table}
\author{Virasakdi Chongsuvivatwong
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'tabpct', 'label.var', 'table', 'barplot', 'model.matrix'}
\examples{
tab1(state.division)
tab1(state.division, bar.values ="percent")
tab1(state.division, sort.group ="decreasing")
tab1(state.division, sort.group ="increasing")
tab1(state.division, col=c("chocolate","brown1","brown4"),
  main="Number of states in each zone")
# For presentation, several 'cex' parameters should increase
tab1(state.division, col=c("chocolate","brown1","brown4"),
  main="Number of states in each zone",
  cex.main=1.7, cex.name=1.2, cex.axis=1.3, cex.lab=1.3)


data(Oswego)
.data <- Oswego
attach(.data)
tab1(ill) # Note the column of cumulative percentages in the table.
tab1(ill, cum.percent=FALSE)
tab1(chocolate) 
# Due to missing values, cumulative percentages are now automatically turned off.
tab1(chocolate, cum.percent=TRUE)
# Slightly too many columns in text!
tab1(chocolate, missing=FALSE, bar.values="percent")
agegr <- cut(age, breaks=c(0,10,20,30,40,50,60,70,80))
tab1(agegr) # No need to start with 'calc' as it is outside .data
tab1(agegr, col="grey") # graphic output from older versions of 'tab1'
tab1(agegr, col=c("red","yellow","blue")) # Colours recycled
tab1(agegr, horiz=TRUE)

# Keeping output table
dev.off()
tab1(agegr, graph = FALSE) -> a
print(a)
a # same results
attributes(a)
a$output.table
class(a$output.table) # "matrix" 
# 'a$output.table' is ready for exporting to a .csv file by 
# write.csv(a$output.table, file="table1.csv") 
# "table1.csv" is now readable by a spreadsheet program
detach(.data)
rm(list=ls())
}
\keyword{aplot}