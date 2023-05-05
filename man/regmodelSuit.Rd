\name{regmodelSuit}
\alias{regmodelSuit}
\title{
A function for guiding selection of a predition model for modelling soil properties
}
\description{
This function evaluates suitability of most predition models in mapping soil properties using a set of predLayer
}
\usage{
regmodelSuit(df, ...)
}
\arguments{
  \item{df}{
a dataframe of target soil property and its predLayer
}
  \item{...}{
name of the target soil variable to predict and names of its predLayer
}
}
\details{
The name of the target soil variable to predict and names of its predLayer are seperated by commas and are similar to column names of the corresponding variables in the supplied dataframe. The name of the target soil variable starts the list and followed by the names of its predLayer. For example, if the dataframe has EC, landcover,DEM, Slope,  NDVI, etc., then the input could be (soil,EC,landcover,Slope,DEM).
}
\value{
A table of model statistics such as root mean square error (RMSE), mean absolute error (MAE), r-squared (R2) and Nash-Sutcliffe coefficient of efficiency (NSE) for the popular models in digital soil mapping
}
\references{
Nash, J. E.; Sutcliffe, J. V. 1970. River flow forecasting through conceptual models part I — A discussion of principles. Journal of Hydrology. 10 (3): 282–290
}
\note{
The function carries 5-fold cross-validation. Sometimes it may give a warning of missing resample performance with some models. It's important to ensure no NA in the data used for modelling
}

\examples{
library(caret)
library(sp)
data(sampleData)
soil1=sampleData[,c("LL")]
soil1=subset(soil1,!is.na(soil1$LL))
overlay.ov=over(soil1, predLayer)
soil1$dem=overlay.ov$dem
soil1$texture=overlay.ov$texture
soil1$depthcodes=overlay.ov$depthcodes
soil2=soil1@data[,c("LL","dem","texture","depthcodes")]
\donttest{
regmodelSuit(soil2,LL,dem,texture,depthcodes)
}
}
