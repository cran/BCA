\name{variable.summary}
\alias{variable.summary}

\title{Basic summary information of the variables of a data frame}
\description{
  The function returns a data frame where, the row names correspond to the 
  variable names, and a set of columns with summary information for each 
  variable. Its purpose is to allow the user to quickly scan the data frame 
  for potentially problematic variables.
}
\usage{
variable.summary(dframe)
}

\arguments{
  \item{dframe}{A data frame.}
}

\value{
  The returned data frame contains the variables Class (numeric, integer,factor,
  or character), %.NA (the percentage of the cases of the variable that have 
  missing values), Levels (the levels of a factor variable, or NA for non-factor 
  variables), Min.Level.Size (the number of cases for the smallest level of a 
  factor, or NA for a non-factor), Mean (the mean of non-missing cases for a 
  numeric or integer variable, or NA for factor and character variables), and SD 
  (the standard deviation of non-missing cases for a numeric or integer variable, 
  or NA for factor and character variables).
}

\author{Dan Putler}

\examples{
  data(CCS)
  variable.summary(CCS)
}
\keyword{misc}
