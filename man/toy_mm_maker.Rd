\name{toy_mm_maker}
\alias{toy_mm_maker}
\title{
Make a toy mm object
}
\description{
Create a toy \code{mhp} object with three levels: temperature, rainfall,
and humidity.
}
\usage{
toy_mm_maker(na, nb, nc, include_first = TRUE)
}
\arguments{
  \item{na,nb,nc}{
    Numbers of observations for each level
  }
  \item{include_first}{
    Boolean, with default \code{TRUE} meaning to include an extra
    observation of each level at the midpoint of the domain
  }
}
\value{
Returns an object of class \code{mhp}.
}
\author{
Robin K. S. Hankin
}
\examples{
toy_mm_maker(4,5,6,FALSE)
toy_mm_maker(1,1,2,TRUE)
}
