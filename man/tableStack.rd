\name{tableStack}
\alias{tableStack}
\title{Tabulation of variables in a stack form}
\description{Tabulation of variables with the same possible range of distribution and stack into a new table with or without other descriptive statistics or to breakdown distribution of more than one row variables against a column variable}
\usage{
tableStack (vars, dataFrame, minlevel = "auto", maxlevel = "auto", count = TRUE, 
    na.rm =FALSE, means = TRUE, medians = FALSE, sds = TRUE, decimal = 1,  
    total = TRUE, var.labels = TRUE, var.labels.trunc =150, reverse = FALSE, 
    vars.to.reverse = NULL, by = NULL, vars.to.factor = NULL, iqr = "auto", 
    prevalence = FALSE, percent = c("column", "row", "none"), frequency=TRUE, 
    test = TRUE, name.test = TRUE, total.column = FALSE, simulate.p.value = FALSE,
    sample.size=TRUE, assumption.p.value = .01) 
}
\arguments{
	\item{vars}{a vector of variables in the data frame}
	\item{dataFrame}{source data frame of the variables}
	\item{minlevel}{possible minimum value of items specified by user}
	\item{maxlevel}{possible maximum value of items specified by user}
	\item{count}{whether number of valid records for each item will be displayed}
	\item{na.rm}{whether missing value would be removed during calculation mean score of each person}
	\item{means}{whether means of all selected items will be displayed}
	\item{medians}{whether medians of all selected items will be displayed}
	\item{sds}{whether standard deviations of all selected items will be displayed}
	\item{decimal}{number of decimals displayed in the statistics}
	\item{total}{display of means and standard deviations of total and average scores}
	\item{var.labels}{presence of descriptions of variables on the last column of output}
	\item{var.labels.trunc}{number of characters used for variable description}
	\item{reverse}{whether item(s) negatively correlated with other majority will be reversed}
	\item{vars.to.reverse}{variable(s) to reverse}
  \item{by}{a variable for column breakdown. If a single character (with quotes) is given, only the 'total column' will be displayed}
  \item{vars.to.factor}{variable(s) to be converted to factor for tabulaton}
  \item{iqr}{variable(s) to display median and inter-quartile range}
  \item{prevalence}{for logical variable, whether prevalence of the dichotomous row variable in each column subgroup will be displayed}
  \item{percent}{type of percentage displayed when the variable is categorical. Default is column}
  \item{frequency}{whether to display frequency in the cells when the variable is categorical}
  \item{test}{whether statistical test(s) will be computed}
  \item{name.test}{display name of the test and relevant degrees of freedom}
  \item{total.column}{whether to add 'total column' to the output or not}
  \item{simulate.p.value}{simulate P value for Fisher's exact test}
  \item{sample.size}{whether to display non-missing sample size of each column}
	\item{assumption.p.value}{level of Bartlett's test P value to judge whether the comparison and the test should be parametric}
}
\details{This function simultaneously explores several variables with a fixed integer rating scale. For non-factor variables, the default values for tabulation are the minimum and the maximum of all variables but can be specified by the user.

When 'by' is omitted, all variables must be of the same class, and must be 'integer', 'factor' or 'logical.

Unlike function 'alpha', the argument 'reverse' has a default value of FALSE. This argument is ignored if 'vars.to.reverse' is specified.

Options for 'reverse', 'vars.to.reverse' and statistics of 'means', 'medians', 'sds' and 'total' are available only if the items are not factor. To obtain statistics of factor items, users need to use 'unclassDataframe' to convert them into integer.

When the 'by' argument is given, 'reverse' and 'vars.to.reverse' do not apply. Instead, columns of the 'by' variable will be formed. A table will be created against each selected variable. If the variable is a factor or coerced to factor with 'vars.to.factor', cross-tabulation will result with percents as specified, ie. "column", "row", or "none" (FALSE). For a dichotomous row variable, if set to 'TRUE', the prevalence of row variable in the form of a fraction is displayed in each subgroup column. For objects of class 'numeric' or 'integer', means with standard deviations will be displayed. For variables with residuals that are not normally distributed or where the variance of subgroups are significantly not normally distributed (using a significance level of 0.01), medians and inter-quartile ranges will be presented if the argument 'iqr' is set to "auto" (by default). Users may specify a subset of the selected variables (from the 'vars' argument) to be presented in such a form. Otherwise, the argument could be set as any other character string such as "none", to insist to present means and standard deviations. 
                                                                            
                                                                            
When 'test = TRUE' (default), 
Pearson's chi-squared test (or a two-sided Fisher's exact test, if the sample size is small) will be carried out for a categorical variable or a factor.
Parametric or non-parametric comparison and test will be carried out for a object of class 'numeric' or 'integer' (See 'iqr' and 'assumption.p.value' below). 
If the sample size of the numeric variable is too small in any group, the test is omitted and the problem reported.

For Fisher's exact test, the default method employs 'simulate.p.value = FALSE'. See further explanation in 'fisher.test' procedure. If the dataset is extraordinarily large, the option may be manually set to TRUE. 

When 'by' is specified as a single character object (such as 'by="none"'), there will be no column breakdown and all tests will be omitted. Only the total column is displayed. Only the 'total' column is shown.

If this 'total column' is to accompany the 'by' breakdown, the argument 'total.column=TRUE' should be specified.
                                                                                             The 'sample.size' is TRUE by default. The total number of records for each group is displayed in the first row of the output. However, the variable in each row may have some missing records, the information on which is not reported by tableStack. 
                                                                        
By default, Epicalc sets 'var.labels=TRUE' in order to give nice output. However, 'var.labels=FALSE' can sometimes be more useful during data exploration. Variable numbers as well as variable names are displayed instead of variable labels. Names and numbers of abnormally distributed variables, especially factors with too many levels, can be easily identified for further relevelling or recoding.

The argument 'iqr' has a default value being "auto". Non-parametric comparison and test will be automatically chosen if Bartlett's test P value is below the 'assumption.p.value'.

The test can be forced to parametric by setting 'iqr=NULL' and to non-parametric by if iqr is set to the variable number of cont.var (See examples.). 

} 
\value{an object of class 'tableStack' and 'list' when by=NULL 
\item{results}{an object of class 'noquote' which is used for print out}
\item{items.reversed}{name(s) of variable(s) reversed}
\item{total.score}{a vector from 'rowSums' of the columns of variables specified in 'vars'}
\item{mean.score}{a vector from 'rowMeans' of the columns of variables specified in 'vars'}
\item{mean.of.total.scores}{mean of total scores}
\item{sd.of.total.scores}{standard deviation of total scores}
\item{mean.of.average.scores}{mean of mean scores}
\item{sd.of.average.scores}{standard deviation of mean scores}

When 'by' is specified, an object of class 'tableStack' and 'table is returned. 
}
\author{Virasakdi Chongsuvivatwong
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'table', 'tab1', 'summ', 'alpha', 'unclassDataframe'}
\examples{
data(Oswego)
tableStack(bakedham:fruitsalad, dataFrame=Oswego)
.data <- Oswego
des(.data)
attach(.data)
tableStack(bakedham:fruitsalad, .data) # Default data frame is .data
tableStack(bakedham:fruitsalad, .data, by= ill)
tableStack(bakedham:fruitsalad, .data, by= ill, prevalence=TRUE)
tableStack(bakedham:fruitsalad, .data, by= ill, percent=FALSE)
tableStack(bakedham:fruitsalad, .data, by= ill, percent=FALSE, name.test=FALSE)
detach(.data)


data(Cars93, package="MASS")
.data <- Cars93
des(.data)
tableStack(vars=4:25, .data, by=Origin)
tableStack(vars=4:25, .data, by="none")
tableStack(vars=4:25, .data, by=Origin, total.column=TRUE)


data(Attitudes)
.data <- Attitudes
attach(.data)
tableStack(qa1:qa18, .data)  # May need full screen of Rconsole
tableStack(qa1:qa18, .data, var.labels.trunc=35) 
                      # Fits in with default R console screen
tableStack(qa1:qa18, .data, reverse=TRUE) -> a
a
## Components of 'a' have appropriate items reversed
a$mean.score -> mean.score 
a$total.score -> total.score
.data$mean.score <- mean.score
.data$total.score <- total.score
rm(total.score, mean.score)
detach(.data)
attach(.data)
tableStack(c(qa1,qa13:qa18,mean.score,total.score), .data, by=sex, test=FALSE)
tableStack(c(qa15, qa17, mean.score:total.score), .data, by=sex, iqr=c(qa17,total.score))
tableStack(c(qa15, qa17, mean.score:total.score), .data, by=dep, iqr=c(qa17,total.score))
## 'vars' can be mixture of different classes of variables
.data$highscore <- mean.score > 4
tableStack(mean.score:highscore, .data, by=sex, iqr=total.score)
detach(.data)
rm(list=ls())

data(Ectopic)
.data <- Ectopic
des(.data)
tableStack(vars=3:4, .data, by=outc)
tableStack(vars=3:4, .data, by=outc, percent="none")
tableStack(vars=3:4, .data, by=outc, prevalence = TRUE)
tableStack(vars=3:4, .data, by=outc, name.test = FALSE)

## Variable in numeric or factor
data(Outbreak)
.data <- Outbreak
des(.data)
# Comparison of exposure to food items between the two gender
tableStack(vars=5:8, .data, by=sex) # as continuous varaibles
tableStack(vars=5:8, .data, by=sex, vars.to.factor = 5:8) # as factors
}



\keyword{aplot}
