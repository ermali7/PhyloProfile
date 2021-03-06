% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createProfilePlot.R
\name{highlightProfilePlot}
\alias{highlightProfilePlot}
\title{Highlight gene and/or taxon of interest on the profile plot}
\usage{
highlightProfilePlot(data, plotParameter, taxonHighlight,
    rankName, geneHighlight)
}
\arguments{
\item{data}{data for heatmap plot}

\item{plotParameter}{plot parameters (type of x-axis "taxa" or "genes";
names of 2 variables; colors for lowest and highest value of variable 1;
colors for lowest and highest value of variable 2; color of co-orthologs;
text sizes for x, y axis and legend; legend position "top", "bottom",
"right", "left" or "none"; zoom ratio of the co-ortholog dots from -1 to 3;
angle of x-axis from 0 to 90;
show/hide separate line for reference taxon 1/0;
enable/disable coloring gene categories TRUE/FALSE)}

\item{taxonHighlight}{taxon of interst}

\item{rankName}{working taxonomy rank}

\item{geneHighlight}{gene of interest}
}
\value{
A profile heatmap plot with highlighted gene and/or taxon of interest
as ggplot object.
}
\description{
Highlight gene and/or taxon of interest on the profile plot
}
\examples{
data("fullProcessedProfile", package="PhyloProfile")
plotDf <- dataMainPlot(fullProcessedProfile)
plotParameter <- list(
    "xAxis" = "taxa",
    "var1ID" = "FAS",
    "var2ID"  = "Traceability",
    "lowColorVar1" =  "#FF8C00",
    "highColorVar1" = "#4682B4",
    "lowColorVar2" = "#FFFFFF",
    "highColorVar2" = "#F0E68C",
    "paraColor" = "#07D000",
    "xSize" = 8,
    "ySize" = 8,
    "legendSize" = 8,
    "mainLegend" = "top",
    "dotZoom" = 0,
    "xAngle" = 60,
    "guideline" = 0,
    "colorByGroup" = FALSE
)
taxonHighlight <- "Mammalia"
rankName <- "class"
geneHighlight <- "OG_1019"
highlightProfilePlot(
    plotDf, plotParameter, taxonHighlight, rankName, geneHighlight
)
}
\seealso{
\code{\link{dataMainPlot}}, \code{\link{dataCustomizedPlot}}
}
\author{
Vinh Tran {tran@bio.uni-frankfurt.de}
}
