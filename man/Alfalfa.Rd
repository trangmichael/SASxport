\name{Alfalfa}
\alias{Alfalfa}
\docType{data}
\title{ Example SAS data set }
\description{
  This data set exists to provide an example file for lookup.xport() and
  read.xport()
}
\usage{data(Alfalfa)}
\format{
  A data frame with 40 observations on the following 6 variables.
  \describe{
    \item{\code{POP}}{Population, a factor with levels \code{MAX} amd \code{min}}
    \item{\code{SAMPLE}}{Sample ID (0:5)}
    \item{\code{REP}}{Replicate (always 1)}
    \item{\code{SEEDWT}}{Seed weight}
    \item{\code{HARV1}}{Harvest 1 volume}
    \item{\code{HARV2}}{Harvest 2 volume}
  }
}
\details{
  Population "MAX" has slightly higher harvest volumes (\code{HARV1} and
  \code{HARV2}) than population "min".  (Surprise! Shock!  Awe!)
  }
\source{
  The 'Alfalfa.xpt' file was obtained from the R 'foreign' package.
}
\examples{
data(Alfalfa)

# go were the data is...
here <- getwd()
setwd(system.file("extdata",package="SASxport"))

# Description of the file contents
lookup.xport("Alfalfa.xpt")

# Load the file contents
Alfalfa <- read.xport("Alfalfa.xpt")
head(Alfalfa)

# return home
setwd(here)

# Just for fun, plot the data
par(mfrow=c(1,2))
plot( HARV1 ~ POP, data=Alfalfa)
plot( HARV2 ~ POP, data=Alfalfa)




}
\keyword{datasets}
