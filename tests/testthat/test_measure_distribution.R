test_that("Plot layers match expectations",{
  p <- measure_distribution(ggplot2::mpg, hwy)
  q <- measure_distribution(ggplot2::mpg, hwy, "hist")
  r <- measure_distribution(ggplot2::mpg, hwy, "box")
  expect_is(p$layers[[1]], "ggproto")
  expect_is(q$layers[[1]], "ggproto")
  expect_is(r$layers[[1]], "ggproto")
})

test_that("Plot returns ggplot object",{
  p <- measure_distribution(ggplot2::mpg, hwy)
  q <- measure_distribution(ggplot2::mpg, hwy, "hist")
  r <- measure_distribution(ggplot2::mpg, hwy, "box")
  expect_is(p, "ggplot")
  expect_is(q, "ggplot")
  expect_is(r, "ggplot")
})

test_that("Plot uses correct data",{
  p <- measure_distribution(ggplot2::mpg, hwy)
  q <- measure_distribution(ggplot2::mpg, hwy, "hist")
  r <- measure_distribution(ggplot2::mpg, hwy, "box")
  expect_that(length(names(p$data)), equals(11))
  expect_that(length(names(q$data)), equals(11))
  expect_that(length(names(r$data)), equals(11))
})

test_that("x axis label is hwy",{
  p <- measure_distribution(ggplot2::mpg, hwy)
  q <- measure_distribution(ggplot2::mpg, hwy, "hist")
  r <- measure_distribution(ggplot2::mpg, hwy, "box")
  expect_identical(p$labels$x, "hwy")
  expect_identical(q$labels$x, "hwy")
  expect_identical(r$labels$x, "")
})

test_that("y axis label is correct",{
  p <- measure_distribution(ggplot2::mpg, hwy)
  q <- measure_distribution(ggplot2::mpg, hwy, "hist")
  r <- measure_distribution(ggplot2::mpg, hwy, "box")
  expect_identical(p$labels$y, "count")
  expect_identical(q$labels$y, "count")
  expect_identical(r$labels$y, "hwy")
})

test_that("Plot type is correct", {
  p <- measure_distribution(ggplot2::mpg, hwy)
  q <- measure_distribution(ggplot2::mpg, hwy, "hist")
  r <- measure_distribution(ggplot2::mpg, hwy, "box")
  expect_identical(class(p$layers[[1]][["geom"]])[[1]], "GeomBar")
  expect_identical(class(q$layers[[1]][["geom"]])[[1]], "GeomBar")
  expect_identical(class(r$layers[[1]][["geom"]])[[1]], "GeomBoxplot")
})



