\name{Follow-up Plot}
\alias{followup.plot}
\title{Longitudinal followup plot}
\description{Plot longitudinal values of individuals with or without stratification}
\usage{
followup.plot(id, time, outcome, by = NULL, n.of.lines = NULL, legend = TRUE, 
    legend.site = "topright", lty = "auto", line.col = "auto", 
    stress = NULL, stress.labels = FALSE, label.col = 1, stress.col = NULL, 
    stress.width = NULL, stress.type = NULL, lwd = 1, xlab, ylab, ...) 
}
\arguments{
	\item{id}{idenfication variable of the same subject being followed up}
	\item{time}{time at each measurement}
	\item{outcome}{continuous outcome variable}
	\item{by}{stratification factor (if any)}
	\item{n.of.lines}{number of lines (or number of subjects in the data frame) randomly chosen for drawing}
	\item{legend}{whether a legend will be automatically included in the graph}
  \item{legend.site}{a single character string indicating location of the legend. See details of ?legend}
  \item{lty}{type of the "time" lines. See 'lty' in ?par}
	\item{line.col}{line colour(s) for non-stratified plot}
  \item{stress}{subset of ids to draw stressed lines}
  \item{stress.labels}{whether the stressed lines should be labelled}
  \item{label.col}{single integer indicating colour of the stressed line labels}
  \item{stress.col}{colour values used for the stressed line. Default value is '1' or black}
  \item{stress.width}{relative width of the stressed line}
  \item{stress.type}{line type code for the stressed line}
  \item{lwd}{line width}
  \item{xlab}{label for X axis}
  \item{ylab}{label for Y axis}
  \item{...}{other graphic parameters}
}
\details{'followup.plot' plots outcome over time of the individual subjects.

If a stratification variable 'by' is specified, the levels of this variable will be used to color the lines. 

'n.of.lines' is used to reduce the number of lines to allow the pattern to be seen more clearly. 

'legend' is omitted if 'n.of.lines' is not NULL or the number of subjects exceeds 7 without stratification.

'line.col' works only for a non-stratified plot. It can be a single standard colour or "multicolor". 

Values for 'stress.col', 'stress.width' and 'stress.type', if not NULL, should follow those for 'col', 'lwd' and 'lty', respectively  
}
\author{Virasakdi Chongsuvivatwong
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'plot','lines'}
\examples{
.data <- Indometh
attach(.data)
followup.plot(Subject, time, conc)
followup.plot(Subject, time, conc, lty=1:6, line.col=rep("black",6))
detach(.data)

.data <- Sitka
attach(.data)
followup.plot(tree, Time, size)
followup.plot(tree, Time, size, line.col = "brown")
followup.plot(tree, Time, size, line.col = "multicolor")
followup.plot(tree, Time, size, n.of.lines=20, line.col = "multicolor")

# Breakdown of color by treatment group
followup.plot(tree, Time, size, by=treat)

# The number of lines reduced to 40
followup.plot(tree, Time, size, by=treat, n.of.lines=40)

# Stress some lines
length(table(tree)) # 79 trees followed up

# Identifying trees that sometimes became smaller
.data <- .data[order(.data$tree, .data$Time),]
detach(.data)
attach(.data)
next.tree <- c(tree[-1], NA)
next.size <- c(size[-1], NA)
next.size[tree != next.tree] <- NA
smaller.trees <- tree[next.size < size] 
followup.plot (tree, Time, size, line.col=5, stress=smaller.trees, 
  stress.col=2, stress.width=2, stress.type=2)
followup.plot (tree, Time, size, line.col=5, stress=smaller.trees, 
  stress.col=2, stress.width=2, stress.type=2, stress.labels=TRUE)
detach(.data)
rm(list=ls())  
  
}
\keyword{aplot}