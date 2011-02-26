\name{score}
\alias{score}

\title{Score a Database based on a Predictive Model}
\description{
  Provides an integer vector that contains the "desirability" rank of a case in
  a data set based on the fitted values of a predictive model.
}
\usage{
score(model, data, targLevel)
}

\arguments{
  \item{model}{A character string containing the name of the model to use to
  score the database.}
  \item{data}{A data frame of the database to be scored. All the predictor 
  variables of the model need to be amoung the variables of the data frame.}
  \item{targLevel}{The "desired" level of the y variable factor as a character
  string.}
}

\value{
  An integer vector that indicates the rank order desirability (a value of 1 
  means most desirable) of the correponding case of the database being scored.
}

\details{Only binomial glm, binary rpart, and binary nnet models can be used 
as the basis of scoring a database.}

\author{Dan Putler}

\keyword{misc}
