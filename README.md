
# Boxplot

The Boxplot package allows users to create aesthetically pleasing and
clean-looking boxplots. This package has specifically been designed for
plotting a numerical variable across a variety of different categories
contained in a categorical variable. The function contained in this
package, the boxplot_numeric_category function, can be applied to a
variety of different datasets, as can be seen in the examples section
below.

## Installation

You can install the development version of Boxplot from
[GitHub](https://github.com/) with:

    #install.packages("devtools")
    devtools::install_github("juliafast/Boxplot")

## Examples

*The below examples will use datasets contained in the r `datasets` and
`dplyr` packages. Piping will also be used, which requires the
`magrittr` package. These packages will have been installed as part of
downloading the `Boxplot` package.*

``` r
#load the Boxplot, datasets, dplyr, and magrittr packages needed to execute the below examples
library(Boxplot)
library(datasets)
library(magrittr)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
```

### Example 1

Below is a basic example which shows you how to use the
boxplot_numeric_category function.

The boxplot_numeric_category function in the `Boxplot` package can be
used to create a boxplot from data contained in the “CO2” dataframe from
the r `datasets` package that shows the distribution of CO2
concentration of grass plants in each of two treatment types (chilled or
nonchilled):

``` r
#create a boxplot showing the distribution of CO2 concentration across each treatment type
boxplot_numeric_category(dataframe = CO2, x = Treatment, y = conc)
```

<img src="man/figures/README-example-1.png" width="100%" />

### Example 2

Below is an example which shows you how to use the
boxplot_numeric_category function while using piping to keep the code
clean.

The boxplot_numeric_category function can be used to create a boxplot
from data contained in the “starwars” dataset from the `dplyr` package
that shows the distribution of the height of starwars characters based
on the sex of the characters:

``` r
#create a boxplot showing the distribution of height of starwars characters based on the sex of the characters
starwars %>% boxplot_numeric_category(sex, height)
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

### Example 3

Below is an example which shows you how to use the
boxplot_numeric_category function in conjunction with another function,
in this case the **filter** function from the `dplyr` package.

The boxplot_numeric_category function can be used to create a boxplot
from data contained in the “storms” dataset from the `dplyr` package
that shows the distribution of the wind speeds observed for each of the
storms Caroline and Doris:

``` r
#filter the name column of the storms package to only include the "Amy" and "Doris" storm names
#create a boxplot showing the distribution of wind speeds observed for the two storms "Amy" and "Doris"
boxplot_numeric_category((storms %>% filter(name == c("Amy", "Doris"))), name, wind)
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

## References for Function Code

Elferts D. 2016. Remove all of x axis labels in ggplot \[duplicate\].
Stack Overflow; \[modified 2016 Jan 29; accessed 2021 Oct 25\].
<https://stackoverflow.com/questions/35090883/remove-all-of-x-axis-labels-in-ggplot>

Leon. 2020. Removing NA from used column in ggplot. R Studio Community;
\[modified 2020 Aug 16; accessed 2021 Nov 2\].
<https://community.rstudio.com/t/removing-na-from-used-column-in-ggplot/76579>
