\name{var_view}
\alias{var_view}

\title{Summarize variable information

}
\description{ Creates a table with the name, the description, the value labels and the format for each variable in the data frame. It is similar to the variable view shown in the SPSS.

}
\usage{
var_view(x)
}

\arguments{
  \item{x}{ The data frame whose variables we want to summarize.

}
}

\value{ A data frame containing the specified summary.

}

\note{ This function was built in order to summarize imported SPSS labelled data sets using \code{\link{spss_import}}, but it can also work with other labelled data sets. 

}



\seealso{ \code{\link{spss_import}}

}
\examples{
require(ImportExport)
a<- 1:10
b<-rep("b",times=10)
c<-rep(1:2,each=5)
x<-data.frame(a,b,c)
attr(x$a,"label")<- "descr1"
attr(x$b,"label")<- NULL
attr(x$c,"label")<- "descr3"
attr(x$c,"value.labels")<-list("1"="Yes","2"="No")
var_view(x)

}

\keyword{value.labels}
\keyword{labels}
