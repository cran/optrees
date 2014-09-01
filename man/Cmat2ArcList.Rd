\name{Cmat2ArcList}
\alias{Cmat2ArcList}
\title{Builds the list of arcs of a graph from its cost matrix}
\usage{
Cmat2ArcList(nodes, Cmat, directed = TRUE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{Cmat}{\eqn{n\times n} matrix that contains the
  weights or costs of the arcs. Row \eqn{i} and column
  \eqn{j} represents the endpoints of an arc, and the value
  of the index \eqn{ij} is its weight or cost. If this
  value is \code{NA} or \code{Inf} means that there is no
  arc \eqn{ij}.}

  \item{directed}{logical value indicating whether the
  graph is directed (\code{TRUE}) or not (\code{FALSE}).}
}
\value{
\code{Cmat2ArcList} returns a matrix with the list of arcs
of the graph. Each row represents one arc. The first two
columns contain the two endpoints of each arc and the third
column contains their weights.
}
\description{
The \code{Cmat2ArcList} function builds the list of arcs of
a graph from a cost matrix that contains the weights of all
the arcs.
}

