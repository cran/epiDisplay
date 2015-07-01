\name{lookup}
\alias{lookup}
\title{Recode several values of a variable}
\description{Systematic replacement of several values of a variable using an array}
\usage{
lookup(x, lookup.array) 
}
\arguments{
	\item{x}{a variable}
	\item{lookup.array}{a n-by-2 array used for looking up the recoding scheme}
}
\details{This command is used for changing more than one value of a variable using a n-by-2 look-up array. The first column of the look-up array (index column) must be unique.

If either the variable or the look-up table is character, the result vector will be character.

For changing the levels of a factor variable, 'recode(vars, "old level", "new level")' or 'levels(var) <- ' instead.
}
\author{Virasakdi Chongsuvivatwong
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'replace', 'recode'}
\examples{
a       <- c( 1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, NA)
tx      <- rbind(c(1,2),c(2,1),c(3,4),c(4,NA),c(NA,3)) 

# Swapping values of 1 and 2; rotating 3, 4 and NA
new.a  <- lookup(a, tx)
data.frame(a, new.a)
tableA <- table(a, new.a, exclude=NULL) 
# All non-diagonal cells which are non-zero are the recoded cells. 
print(tableA, zero=".")

## Character look-up table
b <- c(rep(letters[1:4],2), ".", NA)
tx1 <- cbind(c(letters[1:5], ".", NA), c("Disease A","Disease B","Disease C", 
	"Disease D","Disease E", NA, "Unknown"))
DiseaseName <- lookup(b, tx1)
data.frame(b, DiseaseName)
}
\keyword{database}