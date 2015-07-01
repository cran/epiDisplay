\name{titleString}
\alias{titleString}
\title{Replace commonly used words in Epicalc graph title}
\description{Setting vocabularies for Epicalc graph title}
\usage{
titleString (distribution.of = .distribution.of, by = .by, 
	frequency = .frequency, locale = .locale(), 
	return.look.up.table=FALSE)
}
\arguments{
	\item{distribution.of}{A string denoting "Distribution of"}
	\item{by}{That for "by"}
	\item{frequency}{That for "Frequency"}
	\item{locale}{Logical value to overwrite .locale(). The initial value is FALSE}
	\item{return.look.up.table}{Should the look-up table be returned?}
}
\details{The two internationalization commands of Epicalc, 'setTitle' and 'titleString', work together to set the langauge and wording of titles of automatic graphs obtained from certain Epicalc functions.

In general, 'setTitle' is simple and works well if the locale required fits in with the version of the operating system. The three commonly used words in the graph titles: "Distribution of", "by" and "Frequency", which are in English, are initially stored in three respective hidden objects '.distribution.of', '.by' and '.frequency' as well as in the look-up table within the 'titleString' function. When the locale is changed to a language other than English, the look-up table is used and wordings are changed accordingly. 

The function 'titleString' is useful when the user wants to change the strings stored in the look-up table. It changes the initial values of '.distribution.of', '.by' and '.frequency', respectively. The argument, 'locale', must be manually set to FALSE by the user to disable the use of the look-up table and to enable the use of the three objects assigned by the command instead. 

The two functions suppress each other. Use of 'setTitle' disables the effects of 'titleString', switching .locale() to TRUE and forcing Epicalc to read from the look-up table in 'titleString'. However, 'setTitle' does not overwrite the values assigned by the arguments of 'titleString'.

The key and decisive switch object is .locale(). Once .locale() is set to FALSE, either manually or inside the 'titleString' command, the values of the three hidden objects will be used. Setting .locale() to TRUE, either manually or automatically by the 'setTitle' function, points the graph title to use the look-up table inside 'titleString'.

Typing 'titleString()' without an argument displays the current contents of these three objects. The look-up table is also displayed if the return.look.up.table argument is set to TRUE.

International users who want to add their specific locales and corresponding terminology to the look-up table or to suggest more appropriate terminology can contact the author.
}
\author{Virasakdi Chongsuvivatwong
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'setTitle'}
\examples{

.data <- iris
attach(.data)
dotplot(Sepal.Length, by=Species)

titleString(distribution.of="", by="grouped by", locale=FALSE)
## The above command is equivalent to the following three lines:
## .distribution.of <- ""
## .by <- "grouped by"
## .locale(FALSE)

dotplot(Sepal.Length, by=Species)
titleString()

setTitle("English")
dotplot(Sepal.Length, by=Species)
titleString(return.look.up.table=TRUE)

.locale(FALSE)
dotplot(Sepal.Length, by=Species)
titleString()

.distribution.of <- "Distribution of"
titleString()

.by <- "by"
titleString()

detach(.data)
rm(.data)
}
\keyword{misc}
