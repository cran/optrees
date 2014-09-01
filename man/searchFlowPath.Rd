\name{searchFlowPath}
\alias{searchFlowPath}
\title{Find a maximum flow path}
\usage{
searchFlowPath(nodes, arcs, source.node = 1,
  sink.node = nodes[length(nodes)])
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{source.node}{number pointing to the source node of
  the graph. It's node \eqn{1} by default.}

  \item{sink.node}{number pointing to the sink node of the
  graph. It's the last node by default.}
}
\value{
\code{searchFlowPath} returns a list with two elements:

\item{path.nodes}{vector with nodes of the path.}
\item{path.arcs}{matrix with the list of arcs that form the maximum flow path.}
}
\description{
\code{searchFlowPath} go through a given graph and obtains
a maximum flow path between source and sink nodes. The
function uses a deep-first search estrategy.
}
\seealso{
This function is an auxiliar function used in
\link{ghTreeGusfield} and \link{getMinimumCutTree}.
}

