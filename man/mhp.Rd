\name{mhp}
\alias{mhp}
\alias{mhp-class}
\alias{is.mhp}
\alias{M}
\alias{B}
\alias{M<-}
\alias{B<-}
\alias{as.mhp}
\alias{as.mhp,mdm-method}
\alias{as.mhp,experiment-method}
\alias{names}
\alias{summary,mhp-method}
\alias{summary}
\alias{names,mhp-method}
\alias{names<-,mhp-method}
\alias{levels}
\alias{levels,mhp-method}
\alias{levels<-,mhp-method}
\alias{types,mhp-method}
\alias{types<-,mhp-method}
\alias{print.mhpSummary}
\title{
Multivatriate hyperparameter (mhp) objects
}
\description{
Create and manipulate multivatriate hyperparameter (mhp) objects
}
\usage{
mhp(M, B, levels = NULL, names = NULL)
is.mhp(x)
M(x)
M(x) <- value
B(x)
B(x) <- value
levels(x)
summary(object,...)
}
\arguments{
  \item{M}{Variance matrix (must be positive definite)}
  \item{B}{Array of roughness parameters.  Each slice (ie \code{B[,,i]}) must
    be positive-definite}
  \item{levels}{Character vector holding the levels.  Default
    \code{NULL} means to use \code{rownames(M)} or
    \code{dimnames(B[[3]])}} 
  \item{names}{Character vector holding the names of the dimensions.
    Default of \code{NULL} means to use \code{dimnames(B[[1]])}}
  \item{x,object}{Object of class \code{mhp}}
  \item{value}{Replacement object}
  \item{...}{Further arguments passed to the \code{summary} method}
}
\details{
An \code{mhp} object \emph{must} have \code{names} and \code{levels}, so
either provide them explicitly with the eponymous arguments, or give
named arrays to \code{M} and \code{B}.
  
}
\value{
Returns an object of class \code{mhp}
}
\author{
Robin K. S. Hankin
}
\seealso{
\code{\link{mdm}}
}
\examples{

hp <- mhp(M=diag(2),B=array(c(diag(3),diag(3)),c(3,3,2)),
names=letters[1:3],levels=c("oak","ash"))
M(hp)
B(hp)[1,1,1] <- 30  # try a negative value and see what happens
names(hp)
names(hp) <-  c("Alice","Zachy","Annabel")
levels(hp) <- c("squid","snail")
summary(hp)

}
