\name{getMinimumArborescence}
\alias{getMinimumArborescence}
\title{Computes a minimum cost arborescence}
\usage{
getMinimumArborescence(nodes, arcs, source.node = 1, algorithm = "Edmonds",
  stages.data = FALSE, show.data = TRUE, show.graph = TRUE,
  check.graph = FALSE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{source.node}{number pointing to the source node of
  the graph. It's node \eqn{1} by default.}

  \item{algorithm}{denotes the algorithm used to find a
  minimum cost arborescence: "Edmonds".}

  \item{check.graph}{logical value indicating if it is
  necesary to check the graph. Is \code{FALSE} by default.}

  \item{show.data}{logical value indicating if the function
  displays the console output (\code{TRUE}) or not
  (\code{FALSE}). The default is \code{TRUE}.}

  \item{show.graph}{logical value indicating if the
  function displays a graphical representation of the graph
  and its minimum arborescence (\code{TRUE}) or not
  (\code{FALSE}). The default is \code{TRUE}.}

  \item{stages.data}{logical value indicating if the
  function returns data of each stage. The default is
  \code{FALSE}.}
}
\value{
\code{getMinimumArborescence} returns a list with:

\item{tree.nodes}{vector containing the nodes of the minimum cost arborescence.}
\item{tree.arcs}{matrix containing the list of arcs of the minimum cost arborescence.}
\item{weight}{value with the sum of weights of the arcs.}
\item{stages}{number of stages required.}
\item{time}{time needed to find the minimum cost arborescence.}

This function also represents the graph and the minimum
arborescence and prints to the console the results with
additional information (number of stages, computational
time, etc.).
}
\description{
Given a connected weighted directed graph,
\code{getMinimumArborescence} computes a minimum cost
arborescence. This function provides a method to find the
minimum cost arborescence with Edmonds' algorithm.
}
\details{
Given a connected weighted directed graph, a minimum cost
arborescence is an arborescence such that the sum of the
weight of its arcs is minimum. In some cases, it is
possible to find several minimum cost arborescences, but
the proposed algorithm only finds one of them.

Edmonds' algorithm was developed by the mathematician and
computer scientist Jack R. Edmonds in 1967. Although, it
was previously proposed in 1965 by Yoeng-jin Chu and
Tseng-hong Liu. This algorithm decreases the weights of the
arcs in a graph and compacts cycles of zero weight until it
can find an arborescence. This arborescence has to be a
minimum cost arborescence of the graph.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,2, 1,3,3, 1,4,4, 2,3,3, 2,4,4, 3,2,3,
                 3,4,1, 4,2,1, 4,3,2),byrow = TRUE, ncol = 3)
# Minimum cost arborescence
getMinimumArborescence(nodes, arcs)
}
\references{
Chu, Y. J., and Liu, T. H., "On the Shortest Arborescence
of a Directed Graph", Science Sinica, vol. 14, 1965, pp.
1396-1400.

Edmonds, J., "Optimum Branchings", Journal of Research of
the National Bureau of Standards, vol. 71B, No. 4,
October-December 1967, pp. 233-240.
}

