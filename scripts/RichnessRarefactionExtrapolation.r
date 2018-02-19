# -*- coding: utf-8 -*-
# ---------------------------------------------------------------------------
# Individual-based rarefaction and extrapolation of herbarium record dataset
# Author: Timm Nawrocki, Alaska Center for Conservation Science
# Created on: 2017-04-11
# Usage: Must be executed as an R Script. This script is intended for interactive use in RStudio. iNEXT was developed by Anne Chao et al. 2016. iNEXT must be properly cited if any products from this script appear in publication.
# Description: This tool was developed to rarefy the St. Lawrence Island dataset and extrapolate a likely total number of vascular plant taxa.
# ---------------------------------------------------------------------------

# Install required libraries if they are not already installed.
Required_Packages <- c("iNEXT", "ggplot2")
New_Packages <- Required_Packages[!(Required_Packages %in% installed.packages()[,"Package"])]
if (length(New_Packages) > 0) {
  install.packages(New_Packages)
}

# Import required libraries: iNEXT, ggplot2.
library(iNEXT)
library(ggplot2)

# Import dataset
DataFile <- file.choose()
CountTable <- read.csv(DataFile, row.names = 1)

# Convert count column to vector
CountVector <- CountTable[, "Count"]
CountVector <- as.numeric(CountVector)
SortCount <- sort(CountVector, decreasing = TRUE)
CountList <- list(SortCount)
names(CountList) <- c("vouchers")

# Interpolate and extrapolate species diversity
CountiNEXT <- iNEXT(CountList$vouchers, q=0, datatype = "abundance", size = NULL, endpoint = 5000, knots = 100, se = TRUE, conf = 0.95, nboot = 1000)

# Plot rarefaction and extrapolation
iNEXTPlot <- ggiNEXT(x = CountiNEXT, type = 1, se = TRUE, grey = TRUE)
iNEXTPlot + theme_bw(base_size = 14) + ggtitle("Rarefied and extrapolated taxa richness") + xlab("Number of collections") + ylab("Number of taxa")+theme(plot.title = element_text(hjust = 0.5)) + theme(legend.position="bottom") + guides(colour=FALSE,fill=FALSE,shape=FALSE,size=FALSE)