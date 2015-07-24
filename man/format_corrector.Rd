\name{format_corrector}
\alias{format_corrector}

\title{Identify and corrects variable formats

}
\description{ The function creates a loop to compare for each variable the values it have with the usual ones that typical R formats have in order to correct, for example, missing value or dates stored as a character. It also specify for each variable the most appropriate SPSS format that it should have.

}
\usage{
format_corrector(table,identif=NULL,force=FALSE,rate.miss.date=0.5)
}

\arguments{
  \item{table}{The data set we want to correct.} 
  \item{identif}{The name of the identification variable included in the data frame. It will be used to list the individuals who had any problems during the execution of the function. }
  \item{force}{If TRUE, run format_corrector even if "fixed.formats" attribute is TRUE}
  \item{rate.miss.date}{The maximum rate of missing date fields we want the function to accept.The function details which fields have been lost anyways.}

}

\details{If the date variable don't have chron format it must be in one of the following formats, else the function leaves it as a character:\cr ----dates separator must be one of the following:("-","/",".").\cr ----hour separator must be ":".

}
\value{ A single data frame which results from the function.

}


\note{ This function may not be completely  optimal so it might have problems when correcting huge data frames. 

}



\seealso{\code{\link{spss_export}}

}
\examples{
require(ImportExport)
a<-c(1,NA,3,5,".")
b<-c("19/11/2006","05/10/2011","09/02/1906","22/01/1956","10/10/2010")
c<-101:105
x<-data.frame(a,b,c)
sapply(x,class)
x_corr<-format_corrector(x)
sapply(x_corr,class)

}

\keyword{format_corrector}
