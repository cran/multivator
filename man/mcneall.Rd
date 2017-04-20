\name{mcneall}
\alias{mcneall}
\alias{landmask}
\alias{mcneall_temps}
\alias{mean_temp}
\alias{mcneall_pc}
\alias{eigenmaps}
\alias{opt_mcneall}
\docType{data}
\title{
Dataset due to McNeall
}
\description{
Data, due to McNeall, from 92 runs of a climate model
}
\usage{data(mcneall)}

\details{

McNeall used a numerical climate model and ran it 92 times, on a design
matrix specified on 16 independent variables as detailed in McNeall
2008.

The model output is a temperature distribution over the surface of the
Earth.  The model gives 2048 temperatures, corresponding to 2048 grid
squares distributed over the Earth.  A vector of 2048 temperatures may
be displayed on a global map using the \code{showmap()} function.

The 92 model runs are presented in the form of a 2048 by 92 matrix
\code{mcneall_temps}, each column of which corresponds to a run.  A row
of 92 temperatures corresponds to the temperature at a particular place
on the earth as predicted by each of the 92 model runs.

Following McNeall, a principal component analysis on the maps was
performed.  The first four were used.  Matrix \code{eigenmaps} is a 2048
by 4 matrix, with columns corresponding to the four principal
components.  

Matrix \code{mcneall_pc} is a 92-by-20 matrix.  The first 16 columns
correspond to the independent variables (ie the design matrix); columns
17-20 correspond to the first four principal components of the model
output.  The 92 rows correspond to the 92 model runs.

The package can be used on the \code{mcneall_temps} matrix; use
\code{apart()} to generate a \code{mdm} object.  A reasonably optimized
hyperparameters object of class \code{mhp} is given as
\code{opt_mcneall}.
}

\references{
D. McNeall 2008.  "Dimension Reduction in the Bayesian analysis of a
numerical climate model".  PhD thesis, University of Southampton.
}
\seealso{\code{\link{showmap}}}
\examples{
data(mcneall)

showmap(mcneall_temps[,1], pc=FALSE,landmask=landmask)

}
\keyword{datasets}
