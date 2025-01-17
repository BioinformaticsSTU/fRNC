% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saveNetwork.R
\name{saveNetwork}
\alias{saveNetwork}
\title{save the subnetwork with global method}
\usage{
saveNetwork(
  network,
  name = "network",
  file,
  type = c("table", "XGMML", "sif", "tab")
)
}
\arguments{
\item{network}{A graph in igraph or graphNEL format.}

\item{name}{Name of the network, only needed for the XGMML format.}

\item{file}{File name to save.}

\item{type}{Type in which graph shall be saved.}
}
\description{
The function plots a RNC subnetwork from graphNEL or igraph format. It is used to visualize the modules. For further plotting options use the plot.igraph
function of the igraph package. The shapes of the nodes can be changed according to the scores argument
}
\examples{
\dontrun{
data("dataN")
gene2weight <- combinp(dataN[,c("type","logFC","PValue")])
interac <- interStringency(type = "transcription", spec ="hg",
							stringency = "strict")
interac <- interac[,c("node_gene_ID","type","target_gene_ID")]
res.list_global <- runmodule(network = interac, gene2weight,
								method = "global",FDR = 1e-14)
saveNetwork(res.list_global$module,file="filenames",type = "XGMML")
}

}
\references{
Daniela Beisser, Gunnar W. Klau, Thomas Dandekar et al. (2010) BioNet: an R-Package for the functional analysis of biological networks
}
