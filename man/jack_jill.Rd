\name{jack.jill}
\alias{jack.jill}
\non_function{}

\title{Spending on Children's Apparel}

\description{
The \code{jack.jill} data set has 557 observations and 8 variables.
The data contains information on children's apparel spending and household level
demographic and socioeconomic information for a sample of households 
residing in Alberta and British Columbia.
}

\format{
  This data set contains the following variables:\cr
  \describe{
    \item{SPENDING}{
      Dollars spent on children's apparel over a one-year period.
      }
    \item{CHILDREN}{
      Pre-tax income given as a factor with levels:\cr
      \code{1}\cr
      \code{2}\cr
      \code{3}\cr
      \code{4+}\cr
      }
    \item{INCOME}{
      Pre-tax income given as a factor with levels:\cr
      \code{$0k-$20k}\cr
      \code{$20k-$30k}\cr
      \code{$30k-$40k}\cr
      \code{$40k-$50k}\cr
      \code{$50k-$60k}\cr
      \code{$60k-$75k}\cr
      \code{$75k-$100k}\cr
      \code{$100k+}
      }
    \item{EMPOLYMENT}{
      The employment status of the female head of household with levels:\cr
      \code{No female head}\cr
      \code{Unemployed}\cr
      \code{Part-time}\cr 
      \code{Full-time}
      }
    \item{AGE}{
      Age of the female head of household given as a factor with levels:\cr
      \code{No female head}\cr
      \code{29 and under}\cr
      \code{30 to 39}\cr 
      \code{40 to 49}\cr 
      \code{50 to 59}\cr 
      \code{60 and over}
      }
    \item{EDUCATION}{
      The educational attainment of the female head of household given as a 
      factor with levels:\cr
      \code{No female head}\cr
      \code{Not stated}\cr
      \code{Elementary or less}\cr 
      \code{Some or completed secondary}\cr 
      \code{Some post-secondary}\cr 
      \code{Post-secondary diploma}\cr 
      \code{University degree}
      }
    \item{OCCUPATION}{
      The occupation group of the female head of household with levels:\cr
      \code{No female head}\cr
      \code{Blue collar}\cr
      \code{Pink collar}\cr 
      \code{White collar}\cr 
      \code{Other}\cr 
      \code{Non-working or retired}
      }
    \item{BIRTHCNTRY}{
      The birth country of the female head of household with levels:\cr
      \code{No female head}\cr
      \code{Canada}\cr
      \code{US, N&W Europe}\cr 
      \code{S&E Europe}\cr 
      \code{Asia and Oceania}\cr 
      \code{Other} (Caribbean, Middle East, and Africa)\cr
      }
    }
  }

\source{
 Statistics Canada
}


\usage{
data(jack.jill)
}

\keyword{datasets}
