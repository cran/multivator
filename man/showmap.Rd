\name{showmap}
\alias{showmap}
\title{
Function to plot the McNeall dataset
}
\description{
A small wrapper function to plot a global map of temperature, which is
useful when analyzing the McNeall dataset
}
\usage{
showmap(z, pc, landmask, ...)
}
\arguments{
  \item{z}{
    A vector of length 2048 corresponding to temperatures on the Earth's
    surface}
  \item{pc}{Boolean, with \code{TRUE} meaning to interpret \code{z} as
    a principal component and \code{FALSE} meaning to interpret \code{z}
    as a temperature map}
  \item{landmask}{A matrix of zeros and ones corresponding to the
    Earth's surface with zero indicating sea and one indicating land;
    use \code{data(mcneall)}}
  \item{\dots}{
    Further arguments passed to \code{filled.contour()}
  }
}
\author{
  Robin K. S. Hankin
}
\seealso{\code{\link{mcneall}}}
\examples{
data(mcneall)
showmap(mcneall_temps[,1],pc=FALSE,landmask=landmask)
}
