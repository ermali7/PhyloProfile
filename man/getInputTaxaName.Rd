% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parsePhyloProfile.R
\name{getInputTaxaName}
\alias{getInputTaxaName}
\title{Get NCBI taxon names for a selected list of taxa}
\usage{
getInputTaxaName(rankName, taxonIDs)
}
\arguments{
\item{rankName}{taxonomy rank (e.g. "species","phylum",...)}

\item{taxonIDs}{list of taxon IDs (check getInputTaxaID())}
}
\value{
List of full names, taxonomy ranks and parent IDs for the input taxa
}
\description{
Get NCBI taxon names from "data/taxonNamesReduced.txt" for
a selected list of taxon
}
\examples{
taxonIDs <- c("ncbi10020", "ncbi10090")
getInputTaxaName("species", taxonIDs)
}
\seealso{
\code{\link{getInputTaxaID}} for getting input taxon IDs,
\code{\link{getNameList}} for getting the full taxon name list
}
\author{
Vinh Tran {tran@bio.uni-frankfurt.de}
}
