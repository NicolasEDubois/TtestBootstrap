#!/usr/bin/Rscript

#' ttestbootstrap Function
#' @param vGroup1 A numerical vector corresponding to the values of the first group
#' @param vGroup2 A numerical vector corresponding to the values of the second group
#' @param nbootstrap The number of bootstrap simulation should be > 100 x (nGroup1 + nGroup1)
#' @return the pvalue calculated by the a simulation of the null hypothesis distribution by bootstrap
#' @export
#'
#' @examples
#' ttestbootstrap(vGroup1=rnorm(30,0,1), vGroup2 = rnorm(30,2,1), nbootstrap = 1000)
#'
ttestbootstrap <- function(vGroup1, vGroup2, nbootstrap = 100000) {

  nGroup1 <- length(vGroup1)
  nGroup2 <- length(vGroup2)

  t_resp <- t.test(vGroup1,vGroup2)
  t_obs <- t_resp$statistic

  vT_resp_H0 <- seq(nbootstrap)*NaN
  for ( i in c(1:nbootstrap))
  {
    vMergeGroup1and2 <- c(vGroup1,vGroup2)
    vMergeGroup1and2Shuffle <- vMergeGroup1and2[sample(nGroup1 + nGroup2)]
    VGroup1H0 <- vMergeGroup1and2Shuffle[seq(1,nGroup1)]
    VGroup2H0 <- vMergeGroup1and2Shuffle[seq(nGroup1+1,nGroup1 + nGroup2)]

    t_resp <- t.test(VGroup1H0,VGroup2H0)
    vT_resp_H0[i] <- t_resp$statistic
  }
  pvalue <- sum(t_obs > vT_resp_H0)/nbootstrap
  return(pvalue)
}


