\name{create.samples}
\alias{create.samples}

\title{Create a Sample Membership Character Variable}
\description{
  Provides a character vector with possible values of "Estimation",
  "Validation" and "Holdout" that can then be used to assign observations of a
  data frame to estimation, validation, or (optionally) holdsout samples using
  the subset option of a variety of functions.
}
\usage{
create.samples(x, est=0.34, val=0.33, rand.seed=1)
}

\arguments{
  \item{x}{A data frame.}
  \item{est}{The percentage of the total sample to allocate to the estimation 
  sample. The value of \code{est} should range from zero to one}
  \item{val}{The percentage of the total sample to allocate to the validation 
  sample. The value of \code{val} should range from zero to one}
  \item{rand.seed}{A parameter passed to \code{set.seed} for to specify the seed
  of the random number generator.}
}

\value{
  A character vector with possible values of "Estimation", "Validation" and 
  (optionally) "Holdout". The length of the vector equals the number of rows
  in the original data frame.
}

\details{The values of \code{est} and \code{val} should sum to a value between
  zero and one. If greater than one, an error is returned. If less than one,
  the remaining percentage of the sample is allocated to the holdout sample.}

\author{Dan Putler}

\seealso{\code{\link[base]{set.seed}}}

\examples{
  data(CCS)
  # Create a new set of samples with 40 percent in each of the estimation and
  # validation samples, and 20 percent in the holdout sample.
  CCS$Sample <- create.samples(CCS, est=0.4, val=0.4)
  }
\keyword{misc}
