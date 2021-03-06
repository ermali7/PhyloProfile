% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parsePhyloProfile.R
\name{fromInputToProfile}
\alias{fromInputToProfile}
\title{Create data for plotting profiles (from raw input to final dataframe)}
\usage{
fromInputToProfile(rawInput, rankName, refTaxon, taxaTree,
    var1AggregateBy, var2AggregateBy, percentCutoff,
    coorthologCutoffMax, var1Cutoff, var2Cutoff, var1Relation,
    var2Relation, groupByCat, catDt)
}
\arguments{
\item{rawInput}{input file (in long, wide, multi-fasta or orthoxml format)}

\item{rankName}{taxonomy rank (e.g. "species","phylum",...)}

\item{refTaxon}{selected reference taxon}

\item{taxaTree}{input taxonomy tree (optional)}

\item{var1AggregateBy}{aggregate method for VAR1 (min, max, mean or median)}

\item{var2AggregateBy}{aggregate method for VAR2 (min, max, mean or median)}

\item{percentCutoff}{min and max cutoffs for percentage of species present
in a supertaxon}

\item{coorthologCutoffMax}{maximum number of co-orthologs allowed}

\item{var1Cutoff}{min and max cutoffs for var1}

\item{var2Cutoff}{min and max cutoffs for var2}

\item{var1Relation}{relation of var1 ("protein" for protein-protein or
"species" for protein-species)}

\item{var2Relation}{relation of var2 ("protein" for protein-protein or
"species" for protein-species)}

\item{groupByCat}{group genes by their categories (TRUE or FALSE)}

\item{catDt}{dataframe contains gene categories}
}
\value{
dataframe for generating profile plot
}
\description{
Create data needed for plotting phylogenetic profile
from raw input file.
}
\examples{
rawInput <- system.file(
    "extdata", "test.main.long", package = "PhyloProfile", mustWork = TRUE
)
rankName <- "class"
refTaxon <- "Mammalia"
taxaTree <- NULL
var1AggregateBy <- "max"
var2AggregateBy <- "mean"
percentCutoff <- c(0.0, 1.0)
coorthologCutoffMax <- 10
var1Cutoff <- c(0.75, 1.0)
var2Cutoff <- c(0.5, 1.0)
var1Relation <- "protein"
var2Relation <- "species"
groupByCat <- FALSE
catDt <- NULL
fromInputToProfile(
    rawInput,
    rankName,
    refTaxon,
    taxaTree,
    var1AggregateBy,
    var2AggregateBy,
    percentCutoff,
    coorthologCutoffMax,
    var1Cutoff,
    var2Cutoff,
    var1Relation,
    var2Relation,
    groupByCat,
    catDt
)
}
\seealso{
\code{\link{createLongMatrix}}, \code{\link{getInputTaxaID}},
\code{\link{getInputTaxaName}}, \code{\link{sortInputTaxa}},
\code{\link{parseInfoProfile}}, \code{\link{reduceProfile}},
\code{\link{createProfileData}}
}
\author{
Vinh Tran {tran@bio.uni-frankfurt.de}
}
