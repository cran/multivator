\name{as.separate}
\alias{as.separate}
\title{
  Split an object of class \code{experiment} into a list of univariate datasets
}
\description{
  Split an \code{experiment} object into univariate designs; 
  return a list with elements suitable
  for univariate analysis with the \code{emulator} package.
}
\usage{
as.separate(expt)
}
\arguments{
  \item{expt}{
    Object of class \code{experiment}
  }
}
\author{
  Robin K. S. Hankin
}
\examples{
data(mtoys)
d <- obs_maker(toy_mm, toy_mhp, toy_LoF, toy_beta)

ex <- experiment(toy_mm, d)
jj <- as.separate(ex)   #list of 3: temp,rain,humidity


# now use it in a univariate emulator:
kk <- jj$temp
interpolant.quick(x=latin.hypercube(3,4),d=kk$obs,xold=kk$val,scales=rep(1,4))





}
