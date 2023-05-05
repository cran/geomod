\name{sampleData}
\alias{sampleData}
\docType{data}
\title{
Sample soil dataset from a Geotechnical investigation
}
\description{
Pit sample dataset from a Geotechnical investigation
}
\usage{data("sampleData")}
\format{
  The format is:
Formal class 'SpatialPointsDataFrame' [package "sp"] with 5 slots
  ..@ data       :'data.frame':	152 obs. of  4 variables:
  .. ..$ Density   : num [1:152] 0.36 0.465 0.39 0.36 0.42 0.87 0.075 0.375 0.84 0.33 ...
  .. ..$ Resistance: num [1:152] 0.8 2.58 0.98 0.532 1.87 18.5 0.43 0.302 0.345 2.7 ...
  .. ..$ LL        : num [1:152] 8.6 8.37 8.31 8.76 7.81 ...
  ..@ coords.nrs : num(0)
  ..@ coords     : num [1:152, 1:2] 420924 418226 418226 415334 415334 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:2] "coords.x1" "coords.x2"
  ..@ bbox       : num [1:2, 1:2] 386582 3343117 427796 3386711
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : chr [1:2] "coords.x1" "coords.x2"
  .. .. ..$ : chr [1:2] "min" "max"
  ..@ proj4string:Formal class 'CRS' [package "sp"] with 1 slot
  .. .. ..@ projargs: chr "+proj=utm +zone=41 +datum=WGS84 +units=m +no_defs"
}
\details{
A dataset with 152 points of soil horizons for mapping Geotechnical soil properties
}
\examples{
data(sampleData)
str(sampleData)
}
\keyword{datasets}
