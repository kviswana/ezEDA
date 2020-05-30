test_that("Plot layers match expectations",{
  p <- measure_change_over_time_wide(ggplot2::economics, date, pop, unemploy)
  expect_is(p$layers[[1]], "ggproto")
})

test_that("Plot returns ggplot object",{
  p <- measure_change_over_time_wide(ggplot2::economics, date, pop, unemploy)
  expect_is(p, "ggplot")
})

test_that("Plot uses correct data",{
  p <- measure_change_over_time_wide(ggplot2::economics, date, pop, unemploy)
  expect_that(names(p$data), equals(c("date", "series_type", "value")))
})

test_that("x axis is labeled 'date'",{
  p <- measure_change_over_time_wide(ggplot2::economics, date, pop, unemploy)
  expect_identical(p$labels$x, "date")
})

test_that("y axis is labeled 'value'",{
  p <- measure_change_over_time_wide(ggplot2::economics, date, pop, unemploy)
  expect_identical(p$labels$y, "value")
})


