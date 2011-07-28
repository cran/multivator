\name{compatible}
\alias{compatible}
\title{
Are two objects compatible?
}
\description{
Function to detect whether two objects are compatible
}
\usage{
compatible(x1,x2)
}
\arguments{
  \item{x1,x2}{
Two objects with \code{names} and \code{levels}.  Typically either
objects of class \code{mhp} or \code{mdm}.
}
}
\details{

  Here, \dQuote{compatible} means have the same names and levels.  If an
  \code{mdm} object and \code{mhp} object are compatible, then they may
  be supplied to (eg) \code{var.matrix()}.
  
  The function uses \code{identical()} to compare the names and levels.
}
\value{
Returns a Boolean.
}
\author{
Robin K. S. Hankin
}
\note{
 Cannot yet compare \code{LoF} objects.
}

\examples{
data(mtoys)
stopifnot(compatible(toy_mhp, toy_mm))
}
