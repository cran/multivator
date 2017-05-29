\name{mdm}
\alias{mdm}
\alias{mdm-class}
\alias{as.mdm}
\alias{is.mdm}
\alias{as.list}
\alias{as.matrix}
\alias{as.data.frame}
\alias{types}
\alias{types<-}
\alias{names<-}
\alias{xold}
\alias{xold,mdm-method}
\alias{xold<-}
\alias{xold<-,mdm-method}
\alias{as.list,mdm-method}
\alias{types,mdm-method}
\alias{types<-,mdm-method}
\alias{[,mdm-method}
\alias{[<-,mdm-method}
\alias{levels,mdm-method}
\alias{levels<-,mdm-method}
\alias{levels,experiment-method}
\alias{names,mdm-method}
\alias{names<-,mdm-method}
\alias{rbind,mdm-method}
\alias{rownames,mdm-method}
\alias{rownames<-,mdm-method}
\alias{as.matrix,mdm-method}
\alias{nrow,mdm-method}
\alias{ncol,mdm-method}
\alias{dim,mdm-method}
\alias{as.mdm,mhp-method}
\alias{as.data.frame,mhp-method}
\alias{as.data.frame,mdm,missing,missing-method}
\alias{rbind,mdm-method}
\alias{rbind}
\title{
Multivariate design matrices
}
\description{
Multivariate design matrices are represented using objects of class
\code{mdm}.
}
\usage{
mdm(xold, types)
as.mdm(x, ...)
is.mdm(x)
as.list(x, ...)
as.matrix(x, ...)
\S4method{as.data.frame}{mdm,missing,missing}(x, row.names=NULL,optional=TRUE, ...)
\S4method{rbind}{mdm}(x, ..., deparse.level=1)
types(x)
xold(x)
}
\arguments{
  \item{xold}{
    Matrix of design points, each row being a point in parameter space
  }
  \item{types}{
    A factor holding the types of each observation
  }
  \item{x}{An object of class \code{mdm}
  }
  \item{row.names,optional}{Currently ignored}
  \item{...}{Further arguments passed to \code{NextMethod()}}
  \item{deparse.level}{As for \code{rbind()}}
}
\details{
Various functionality for creating and manipulating objects of class
\code{mdm} (Multivariate Design Matrix).
}

\author{
Robin K. S. Hankin
}
\note{
The internal representation has two slots, one for the design matrix
proper (a matrix), and one for the types of observation (a factor).
}

\seealso{
\code{\link{mhp}},\code{\link{apart}}
}
\examples{

mm <- toy_mm_maker(7,8,9)
is.mdm(mm)
xold(mm) <- matrix(rnorm(108),27,4)
mm[1,1] <- 0.3

data(mtoys)
obs_maker(mm,toy_mhp,toy_LoF,toy_beta)

}
