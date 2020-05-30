test_that("Plot layers match expectations",{
  p <- measure_distribution_by_two_categories(ggplot2::mpg, hwy, class, fl)
  expect_is(p$layers[[1]], "ggproto")
})

test_that("Plot returns ggplot object",{
  p <- measure_distribution_by_two_categories(ggplot2::mpg, hwy, class, fl)
  expect_is(p, "ggplot")
})

test_that("Plot uses correct data",{
  p <- measure_distribution_by_two_categories(ggplot2::mpg, hwy, class, fl)
  expect_that(length(names(p$data)), equals(11))
})

test_that("x axis label is hwy",{
  p <- measure_distribution_by_two_categories(ggplot2::mpg, hwy, class, fl)
  expect_identical(p$labels$x, "hwy")
})

test_that("y axis label is correct",{
  p <- measure_distribution_by_two_categories(ggplot2::mpg, hwy, class, fl)
  expect_identical(p$labels$y, "count")
})

test_that("Facet type is correct", {
  p <- measure_distribution_by_two_categories(ggplot2::mpg, hwy, class, fl)
  expect_identical(class(p$facet)[[1]], "FacetGrid")
})



