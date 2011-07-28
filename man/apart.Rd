\name{apart}
\alias{apart}
\title{
Decompose a matrix with multiple columns of dependent variables
}
\description{
Decomposes a matrix with multiple columns of dependent variables into a
\code{mdm} object
}
\usage{
apart(X, dependent, use_rownames = TRUE)
}
\arguments{
  \item{X}{
    A matrix with columns corresponding to either independent variables
    or dependent variables.  The names of the independent variables are
    taken from the column names of \code{X}
  }
  \item{dependent}{Vector of length \code{ncol(X)}.  If numeric,
    interpret as the column numbers of the dependent variable.  If
    logical, \code{TRUE} elements correspond to dependent variables}
  \item{use_rownames}{
    Boolean, with default \code{TRUE} meaning to use the rownames of
    \code{X} to create rownames in the returned value
  }
}
\value{
  Returns an object of class \code{experiment}.

}

\author{
Robin K. S. Hankin
}
\seealso{
\code{\link{as.list}}
}
\examples{

data(e3mg)
apart(e3mg , 6:7)

a <- round(emulator::latin.hypercube(6,5),2)
rownames(a) <- c("first","second","third","fourth","fifth","sixth")
colnames(a) <- c(letters[1:3],"length","depth")
jj_expt <- apart(a,4:5)    # use of apart()

x <- get_mdm(jj_expt[c(1,7)])
xold(x) <- 0.5

multem(x,jj_expt,hp=as.mhp(x),give=TRUE)

}
