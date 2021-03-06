% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parsePhyloProfile.R
\name{parseInfoProfile}
\alias{parseInfoProfile}
\title{Parsing info for phylogenetic profiles}
\usage{
parseInfoProfile( inputDf, sortedInputTaxa, var1AggregateBy,
    var2AggregateBy)
}
\arguments{
\item{inputDf}{input profiles in long format}

\item{sortedInputTaxa}{sorted taxonomy data for the input taxa
(check sortInputTaxa())}

\item{var1AggregateBy}{aggregate method for VAR1 (min, max, mean or median)}

\item{var2AggregateBy}{aggregate method for VAR2 (min, max, mean or median)}
}
\value{
Dataframe contains all info for input profiles (a full processed
profile)
}
\description{
Creating main dataframe for the input phylogenetic profiles with
the selected input taxonomy level (e.g. strain, species) and reference taxon.
The output contains the number of paralogs, percentage of species presence
in each supertaxon, and the max/min/mean/median of VAR1 and VAR2.
}
\examples{
data("mainLongRaw", package="PhyloProfile")
inputDf <- mainLongRaw
taxonIDs <- getInputTaxaID(inputDf)
taxonNames <- getInputTaxaName("class", taxonIDs)
sortedInputTaxa <- sortInputTaxa(
    taxonIDs, taxonNames, "class", "Mammalia", NULL
)
var1AggregateBy <- "max"
var2AggregateBy <- "mean"
parseInfoProfile(
    inputDf, sortedInputTaxa, var1AggregateBy, var2AggregateBy
)
}
\seealso{
\code{\link{createLongMatrix}}, \code{\link{sortInputTaxa}},
\code{\link{calcPresSpec}}, \code{\link{mainLongRaw}}
}
\author{
Vinh Tran {tran@bio.uni-frankfurt.de}
}
