\name{msArborEdmonds}
\alias{msArborEdmonds}
\title{Minimum cost arborescence with Edmonds' algorithm}
\usage{
msArborEdmonds(nodes, arcs, source.node = 1, stages.data = FALSE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{source.node}{source node of the graph. It's node
  \eqn{1} by default.}

  \item{stages.data}{logical value indicating if the
  function returns data of each stage. Is \code{FALSE} by
  default.}
}
\value{
\code{msArborEdmonds} returns a list with:

\item{tree.nodes}{vector containing the nodes of the minimum cost arborescence.}
\item{tree.arcs}{matrix containing the list of arcs of the minimum cost arborescence.}
\item{stages}{number of stages required.}
}
\description{
Given a connected weighted and directed graph,
\code{msArborEdmonds} uses Edmonds' algorithm to find a
minimum cost arborescence.
}
\details{
Edmonds' algorithm was developed by the mathematician and
computer scientist Jack R. Edmonds in 1967. Previously, it
was proposed in 1965 by Yoeng-jin Chu and Tseng-hong Liu.
}
\references{
Chu, Y. J., and Liu, T. H., "On the Shortest Arborescence
of a Directed Graph", Science Sinica, vol. 14, 1965, pp.
1396-1400.

Edmonds, J., "Optimum Branchings", Journal of Research of
the National Bureau of Standards, vol. 71B, No. 4,
October-December 1967, pp. 233-240.
}
\seealso{
A more general function \link{getMinimumSpanningTree}.
}

