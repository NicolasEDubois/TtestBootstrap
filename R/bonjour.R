#!/usr/bin/Rscript
#' bonjour Function
#' @param FirstName A character string corresponding to
#' the firstname of the person to wil recieve the hello
#' @return un bonjour qui ne coute rien.
#' @export
#'
#' @examples
#' hello()
#'
bonjour <- function(FirstName=" ") {
  MessageToPrint = trimws(paste("Bonjour",FirstName,sep = " "))
  return(MessageToPrint)
}
