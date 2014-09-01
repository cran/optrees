\name{repGraph}
\alias{repGraph}
\title{Visual representation of a graph}
\usage{
repGraph(nodes, arcs, tree = NULL, directed = FALSE, plot.title = NULL,
  fix.seed = NULL)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{tree}{matrix with the list of arcs of a tree, if
  there is one. Is \code{NULL} by default.}

  \item{directed}{logical value indicating whether the
  graph is directed (\code{TRUE}) or not (\code{FALSE}).}

  \item{plot.title}{string with main title of the graph. Is
  \code{NULL} by default.}

  \item{fix.seed}{number to set a seed for the
  representation.}
}
\value{
\code{repGraph} returns a plot with the given graph.
}
\description{
The \code{repGraph} function uses \code{igraph} package to
represent a graph.
}
\examples{
# Graph
nodes <- c(1:4)
arcs <- matrix(c(1,2,2, 1,3,15, 2,3,1, 2,4,9, 3,4,1),
               byrow = TRUE, ncol = 3)
# Plot graph
repGraph(nodes, arcs)
}

