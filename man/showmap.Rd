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
showmap(z, pc, ...)
}
\arguments{
  \item{z}{
    A vector of lenght 2048 corresponding to temperatures on the Earth's
    surface}
  \item{pc}{Boolean, with \code{TRUE} meaning to interpret \code{z} a
    aprincipal component and \code{FALSE} meaning to interpret \code{z}
    as a temperature map}
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
showmap(mcneall_temps[,1],pc=FALSE)
}
