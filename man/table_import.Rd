\name{table_import}
\alias{table_import}

\title{Automatic separator data input

}
\description{ A small variation of the original \code{\link{read.table}} that most of the time detect automatically the field separator character. It also includes the option to run the \code{\link{format_corrector}} function in order to detect, for example, the date variables included in the original data set. If the function don't recognize any separator, it asks to specify the real one.  

}
\usage{
table_import(file,sep=F,format_corrector=F,...)
}

\arguments{
  \item{file}{The patch to he file which the data are to be read from.}
  \item{sep}{The field separator character, see \code{\link{read.table}}.If it is not specified, the function try to detect it automatically.}
  \item{format_corrector}{If True, it runs the \code{\link{format_corrector}} function before returning the data frame.}
  \item{...}{More arguments from \code{\link{read.table}}.}

}

\details{The \code{\link{format_corrector}} function is a complicated function so it's not recommended to run it unless the data set contains awkward variables like dates.

}
\value{A data frame containing the data stored in the file.

}

\note{This function might have problems if any of the fields contain typical separators, so it's always recommended to check the resulting data frame in order to avoid possible errors.

}


\seealso{   \code{\link{read.table}}

}
\examples{
\dontrun{
x <- table_import('mydata.csv',format_corrector=T)

}
}

\keyword{ table_import }
