\name{statStack}
\alias{statStack}
\title{Statistics of a continuous variable stratified by factors}
\description{Compares the difference in means or medians of the levels of a factor or list of factors}
\usage{
statStack (cont.var, by, dataFrame, iqr="auto", var.labels = TRUE, decimal = 1, 
    assumption.p.value = .01) 
}
\arguments{
	\item{cont.var}{a single continuous variable in the data frame}
  \item{by}{a factor, or list of factors, each of length <code>nrow(dataFrame)</code>}
  \item{iqr}{to display median and inter-quartile range instead of mean and sd.}
	\item{var.labels}{use descriptions of the 'by' variables if available}
	\item{dataFrame}{source data frame of the variables}
	\item{decimal}{number of digits displayed after decimal point}
	\item{assumption.p.value}{level of Bartlett's test P value to judge whether the comparison and the test should be parametric}
}
\details{This function computes means/medians of a continuous variable in each level of the specified factor(s) and performs an appropriate statistical test.

The classes of the variable to compute statistics must be either 'integer' or 'numeric' why all 'by' variables must be 'factor'.

Like in 'tableStack', the argument 'iqr' has a default value being "auto". Non-parametric comparison and test will be automatically chosen if Bartlette's test P value is below the 'assumption.p.value'.Like in 'tableStack', the default value for the 'iqr' argument is "auto", which means non-parametric comparison and test will be automatically chosen if the P-value from Bartlett's test is below the value of the 'assumption.p.value' argument (0.01).

The user can force the function to perform a parametric test by setting 'iqr=NULL' and to perform a non-parametric test by setting 'iqr' to the name or index of the continuous variable. 

By default, 'var.labels=TRUE' in order to give nice output.
} 
\value{an object of class 'statStack' and 'table'} 
\author{Virasakdi Chongsuvivatwong                                                          
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'tableStack'}
\examples{

statStack(Price, by=c(DriveTrain, Origin), dataFrame=Cars93)
statStack(Price, by=c(DriveTrain, Origin), dataFrame=Cars93, iqr=NULL)

Cars93$log10.Price <- log10(Cars93$Price)# added as the 28th variable
statStack(log10.Price, by=c(DriveTrain, Origin), dataFrame=Cars93)
statStack(log10.Price, by=c(DriveTrain, Origin), dataFrame=Cars93, iqr=28)
rm(Cars93)

data(Compaq)
statStack(year, by=c(hospital, stage:ses), dataFrame=Compaq)
# Note that var.labels 'Age group' is displayed instead of var. name 'agegr'
}
\keyword{aplot}
