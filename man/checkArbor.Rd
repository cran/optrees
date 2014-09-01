\name{checkArbor}
\alias{checkArbor}
\title{Checks if there is at least one arborescence in the graph}
\usage{
checkArbor(nodes, arcs, source.node = 1)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{source.node}{source node of the graph. Its default
  value is \eqn{1}.}
}
\value{
If \code{checkArbor} found an arborescence it returns
\code{TRUE}, otherwise it returns \code{FALSE}. If there is
an arborescence the function also returns the list of arcs
of the arborescence.
}
\description{
Given a directed graph, \code{checkArbor} searchs for an
arborescence from the list of arcs. An arborescence is a
directed graph with a source node and such that there is a
unique path from the source to any other node.
}
\seealso{
This function is an auxiliar function used in
\link{msArborEdmonds} and \link{getMinimumArborescence}.
}

