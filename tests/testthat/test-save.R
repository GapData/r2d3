context("save")

source("utils.R")

test_that("d3 visualizations can be saved as html", {
  d3 <- r2d3(data=c(0.3, 0.6, 0.8, 0.95, 0.40, 0.20), script = "barchart.js")
  tmp <- tempfile(fileext = ".html")
  save_d3_html(d3, tmp)
  expect_true(file.exists(tmp))
})

test_that("d3 visualizations can be saved as png", {
  d3 <- r2d3(data=c(0.3, 0.6, 0.8, 0.95, 0.40, 0.20), script = "barchart.js")
  tmp <- tempfile(fileext = ".png")
  save_d3_png(d3, tmp)
  expect_true(file.exists(tmp))
})