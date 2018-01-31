context("ttest boostrap")

test_that("Comparison of two identical vectors", {
  commonvector = rnorm(30,0,1)
  pvalue <- ttestbootstrap(vGroup1=commonvector, vGroup2 = commonvector, nbootstrap = 100)
  expect_equal( (pvalue > 0.1), TRUE)
})

test_that("Comparison of two different vectors", {
  pvalue <- ttestbootstrap(vGroup1=rnorm(30,0,1), vGroup2 = rnorm(30,25,5), nbootstrap = 100)
  expect_equal( (pvalue < 0.1), TRUE)
})
