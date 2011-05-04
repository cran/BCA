\name{score}
\alias{score}
\alias{rankScore}
\alias{rawProbScore}
\alias{adjProbScore}

\title{Score a Database based on a Predictive Model}
\description{
  Provides either an integer vector that contains the "desirability" rank of a 
  case in a data set, the fitted probability of a desired response, or the
  fitted probability adjusted for the true response rate based on the fitted 
  values of a predictive model.
}
\usage{
rankScore(model, data, targLevel)
rawProbScore(model, data, targLevel)
adjProbScore(model, data, targLevel, trueResp)
}

\arguments{
  \item{model}{A character string containing the name of the model to use to
  score the database.}
  \item{data}{A data frame of the database to be scored. All the predictor 
  variables of the model need to be amoung the variables of the data frame.}
  \item{targLevel}{The "desired" level of the y variable factor as a character
  string.}
  \item{trueResp}{The true "desired" response rate for the overall population of
  interest.}
}

\value{
  An integer vector that indicates the rank order desirability (a value of 1 
  means most desirable) of the correponding case of the database being scored or
  a probability measure bounded between zero and one.
}

\details{Only binomial glm, binary rpart, and binary nnet models can be used 
as the basis of scoring a database.}

\author{Dan Putler}

\keyword{misc}
