\name{CCS}
\alias{CCS}
\non_function{}

\title{Charitable Giving Dataset}

\description{
The \code{Charity} data set has 1600 observations and 20 variables.
The data examine whether a donor joined a British Columbia and Yukon based
charity's Monthly Giver Program in which he or she opts to make a pre-arranged
monthly donation to the charity by credit card.
The actual monthly givers have been highly over-sampled. In the the Charity's
database they represent one percent of donors, but they comprise 50 percent of
this sample. This level of oversampling is common in data mining applications.
}

\format{
  This data set contains the following variables:
  \describe{
    \item{MonthGive}{
      A factor indicating whether the donor joined the monthly giver program
      in the last two annual campaigns with levels:\cr
      \code{No}\cr
      \code{Yes}\cr
      }
    \item{Region}{
      A factor indicating where in British Columbia or the Yukon the donor
      resides with levels:\cr
      \code{R1} (Vancouver Island)\cr
      \code{R2} (Greater Vancouver)\cr
      \code{R3} (The Fraser Valley)\cr
      \code{R4} (The North Coast of BC)\cr
      \code{R5} (The Central and Southern Interior of BC)\cr
      \code{R6} (The Northern Interior of BC and the Yukon)\cr
      }
    \item{YearsGive}{
      The number of years the individual has given to the Canadian Cancer
      Society.
      }
    \item{AveDonAmt}{
      The average dollar amount of past donations by the donor.
      }
    \item{LastDonAmt}{
      The dollar amount of the last donation by the donor.
      }
    \item{DonPerYear}{
      The rate of donating to the Canadian Cancer Society measured as the
      number of donations per year by the donor.
      }
    \item{NewDonor}{
      A factor that indicates whether the individual is a first time
      donor with levels.\cr
      \code{No}\cr
      \code{Yes}\cr
      }
    \item{Age20t29}{
      The percentage of people between age 20 and 29 residing in the Enumeration 
      Area in which the donor resides.
      }
    \item{Age20t39}{
      The percentage of people between age 20 and 39 residing in the Enumeration 
      Area in which the donor resides.
      }
    \item{Age60pls}{
      The percentage of people 60 years of age or older residing in the 
      Enumeration Area in which the donor resides.
      }
    \item{Age70pls}{
      The percentage of people 70 years of age or older residing in the 
      Enumeration Area in which the donor resides.
      }
    \item{Age80pls}{
      The percentage of people 80 years of age or older residing in the 
      Enumeration Area in which the donor resides.
      }
    \item{AdultAge}{
      The average age of adult residents in the Enumeration Area in which the 
      donor resides.
      }
    \item{SomeUnivP}{
      The percentage of adults in the postal code in which the donor resides 
      that have an educational attainment of some college or university
      attendance.
      }
    \item{FinUnivP}{
      The percentage of adults in the Enumeration Area in which the donor resides 
      that have a university degree.
      }
    \item{hh1t2mem}{
      The percentage of households in the Enumeration Area in which the donor 
      resides that have only one or two members present.
      }
    \item{hh1mem}{
      The percentage of households in the Enumeration Area in which the donor 
      resides that have only a single member present.
      }
    \item{AveIncEA}{
      The average pre-tax income of households in the Enumeration Area in which
      the donor resides.
      }
    \item{DwelValEA}{
      The average dwelling value in the Enumeration Area in which
      the donor resides.
      }
    \item{EngPrmLang}{
      The percentage of households in the Enumeration Area in which the donor 
      resides that have have English as their primary language.
      }
    }
  }

\source{
 An anonymous charity.

}


\usage{
data(CCS)
}

\keyword{datasets}
