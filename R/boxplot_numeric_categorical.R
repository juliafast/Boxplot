
#' @title Multiple Boxplot for a Numeric Variable across Categories
#' @description This function creates a multiple boxplot that shows the distribution of a numeric variable in each different category contained in a categorical variable. This function will remove any NA values in the data prior to creation of the boxplot.
#' @param dataframe The dataframe that contains the variables that you would like to use to create the boxplot. The class of this parameter must be dataframe. This argument was named dataframe because the variable that needs to be input here must have a dataframe class type, so users will instantly know what type of variable to include for this argument.
#' @param x The categorical variable containing the categories that we want to plot the distribution of a numeric variable across. x must be a vector of class character or factor. This parameter was named x because it is the variable that is plotted on the x axis, and most users would be used to "x" being used to represent the x axis variable, so this argument name would be familiar to users.
#' @param y The numeric variable that we want to examine the distribution of across a categorical variable. y must be a vector of class double, integer, or numeric. This parameter was named y because it is the variable that is plotted on the y axis, and most users would be used to "y" being used to represent the y axis variable, so this argument name would be familiar to users.
#' @return A single panel multiple boxplot showing the distribution of the variable y in each category contained in the variable x.
#' @examples
#' ## Using the "CO2" dataset from the r "datasets" package, create a boxplot that shows the distribution of CO2 concentration of grass plants in each treatment type (chilled or nonchilled)
#' boxplot_numeric_category(dataframe = CO2, x = Treatment, y = conc)
#'
#' ## Using the "starwars" dataset from the dplyr package,create a boxplot that shows the distribution of the height of starwars characters based on the sex of the characters
#' starwars %>% boxplot_numeric_category(sex, height)
#'
#' ## Using the "storms" dataset from the dplyr package, create a boxplot that shows the distribution of the wind speeds observed for each of the storms Caroline and Doris
#' boxplot_numeric_category((storms %>% filter(name == c("Amy", "Doris"))), name, wind)
#' @export

boxplot_numeric_category <- function (dataframe, x, y) {

  classinfo_x <- dplyr::summarise(dataframe, is.character = is.character({{ x }}) | is.factor({{ x }}), class = class({{ x }}))

  classinfo_y <- dplyr::summarise(dataframe, is.numeric = is.numeric({{ y }}) | is.double({{ y }}) | is.integer({{ y }}), class = class({{ y }}))


  if(!is.data.frame(dataframe)) {
    stop('You have entered an input that is not a dataframe. Please use a dataframe for the dataframe input. Class type of the variable you entered is: ', class(dataframe))
  }

  if(!classinfo_x$is.character) {
    stop('You have entered a non-character or non-factor input. Please enter a character or factor variable for the x input. Class type of the variable you entered is: ', class(classinfo_x$class))
  }

  if(!classinfo_y$is.numeric) {
    stop('You have entered a non-numeric, non-integer, or non-double input. Please enter a variable of a numeric, integer, or double class for the y input. Class type of the variable you entered is: ', class(classinfo_y$class))
  }


  dataframe %>%
    #below line of code from Leon 2020
    tidyr::drop_na({{ x }}, {{ y }}) %>%
    ggplot2::ggplot(ggplot2::aes({{ x }}, {{ y }})) +
    ggplot2::geom_boxplot(ggplot2::aes(fill= {{ x }})) +
    ggplot2::theme_linedraw() +
    #below line of code from Elferts 2016
    ggplot2::theme(axis.text.x=ggplot2::element_blank(),
                   axis.ticks.x=ggplot2::element_blank(),
                   axis.title.x=ggplot2::element_blank())
}
