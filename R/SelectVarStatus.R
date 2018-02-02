#!/usr/bin/Rscript

#' SelectAndFilterVar Function
#'
#' \code{SelectAndFilterVar} returns a a vector with the observation corresponding to the variable selected and filtered according to SelectionVar.
#'
#' @param Ds the dataset
#' @param SelectionVar the variable that is used to filter observation
#' @param SelectionInstance the value of the filter
#' @param VarSelected the variable that has to be retrived
#' @return vectVarSelected a vector with the observation corresponding to the variable selected and filtered according to SelectionVar
#'
#' @export
#'
SelectAndFilterVar <- function(Ds=Ds , SelectionVar="Statut",SelectionInstance='Sick',VarSelected='Var1') {
  vectVarSelected <- Ds[Ds[,"Statut"]=='Sick', VarSelected][[VarSelected]]
  return(vectVarSelected)
}
