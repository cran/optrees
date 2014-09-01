\name{getCheapArcs}
\alias{getCheapArcs}
\title{Substracts the minimum weight of the arcs pointing to each node}
\usage{
getCheapArcs(nodes, arcs)
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
\code{getCheapArcs} returns a matrix with a new list of
arcs.
}
\description{
The \code{getCheapArcs} function substracts to each arc of
a given graph the value of the minimum weight of the arcs
pointing to the same node.
}
\seealso{
This function is an auxiliar function used in
\link{msArborEdmonds} and \link{getMinimumArborescence}.
}

