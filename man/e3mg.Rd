\name{e3mg}
\alias{e3mg}
\alias{e3mg_LoF}
\docType{data}
\title{
Output from computer model e3mg
}
\description{
Output from computer model e3mg detailing the depth of the recession and
its length as a function of four exogenous parameters
}
\usage{data(e3mg)}
\format{

  \itemize{
    \item \code{e3mg} is a matrix with 843 rows and 6 columns.
    Four of the columns are exogenous variables (\code{oil.price},
    \code{direct.tax}, \code{interest.rate}, and \code{saving.ratio})
    and two are model outputs: \code{rec_len}, the length (in years) of
    the recession, and \code{dep_rec}, the depth of the recession.
    \item \code{e3mg_LoF} is a list of functions suitable for use with
    the \code{e3mg} dataset
  }
}
\details{
The data comprises 843 runs of the e3mg econometric model, used to
predict the recession precipitated by the banking crisis.

The depth of the recession is defined as the maximum difference between
predicted post-crash GDP and GDP immediately pre-crash.

The length of the recession is defined as the time in years required for
GDP to return to pre-crash levels.
}
\source{
  Data kindly provided by Cambridge Econometrics
}
\seealso{\code{\link{apart}}}
\examples{
data(e3mg)
a <- lm(rec_len~oil.price*direct.tax + direct.tax*saving.ratio + investment,data=data.frame(e3mg))
b <- lm(rec_dep~oil.price*direct.tax + direct.tax*saving.ratio + investment,data=data.frame(e3mg))
plot(residuals(a),residuals(b))  # correlated!



# define an experiment object and find optimal prarams
e3mg_expt <- apart(e3mg[1:20,],6:7)
opt <- optimal_params(e3mg_expt, e3mg_LoF, option='c')


# now a point in parameter space:
center <- get_mdm(e3mg_expt)[c(1,40),]
rownames(center) <- c('center_dep','center_len')
xold(center) <- 0


#now predict the behaviour at the center:
multem(center, e3mg_expt, hp=opt, e3mg_LoF, give = TRUE)


}
\keyword{datasets}
