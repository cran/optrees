\name{ArcList2Cmat}
\alias{ArcList2Cmat}
\title{Builds the cost matrix of a graph from its list of arcs}
\usage{
ArcList2Cmat(nodes, arcs, directed = TRUE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{directed}{logical value indicating whether the
  graph is directed (\code{TRUE}) or not (\code{FALSE}).}
}
\value{
\code{ArcList2Cmat} returns a \eqn{n \times n} matrix that
contains the weights of the arcs. It means that the element
\eqn{(i,j)} of the matrix returns the weight of the arc
\eqn{(i,j)}. If the value of an arc \eqn{(i,j)} is
\code{NA} or \code{Inf}, then it means this arc does not
exist in the graph.
}
\description{
The \code{ArcList2Cmat} function constructs the cost matrix
of a graph from a list that contains the arcs and its
associated weights.
}

