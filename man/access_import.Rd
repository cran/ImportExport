\name{access_import}
\alias{access_import}

\title{ Import tables and queries from Microssoft Office Access(.mdb)

}
\description{
Directly connect (and disconnect at the end) with the Microssoft Office Access database using the \pkg{RODBC} package and read one or multiple data sets. It can read both tables and SQL queries depending on the input instructions. It automatically detects date variables that are stored also with date format in the original data set. 

}
\usage{access_import(file,table_names,ntab=length(table_names),
SQL_query=rep(F,times=ntab),where_sql=c(),out.format="d-m-yy",uid="",pwd="",...)}

\arguments{
  \item{file}{The path to the file with .mdb extension.}
  \item{table_names}{A single character or a character vector containing either the names of the tables to read or the SQL queries to perform. Each position must contain only one table name or SQL querie.The format of the SQL queries must follow  the one described in \code{\link[RODBC]{sqlQuery}}. }
  \item{where_sql}{If \code{table_names} is a vector, \code{where_sql} must contain the position of the SQL queries within the \code{table_names} vector. Ex: If the first and the fifth elements of \code{table_names} are SQL queries (the other ones are table names) the vector \code{where_sql} should be \code{ where_sql=c(1,5)} .}
  \item{out.format}{ a character specifying the format for printing the date variables.}
  \item{ntab}{The number of tables to import, equal to the number of table names.}
  \item{SQL_query}{Auxiliar vector to perform the function.}
  \item{uid}{see \code{odbcConnect} .}
  \item{pwd}{see \code{odbcConnect} .}
  \item{...}{see \code{odbcConnect}, \code{\link[RODBC]{sqlFetch}}, \code{\link[RODBC]{sqlQuery}}.}

}

\details{
By default, the function gives to each data set the name specified in table_names, so the sql queries data set have probably an inappropriate name. It can be easily renamed using \code{\link{names}}.

}
\value{ A data frame or a data frame list containing the data requested from the Microsoft Office Access file.

}

\note{The function don't contribute in the date variables detection, it just process with the \pkg{Chron} package  the ones who has been automatically detected.

}



\seealso{  \code{\link{access_export}},\code{\link{var_view}} \code{\link[RODBC]{sqlFetch}}, \code{\link[RODBC]{sqlQuery}}

}
\examples{

\dontrun{
x<-access_import(file="mydata.mdb",
                    table_names=c("table1","table2",
                    "Select * From table1 inner join table2 on table.var1=table2.var2","table3")
                    ,where_sql=c(3))

}

}

\keyword{ access }
\keyword{ import }
