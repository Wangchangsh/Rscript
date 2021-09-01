#' Title
#' 
#' phylogenetic tree plot for IBS distance matrix 
#' @param data IBS matrix by plink --matrix
#' @param ID IBS matrix id by plink --matrix
#' @param labs  list labs which wants to annotation
#' @param Group subpopulation, default is NULL
#'
#' @return phylogenetic tree plot with legend
#' @export
#'
#' @examples
#' ibs <- read.table("https://github.com/Wangchangsh/extraMaterials/raw/master/Rice_533_ibs distance/533.mibs")
#' id <- read.table("https://github.com/Wangchangsh/extraMaterials/raw/master/Rice_533_ibs distance/533.mibs.id")
#' group <- read.csv("https://github.com/Wangchangsh/extraMaterials/raw/master/Rice_533_ibs distance/subgroup.csv", header = T)
#' lab <- c("WYJ3", "ZS97", "xs134", "MH63", "Mitak", "9311", "Aus", "C146")  
#' tree1 <- phyloplot(data = ibs, ID = id, labs = lab, Group = NULL)
#' tree2 <- phyloplot(data = ibs, ID = id, labs = lab, Group = group)

phyloplot <- function(data = ibs, ID = id, labs = lab, Group = NULL) {
  
  suppressPackageStartupMessages(library(phangorn))
  suppressPackageStartupMessages(library(ggtree))
  suppressPackageStartupMessages(library(dplyr))
  suppressPackageStartupMessages(library(tidyr))
  
  dimnames(data) <- list(ID[[1]], ID[[1]])
  
  if (is.null(Group)) {
    dis <- 1 - as.dist(data)
    tree_nj <- NJ(dis)
    tree <- ggtree(tree_nj, layout = "radial", branch.length = "none") + 
      geom_tiplab(aes(label = label, subset = c(label %in% {{labs}})), size = 6, show.legend = F)
    
    print(tree)
  } else {
    data <- data[ID[[1]] %in% Group[[1]], ID[[1]] %in% Group[[1]]]
    group <- Group[Group[[1]] %in% rownames(data), ]
    colnames(group) <- c("ID", "Subpopulation")
    grplst <- group %>%
      mutate(id = 1:n()) %>%
      pivot_wider(names_from = Subpopulation, values_from = ID) %>%
      select(-id) %>%
      as.list()
    grplst <- lapply(grplst, function(x) x[!is.na(x)])
    dis <- 1 - as.dist(data)
    tree_nj <- NJ(dis)
    tree <- ggtree(tree_nj, layout = "radial", branch.length = "none") + 
      geom_tiplab(aes(label = label, subset = c(label %in% {{labs}})), size = 6, show.legend = F)
    tree_group <- groupOTU(tree, grplst, 'subgroup') +
      aes(color = subgroup) +
      theme(legend.position = "right") +
      scale_color_manual(values = rep(c("#4197d8", "#f8c120", "#413496", "#495226", "#d60b6f", "#26755d", "#83d3ad", "#7c162c", "#d581b7"), 10))
    
    print(tree_group)
  }
}
