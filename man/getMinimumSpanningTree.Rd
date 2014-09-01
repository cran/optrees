\name{getMinimumSpanningTree}
\alias{getMinimumSpanningTree}
\title{Computes a minimum cost spanning tree}
\usage{
getMinimumSpanningTree(nodes, arcs, algorithm, start.node = 1,
  show.data = TRUE, show.graph = TRUE, check.graph = FALSE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{algorithm}{denotes the algorithm used to find a
  minimum spanning tree: "Prim", "Kruskal" or "Boruvka".}

  \item{check.graph}{logical value indicating if it is
  necesary to check the graph. Is \code{FALSE} by default.}

  \item{start.node}{number which indicates the first node
  in Prim's algorithm. If none is specified node 1 is used
  by default.}

  \item{show.data}{logical value indicating if the function
  displays the console output (\code{TRUE}) or not
  (\code{FALSE}). The default is \code{TRUE}.}

  \item{show.graph}{logical value indicating if the
  function displays a graphical representation of the graph
  and its minimum spanning tree (\code{TRUE}) or not
  (\code{FALSE}). The default is \code{TRUE}.}
}
\value{
\code{getMinimumSpanningTree} returns a list with:

\item{tree.nodes}{vector containing the nodes of the minimum cost spanning tree.}
\item{tree.arcs}{matrix containing the list of arcs of the minimum cost spanning tree.}
\item{weight}{value with the sum of weights of the arcs.}
\item{stages}{number of stages required.}
\item{stages.arcs}{stages in which each arc was added.}
\item{time}{time needed to find the minimum cost spanning tree.}

This function also represents the graph and the minimum
spanning tree and prints to the console the results whit
additional information (number of stages, computational
time, etc.).
}
\description{
Given a connected weighted undirected graph,
\code{getMinimumSpanningTree} computes a minimum cost
spanning tree. This function provides methods to find a
minimum cost spanning tree with the three most commonly
used algorithms: "Prim", "Kruskal" and "Boruvka".
}
\details{
Given a connected weighted undirected graph, a minimum
spanning tree is a spanning tree such that the sum of the
weights of the arcs is minimum. There may be several
minimum spanning trees of the same weight in a graph.
Several algorithms were proposed to find a minimum spanning
tree in a graph.

Prim's algorithm was developed in 1930 by the mathematician
Vojtech Jarnik, independently proposed by the computer
scientist Robert C. Prim in 1957 and rediscovered by Edsger
Dijkstra in 1959. This is a greedy algorithm that can find
a minimum spanning tree in a connected weighted undirected
graph by adding minimum cost arcs leaving visited nodes
recursively.

Kruskal's algorithm was published for first time in 1956 by
mathematician Joseph Kruskal. This is a greedy algorithm
that finds a minimum cost spanning tree in a connected
weighted undirected graph by adding, without form cycles,
the minimum weight arc of the graph in each iteration.

Boruvka's algorithm was published for first time in 1926 by
mathematician Otakar Boruvka. This algorithm go through a
connected weighted undirected graph, reviewing each
component and adding the minimum weight arcs without repeat
it until one minimum spanning tree is complete.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,2, 1,3,15, 1,4,3, 2,3,1, 2,4,9, 3,4,1),
               ncol = 3, byrow = TRUE)
# Minimum cost spanning tree with several algorithms
getMinimumSpanningTree(nodes, arcs, algorithm = "Prim")
getMinimumSpanningTree(nodes, arcs, algorithm = "Kruskal")
getMinimumSpanningTree(nodes, arcs, algorithm = "Boruvka")
}
\references{
Prim, R. C. (1957), "Shortest Connection Networks And Some
Generalizations", Bell System Technical Journal, 36 (1957),
pp. 1389-1401.

Kruskal, Joshep B. (1956), "On the Shortest Spanning
Subtree of a Graph and the Traveling Salesman Problem",
Proceedings of the American Mathematical Society, Vol. 7,
No. 1 (Feb., 1956), pp. 48-50.

Boruvka, Otakar (1926). "O jistem problemu minimalnim
(About a certain minimal problem)". Prace mor. prirodoved.
spol. v Brne III (in Czech, German summary) 3: 37-58.
}

