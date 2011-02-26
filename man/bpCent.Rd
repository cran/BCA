\name{bpCent}
\alias{bpCent}

\title{Two Dimensional Biplot of a Clustering Solution}
\usage{
bpCent(pc, clsAsgn, data.pts = TRUE, centroids = TRUE, 
  choices = 1:2, scale = 1, pc.biplot=FALSE, var.axes = TRUE, col,
  cex = rep(par("cex"), 2), xlabs = NULL, ylabs = NULL, expand=1, xlim = NULL,
  ylim = NULL, arrow.len = 0.1, main = NULL, sub = NULL, xlab = NULL,
  ylab = NULL, \dots)
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
  \item{pc.biplot}{If true, then \code{lambda = 1} and the observations are are
    scaled up the sqrt(n) and the variables scaled down by sqrt(n). In this case
    the inner product between variables approximate covariances, and the 
    distances between observations approximate Mahalanobis distance. Gabriel 
    refers to this as a "principal component biplot".}
  \item{var.axes}{If \code{TRUE} the second set of points have arrows
    representing them as (unscaled) axes.}
  \item{col}{A vector of length 2 giving the colours for the first and
    second set of points respectively (and the corresponding axes). If a
    single colour is specified it will be used for both sets.  If
    missing the default colour is looked for in the
    \code{\link{palette}}: if there it and the next colour as used,
    otherwise the first two colours of the paletter are used.}
  \item{cex}{The character expansion factor used for labelling the
    points. The labels can be of different sizes for the two sets by
    supplying a vector of length two.}
  \item{xlabs}{A vector of character strings to label the first set of
    points: the default is to use the row dimname of \code{x}, or
    \code{1:n} is the dimname is \code{NULL}.}
  \item{ylabs}{A vector of character strings to label the second set of
    points: the default is to use the row dimname of \code{y}, or
    \code{1:n} is the dimname is \code{NULL}.}
  \item{expand}{An expansion factor to apply when plotting the second set
    of points relative to the first. This can be used to tweak the
    scaling of the two sets to a physically comparable scale.}
  \item{arrow.len}{The length of the arrow heads on the axes plotted in
    \code{var.axes} is true. The arrow head can be suppressed by
    \code{arrow.len = 0}.}
  \item{xlim, ylim}{Limits for the x and y axes in the units of the
    first set of variables.}
  \item{main, sub, xlab, ylab, \dots}{graphical parameters.}
}
\description{
  Plot a biplot of a clustering solution on the current graphics device.
}
\details{
  This function is a reworking of \code{biplot} in order to allow the cluster
  centroids of a clustering solution to be displayed as well as the individual
  data points. If both \code{data.pts} and \code{centroids} are set to
  \code{FALSE} then only the variable directional vectors are displayed.

  Graphical parameters can also be given to \code{biplot}.
}
\section{Side Effects}{
  a plot is produced on the current graphics device.
}
\seealso{\code{\link[stats]{biplot}}}
\keyword{hplot}
\keyword{multivariate}
