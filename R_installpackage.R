# CRAN
install.packages("tidyverse")
install.packages("here")
install.packages("vcfR")
install.packages("CMplot")
install.packages("ggbreak")
install.packages("uniqtag")
install.packages("formatR")
install.packages("R.utils")
install.packages("rio")
install.packages("outliers")
install.packages("writexl")
install.packages("slider")
install.packages("Hmisc")
install.packages("car")
install.packages("pryr")
install.packages("uniqtag")
install.packages("agridat")
install.packages("eoffice") 
install.packages("optparse")
install.packages("ggtext")
install.packages("janitor")
install.packages("tidyfst")
install.packages("microbenchmark")
install.packages("bench")
install.packages("devtools")


## visualize
install.packages("ggprism")
install.packages("ggrepel")
install.packages("ggbreak")
install.packages("ggforce")

## classic quantitive genetics 
install.packages("ASMap")
install.packages("SEA")
install.packages("NAM")
install.packages("qtl2")
install.packages("qtl")


## statistics
install.packages("e1071")
install.packages("lme4")

# Bioconductor
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()


BiocManager::install("limma")
BiocManager::install("DESeq2")
BiocManager::install("edgeR")
BiocManager::install("clusterProfiler")

## dependencies for mpmap2
install.packages("fastcluster")
install.packages("nnls")
BiocManager::install("Heatplus")

## phylogenetics
install.packages("phytools")
install.packages("phangorn")
BiocManager::install("ggtree")
BiocManager::install("ggtreeExtra")


# github
devtools::install_github("xiaolei-lab/rMVP")
devtools::install_github("norment/normentR")
