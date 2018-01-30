library(stringr)
context("Hello")

test_that("Name displayed after hello", {
  expect_equal(hello("Nicolas"), "Hello Nicolas")
  expect_equal(hello("Nicolas Dubois"), "Hello Nicolas Dubois")
})

test_that("Hello without name", {
  expect_equal(hello(), "Hello")
})

context("bonjour")

test_that("Name displayed after hello", {
  expect_equal(bonjour("Nicolas"), "Bonjour Nicolas")
  expect_equal(bonjour("Nicolas Dubois"), "Bonjour Nicolas Dubois")
})

test_that("bonjour without name", {
  expect_equal(bonjour(), "Bonjour")
})
