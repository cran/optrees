\name{spTreeDijkstra}
\alias{spTreeDijkstra}
\title{Shortest path tree with Dijkstra's algorithm}
\usage{
spTreeDijkstra(nodes, arcs, source.node = 1, directed = TRUE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{source.node}{number pointing the source node of the
  graph. It's node \eqn{1} by default.}

  \item{directed}{logical value indicating whether the
  graph is directed (\code{TRUE}) or not (\code{FALSE}).}
}
\value{
\code{spTreeDijkstra} returns a list with:

\item{tree.nodes}{vector containing the nodes of the shortest path tree.}
\item{tree.arcs}{matrix containing the list of arcs of the shortest path tree.}
\item{stages}{number of stages required.}
\item{distances}{vector with distances from source to other nodes}
}
\description{
The \code{spTreeDijkstra} function computes the shortest
path tree of an undirected or directed graph with
Dijkstra's algorithm.
}
\details{
Dijkstra's algorithm was developed by the computer
scientist Edsger Dijkstra in 1956 and published in 1959.
This is an algorithm that can computes a shortest path tree
from a given source node to the others nodes that make a
connected graph, directed or not, with non-negative
weights.
}
\references{
Dijkstra, E. W. (1959). "A note on two problems in
connexion with graphs". Numerische Mathematik 1, 269-271.
}
\seealso{
A more general function \link{getShortestPathTree}.
}

