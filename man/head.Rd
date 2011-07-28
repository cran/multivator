\name{head}
\docType{methods}
\alias{head}
\alias{tail}
\alias{head,mdm-method}
\alias{tail,mdm-method}
\title{Head and tail}
\description{
Print the first few, or last few, lines of a mdm object
}
\usage{
\S4method{head}{mdm}(x, n = 6, ...)
\S4method{tail}{mdm}(x, n = 6, ...)
}
\arguments{
  \item{x}{object of class \code{mdm}}
  \item{n}{number of lines to print as per same argument in
    \code{head()} and \code{tail()}}
  \item{\dots}{Further arguments passed to \code{head()} or \code{tail()}}
}
\value{
  Returns a truncated \code{mdm} object.  The levels of the types are unchanged.
}
  
\author{Robin K. S. Hankin}
\examples{

data("mtoys")

head(toy_mm)
tail(toy_mm,3)

}
