% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createProfilePlot.R
\name{dataCustomizedPlot}
\alias{dataCustomizedPlot}
\title{Create data for customized profile plot}
\usage{
dataCustomizedPlot(dataHeat, selectedTaxa, selectedSeq)
}
\arguments{
\item{dataHeat}{a data frame contains processed profiles}

\item{selectedTaxa}{subset of taxa}

\item{selectedSeq}{subset of sequences}
}
\value{
A data frame contains data for customized profile plot.
}
\description{
Create data for customized profile plot based on a selected
list of genes and/or taxa.
}
\examples{
data("fullProcessedProfile", package="PhyloProfile")
selectedTaxa <- c("Mammalia", "Echinoidea", "Gunneridae")
selectedSeq <- "all"
dataCustomizedPlot(fullProcessedProfile, selectedTaxa, selectedSeq)
}
\seealso{
\code{\link{fromInputToProfile}}
}
\author{
Vinh Tran {tran@bio.uni-frankfurt.de}
}
