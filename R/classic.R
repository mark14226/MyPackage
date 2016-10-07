#' Classic R approaches to data analysis
#'
#' The functions here illustrate how an 'old-school' R user
#' might approach data management and analysis.
#'
#' @details There are 2 files. They are a microarray experiment.
#' Ther first file, ALL-phenoData.csv decribes the samples. The
#' second file, ALL-expression.csv are the normalized expression
#' values for a 12k probesetes across 128 samples. The files
#' originally came from sheets in excel, and were exporeted from
#' Excel using export-to-csv.
#'
#' @param pdata_file character(1) The path to the pheno data file.
#' @param exprs_file character(1) The path to the expression file.
#'
#' @return A data.frame() containing samples as rows and phenotype
#'      data and expression data as columns.
#'
#' @export

input_classic <- function(pdata_file, exprs_file){
    pdata <- read.csv(pdata_file, header = TRUE, row.names = 1, check.names = FALSE)
    exprs <- read.csv(exprs_file, header = TRUE, row.names = 1, check.names = FALSE)
    merge(pdata, t(exprs), by = 0)
    ## return a data.frame
}


