#!/usr/bin/Rscript

#' Importation of a csv file
#'
#' \code{ImportationCSV} returns a dataframe with the information contained in the table.
#'
#' This function imports a table in a CSV file into a R dataframe.
#'
#' @param CSVFilePath the path of the CSV file.
#' @return DS1 a dataframe with the information contained in the table.
#' @export
#'
ImportationCSV <- function(CSVFilePath) {
  DS1 <- readr::read_csv(CSVFilePath)
  return(DS1)
}
