\name{searchWalk}
\alias{searchWalk}
\title{Finds an open walk in a graph}
\usage{
searchWalk(nodes, arcs, directed = TRUE, start.node = nodes[1],
  end.node = nodes[length(nodes)], method = NULL)
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

  \item{start.node}{number with one node from which a walk
  start.}

  \item{end.node}{number with final node of the walk.}

  \item{method}{character string specifying which method
  use to select the arcs that will form the open walk:
  \code{"min"} if the function chooses the minimum weight
  arcs, \code{"max"} if chooses the maximum weight arcs, or
  \code{NULL} if chooses the arcs by their order in the
  list of arcs.}
}
\value{
If \code{searchWalk} found an open walk in the graph
returns \code{TRUE}, a vector with the nodes of the walk
and a matrix with the list of arcs of it.
}
\description{
This function walks a given graph, directed or not,
searching for a walk from a starting node to a final node.
The \code{searchWalk} function uses a deep-first search
strategy to returns the first open walk found, regardless
it has formed cycles or repeated nodes.
}

