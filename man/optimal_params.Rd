\name{optimal_params}
\alias{optimal_params}
\alias{optimal_B}
\alias{optimal_identical_B}
\alias{optimal_diag_M}
\alias{optimal_M}
\title{
Optimization of the hyperparameters
}
\description{
Optimization of the hyperparameters using a sequence of subfunctions.
}
\usage{
optimal_params     (expt, LoF, start_hp, option = "a", ...)
optimal_B          (expt, LoF, start_hp, option = "a", verbose=FALSE, ...)
optimal_identical_B(expt, LoF, start_hp, verbose=FALSE, ...)
optimal_diag_M     (expt, LoF, start_hp)
optimal_M          (expt, LoF, start_hp, ...)
}
\arguments{
  \item{expt}{
    Object of class \code{experiment}
  }
  \item{LoF}{
    List of functions
  }
  \item{start_hp}{
    Start value for the hyperparameters, an object of class \code{mhp}.
    The various optimization routines use the different parts of
    \code{start_hp} as start points, and incrementally update it
  }
  \item{option}{

    In function \code{optimal_B()} and consequently
    \code{optimal_params()}, a character indicating whether to allow the
    scales to differ or not.
    \itemize{
      \item Default option \dQuote{\code{a}} is the simplest: each
      univariate \code{B} matrix is a multiple of the identity matrix.
      
      \item Option \dQuote{\code{b}} allows the \code{B} matrices to be
      any (positive definite) diagonal matrix.
      
      \item Option \dQuote{\code{c}} specifies that \code{B[,,j]} is
      diagonal for each \code{j} and furthermore that
      \code{B[i,i,1]=B[i,i,2]=...=B[i,i,r]}.  This option calls
      \code{optimal_identical_B()}.
    }
  }
  \item{verbose}{
    In function \code{optimal_B()}, Boolean with \code{TRUE} meaning
    to print debugging information and default	\code{FALSE} meaning not
    to print anything
  }
  \item{\dots}{
    Further arguments passed to the optimization routine
  }
}
\details{
  The user-friendly wrapper function is \code{optimal_params()}.  This
  calls function \code{optimal_B()} first, as most of the analysis is
  conditional on \code{B}.  Then \code{optimal_diag_M()} is called; this
  places the maximum likelihood estimate for \eqn{\sigma^2}{sigma^2} on
  the diagonal of \code{M}.  Finally, \code{optimal_M()} is called,
  which assigns the off-diagonal elements of \code{M}.

  Each of the subfunctions returns an object appropriate for insertion
  into a \code{mhp} object.

  The \dQuote{meat} of \code{optimal_params()} is
  \preformatted{
       B(out)  <- optimal_B     (mm, d, LoF, start_hp=out, option=option, ...)
  diag(M(out)) <- optimal_diag_M(mm, d, LoF, start_hp=out, ...)
       M(out)  <- optimal_M     (mm, d, LoF, start_hp=out, ...)
  return(out)
}

See how object \code{out} is modified sequentially, it being used as a
start point for the next function.
 
}
\value{
Returns a \code{mhp} object.
}
\author{
Robin K. S. Hankin
}
\note{
  Function \code{optimal_diag_M()} uses MLEs for the diagonals, but using
  each type of observation separately.  It is conceivable that there is 
  information that is not being used here.
  
}

\examples{
data(mtoys)

optimal_params(toy_expt,toy_LoF,toy_mhp,option='c',control=list(maxit=1))
}
