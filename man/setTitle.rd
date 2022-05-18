\name{setTitle}
\alias{setTitle}
\title{Setting the displayed language of Epicalc graph title}
\description{Setting locale and internationalizing Epicalc graph title}
\usage{
setTitle(locale)
}
\arguments{
	\item{locale}{A string denoting international language of choice}
}
\details{On calling 'library(epicalc)', '.locale()' has an inital value of FALSE, ie. the titles of Epicalc's automatic graphs are displayed in the English language. 'setTitle' has two effects. It selects the locale and resets the hidden object '.locale()' to TRUE. The command internationalizes the title of automatic graphs created by Epicalc according to 'locale' given in the function's argument. 

If '.locale()' is TRUE, then the automatic graphs produced by Epicalc commands, such as 'summ(var)' or 'tab1(var)' or 'tabpct(var1,var2)', will lookup a language conversion table for the graph title and the title will be changed accordingly.

Internationalization of the title can be disabled by typing '.locale(FALSE)'. This has no effect of locale as a whole unless it is reset to English by issuing the command 'setTitle("English")'.

}
\author{Virasakdi Chongsuvivatwong
	\email{ cvirasak@gmail.com}
}
\seealso{'Sys.setlocale', 'Sys.getlocale' and 'titleString'}
\examples{
.data <- iris
attach(.data)
summ(Sepal.Length, by=Species)
setTitle("English")
dotplot(Sepal.Length, by=Species)
setTitle("Malay")
dotplot(Sepal.Length, by=Species)
setTitle("Spanish")
dotplot(Sepal.Length, by=Species)
detach(.data)
rm(.data)
}
\keyword{database}
