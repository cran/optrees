\name{spTreeBellmanFord}
\alias{spTreeBellmanFord}
\title{Shortest path tree with Bellman-Ford algorithm}
\usage{
spTreeBellmanFord(nodes, arcs, source.node = 1, directed = TRUE)
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
\code{spTreeBellmanFord} returns a list with:

\item{tree.nodes}{vector containing the nodes of the shortest path tree.}
\item{tree.arcs}{matrix containing the list of arcs of the shortest path tree.}
\item{stages}{number of stages required.}
\item{distances}{vector with distances from source to other nodes}
}
\description{
The \code{spTreeBellmanFord} function computes the shortest
path tree of an undirected or directed graph with the
Bellman-Ford algorithm.
}
\details{
The Bellman-Ford algorithm gets its name for two of the
developers, Richard Bellman y Lester Ford Jr., that
published it in 1958 and 1956 respectively. The same
algorithm also was published independently in 1957 by
Edward F. Moore.

The Bellman-Ford algorithm can compute the shortest path
from a source node to the rest of nodes that make a
connected graph, directed or not, with weights that can be
negatives. If the graph is connected and there isn't
negative cycles, the algorithm always finds a shortest path
tree.
}
\references{
Bellman, Richard (1958). "On a routing problem". Quarterly
of Applied Mathematics 16, 87-90.

Ford Jr., Lester R. (1956). Network Flow Theory. Paper
P-923. Santa Monica, California: RAND Corporation.

Moore, Edward F. (1959). "The shortest path through a
maze". Proc. Internat. Sympos. Switching Theory 1957, Part
II. Cambridge, Mass.: Harvard Univ. Press. pp. 285-292.
}
\seealso{
A more general function \link{getShortestPathTree}.
}

