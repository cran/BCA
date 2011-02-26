\name{relabel.factor}
\alias{relabel.factor}

\title{Relabel Factor Levels}
\description{
  Relabel the levels of factors to provide more descriptive names and reduce 
  the number of factor levels.
}
\usage{
relabel.factor(x, new.labels, old.labels=levels(x))
}

\arguments{
  \item{x}{A factor.}
  \item{new.labels}{The new factor level labels.}
  \item{old.labels}{The old factor level labels.}
}

\value{
  A factor whose length is equal to the old factor.
}

\details{The number of new factor labels/levels must be less than the number
  of labels/levels than the original factor.}

\author{Dan Putler}

\keyword{misc}
