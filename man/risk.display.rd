\name{Risk.display}
\alias{logistic.display}
\alias{clogistic.display}
\alias{cox.display}
\alias{regress.display}
\alias{idr.display}
\alias{mlogit.display}
\alias{ordinal.or.display}
\alias{tableGlm}
\alias{print.display}
\title{Tables for multivariate odds ratio, incidence density etc}
\description{Display of various epidemiological modelling results in a medically
 understandable format}
\usage{
logistic.display(logistic.model, alpha = 0.05, crude = TRUE, 
    crude.p.value = FALSE, decimal = 2, simplified = FALSE) 
clogistic.display(clogit.model, alpha = 0.05, crude=TRUE, 
    crude.p.value=FALSE, decimal = 2, simplified = FALSE)
cox.display (cox.model, alpha = 0.05, crude=TRUE, crude.p.value=FALSE, 
    decimal = 2, simplified = FALSE) 
regress.display(regress.model, alpha = 0.05, crude = FALSE, 
    crude.p.value = FALSE, decimal = 2, simplified = FALSE) 
idr.display(idr.model, alpha = 0.05, crude = TRUE, crude.p.value = FALSE, 
    decimal = 2, simplified = FALSE) 
mlogit.display(multinom.model, decimal = 2, alpha = 0.05) 
ordinal.or.display(ordinal.model, decimal = 3, alpha = 0.05)  
tableGlm (model, modified.coeff.array, decimal)
\method{print}{display}(x, ...) 
}
\details{R provides several epidemiological modelling techniques. The functions 
above display these results in a format easier for medical people to understand.                                                                     

The function 'tableGlm' is not for general use. It is called by other display 
functions to receive the 'modified.coeff.array' and produce the output table. 

The argument 'simplified' has a default value of 'FALSE'. It works best if the 
'data' argument has been supplied during creation of the model. 
Under this condition, the output has three parts. Part 1 (the first line) 
indicates the type of the regression and the outcome. For logistic regression, 
if the outcome is a factor then the referent level is shown. Part 2 shows 
the main output table where each independent variable coefficient is displayed. 
If the independent variable is continuous (class numeric) then name of 
the variable is shown (or the descriptive label if it exists). If the variable 
is a factor then the name of the level is shown with the referent level omitted. 
In this case, the name of the referent level and the statistic testing for 
group effects are displayed. An F-test is used when the model is of class 'lm' 
or 'glm' with 'family=gaussian' specified. A Likelihood Ratio test is performed 
when the model is of class 'glm' with 'family = binomial' or 'family = poisson' 
specified and for models of class 'coxph' and 'clogit'. These tests are carried 
out with the records available in the model, not necessary all records in the 
full 'data' argument. The number of records in the model is displayed in the 
part 3 of the output. When 'simplified=TRUE', the first and the last parts are 
omitted from the display. 

The result is an object of class 'display' and 'list'. Their apparence on the R 
console is controlled by 'print.display'. The 'table' attribute of these 
'display' objects are ready to write (using 'write.csv') to a .csv file which 
can then be copied to a manuscript document. This approach can substantially 
reduce both the time and errors produced due to conventional manual copying.
}
\arguments{                     
	\item{logistic.model}{a model from a logistic regression}
	\item{clogit.model}{a model from a conditional logistic regression}
	\item{regress.model}{a model from a linear regression}
	\item{cox.model}{a model from a cox regression}
	\item{idr.model}{a model from a Poisson regression or a negative binomial 
  regression}
	\item{multinom.model}{a model from a multinomial or polytomous regression}
	\item{ordinal.model}{a model from an ordinal logistic regression}
	\item{alpha}{significance level}
	\item{crude}{whether crude results and their confidence intervals should also 
  be displayed}
	\item{crude.p.value}{whether crude P values should also be displayed if and 
  only if 'crude=TRUE'}
	\item{decimal}{number of decimal places displayed}
  \item{simplified}{whether the display should be simplified}
  \item{model}{model passed from logistic.display or regress.display to 
  tableGlm}
  \item{modified.coeff.array}{array of model coefficients sent to the function 
  'tableGlm' to produce the final output}
  \item{x}{object obtained from these 'display' functions}
  \item{...}{further arguments passed to or used by methods}
}
\note{Before using these 'display' functions, please note the following 
limitations. 

1) Users \bold{should} define the 'data' argument of the model. 

2) The names of the independent variables \bold{must} be  a subset of the names 
of the variables in the 'data' argument. Sometimes, one of more variables are 
omitted by the model due to collinearity. In such a case, users have to specify 
'simplified=TRUE' in order to get the display function to work.

3) Under the following conditions, 'simplified' will be forced to TRUE and 
'crude' forced to FALSE. 

    3.1) The names of the independent variables contain a function such as 
    'factor()' or any '\$' sign. 

    3.2) The levels of the factor variables contain any ':' sign.

    3.3) There are more than one interaction terms in the model

    3.4) The 'data' argument is missing in the conditional logistic regression 
    and Cox regression model

4) For any other problems with these display results, users are advised to run 
'summary(model)' or 'summary(model)$coefficients' to check the consistency 
between variable names in the model and those in the coefficients. The number 
in the latter may be fewer than that in the former due to collinearity. In this 
case, it is advised to specify 'simplified=TRUE' to turn off the attempt to 
tidy up the rownames of the output from 'summary(model)$coeffients'. The output 
when 'simplified=TRUE' is more reliable but less understandable. 

}
\author{Virasakdi Chongsuvivatwong
	\email{ cvirasak@gmail.com}
}
\value{'logistic.display', 'regress.display', 'clogit.display' and 
'cox.display', each produces an output table. See 'details'.}
\seealso{'glm', 'confint'}
\examples{
     model0 <- glm(case ~ induced + spontaneous, family=binomial, data=infert)
     summary(model0)
     logistic.display(model0)

     data(ANCdata)
     glm1 <- glm(death ~ anc + clinic, family=binomial, data=ANCdata)
     logistic.display(glm1)
     logistic.display(glm1, simplified=TRUE)

     library(MASS) # necessary for negative binomial regression
     data(DHF99); .data <- DHF99
     attach(.data)
     model.poisson <- glm(containers ~ education + viltype, 
         family=poisson, data=DHF99)
     
     model.nb <- glm.nb(containers ~ education + viltype, 
         data=.data)
     idr.display(model.poisson)  -> poiss
     print(poiss) # or print.display(poiss) or poiss
     idr.display(model.nb) 
     detach(.data) 
      
     data(VC1to6)
     .data <- VC1to6
     .data$fsmoke <- factor(.data$smoking)
     levels(.data$fsmoke) <- list("no"=0, "yes"=1)
     clr1 <- clogit(case ~ alcohol + fsmoke + strata(matset), data=.data)
     clogistic.display(clr1)
     rm(list=ls())
      
     data(BP)
     .data <- BP
     attach(.data)
     age <- as.numeric(as.Date("2000-01-01") - birthdate)/365.25
     agegr <- pyramid(age,sex, bin=20)$ageGroup
     .data$hypertension <- sbp >= 140 | dbp >=90
     detach(.data)
     model1 <- glm(hypertension ~ sex + agegr + saltadd, family=binomial, 
               data=.data)
     logistic.display(model1) -> table3
     attributes(table3)
     table3
     table3$table
     # You may want to save table3 into a spreadsheet
     write.csv(table3$table, file="table3.csv") # Note $table
     ## Have a look at this file in Excel, or similar spreadsheet program
     
     file.remove(file="table3.csv")
     model2 <- glm(hypertension ~ sex * age + sex * saltadd, family=binomial, 
               data=.data)
     logistic.display(model2) 
     # More than 1 interaction term so 'simplified turned to TRUE

     reg1 <- lm(sbp ~ sex + agegr + saltadd, data=.data)
     regress.display(reg1)

     reg2 <- glm(sbp ~ sex + agegr + saltadd, family=gaussian, data=.data)
     regress.display(reg2)
     
     data(Compaq)
     cox1 <- coxph(Surv(year, status) ~ hospital + stage * ses, data=Compaq)
     cox.display(cox1, crude.p.value=TRUE)

     # Ordinal logistic regression
     library(nnet)
     options(contrasts = c("contr.treatment", "contr.poly"))
     house.plr <- polr(Sat ~ Infl + Type + Cont, weights = Freq, data = housing)
     house.plr
     ordinal.or.display(house.plr)

     # Polytomous or multinomial logistic regression
     house.multinom <- multinom(Sat ~ Infl + Type + Cont, weights = Freq, 
             data = housing)
     summary(house.multinom)
     mlogit.display(house.multinom, alpha=.01) # with 99% confidence limits.

}
\keyword{database}
