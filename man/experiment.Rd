\name{experiment}
\alias{experiment}
\alias{print.experiment}
\alias{get_mdm}
\alias{get_obs}
\alias{head,experiment-method}
\alias{tail,experiment-method}
\alias{[,experiment-method}
\alias{as.data.frame,experiment-method}
\alias{as.data.frame,experiment,ANY,ANY-method}
\alias{experiment-class}
\title{
Multivatriate hyperparameter (mhp) objects
}
\description{
Create and manipulate multivariate hyperparameter (mhp) objects
}
\usage{
experiment(mm,obs)
}
\arguments{
  \item{mm}{Object of class \code{mdm}}
  \item{obs}{Vector of observations, with elements corresponding to the
    rows of \code{mm}}
}
\details{
  An \dQuote{experiment} is an ordered pair of a multivariate design
  matrix and a vector of observations with entries corresponding to the
  rows of the design matrix.

  It functions as a container for the design matrix and observations. It
  is intended to simplify the calls to many functions in the package
  which require a design matrix and vector of observations.

  There are two get methods, \code{get_mdm()} and \code{get_obs()}, for
  the design matrix and observations respectively.  Note the deliberate
  absence of set methods.

}
\value{
Returns an object of class \code{experiment}, which is used as input to
many of the functions in the package.
}
\author{
Robin K. S. Hankin
}
\examples{

data(mtoys)
jj_expt <- experiment(toy_mm,toy_d)


# accessor methods:
get_obs(jj_expt)
get_mdm(jj_expt)


# estimation of coefficients:
beta_hat(jj_expt, toy_mhp, toy_LoF)

# use multem():
multem(toy_mm3, jj_expt, toy_mhp, toy_LoF,give=TRUE)


}
