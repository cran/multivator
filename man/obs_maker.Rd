\name{obs_maker}
\alias{obs_maker}
\title{
Create observations
}
\description{
A function to create observations using known parameters and hyperparameters
}
\usage{
obs_maker(x, hp, LoF, beta, Sigma=NULL, ...)
}
\arguments{
  \item{x}{
    Object of class \code{mdm}: each row is a point in parameter space
  }
  \item{hp}{
    Object of class \code{mhp}
  }
  \item{LoF}{
    List of functions
  }
  \item{beta}{
    Vector of regression coefficients
  }
  \item{Sigma}{
    Variance matrix, with default \code{NULL} meaning to use
    \code{var.matrix(x,hp)}
  }
  \item{...}{Further arguments passed to \code{var.matrix()}}
}
\details{
  Uses the \code{mvtnorm} package to generate observations directly from
  the parameters and hyperparameters as a Gaussian process.
}
\value{
Returns a (named) vector of observations.  Note that the observations
may have different units (eg temperature in Kelvin, rainfall in
millimeters per year).
}
\author{
Robin K. S. Hankin
}
\seealso{\code{\link{toy_mm_maker}}}
\examples{
data(mtoys)
d <- obs_maker(toy_mm , toy_mhp, toy_LoF, toy_beta)
d <- obs_maker(toy_mm_maker(6,7,8) , toy_mhp, toy_LoF, toy_beta)



}
