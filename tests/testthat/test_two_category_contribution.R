test_that("Plot layers match expectations",{
  p <- two_category_contribution(ggplot2::diamonds,  clarity, cut, price, separate = TRUE)
  expect_is(p$layers[[1]], "ggproto")
})

test_that("Plot returns ggplot object",{
  p <- two_category_contribution(ggplot2::diamonds,  clarity, cut, price, separate = TRUE)
  expect_is(p, "ggplot")
})

test_that("Plot uses correct data",{
  p <- two_category_contribution(ggplot2::diamonds,  clarity, cut, price, separate = TRUE)
  expect_that(names(p$data), equals(c("clarity", "cut", "total_price", ".group")))
})

test_that("x axis is labeled 'clarity'",{
  p <- two_category_contribution(ggplot2::diamonds,  clarity, cut, price, separate = TRUE)
  expect_identical(p$labels$x, "clarity")
})

test_that("y axis is labeled 'total_price'",{
  p <- two_category_contribution(ggplot2::diamonds,  clarity, cut, price, separate = TRUE)
  expect_identical(p$labels$y, "total_price")
})


