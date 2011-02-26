\name{SD.clv}
\alias{SD.clv}

\title{A Wrapper Function for the clv.SD Function and its Components}
\description{
  Provides a wrapper to several function calls in the clv package needed to
  construct the SD index value for a clustering solution. The number of
  clusters that has the lowest value of the SD index represents the "best"
  solution under the criteria used to construct the SD index.
}
\usage{
SD.clv(x, clus, alpha)
}

\arguments{
  \item{x}{A numeric matrix of data, or an object that can be coerced to such a
  matrix (such as a numeric vector or a dataframe with all numeric columns) used
  to construct the clustering solution.}
  \item{clus}{The cluster to which each row of x was assigned.}
  \item{alpha}{A weight to be placed on the average scattering of the clustering
  solution.}
}

\value{
  A scalar SD index value for the clustering solution.
}

\details{
  The SD index corresponds to the weighted sum of the average "scattering" of 
  points within clusters and the inverse of the total seperation between
  clusters. The average scattering measure is based on the average
  sum of the squared differences between a clusters centroid all the points in 
  a cluster, while total seperation is measured by the sum of the squared
  distance between cluster centroids. A solution with a low average scattering
  and a low value of the inverse total seperation is considered to be better
  than a solution with higher levels of these two measures.
}

\references{
	M. Haldiki, Y. Batistakis, M. Vazirgiannis (2001), On Clustering Validation Techniques,
	\emph{Journal of Intelligent Information Systems}, 17:2/3.
}

\author{Dan Putler}

\seealso{\code{\link[clv]{clv.SD}}}

\examples{
  data(iris)
  iris.data <- iris[,1:4]
  irisC3 <- kmeans(iris.data, centers=3, nstart=10)
  SD.clv(iris.data, clus=irisC3$cluster, alpha=0.1)
}

\keyword{cluster}
