\name{bpCent3d}
\alias{bpCent3d}

\title{Three Dimensional Biplot of a Clustering Solution}
\usage{
bpCent3d(pc, clsAsgn, data.pts = TRUE, centroids = TRUE, 
  choices = 1:3, scale = 1, pc.biplot = FALSE, var.axes = TRUE, 
  col.score = "black", col.cntrs = "blue", col.load = "red",
  xlabs = NULL, ylabs = NULL, xlim = NULL, ylim = NULL, zlim = NULL,
  xlab = NULL, ylab = NULL, dim.lab = NULL, fov = 60)
}
\arguments{
  \item{pc}{The \code{prcomp} object of the data used in clustering.}
  \item{clsAsgn}{A vector containing the cluster assignment for each record in
    the clustering data.}
  \item{data.pts}{If \code{TRUE} the point for each record is plotted.}
  \item{centroids}{If \code{TRUE} the centroid for each cluster is plotted.}
  \item{choices}{length 2 vector specifying the components to plot.}
  \item{scale}{The variables scaled by \code{lambda ^ scale} and the observations
    are scaled by \code{lambda ^ (1-scale)}, where \code{lambda} are the eigen
    values of the principal components solution. \code{scale} should be between
    0 and 1.}
  \item{pc.biplot}{If \code{TRUE}, then \code{lambda = 1} and the observations 
    are scaled up the sqrt(n) and the variables scaled down by sqrt(n). In this
    case the inner product between variables approximate covariances, and the 
    distances between observations approximate Mahalanobis distance. Gabriel 
    refers to this as a "principal component biplot".}
  \item{var.axes}{If \code{TRUE} the second set of points have arrows
    representing them as (unscaled) axes.}
  \item{col.score, col.cntrs, col.load}{A vector of length 2 giving the colours for the first and
    second set of points respectively (and the corresponding axes). If a
    single colour is specified it will be used for both sets.  If
    missing the default colour is looked for in the
    \code{\link{palette}}: if there it and the next colour as used,
    otherwise the first two colours of the paletter are used.}
  \item{xlabs}{A vector of character strings to label the first set of
    points: the default is to use the row dimname of \code{x}, or
    \code{1:n} is the dimname is \code{NULL}.}
  \item{ylabs}{A vector of character strings to label the second set of
    points: the default is to use the row dimname of \code{y}, or
    \code{1:n} is the dimname is \code{NULL}.}
  \item{xlim, ylim, zlim}{Limits for the x, y, z axes in the units of the
    first set of variables.}
  \item{xlab, ylab, dim.lab, fov}{Graphical parameters for rgl.}
}
\description{
  Plot a biplot of a clustering solution on the current graphics device.
}
\details{
  This function is a reworking of \code{biplot} in order to allow the cluster
  centroids of a clustering solution to be displayed as well as the individual
  data points, and extend it to three dimensions. The use of arrow heads is
  discouraged since their creation is very resource intensive. If both 
  \code{data.pts} and \code{centroids} are set to \code{FALSE} then only the 
  variable directional vectors are displayed.
}
\section{Side Effects}{
  A plot is produced on the current graphics device.
}
\seealso{\code{\link[stats]{biplot}}}
\keyword{hplot}
\keyword{multivariate}
