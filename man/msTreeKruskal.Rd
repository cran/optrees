\name{msTreeKruskal}
\alias{msTreeKruskal}
\title{Minimum cost spanning tree with Kruskal's algorithm}
\usage{
msTreeKruskal(nodes, arcs)
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
\code{msTreeKruskal} returns a list with:

\item{tree.nodes}{vector containing the nodes of the minimum cost spanning tree.}
\item{tree.arcs}{matrix containing the list of arcs of the minimum cost spanning tree.}
\item{stages}{number of stages required.}
\item{stages.arcs}{stages in which each arc was added.}
}
\description{
\code{msTreeKruskal} computes a minimum cost spanning tree
of an undirected graph with Kruskal's algorithm.
}
\details{
Kruskal's algorithm was published for first time in 1956 by
mathematician Joseph Kruskal. This is a greedy algorithm
that finds a minimum cost spanning tree in a connected
weighted undirected graph by adding, without forming
cycles, the minimum weight arc of the graph at each stage.
}
\references{
Kruskal, Joshep B. (1956), "On the Shortest Spanning
Subtree of a Graph and the Traveling Salesman Problem",
Proceedings of the American Mathematical Society, Vol. 7,
No. 1 (Feb., 1956), pp. 48-50
}
\seealso{
A more general function \link{getMinimumSpanningTree}.
}

