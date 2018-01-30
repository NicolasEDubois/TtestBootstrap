#!/usr/bin/Rscript

#' Hello Function
#' @param FirstName A character string corresponding to
#' the firstname of the person to wil recieve the hello
#' @return un bonjour qui ne coute rien.
#' @export
#'
#' @examples
#' hello()
#'
hello <- function(FirstName=" ") {
  MessageToPrint = trimws(paste("Hello",FirstName,sep = " "))
  return(MessageToPrint)
}
