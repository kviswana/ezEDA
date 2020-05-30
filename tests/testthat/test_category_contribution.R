test_that("Plot layers match expectations",{
  p <- category_contribution(ggplot2::diamonds, cut, price)
  expect_is(p$layers[[1]], "ggproto")
})

test_that("Plot returns ggplot object",{
  p <- category_contribution(ggplot2::diamonds, cut, price)
  expect_is(p, "ggplot")
})

test_that("Plot uses correct data",{
  p <- category_contribution(ggplot2::diamonds, cut, price)
  expect_that(names(p$data), equals(c("cut", "total_price")))
})

test_that("x axis is labeled 'cut'",{
  p <- category_contribution(ggplot2::diamonds, cut, price)
  expect_identical(p$labels$x, "cut")
})

test_that("y axis is labeled 'total_price'",{
  p <- category_contribution(ggplot2::diamonds, cut, price)
  expect_identical(p$labels$y, "total_price")
})


