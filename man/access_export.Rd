\name{access_export}
\alias{access_export}

\title{Export multiple R data sets to Microsoft Office Access

}
\description{Directly connect (and disconnect at the end) with the Microssoft Office Access database using the \pkg{RODBC} package and write one or multiple data sets.

}
\usage{
access_export(file,x,tablename=as.character(1:length(x)),uid="",pwd="",...)
}

\arguments{
  \item{file}{The path to the file with .mdb extension.}
  \item{x}{Either a data frame or a list containing multiple data frame to be exported.}
  \item{tablename}{A character or a vector character containing the names that will receive the tables where the data frame is stored. If it is a vector, it must follow the same order as the data frames in \code{x} have. All names must be different from each others. }
  \item{uid}{see \code{odbcConnect} .}
  \item{pwd}{see \code{odbcConnect} .}
  \item{...}{see \code{odbcConnect},\code{\link[RODBC]{sqlSave}}. }

}

\details{
Date variables are exported as an integer, they might be converted to character if a character representation in the access database is wanted.

}
\value{ No value is returned.

}                                   


\note{ This function connects and writes on an existing Microsoft Office Access database, but it can't create a new one.

}



\examples{
\dontrun{
# x is a data.frame
file<-("mydata.xlsx")
a<- 1:10
b<-rep("b",times=10)
c<-rep(1:2,each=5)
x<-data.frame(a,b,c)
excel_export(x,file,table_names="mydata")
# x is a list
y<-list(x,x[2:3])
excel_export(y,file,table_names=c("mydata1","mydata2"))
 }
}

\keyword{ access_export}
