% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cyEMD.R
\name{cyEMD}
\alias{cyEMD}
\title{CyEMD}
\usage{
cyEMD(
  sce,
  condition,
  binSize = NULL,
  nperm = 100,
  assay = "exprs",
  seed = 1,
  parallel = FALSE,
  replace = FALSE
)
}
\arguments{
\item{sce}{SingleCellExperiment containing expression data and metadata.}

\item{condition}{Name of vector specifying the comparison of interest.}

\item{binSize}{Bin width of histograms. If NULL (default), a flexible bin width is estimated by the Freedman-Diaconis rule evaluated on all non-zero values.}

\item{nperm}{Number of permutations. The default is 100.}

\item{assay}{Name of assay containing relevant data. The default is "exprs".}

\item{seed}{Seed initialization for reproducibility. The default is 1.}

\item{parallel}{Logical value indicating whether calculations should be performed in parallel. The default is FALSE.}

\item{replace}{Logical value indicating whether permutations should be performed with or without replacement. The default is FALSE.}
}
\value{
data.table containing marker IDs, EMDs and empirical p-values
}
\description{
Differential analysis method using the Earth Mover´s Distance to compare normalized distributions.
}
\examples{
path <- system.file("extdata", "pbmc/sce.rds", package = "CyEMD")
sce <- readRDS(path)
cyEMD(sce, condition = "condition")
}
