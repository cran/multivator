\name{ss}
\alias{ss}
\alias{ss_matrix}
\alias{ss_matrix_simple}
\title{
Overall variance matrix
}
\description{\loadmathjax
Calculates the maximum correlations possible consistent with the
roughness parameters
}
\usage{
ss(A, B, Ainv, Binv)
ss_matrix(hp,useM=TRUE)
ss_matrix_simple(hp,useM=TRUE)
}

\arguments{
  \item{A,B}{
    Positive-definite matrices (roughness parameters)
  }
  \item{Ainv,Binv}{
    The inverses of \code{A} and \code{B}; if missing, compute explicitly
  }
  \item{hp}{An object of class \code{mhp}}
  \item{useM}{Boolean, with default \code{TRUE} meaning to multiply
    (pointwise) by \eqn{M} and \code{FALSE} meaning not to (so giving the
    maximum correlation consistent with the roughness matrices \eqn{B})
  }
}
\details{

  Function \code{ss()} calculates the maximum possible correlation
  between observations of two Gaussian processes at the same point
  (equation 24 of the vignette):

  \mjdeqn{
    \left|
    \left( 
    \frac{1}{2}B_r+\frac{1}{2}B_s\vphantom{\frac{1}{2}B_r^{-1}}
    \right)\left(
    \frac{1}{2}B_r^{-1}+\frac{1}{2}B_s^{-1}
    \right)
    \right|^{-1/4}
  }{equation 24 of the vignette}
  

  Functions \code{ss_matrix()} and \code{ss_matrix_simple()} calculate
  the maximum covariances among the types of object specified in the
  \code{hp} argument, an object of class \code{mhp}.  Function
  \code{ss_matrix()} is the preferred form; function
  \code{ss_matrix_simple()} is a less efficient, but more transparent,
  version.  The two functions should return identical output.
  
}
\value{
Function \code{ss()} returns a scalar, \code{ss_matrix()} a matrix
  of covariances.
}
\author{
Robin K. S. Hankin
}
\note{
Thanks to Stephen Stretton for a crucial insight here
}
\examples{
data(mtoys)
ss_matrix(toy_mhp)
}
