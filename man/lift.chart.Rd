\name{lift.chart}
\alias{lift.chart}

\title{Lift Charts to Compare Binary Predictive Models}
\description{
  Provides either a total cumulative response or incremental response rate lift
  chart for the purposes of comparing the predictive capability of different 
  binary predictive models. 
}
\usage{
lift.chart(modelList, data, targLevel, trueResp, type = "cumulative", sub = "")
}

\arguments{
  \item{modelList}{A character vector containing the names of the different
  models to be compared. The selected models must have the same y variable that
  must be a binary factor, and have been estimated using the same data set.}
  \item{data}{The dataframe that constitues the comparison sample. If this
  dataframe is not the same as the dataframe used to estimated models, the
  dataframe must contain all the variables used in the models to be compared.}
  \item{targLevel}{The label for the level of the binary factor of interest.
  For example, in a database marketing application, this level could be "Yes"
  for a variable that takes on the values "Yes" and "No" to indicate if a
  customer responded favorably to a promotion offer.}
  \item{trueResp}{The true rate of the target level for the master database
  the estimation and comparison dataframes were originally drawn from.}
  \item{type}{A character string that must either have the value of
  "cummulative" (to produce a total cummaltive response chart) or "incremental"
  (to produce an incremental response rate chart).}
  \item{sub}{A sub-title for the plot, typically to identify the sample used.}
}

\value{
  The function returns invisibly. Its benefit is the side effect plot produced.
}

\details{Lift charts are a commonly used tool in business data mining
applications. They are used to assess how well a model is able to predict a
desirable (from an organization's point-of-view) response on the part of a
customer compared to alternative estimated models and a benchmark model of 
approaching customers randomly. The total cummulative response chart shows the
percentage of the total response the organization would receive from only
contacting a given percentage (grouped by deciles) of its entire customer base.
This chart is best for selecting between alternative models, and in predicting
the revenues the organization will receive by contacting a given percentage of
their customers that the model predicts are most likely to favorably respond.
The incremental response rate chart provides the response rate among each of ten
decile groups of the organization's customers, with the decile groups ordered by
their estimated likelihood of a favorable response.}

\author{Dan Putler}

\examples{
  library(rpart)
  layout(matrix(c(1,2), 2, 1))
  data(CCS)
  CCS$Sample <- create.samples(CCS, est=0.4, val=0.4)
  CCSEst <- CCS[CCS$Sample == "Estimation",]
  CCS.glm <- glm(MonthGive ~ DonPerYear + LastDonAmt + Region + YearsGive,
    family=binomial(logit), data=CCSEst)
  library(rpart)
  CCS.rpart <- rpart(MonthGive ~ DonPerYear + LastDonAmt + Region + YearsGive,
    data=CCSEst, cp=0.0074)
  CCSVal <- CCS[CCS$Sample == "Validation",]
  lift.chart(c("CCS.glm", "CCS.rpart"), data=CCSVal, targLevel="Yes",
    trueResp=0.01, type="cumulative", sub="Validation")
  lift.chart(c("CCS.glm", "CCS.rpart"), data=CCSVal, targLevel="Yes",
    trueResp=0.01, type="incremental", sub="Validation")
  }
\keyword{misc}
