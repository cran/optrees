\name{findstCut}
\alias{findstCut}
\title{Determines the s-t cut of a graph}
\usage{
findstCut(nodes, arcs, s = 1, t = nodes[length(nodes)])
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{s}{number pointing one node of the \code{s} cut in
  a given graph. It's node \eqn{1} by default.}

  \item{t}{number pointing one node of the \code{t} cut in
  a given graph. It's the last node by default.}
}
\value{
\code{findstCut} returns a list with two elements:
\item{s.cut}{vector with the nodes of the \code{s} cut.}
\item{t.cut}{vector with the nodes of the \code{t} cut.}
}
\description{
\code{findstCut} reviews a given graph with a cut between
two nodes with the bread-first search strategy and
determines the two cut set of the partition. The cut is
marked in the arc list with an extra column that indicates
the remaining capacity of each arc.
}
\seealso{
This function is an auxiliar function used in
\link{ghTreeGusfield} and \link{getMinimumCutTree}.
}

