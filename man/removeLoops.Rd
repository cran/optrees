\name{removeLoops}
\alias{removeLoops}
\title{Remove loops of a graph}
\usage{
removeLoops(arcs)
}
\arguments{
  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}
}
\value{
\code{removeLoops} returns a new list of arcs without any
of the loops founded.
}
\description{
This function reviews the arc list of a given graph and
check if exists loops in it. A loop is an arc that connect
a node with itself. If \code{removeLoops} find a loop
remove it from the list of arcs.
}

