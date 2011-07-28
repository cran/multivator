\name{Print}
\alias{print.mdm}
\alias{print.mhp}
\alias{show,mdm-method}
\alias{show,mhp-method}
\title{Methods for printing mhp and mdm objects}
\description{
Methods for printing nicely
}
\usage{
\method{print}{mdm}(x, ...)
\method{print}{mhp}(x, ...)
}
\arguments{
  \item{x}{An object of class \code{mdm} or \code{mhp}}
  \item{...}{Further arguments (currently ignored)}
}
\author{Robin K. S. Hankin}
\examples{
data(mtoys)
a <- as.mhp(toy_mm)
a
}
