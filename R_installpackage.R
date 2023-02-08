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
install.packages("palmerpenguins")
install.packages("quarto")
install.packages("MetaCycle")
install.packages("splitstackshape")
install.packages("jsonlite")
install.packages("tidyjson")
install.packages("multcompView")

## visualize
install.packages("ggprism")
install.packages("ggrepel")
install.packages("ggbreak")
install.packages("ggforce")
install.packages("ggh4x")
install.packages("ggridges")
install.packages("hrbrthemes")
install.packages("circlize")
install.packages("RIdeogram")
install.packages("gggenes")
devtools::install_github("thackl/gggenomes")
devtools::install_github("mattflor/chorddiag")
devtools::install_github("marta-fb/syntenyPlotteR")
devtools::install_github("dwinter/pafr")

## classic quantitive genetics 
install.packages("ASmap")
install.packages("SEA")
install.packages("NAM")
install.packages("qtl2")
install.packages("polyqtlR")
install.packages("polymapR")
devtools::install_github("augusto-garcia/onemap")
devtools::install_github("bschiffthaler/BatchMap")
devtools::install_github("venyao/binQTL")

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
BiocManager::install("gdsfmt")
BiocManager::install("SNPRelate")
BiocManager::install("methylSig")


## dependencies for mpmap2
install.packages("fastcluster")
install.packages("nnls")
BiocManager::install("Heatplus")

## phylogenetics
install.packages("phytools")
install.packages("phangorn")
install.packages("geneHapR")
BiocManager::install("ggtree")
BiocManager::install("ggtreeExtra")


# github
devtools::install_github("xiaolei-lab/rMVP")
devtools::install_github("norment/normentR")
devtools::install_github("guokai8/CandiHap")

# blog
install.packages("blogdown")

