\name{cc}
\alias{cc}
\alias{cci}
\alias{cs}
\alias{csi}
\alias{make2x2}
\alias{graph.casecontrol}
\alias{graph.prospective}
\alias{labelTable}
\title{Odds ratio calculation and graphing}
\description{Odds ratio calculation and graphing}
\usage{
cc(outcome, exposure, decimal = 2, cctable = NULL, graph = TRUE, 
	original = TRUE, design = "cohort", main, xlab = "auto", ylab,
  alpha = .05, fisher.or = FALSE, exact.ci.or = FALSE) 
cci(caseexp, controlex, casenonex, controlnonex, cctable = NULL, 
	graph = TRUE, design = "cohort", main, xlab, ylab, xaxis, yaxis, 
  alpha = .05, fisher.or = FALSE, exact.ci.or = FALSE,decimal = 2 ) 
cs(outcome, exposure, cctable = NULL, decimal = 2, method="Newcombe.Wilson", 
   main, xlab, ylab, cex, cex.axis)
csi(caseexp, controlex, casenonex, controlnonex, cctable = NULL, 
	decimal = 2, method="Newcombe.Wilson") 
graph.casecontrol(caseexp, controlex, casenonex, controlnonex,
	 decimal=2) 
graph.prospective(caseexp, controlex, casenonex, controlnonex,
	 decimal=2) 
labelTable(outcome, exposure, cctable = NULL, cctable.dimnames = NULL) 
make2x2(caseexp, controlex, casenonex, controlnonex)
}
\arguments{
	\item{cctable.dimnames}{Dimension names of the variables, usually omitted}
	\item{decimal}{number of decimal places displayed}
	\item{outcome, exposure}{two dichotomous variables}
	\item{cctable}{A 2-by-2 table. If specified, will supercede the outcome and exposure variables}
	\item{graph}{If TRUE (default), produces an odds ratio plot}
	\item{design}{Specification for graph; can be "case control","case-control", "cohort" or "prospective"}
	\item{caseexp}{Number of cases exposed}
	\item{controlex}{Number of controls exposed}
	\item{casenonex}{Number of cases not exosed}
	\item{controlnonex}{Number of controls not exposed}
	\item{original}{should the original table be displayed instead of standard outcome vs exposure table}
	\item{main}{main title of the graph}
	\item{xlab}{label on X axis}
	\item{ylab}{label on Y axis}
	\item{alpha}{level of significance}
	\item{fisher.or}{whether odds ratio should be computed by the exact method}
	\item{exact.ci.or}{whether confidence limite of the odds ratio should be computed by the exact method}
	\item{xaxis}{two categories of exposure in graph}
	\item{yaxis}{two categories of outcome in graph}
  \item{method}{method of computation for 95 percent limits of risk difference}
  \item{cex.axis}{character expansion factor for graph axis}
  \item{cex}{character expansion factor for text in the graph}
}
\details{'cc' usually reads in two variables whereas in 'cci' four number are entered manually. However, both the variables and the numbers should be omitted if the analysis is directly on a table specified by 'cctable'.

From both functions, odds ratio and its confidence limits, chisquared test and Fisher's exact test are computed. The odds ratio calcuation is based on cross product method unless 'fisher.or' is set as TRUE. It's confidence limits are obtained by the exact method unless exact.ci.or is set as FALSE.

'cs' and 'csi' are for cohort and cross-sectional studies. It computes the absolute risk, risk difference, and risk ratio. When the exposure is a risk factor, the attributable fraction exposure, attributable fraction population and number needed to harm (NNH) are also displayed in the output. When the exposure is a protective factor, protective efficacy or percent of risk reduced and number needed to treat (NNT) are displayed instead. 

If there are more than 2 exposure categories and the sample size is large enough, a graph will be plotted.

'method' in 'csi' and 'cs' chooses whether confidence limits of the risk difference should be computed by Newcomb-Wilson method. Both this and the standard method may give non-sensible values if the risk difference is not statistically significant.

'make2x2' creates a 2-by-2 table using the above orientation.

'graph.casecontrol' and 'graph.prospective' draw a graph comparing the odds of exposure between cases and controls or odds of diseased between exposed and non-exposed.

These two graphic commands are automatically chosen by 'cc' and 'cci', depending on the 'design' argument.

Alternatively, a contingency table saved from 'make2x2' can be supplied as the 'cctable' argument for the 'cc' function and so on.

}
\author{Virasakdi Chongsuvivatwong
	\email{ cvirasak@gmail.com}
}
\seealso{'fisher.test', 'chisq.test' and 'mhor'}
\examples{
data(Oswego)
.data <- Oswego
attach(.data)
cc(ill, chocolate)
cc(ill, chocolate, design="case-control")
cs(ill, chocolate) # The outcome variable should come first.

#    For the following table
#          chocolate
#    ill     FALSE TRUE
#     FALSE     7   22
#     TRUE     20   25
#
cci(25, 22, 20, 7)
graph.casecontrol(25, 22, 20, 7)
graph.prospective(25, 22, 20, 7)
# Each of the above two lines produces untitled graph, which can be decorated
# additionally decorated

#Alternatively
table1 <- make2x2(25,22,20,7)
cc(outcome=NULL, exposure=NULL, cctable=table1)
cs(outcome=NULL, exposure=NULL, cctable=table1)
agegr <- pyramid(age, sex, bin=30)$ageGroup
cs(ill, agegr, main="Risk ratio by age group", xlab="Age (years)")
rm(list=ls())
detach(.data)
}
\keyword{array}
