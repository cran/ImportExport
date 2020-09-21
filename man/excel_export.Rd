\name{excel_export}
\alias{excel_export}

\title{ Export multiple R data sets to Excel

}

\description{ Exports a single data frame or a list of data frames to one or multiple excel sheets using the function \code{\link[writexl]{write_xlsx}} frome the \pkg{writexl} package. This function can write multiple data frames (passed as a list) with a single command .It can write both .xls and .xlsx files.

}
\usage{
excel_export(x,file,table_names=as.character(1:length(x)),...)
}

\arguments{
  \item{x}{Either a data frame or a list containing multiple data frame to be exported.}
  \item{file}{The name of the file we want to create.}
  \item{table_names}{A character or a vector character containing the names that will receive the sheet where the data frame is stored. If it is a vector, it must follow the same order as the data frames in \code{x} have. All names must be different from each others. }
  \item{...}{see \code{\link[writexl]{write_xlsx}}.}

}

\value{ No value is returned.

}




\seealso{ \code{\link{read_excel}}, \code{\link[readxl]{read_excel}}

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

\keyword{excel_export}
