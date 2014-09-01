\name{getMinimumCutTree}
\alias{getMinimumCutTree}
\title{getMinimumCutTree ----------------------------------------------------------
Computes a minimum cut tree}
\usage{
getMinimumCutTree(nodes, arcs, algorithm = "Gusfield", show.data = TRUE,
  show.graph = TRUE, check.graph = FALSE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{algorithm}{denotes the algorithm to use for find a
  minimum cut tree or Gomory-Hu tree: "Gusfield".}

  \item{check.graph}{logical value indicating if it is
  necesary to check the graph. Is \code{FALSE} by default.}

  \item{show.data}{logical value indicating if the function
  displays the console output (\code{TRUE}) or not
  (\code{FALSE}). The default is \code{TRUE}.}

  \item{show.graph}{logical value indicating if the
  function displays a graphical representation of the graph
  and its minimum cut tree (\code{TRUE}) or not
  (\code{FALSE}). The default is \code{TRUE}.}
}
\value{
\code{getMinimumCutTree} returns a list with:

\item{tree.nodes}{vector containing the nodes of the minimum cut tree.}
\item{tree.arcs}{matrix containing the list of arcs of the minimum cut tree.}
\item{weight}{value with the sum of weights of the arcs.}
\item{stages}{number of stages required.}
\item{time}{time needed to find the minimum cut tree.}

This function also represents the graph and the minimum cut tree and prints in
console the results whit additional information (number of
stages, computational time, etc.).
}
\description{
Given a connected weighted undirected graph,
\code{getMinimumCutTree} computes a minimum cut tree, also
called Gomory-Hu tree. This function uses the Gusfield's
algorithm to find it.
}
\details{
The minimum cut tree or Gomory-Hu tree was introduced by R.
E. Gomory and T. C. Hu in 1961. Given a connected weighted
undirected graph, the Gomory-Hu tree is a weighted tree
that contains the minimum s-t cuts for all s-t pairs of
nodes in the graph. Gomory and Hu developed an algorithm to
find this tree, but it involves maximum flow searchs and
nodes contractions.

In 1990, Dan Gusfield proposed a new algorithm that can be
used to find the Gomory-Hu tree without any nodes
contraction and simplifies the implementation.
}
\examples{
# Graph
nodes <- 1:6
arcs <- matrix(c(1,2,1, 1,3,7, 2,3,1, 2,4,3, 2,5,2, 3,5,4, 4,5,1, 4,6,6,
                5,6,2), byrow = TRUE, ncol = 3)
# Minimum cut tree
getMinimumCutTree(nodes, arcs)
}
\references{
R. E. Gomory, T. C. Hu. Multi-terminal network flows.
Journal of the Society for Industrial and Applied
Mathematics, vol. 9, 1961.

Dan Gusfield (1990). "Very Simple Methods for All Pairs
Network Flow Analysis". SIAM J. Comput. 19 (1): 143-155.
}

