\name{getComponents}
\alias{getComponents}
\title{Connected components of a graph}
\usage{
getComponents(nodes, arcs)
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
\code{getComponents} returns a list with all the components
and the nodes of each one (\code{$components}) and a matrix
with all the arcs of the graph and its component
(\code{$components.arcs}).
}
\description{
The \code{getComponents} function returns all the connected
components of a graph.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,1, 1,6,1, 3,4,1, 4,5,1), ncol = 3, byrow = TRUE)
# Components
getComponents(nodes, arcs)
}

