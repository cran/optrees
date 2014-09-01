\name{findMinCut}
\alias{findMinCut}
\title{Finds the minimum cut of a given graph}
\usage{
findMinCut(nodes, arcs, algorithm = "Ford-Fulkerson", source.node = 1,
  sink.node = nodes[length(nodes)], directed = FALSE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{algorithm}{denotes the algorithm used to compute
  the maximum flow: "Ford-Fulkerson".}

  \item{source.node}{number pointing to the source node of
  the graph. It's node \eqn{1} by default.}

  \item{sink.node}{number pointing to the sink node of the
  graph. It's the last node by default.}

  \item{directed}{logical value indicating whether the
  graph is directed (\code{TRUE}) or not (\code{FALSE}).}
}
\value{
\code{findMinCut} returns a list with:

\item{s.cut}{vector with the nodes of the \code{s} cut.}
\item{t.cut}{vector with the nodes of the \code{t} cut.}
\item{max.flow}{value with the maximum flow in the flow network.}
\item{cut.set}{list of arcs of the cut set founded.}
}
\description{
The \code{findMinCut} function can find the minimum cut of
a given graph. For that, this function computes the maximum
flow of the network and applies the max-flow min-cut
theorem to determine the cut with minimum weight between
the source and the sink nodes.
}
\details{
The max-flow min-cut theorem proves that, in a flow
network, the maximum flow between the source node and the
sink node and the weight of any minimum cut between them is
equal.
}
\examples{
# Graph
nodes <- 1:6
arcs <- matrix(c(1,2,1, 1,3,7, 2,3,1, 2,4,3, 2,5,2, 3,5,4, 4,5,1, 4,6,6,
                5,6,2), byrow = TRUE, ncol = 3)
# Find minimum cut
findMinCut(nodes, arcs, source.node = 2, sink.node = 6)
}
\seealso{
This function is an auxiliar function used in
\link{ghTreeGusfield} and \link{getMinimumCutTree}.
}

