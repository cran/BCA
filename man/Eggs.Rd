\name{Eggs}
\alias{Eggs}
\non_function{}

\title{Retail Sales of Eggs}

\description{
The \code{Eggs} data set has 105 observations and 10 variables.
The data contains information on weekly sales of eggs in Southern California
over a two year period.
}

\format{
  This data set contains the following variables:
  \describe{
    \item{Week}{
      The observation week (1 to 105). This variable can be used as a time
      trend.
      }
    \item{Month}{
      A factor that gives the name of the month in which the observation
      occured.
      }
     \item{First.Week}{
      A factor indicating whether the observation fell on the first week of the
      month with levels:\cr
      \code{No}\cr
      \code{Yes}
      }
    \item{Easter}{
      A factor that indicates whether the observation fell the week prior to the
      week containing Easter Sunday, the week containing Easter Sunday, the week
      following the week containing Easter Sunday, or a non-Easter week with
      levels:\cr
      \code{Non Easter}\cr
      \code{Pre Easter}\cr
      \code{Easter}\cr
      \code{Post Easter}
      }
   \item{Cases}{
      Retail sales of eggs in cases.
      }
    \item{Egg.Pr}{
      Average retail egg price in cents per dozen. 
      }
    \item{Beef.Pr}{
      Average retail price of 7-bone beef roast in cents per pound.
      }
    \item{Pork.Pr}{
      Average retail price of strip bacon in cents per pound.
      }
    \item{Chicken.Pr}{
      Average retail price of whole frying chicken in cents per pound.
      }
    \item{Cereal.Pr}{
      Average retail price of Cheerios breakfast cereal in cents per pound.
      }
    }
  }

\source{
 Putler (1992)
}


\usage{
data(Eggs)
}

\keyword{datasets}
