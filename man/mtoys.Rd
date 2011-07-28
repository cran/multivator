\name{mtoys}
\alias{mtoys}
\alias{toy_LoF}
\alias{toy_M}
\alias{toy_B}
\alias{toy_d}
\alias{toy_d2}
\alias{toy_expt}
\alias{toy_mm}
\alias{toy_mm2}
\alias{toy_mm3}
\alias{toy_mm4}
\alias{toy_mhp}
\alias{toy_point}
\alias{toy_beta}
\docType{data}
\title{Toy datasets}
\description{Toy datasets that illustrate the package}
\usage{
toy_LoF
toy_mm
toy_mm2
toy_mm3
toy_mhp
}
\format{
  \itemize{
    \item
    \code{toy_LoF} is a list of three functions that work with
    \code{regressor()} and \code{toy_df}
    \item \code{toy_M} is an example \eqn{M} matrix for use with
    \code{mhp()}
    \item \code{toy_B} is an example of a \eqn{B} array of
    roughness coefficients for use with \code{mhp()}
    \item \code{toy_mm} and \code{toy_mm2} are examples of a \code{mdm}
    object, generated with function \code{toy_mm_maker()}.  These
    objects are marginals from the \emph{same} multivariate observation.
    \item \code{toy_mm3} and \code{toy_mm4} are small examples of
    \code{mdm} objects
    \item \code{toy_mhp} is an example of a \code{mhp} object
    \item \code{toy_beta} is a numeric vector that works with the above objects
  }
}
\details{
  These objects are intended as simple working \sQuote{toy} examples  of
  the various things needed to use the emulator.

  Note that \code{toy_d} and \code{toy_d2} are the marginals of the
  \emph{same} observation (see the vignette).
  
}
\references{
  \itemize{
    \item
    R. K. S. Hankin 2005. \emph{Introducing BACCO, an R bundle for
      Bayesian analysis of computer code output}, Journal of Statistical
    Software, 14(16)
  }
}
\author{Robin K. S. Hankin}
\seealso{
  \code{\link{toy_mm_maker}}
}
\examples{
data(mtoys)
obs_maker(toy_mm, toy_mhp, toy_LoF, toy_beta)

multem(toy_mm2,toy_expt,toy_mhp,toy_LoF,give=TRUE)


}
\keyword{datasets}
