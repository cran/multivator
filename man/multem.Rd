\name{multem}
\alias{multem}
\title{
The multivariate emulator
}
\description{
A multivariate generalization of the \code{interpolant()} function of
the \code{emulator} package
}
\usage{
multem(x, expt, hp,  LoF = NULL, give=FALSE, Sigmainv=NULL, ...)
}

\arguments{
  \item{x}{Points at which the function is to be estimated
    in the form of an object of class \code{mdm}
  }
  \item{expt}{Points at which the code
    has been evaluated (\code{x_known}), in the form of an object of
    class \code{experiment}
  }
  \item{hp}{hyperparameter object, of class \code{mhp}
  }
  \item{give}{Boolean, with \code{TRUE} meaning to return extra
  information and default \code{FALSE} meaning to return just the mean}
  \item{Sigmainv}{
    The inverse of the variance matrix of the observations with default
    \code{NULL} meaning to calculate using \code{var.matrix()}
}
\item{LoF}{List of regressor functions}
\item{...}{Further arguments passed to \code{var.matrix()}}
}
\details{

This is the central function of the package.  It is the analogue of
\code{interpolant()} of the emulator package.
  
}
\author{
Robin K. S. Hankin
}
\seealso{\code{\link{betahat_mult}}}
\examples{
data(mtoys)
d <- obs_maker(toy_mm, toy_mhp, toy_LoF, toy_beta)
ex <- experiment(toy_mm , d)

Sigmainv <- solve(var.matrix(toy_mm,hp=toy_mhp))
multem(x=toy_mm2, expt=ex, hp=toy_mhp,LoF=toy_LoF, give=TRUE)

}
