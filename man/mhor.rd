\name{mhor}
\alias{mhor}
\title{Mantel-Haenszel odds ratio}
\description{Mantel-Haenszel odds ratio calculation and graphing from a stratified case-control study}
\usage{
mhor(..., mhtable = NULL, decimal=2, graph = TRUE, design = "cohort") 
}
\arguments{
	\item{...}{Three variables viz. 'outcome', 'exposure' and 'stratification'.}
	\item{mhtable}{a 2-by-2-by-s table, where s (strata) is more than one}
	\item{decimal}{number of decimal places displayed}
	\item{graph}{If TRUE (default), produces an odds ratio plot}
	\item{design}{Specification for graph; can be "case control","case-control", "cohort" or "prospective"}
}
\details{
'mhor' computes stratum-specific odds ratios and 95 percent confidence intervals and the Mantel-Haenszel odds ratio and chi-squared test is given as well as the homogeneity test. A stratified odds ratio graph is displayed. 
}
\author{Virasakdi Chongsuvivatwong
	\email{ cvirasak@gmail.com}
}
\seealso{'fisher.test', 'chisq.test'}
\examples{
data(Oswego)
with(Oswego, cc(ill, chocolate))
with(Oswego, mhor(ill, chocolate, sex))

mht1 <- with(Oswego, table(ill, chocolate, sex))
dim(mht1)
mhor(mhtable=mht1) # same results

}
\keyword{array}
