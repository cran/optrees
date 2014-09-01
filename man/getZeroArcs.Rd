\name{getZeroArcs}
\alias{getZeroArcs}
\title{Selects zero weight arcs of a graph}
\usage{
getZeroArcs(nodes, arcs)
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
The \code{getZeroArcs} function returns a matrix with the
list of zero weight arcs of the graph.
}
\description{
Given a directed graph, \code{getZeroArcs} returns the list
of arcs with zero weight. Removes other arcs by assign them
infinite value.
}
\seealso{
This function is an auxiliar function used in
\link{msArborEdmonds} and \link{getMinimumArborescence}.
}

