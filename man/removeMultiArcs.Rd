\name{removeMultiArcs}
\alias{removeMultiArcs}
\title{Remove multi-arcs with no minimum cost}
\usage{
removeMultiArcs(arcs, directed = TRUE)
}
\arguments{
  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{directed}{logical value indicating whether the
  graph is directed (\code{TRUE}) or not (\code{FALSE}).}
}
\value{
\code{removeMultiArcs} returns a new list of arcs without
any of the multi-arcs founded.
}
\description{
The \code{removeMultiArcs} function go through the arcs
list of a given graph and check if there are more than one
arc between two nodes. If exist more than one, the function
keeps one with minimum cost and remove the others.
}

