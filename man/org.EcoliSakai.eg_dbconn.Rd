
\name{org.EcoliSakai.eg_dbconn}

\alias{org.EcoliSakai.eg_dbconn}
\alias{org.EcoliSakai.eg_dbfile}
\alias{org.EcoliSakai.eg_dbschema}
\alias{org.EcoliSakai.eg_dbInfo}


\title{Collect information about the package annotation DB}

\description{
  Some convenience functions for getting a connection object to (or collecting
  information about) the package annotation DB.
}

\usage{
  org.EcoliSakai.eg_dbconn()
  org.EcoliSakai.eg_dbfile()
  org.EcoliSakai.eg_dbschema(file="", show.indices=FALSE)
  org.EcoliSakai.eg_dbInfo()
}

\arguments{
  \item{file}{
    A connection, or a character string naming the file to print to (see
    the \code{file} argument of the \code{\link[base]{cat}} function for
    the details).
  }
  \item{show.indices}{
    The CREATE INDEX statements are not shown by default.
    Use \code{show.indices=TRUE} to get them.
  }
}

\details{
  \code{org.EcoliSakai.eg_dbconn} returns a connection object to the
  package annotation DB.  IMPORTANT: Don't call
  \code{\link[DBI:dbConnect]{dbDisconnect}} on the connection object
  returned by \code{org.EcoliSakai.eg_dbconn} or you will break all the
  \code{\link[AnnotationDbi:AnnDbObj-class]{AnnDbObj}} objects defined
  in this package!

  \code{org.EcoliSakai.eg_dbfile} returns the path (character string) to the
  package annotation DB (this is an SQLite file).

  \code{org.EcoliSakai.eg_dbschema} prints the schema definition of the
  package annotation DB.

  \code{org.EcoliSakai.eg_dbInfo} prints other information about the package
  annotation DB.
}

\value{
  \code{org.EcoliSakai.eg_dbconn}: a DBIConnection object representing an
  open connection to the package annotation DB.

  \code{org.EcoliSakai.eg_dbfile}: a character string with the path to the
  package annotation DB.

  \code{org.EcoliSakai.eg_dbschema}: none (invisible \code{NULL}).

  \code{org.EcoliSakai.eg_dbInfo}: none (invisible \code{NULL}).
}

\seealso{
  \code{\link[DBI:dbSendQuery]{dbGetQuery}},
  \code{\link[DBI:dbConnect]{dbConnect}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbconn}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbfile}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbschema}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbInfo}}
}

\examples{
  library(DBI)
  ## Count the number of rows in the "genes" table:
  dbGetQuery(org.EcoliSakai.eg_dbconn(), "SELECT COUNT(*) FROM genes")

  org.EcoliSakai.eg_dbschema()

  org.EcoliSakai.eg_dbInfo()
}

\keyword{utilities}
\keyword{datasets}

