\name{stepbackArbor}
\alias{stepbackArbor}
\title{Go back between two stages of the Edmond's algorithm}
\usage{
stepbackArbor(before, after)
}
\arguments{
  \item{before}{list with elements of the previous stage}

  \item{after}{list with elements of the next stage}
}
\value{
A updated list of elements of the earlier stage with a new
arborescence
}
\description{
The \code{stepbackArbor} function rebuilds an arborescence
present in earlier stage of Edmonds's algorithm to find a
minimum cost arborescence.
}
\seealso{
This function is an auxiliar function used in
\link{msArborEdmonds} and \link{getMinimumArborescence}.
}

