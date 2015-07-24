\name{spss_import}
\alias{spss_import}

\title{Import data set from SPSS (.sav)

}
\description{Read a labelled data set from SPSS, finding automatically the date variables and keeping the variable and value labels information, by using the information obtained with \code{spss_varlist()} and the function \code{\link[Hmisc]{spss.get}} from the \pkg{Hmisc} Package.

}
\usage{
spss_import(file, allow="_",out.format="d-m-yy",use.value.labels=F,...)

}

\arguments{  
  \item{file}{ The path to the file with .sav extension.}
  \item{allow}{ A vector which contains the characters that must be allowed in the variable names.}
  \item{out.format}{ A character specifying the format for printing the date variables.}
  \item{use.value.labels}{If TRUE, replace the labelled variables with their value labels.}
  \item{...}{See  \code{\link[Hmisc]{spss.get}}.}


}
\details{ In order to provide the maximum functionallity, if the main code generates an error, the function tries to read the file with the \code{\link[haven]{read_sav}} function from the \pkg{haven} package, but a warning message appears.
The \code{\link{var_view}} function can be used to summarize the contents of the data frame labels.

}
\value{ A data frame or a list containing the data stored in the \bold{SPSS} file.

}

\author{  Dave MacFarlane, Roger Pros, Isaac Subirana

}
\note{ If the warning message appears and the file has been read using \code{\link[haven]{read_sav}} the resulting data frame will be diferent from the expected one (see the \pkg{haven} package to learn more about \code{\link[haven]{read_sav}}).

}



\seealso{ \code{\link{var_view}}, \code{\link[Hmisc]{spss.get}}, \code{\link[haven]{read_sav}}
             

}
\examples{
\dontrun{
x <- spss_import("mydata.sav")

}
}

\keyword{SPSS}
\keyword{import}
