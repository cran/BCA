\name{SDIndex}
\alias{SDIndex}

\title{A Plot of SD Index Values for K-Means Clustering Solutions}
\description{
  Provides a plot of SD cluster validation index values for different numbers of
  k-means clusters for a common underlying dataset. The number of clusters that
  has the lowest value of the SD index represents the "best" solution under the 
  criteria used to construct the SD index.
}
\usage{
SDIndex(x, minClust, maxClust, iter.max=10, num.seeds=10)
}

\arguments{
  \item{x}{A numeric matrix of data, or an object that can be coerced to such a
  matrix (such as a numeric vector or a dataframe with all numeric columns).}
  \item{minClust}{The minimum number of clusters to be considered for a solution.}
  \item{maxClust}{The maximum number of clusters to be considered for a solution.}
  \item{iter.max}{The maximum number of iterations allowed for a solution.}
  \item{num.seeds}{The number of different starting random seeds to use for a
  solution with a given number of clusters.}
}

\value{
  The function returns invisibly. Its benefit is the side effect plot produced.
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
	\emph{Journal of Intelligent Information Systems,} 17:2/3.
}

\author{Dan Putler}

\seealso{\code{\link{KMeans}}, \code{\link{SD.clv}}}

\examples{
  data(iris)
  iris.data <- iris[,1:4]
  SDIndex(iris.data, minClust=2, maxClust=6, iter.max=10, num.seeds=10)
}

\keyword{cluster}
