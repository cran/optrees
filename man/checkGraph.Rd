\name{checkGraph}
\alias{checkGraph}
\title{Checks if the graph contains at least one tree or one arborescence}
\usage{
checkGraph(nodes, arcs, source.node = 1, directed = TRUE)
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
  graph.}

  \item{directed}{logical value indicating whether the
  graph is directed (\code{TRUE}) or not (\code{FALSE}).}
}
\value{
\code{checkGraph} returns the value \code{TRUE} if the
graph meets the requirements and \code{FALSE} otherwise. If
the graph is not acceptable this functions also prints the
reason.
}
\description{
The \code{checkGraph} function checks if it is possible to
find at least one tree (or arborescence, if it is the case)
in the graph. It only happens when the graph is connected
and it is posible to find a walk from the source to any
other node.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,2, 1,3,15, 2,3,1, 2,4,9, 3,4,1),
               byrow = TRUE, ncol = 3)
# Check graph
checkGraph(nodes, arcs)
}

