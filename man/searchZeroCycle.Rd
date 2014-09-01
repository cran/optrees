\name{searchZeroCycle}
\alias{searchZeroCycle}
\title{Zero weight cycle in a graph}
\usage{
searchZeroCycle(nodes, arcs)
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
\code{searchZeroCycle} returns a vector with the nodes and
a matrix with a list of arcs of the cycle found.
}
\description{
Given a directed graph, \code{searchZeroCycle} search paths
in it that forms a zero weight cycle. The function finishes
when found one cycle.
}
\seealso{
This function is an auxiliar function used in
\link{msArborEdmonds} and \link{getMinimumArborescence}.
}

