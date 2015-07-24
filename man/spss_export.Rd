\name{spss_export}
\alias{spss_export}

\title{ Export data to SPSS (.sav) by using runsyntx.exe or pspp.exe

}
\description{Export data to txt and syntax to an spss syntax file and then runs runsyntx.exe (located in the SPSS folder) in order to create the final file with .sav extension containing the data frame we wanted to export. Date variables in the original data frame are also identified when reading the .sav file with SPSS.

}
\usage{spss_export(table,file.dict=NULL,file.save=NULL,var.keep="ALL",
file.runsyntax="C:/Archivos de programa/SPSS/runsyntx.exe",
file.data=NULL,run.spss=TRUE,dec=".")}

\arguments{
  \item{table}{A data frame to be exported. If it's  a matrix, it will be converted into data frame.}
  \item{file.dict}{Spss syntax file containing the variable and value labels.}
  \item{file.save}{The name of the .sav file we want to create.}
  \item{var.keep}{Name of the variables to save. All variables will be saved by default.}
  \item{file.runsyntax}{The path to the file runsyntx.exe or pspp.exe .}
  \item{file.data}{The name of the .txt file containing the data. It will be created as a temp file by default.}
  \item{run.spss}{If true, it runs SPSS and creates the .sav file, else it shows the syntax on the screen.}
  \item{dec}{The string to use for decimal points, it must be a single character.}

}

\details{
Both runsyntax.exe (from SPSS) and pspp.exe works the same way.
}
\value{No value is returned.

}                                            


\note{If neither SPSS nor PSPP is installed the function can just return the data in a .txt file and the syntax in an SPSS syntax file (.sps).

}



\seealso{\code{\link{spss_import}},\code{\link{var_view}}

}
\examples{
\dontrun{
table=mydata
file.dict=NULL
file.save="C:\\xxx.sav"
var.keep="ALL"
export.SPSS(table=table,file.dict=file.dict,var.keep=var.keep,file.save=file.save)

}
}

\keyword{ spss_export }
