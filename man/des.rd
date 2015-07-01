\name{des}
\alias{des}
\title{Desription of a data frame or a variable}
\description{Description of a data frame or a variable or wildcard for variable names}
\usage{
des(dataFrame)
}
\arguments{
	\item{dataFrame}{a data frame}
}
\details{The variable names will be listed with class and the description of each variable 
}
\author{Virasakdi Chongsuvivatwong
	\email{ <cvirasak@medicine.psu.ac.th>}
}
\seealso{'summ', 'label.var', 'subset' and 'keepData'}
\examples{
data(Oswego)
.data <- Oswego
des(.data) 
}
\keyword{database}
