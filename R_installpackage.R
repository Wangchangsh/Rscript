# CRAN
install.packages("tidyverse")
install.packages("here")
install.packages("vcfR")
install.packages("CMplot")
install.packages("ggbreak")
install.packages("uniqtag")
install.packages("formatR")
install.packages('R.utils')
install.packages("rio")
install.packages("outliers")
install.packages("writexl")
install.packages("phangorn")


## classic quantitive genetics 
install.packages("ASmap")
install.packages("SEA")
install.packages("NAM")




## statistics
install.packages("e1071")
install.packages("lme4")




## phylogenetics
install.packages("phytools")
BiocManager::install("ggtree")
BiocManager::install("ggtreeExtra")






# Bioconductor
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()


BiocManager::install("limma")
BiocManager::install("DESeq2")
BiocManager::install("edgeR")
BiocManager::install("clusterProfiler")


# github
devtools::install_github("xiaolei-lab/rMVP")
