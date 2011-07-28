\name{ipd}
\alias{ipd}
\title{
Positive definite matrices
}
\description{
Is a matrix symmetric positive-definite?
}
\usage{
ipd(mat)
}
\arguments{
  \item{mat}{
    A matrix
}
}
\value{
Returns either \code{TRUE} or \code{FALSE}, printing a diagnostic message
}
\author{
Robin K. S. Hankin
}
\examples{
data(mtoys)
stopifnot(ipd(crossprod(matrix(rnorm(30),10))))
stopifnot(ipd(M(toy_mhp)))
}
