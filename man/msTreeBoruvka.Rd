\name{msTreeBoruvka}
\alias{msTreeBoruvka}
\title{Minimum cost spanning tree with Boruvka's algorithm.}
\usage{
msTreeBoruvka(nodes, arcs)
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
\code{msTreeBoruvka} returns a list with:

\item{tree.nodes}{vector containing the nodes of the minimum cost spanning tree.}
\item{tree.arcs}{matrix containing the list of arcs of the minimum cost spanning tree.}
\item{stages}{number of stages required.}
\item{stages.arcs}{stages in which each arc was added.}
}
\description{
\code{msTreeBoruvka} computes a minimum cost spanning tree
of an undirected graph with Boruvka's algorithm.
}
\details{
Boruvka's algorithm was firstly published in 1926 by the
mathematician Otakar Boruvka. This algorithm works in a
connected, weighted and undirected graph, checking each
component and adding the minimum weight arcs that connect
the component to other components until one minimum
spanning tree is complete.
}
\references{
Boruvka, Otakar (1926). "O jistem problemu minimalnim
(About a certain minimal problem)". Prace mor. prirodoved.
spol. v Brne III (in Czech, German summary) 3: 37-58.
}
\seealso{
A more general function \link{getMinimumSpanningTree}.
}

