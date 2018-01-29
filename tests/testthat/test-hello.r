library(stringr)
context("Hello")

test_that("Name displayed after hello", {
  expect_equal(hello("Nicolas"), "Hello Nicolas")
  expect_equal(hello("Nicolas Dubois"), "Hello Nicolas Dubois")
})

test_that("Hello without name", {
  expect_equal(hello(), "Hello")
})
