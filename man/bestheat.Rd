% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bestheat.r
\name{bestheat}
\alias{bestheat}
\title{bestheat}
\usage{
data(exp)

data(pheno)

final<-filtermatrix(exp)

res<-deg(final,pheno$group,control="NT")

process<-reducedf(res,final,n=35)

bestheat(process, pheno,font=10,rownames=T)
}
\arguments{
\item{process}{results filtrated from limma deg analysis}

\item{font}{font size}

\item{rownames}{show or not rownames on heatmap TRUE/FALSE}

\item{data}{transcriptome matrix}
}
\description{
bestheat
}
\examples{
data(exp)
data(pheno)
final<-filtermatrix(exp)
res<-deg(final,pheno$group,control="NT")
sig<-filtresig(res)
process<-reducedf(sig,final,n=35)
bestheat(process,pheno,font=10,rownames=T)
}
