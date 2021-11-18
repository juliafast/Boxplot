
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Boxplot

<!-- badges: start -->
<!-- badges: end -->

The goal of Boxplot is to …

## Installation

You can install the released version of Boxplot from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("Boxplot")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("juliafast/Boxplot")
#> Downloading GitHub repo juliafast/Boxplot@HEAD
#> rlang     (0.4.11 -> 0.4.12) [CRAN]
#> crayon    (1.4.1  -> 1.4.2 ) [CRAN]
#> cli       (3.0.1  -> 3.1.0 ) [CRAN]
#> pillar    (1.6.2  -> 1.6.4 ) [CRAN]
#> tibble    (3.1.4  -> 3.1.6 ) [CRAN]
#> lifecycle (1.0.0  -> 1.0.1 ) [CRAN]
#> glue      (1.4.2  -> 1.5.0 ) [CRAN]
#> generics  (0.1.0  -> 0.1.1 ) [CRAN]
#> cpp11     (0.3.1  -> 0.4.1 ) [CRAN]
#> digest    (0.6.27 -> 0.6.28) [CRAN]
#> tidyr     (1.1.3  -> 1.1.4 ) [CRAN]
#> Installing 11 packages: rlang, crayon, cli, pillar, tibble, lifecycle, glue, generics, cpp11, digest, tidyr
#> 
#> The downloaded binary packages are in
#>  /var/folders/yg/hs8n6jn96bqfxrgtjsl06g4w0000gn/T//RtmpsCkr4B/downloaded_packages
#>      checking for file ‘/private/var/folders/yg/hs8n6jn96bqfxrgtjsl06g4w0000gn/T/RtmpsCkr4B/remotese2424bc9073c/juliafast-Boxplot-44be610/DESCRIPTION’ ...  ✓  checking for file ‘/private/var/folders/yg/hs8n6jn96bqfxrgtjsl06g4w0000gn/T/RtmpsCkr4B/remotese2424bc9073c/juliafast-Boxplot-44be610/DESCRIPTION’
#>   ─  preparing ‘Boxplot’:
#>      checking DESCRIPTION meta-information ...  ✓  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>    Omitted ‘LazyData’ from DESCRIPTION
#>   ─  building ‘Boxplot_0.0.0.9000.tar.gz’
#>      
#> 
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(Boxplot)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/master/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
