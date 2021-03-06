% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tallies.R
\name{two_category_tally}
\alias{two_category_tally}
\title{Plot counts of combinations of two category columns}
\usage{
two_category_tally(
  data,
  main_category,
  sub_category,
  separate = FALSE,
  position = "stack"
)
}
\arguments{
\item{data}{A data frame or tibble}

\item{main_category, sub_category}{Unquoted column names of two categories (can be factor, character or numeric)}

\item{separate}{Boolean indicating whether the plot should be faceted or not}

\item{position}{"stack" or "dodge"}
}
\value{
A ggplot plot object
}
\description{
Plot counts of combinations of two category columns
}
\examples{
two_category_tally(ggplot2::mpg, class, drv)
two_category_tally(ggplot2::mpg, class, drv, position = "dodge")
two_category_tally(ggplot2::mpg, class, drv, separate = TRUE)
two_category_tally(ggplot2::diamonds, cut, clarity)
two_category_tally(ggplot2::diamonds, cut, clarity, separate = TRUE)
}
