This package implements Last-Next NA imputation procedure.

The main function is last_next(), which takes as argument a 
vector, data.frame or array of arbitrary dimensions and returns
an object of the same class with imputed data.



To install the package, run the following code in R:

``` r
# If not present, install package 'devtools'
if(!('devtools' %in% installed.packages())) install.packages("devtools")

# Install package lastnext
library(devtools)
install_github("rhobis/lastnext")
```