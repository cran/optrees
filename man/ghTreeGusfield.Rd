\name{ghTreeGusfield}
\alias{ghTreeGusfield}
\title{Gomory-Hu tree with the Gusfield's algorithm}
\usage{
ghTreeGusfield(nodes, arcs)
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
\code{ghTreeGusfield} returns a list with:

\item{tree.nodes}{vector containing the nodes of the Gomory-Hu tree.}
\item{tree.arcs}{matrix containing the list of arcs of the Gomory-Hu tree.}
\item{stages}{number of stages required.}
}
\description{
Given a connected weighted and undirected graph, the
\code{ghTreeGusfield} function builds a Gomory-Hu tree with
the Gusfield's algorithm.
}
\details{
The Gomory-Hu tree was introduced by R. E. Gomory and T. C.
Hu in 1961. Given a connected weighted and undirected
graph, the Gomory-Hu tree is a weighted tree that contains
the minimum s-t cuts for all s-t pairs of nodes in the
graph. Gomory and Hu also developed an algorithm to find it
that involves maximum flow searchs and nodes contractions.

In 1990, Dan Gusfield proposed a new algorithm that can be
used to find a Gomory-Hu tree without nodes contractions
and simplifies the implementation.
}
\references{
R. E. Gomory, T. C. Hu. Multi-terminal network flows.
Journal of the Society for Industrial and Applied
Mathematics, vol. 9, 1961.

Dan Gusfield (1990). "Very Simple Methods for All Pairs
Network Flow Analysis". SIAM J. Comput. 19 (1): 143-155.
}
\seealso{
A more general function \link{getMinimumCutTree}.
}

