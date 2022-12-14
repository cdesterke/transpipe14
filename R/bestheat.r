#' @title bestheat

#' @param process results filtrated from limma deg analysis
#' @param data transcriptome matrix
#' @param font font size
#' @param rownames show or not rownames on heatmap TRUE/FALSE
#' @usage data(exp)
#' @usage data(pheno)
#' @usage final<-filtermatrix(exp)
#' @usage res<-deg(final,pheno$group,control="NT")
#' @usage process<-reducedf(res,final,n=35)
#' @usage bestheat(process, pheno,font=10,rownames=T)
#' @examples data(exp)
#' @examples data(pheno)
#' @examples final<-filtermatrix(exp)
#' @examples res<-deg(final,pheno$group,control="NT")
#' @examples sig<-filtresig(res)
#' @examples process<-reducedf(sig,final,n=35)
#' @examples bestheat(process,pheno,font=10,rownames=T)




bestheat<-function(process,pheno,font=6,rownames=TRUE){

  if(!require(dplyr)){install.packages("dplyr")}
  library(dplyr)
  if(!require(pheatmap)){install.packages("pheatmap")}
  library(pheatmap)



  if(rownames==TRUE){
  pheatmap(process, color = colorRampPalette(c("navy", "white", "firebrick3"))(50),
           annotation=pheno, fontsize =font,cutree_rows=1,
           cutree_col=1,clustering_method = "ward.D2",
           clustering_distance_cols = "euclidean",
           clustering_distance_rows = "euclidean",
           show_colnames=F,
           show_rownames=T,
           annotation_names_col=T,
           annotation_names_row = T)
  }

  else{
    pheatmap(process, color = colorRampPalette(c("navy", "white", "firebrick3"))(50),
             annotation=pheno, fontsize =font,cutree_rows=1,
             cutree_col=1,clustering_method = "ward.D2",
             clustering_distance_cols = "euclidean",
             clustering_distance_rows = "euclidean",
             show_colnames=F,
             show_rownames=F,
             annotation_names_col=T,
             annotation_names_row = T)

    }



}
