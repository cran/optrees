\name{maxFlowFordFulkerson}
\alias{maxFlowFordFulkerson}
\title{Maximum flow with the Ford-Fulkerson algorithm}
\usage{
maxFlowFordFulkerson(nodes, arcs, directed = FALSE, source.node = 1,
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

  \item{directed}{logical value indicating wheter the graph
  is directed (\code{TRUE}) or not (\code{FALSE}).}

  \item{source.node}{number pointing to the source node of
  the graph. It's node \eqn{1} by default.}

  \item{sink.node}{number pointing to the sink node of the
  graph. It's the last node by default.}
}
\value{
\code{maxFlowFordFulkerson} returns a list with:

\item{s.cut}{vector with the nodes of the \code{s} cut.}
\item{t.cut}{vector with the nodes of the \code{t} cut.}
\item{max.flow}{value with the maximum flow in the flow network.}
}
\description{
The \code{maxFlowFordFulkerson} function computes the
maximum flow in a given flow network with the
Ford-Fulkerson algorithm.
}
\details{
The Ford-Fulkerson algorithm was published in 1956 by L. R.
Ford, Jr. and D. R. Fulkerson. This algorithm can compute
the maximum flow between source and sink nodes of a flow
network.
}
\examples{
# Graph
nodes <- 1:6
arcs <- matrix(c(1,2,1, 1,3,7, 2,3,1, 2,4,3, 2,5,2, 3,5,4, 4,5,1, 4,6,6,
                5,6,2), byrow = TRUE, ncol = 3)
# Maximum flow with Ford-Fulkerson algorithm
maxFlowFordFulkerson(nodes, arcs, source.node = 2, sink.node = 6)
}
\references{
Ford, L. R.; Fulkerson, D. R. (1956). "Maximal flow through
a network". Canadian Journal of Mathematics 8: 399.
}
\seealso{
This function is an auxiliar function used in
\link{ghTreeGusfield} and \link{getMinimumCutTree}.
}

