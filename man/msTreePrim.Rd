\name{msTreePrim}
\alias{msTreePrim}
\title{Minimum cost spanning tree with Prim's algorithm}
\usage{
msTreePrim(nodes, arcs, start.node = 1)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{start.node}{number associated with the first node
  in Prim's algorithm. By default, node \eqn{1} is the
  first node.}
}
\value{
\code{msTreePrim} returns a list with:

\item{tree.nodes}{vector containing the nodes of the minimum cost spanning tree.}
\item{tree.arcs}{matrix containing the list of arcs of the minimum cost spanning tree.}
\item{stages}{number of stages required.}
\item{stages.arcs}{stages in which each arc was added.}
}
\description{
\code{msTreePrim} computes a minimum cost spanning tree of
an undirected graph with Prim's algorithm.
}
\details{
Prim's algorithm was developed in 1930 by the mathematician
Vojtech Jarnik, later proposed by the computer scientist
Robert C. Prim in 1957 and rediscovered by Edsger Dijkstra
in 1959. This is a greedy algorithm that can find a minimum
spanning tree in a connected, weighted and undirected graph
by adding recursively minimum cost arcs leaving visited
nodes.
}
\references{
Prim, R. C. (1957), "Shortest Connection Networks And Some
Generalizations", Bell System Technical Journal, 36 (1957),
pp. 1389-1401
}
\seealso{
A more general function \link{getMinimumSpanningTree}.
}

