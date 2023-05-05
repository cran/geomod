\name{predGeo}
\alias{predGeo}
\title{
Function to develop spatial map of Geotechnical soil properties
}
\description{
This functions is used to estimate spatial maps of Geotechnical soil properties using machine learning technique
}
\usage{
predGeo(indata,fgrid, k, z, model="rf")
}
\arguments{
  \item{indata}{
one column input spatial dataframe containing the target soil variable or its transformation
}
 \item{fgrid}{
Input grid or raster stack containing predictors set for the target soil variable }
 \item{k}{
Set limit for number of simulations for the spatial modelling algorithm
}
 \item{z}{
Confidence interval level in percent (for example 95)
}
 \item{model}{
The model for predicting target soil variable using the predictors (for example linear)
}

}
\details{
One-variable input dataframe is prefered or at least the first column should have the target Geotechnical variable to predict. It should not contain NAs. The number of realizations k need not be too high because the software multiplies it exponentially and may slow down the computing process if set to a high value. For example k=5 will results into more than 40 realizations created
}
\value{
a raster  map of prediction for the target Geotechnical property
}
\author{
Festus K. Ngeno and Christian Omuto
}
\note{
The input dataframe and predictors need to have similar coordinate reference system (CRS). In addition, the input dataframe should not have missing entrie (NAs)
}

\seealso{
regmodelSuit
}

\examples{
library(caret)
library(sp)
library(rasterVis)
library(raster)
library(randomForest)
data(predLayer)
data(sampleData)
soils=subset(sampleData,!is.na(sampleData$LL))
dattu=sampleData[,c("LL")]
\donttest{
  Tesrd=predGeo(dattu,predLayer,k=3,90,"lm")
}
}
