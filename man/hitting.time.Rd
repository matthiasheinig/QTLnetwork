% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hitting.time.R
\name{hitting.time}
\alias{hitting.time}
\title{-----------------------------------------------------------------------------
Alternative approach to prioritize genes}
\usage{
hitting.time(Asparse, n.eigs = 20, from = NULL, to = NULL,
  sum = "none")
}
\arguments{
\item{n.eigs}{The number of eigenvectors used for the approximation. If this
is smaller than 2, the pseudo inverse will be computed}

\item{from}{Source nodes for which we need the transition probabilties.}

\item{to}{Target nodes for which we need the transition probabilties.#'}

\item{sum}{Can be "none", "from", "to" or "both" and will sum up the
propagation matrix over one or the other or both lists.}
}
\value{
Table of hitting times
}
\description{
We can compute expected hitting times for the random walks instead of using
the propagation approach.
}
\details{
Using \code{from} and \code{to} nodes avoids to compute the full
  propagation matrix which is too large to fit in memory. When \code{from} and
  \code{to} are NULL the full matrix will be computed. For \code{sum}, "none"
  returns a "from" by "to" matrix; "from" returns a vector of length
  nrow(Asparse); "to" returns a vector of length nrow(Asparse) and "both"
  returns a nrow(Asparse) by 2 matrix with the \code{from} and \code{to}
  vectors. The i-th component of the "from sum" represents the average
  hitting time going from node i to any of the "to" nodes. The i-th component
  of the "to sum" represents the average hitting time going from any "from"
  node to node i
}
\author{
Matthias Heinig <matthias.heinig@helmholtz-muenchen.de>

-----------------------------------------------------------------------------
}
