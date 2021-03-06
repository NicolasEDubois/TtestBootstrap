% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SelectVarStatus.R
\name{SelectAndFilterVar}
\alias{SelectAndFilterVar}
\title{SelectAndFilterVar Function}
\usage{
SelectAndFilterVar(Ds = Ds, SelectionVar = "Statut",
  SelectionInstance = "Sick", VarSelected = "Var1")
}
\arguments{
\item{Ds}{the dataset}

\item{SelectionVar}{the variable that is used to filter observation}

\item{SelectionInstance}{the value of the filter}

\item{VarSelected}{the variable that has to be retrived}
}
\value{
vectVarSelected a vector with the observation corresponding to the variable selected and filtered according to SelectionVar
}
\description{
\code{SelectAndFilterVar} returns a a vector with the observation corresponding to the variable selected and filtered according to SelectionVar.
}
