\name{default_LoF}
\alias{default_LoF}
\title{
Default List of functions
}
\description{
Creates a default List of Functions for use with \code{regressor()}.
}
\usage{
default_LoF(x)
}
\arguments{
  \item{x}{
    Object with \code{names} and \code{levels} methods; typically of
    class \code{mdm} or \code{mhp}.
  }
}
\value{
Returns a named list with each element giving the regressor functions
for that level.
}
\author{
Robin K. S. Hankin
}
\seealso{\code{\link{regressor}}}
\examples{
data(mtoys)

default_LoF(toy_mm)  # note list names == levels(toy_mm)

regressor(toy_mm)           # use default
regressor(toy_mm , toy_LoF) # use a bespoke set
}
