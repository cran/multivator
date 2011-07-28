\name{betahat}
\alias{beta_hat}
\alias{betahat_mult}
\alias{betahat_mult_Sigma}
\alias{cstar}
\alias{regressor}
\alias{var.matrix}
\alias{eq2.36}
\alias{eq2.36_Sigma}
\title{
Various intermediate expressions needed by the multivariate emulator
}
\description{
Various intermediate expressions needed by the multivariate emulator
}
\usage{
regressor(x,LoF)
beta_hat(expt,hp,LoF, ...)
betahat_mult(H, Sigmainv, d)
betahat_mult_Sigma(H, Sigma, d)
cstar(x1, x2=x1 , expt, hp,  LoF = NULL, Sigmainv=NULL, ...)
eq2.36(H, Sigmainv, d, log=TRUE)
eq2.36_Sigma(H, Sigma, d)
var.matrix(x1,x2=x1,hp, ...)
}
\arguments{
  \item{x,x1,x2}{
    Objects of class \code{mdm}: multivariate design matrix
  }
  \item{H}{
    Matrix of regressors (create this with \code{regressor()})
  }
  \item{d}{
    Vector of observations, possibly not all of the same
    dimensions (eg some elements might
    be Kelvin, others millimeters of rain per year)
  }
  \item{expt}{Object of class \code{experiment}}
  \item{Sigma}{The variance matrix of \code{d}}
  \item{log}{Boolean, with \code{TRUE} meaning to return the logarithm
    of the answer}
  \item{Sigmainv}{
    The inverse of the variance matrix of \code{d}, with
    default \code{NULL} meaning to calculate it directly using
    \code{var.matrix()}
  }
  \item{LoF}{
    A list of functions with default \code{NULL} meaning to use
    \code{default_LoF()}
  }
  \item{hp}{Object of class \code{mhp}: multivariate hyperparameters}
  \item{...}{Extra arguments which are
    passed (via \code{var.matrix()}) to \code{corr.matrix()} of the
    emulator package}
  }
  \details{
    
    Function \code{regressor()} creates a (sort of) direct sum of
    regressor matrices for an overall regressor matrix.  It returns a
    matrix whose rows are the regressor functions for each row in the
    \code{df} argument.  Each type of observation has its own
    \sQuote{slot} of columns, the others being filled with zeros.
    
    The emulator package \emph{should} have used this method (rather than
    messing about with \code{regressor.basis()} and
    \code{regressor.multi()}).
    
    To get the regression coefficients, the user should use function
    \code{beta_hat()}, which is the user-friendly version.  It is a
    wrapper for function \code{betahat_mult_Sigma()}.
    
    The equation for \code{var.matrix()} is
  
  \deqn{
    c^*\left(x,x'\right)=
    c\left(x,x'\right) - t(x)^TA^{-1}t(x') + \left\{h(x)^T - t(x)^TA^{-1}H\right\}
    \left(H^TA^{-1}H\right)^{-1}\left\{h(x')^T - t(x')^TA^{-1}H\right\}^T
  }{ommitted--see a LaTeXed file}
  

}
\author{
Robin K. S. Hankin
}
\seealso{\code{\link{multem}}}
\examples{

data(mtoys)

H <- regressor(toy_mm, toy_LoF)
Sigma <- var.matrix(toy_mm, hp=toy_mhp)
Sigmainv <- solve(Sigma)


jj <- toy_mm_maker(34,35,36)
expt  <- experiment(jj,obs_maker(jj,toy_mhp,toy_LoF,toy_beta))

x1 <- jj[c(20,40,100),]
xold(x1) <- 0.2

x2 <- jj[c(11,21:24,40:42),]
xold(x2) <- xold(x2)+0.1

#primary function of package:
multem(x=x1, expt, hp=toy_mhp, LoF=toy_LoF)

# conditional covariance matrix:
cstar(x1,x2, expt, hp=toy_mhp, LoF=toy_LoF)
 
}
