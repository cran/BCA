\name{bootCVD}
\alias{bootCVD}
\alias{bootCH}
\alias{bootPlot}

\title{Cluster Solution Diagnositics Using Bootstrap Replicates}
\description{
  Provides a plot of both the Rand index and the Calinski-Harabas index for
  different numbers of clusters for a common underlying dataset using either
  the K-Means, K-Medians, or Neural Gas clusting algorithms based on a set of
  bootstrap replicates of the data.
}
\usage{
bootCVD(x, k, nboot=100, nrep=1, method = c("kmn", "kmd", "neuralgas"),
   col1, col2, dsname)
bootCH(xdat, k_vals, clstr1, clstr2, cntrs1, cntrs2,
   method = c("kmn", "kmd", "neuralgas"))
bootPlot(fc, ch, col1="blue", col2="green")
}

\arguments{
  \item{x}{A numeric matrix of the data to be clustered.}
  \item{k}{An integer vector giving the set of clustering solutions to be
  examined.}
  \item{nboot}{The number of bootstrap replicates to use for the assessment.}
  \item{nrep}{The number of each set of initial cluster seeds on which to base
  a solution.}
  \item{method}{The clustering method, one of "kmn" (K-Means), "kmd"
  (K-Medians), and "neuralgas" (neural gas).}
  \item{col1}{The color to use for the plot of the Rand index values.}
  \item{col2}{The color to use for the plot of the Calinski-Harabas index values.}
  \item{dsname}{The name of the dataset being used (used only for output purposes.}
  \item{xdat}{A numeric matrix of the data to be clustered.}
  \item{k_vals}{An integer vector giving the set of clustering solutions to be examined.}
  \item{clstr1}{The cluster assignments from a bootFlexclust object for one side
  of the Rand index paired comparisons.}
  \item{clstr2}{The cluster assignments from a bootFlexclust object for the
  other side of the Rand index paired comparisons.}
  \item{cntrs1}{The cluster centers from a bootFlexclust object for one side
  of the bootFlexclust Rand index paired comparisons.}
  \item{cntrs2}{The cluster centers from a bootFlexclust object for the other
  side of the bootFlexclust Rand index paired comparisons.}
  \item{fc}{A bootFlexclust object.}
  \item{ch}{A matrix of Calinski-Harabas index values from \code{bootCH}.}
}

\value{
  The functions \code{bootCVD} and \code{bootPlot} return invisibly. Their
  benefit is the side effect plot produced and the printed summary of the index
  values. The function bootCH a matrix of Calinski-Harabas index values, the
  rows are the replicates, and each column corresponds to a particular number
  of clusters for a solution. 
}

\details{
  The Rand index provides a measure of cluster stability, with relatively
  higher values indicating relatively more stable clusters, and the the 
  Calinski-Harabas index gives a ratio of cluster seperation to cluster
  homogeneity, with higher values of the index being comparatively more
  preferred. The use of bootstrap replicates addresses both potential
  randomness in both the sample data and the clustering algorithms.
}

\references{
	S. Dolnicar, F. Leisch (2010), Evaluation of Structure and Reproducibility
    of Cluster Solution Using the Bootstrap. \emph{Marketing Letters,} 21:1.
    
    F. Leisch (2006), A Toolbox for K-Centroids Cluster Analysis.
    \emph{Computational Statistics and Data Analysis,} 51:2.
}

\author{Dan Putler}

\seealso{\code{\link{bootFlexclust}}}

\keyword{cluster}
