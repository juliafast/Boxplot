test_that("Testing if Examples for Boxplot Function Work or Do Not Work as Expected", {
  #test to see if examples 1 and 2 (above) run without an error message
  expect_silent(boxplot_numeric_category(dataframe = CO2, x = Treatment, y = conc))
  expect_silent(dplyr::starwars %>% boxplot_numeric_category(sex, height))
  #test to see if example 3 (above) runs without an error message
  expect_silent(boxplot_numeric_category((dplyr::storms %>% dplyr::filter(name == c("Amy", "Doris"))), name, wind))
  #test to see if example 4 (above) runs with the correct error message specified in the boxplot_numeric_category function code
  expect_error(boxplot_numeric_category(dplyr::starwars, sex, name), "You have entered a non-numeric, non-integer, or non-double input. Please enter a variable of a numeric, integer, or double class for the y input. Class type of the variable you entered is: ")
})

test_that("Output Class Type of Boxplot Function Examples is ggplot", {
  #test to see if examples 1-3 and the example with zooplankton biomass data (above) produce a ggplot output as expected
  expect_s3_class((boxplot_numeric_category(dataframe = CO2, x = Treatment, y = conc)), "ggplot")
  expect_s3_class((dplyr::starwars %>% boxplot_numeric_category(sex, height)), "ggplot")
  expect_s3_class((boxplot_numeric_category((dplyr::storms %>% dplyr::filter(name == c("Amy", "Doris"))), name, wind)), "ggplot")
})
