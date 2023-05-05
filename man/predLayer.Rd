\name{predLayer}
\alias{predLayer}
\docType{data}
\title{
Sample grid stack map of nutrient indicators for crop fertility requirements
}
\description{
A grid stack map of nine variables for assessing crop suitabilities
}
\usage{data("predLayer")}
\format{
  The format is:
Formal class 'SpatialGridDataFrame' [package "sp"] with 4 slots
  ..@ data       :'data.frame':	16900 obs. of  3 variables:
  .. ..$ depthcodes: num [1:16900] 3 1 3 3 3 3 3 3 1 1 ...
  .. ..$ texture   : int [1:16900] 5 5 5 5 5 5 5 5 11 11 ...
  .. ..$ dem       : num [1:16900] 489 489 489 485 487 ...
 ..@ grid       :Formal class 'GridTopology' [package "sp"] with 3 slots
  .. .. ..@ cellcentre.offset: Named num [1:2] 383216 3341506
  .. .. .. ..- attr(*, "names")= chr [1:2] "x" "y"
  .. .. ..@ cellsize         : num [1:2] 357 357
  .. .. ..@ cells.dim        : int [1:2] 130 130
  ..@ bbox       : num [1:2, 1:2] 383038 3341327 429478 3387767
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : chr [1:2] "x" "y"
  .. .. ..$ : chr [1:2] "min" "max"
  ..@ proj4string:Formal class 'CRS' [package "sp"] with 1 slot
  .. .. ..@ projargs: chr "+proj=utm +zone=41 +datum=WGS84 +units=m +no_defs"
}
\examples{
data(predLayer)
summary(predLayer$depthcodes)
hist(predLayer$dem)
}
\keyword{datasets}
