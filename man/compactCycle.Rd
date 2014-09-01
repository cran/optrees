\name{compactCycle}
\alias{compactCycle}
\title{Compacts the nodes in a cycle into a single node}
\usage{
compactCycle(nodes, arcs, cycle)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{cycle}{vector with the original nodes in the
  cycle.}
}
\value{
\code{compactCycle} returns the nodes and the list of arcs
forming a new graph with the compressed cycle within a
supernode. Also returns a list of the correspondences
between the nodes of the new graph and the nodes of the
previous graph.
}
\description{
Given a directed graph with a cycle, \code{compactCycle}
compacts all the nodes in the cycle to a single node called
supernode. The function uses the first and the last node
of the cycle as a fusion point and obtains the costs of the
incoming and outgoing arcs of the new node.
}
\seealso{
This function is an auxiliar function used in
\link{msArborEdmonds} and \link{getMinimumArborescence}.
}

