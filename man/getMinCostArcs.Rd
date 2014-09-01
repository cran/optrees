\name{getMinCostArcs}
\alias{getMinCostArcs}
\title{Selects the minimum cost of the arcs pointing to each node}
\usage{
getMinCostArcs(nodes, arcs)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}
}
\value{
The \code{getMinCostArcs} function returns a matrix with
the list of the minimum cost arcs pointing to each node of
the graph.
}
\description{
Given a directed graph, \code{getMinCostArcs} selects the
minimum cost arcs entering each node and removes the
others.
}
\seealso{
This function is an auxiliar function used in
\link{msArborEdmonds} and \link{getMinimumArborescence}.
}

