#' Apply Last-Next NA imputation procedure to an array of 
#' arbitrary dimensions
#'
#' @param x an array with NA's
#'

LNarray <- function(a){
    ###Applies Last-Next procedure to arrays
    dims <- dim(a)
    # nr <- dims[1] #number of rows
    nd <- length(dims)-1 #number of dimensions other than rows
    ##create grid with all combinations of array indices
    lind <- lapply(dims[-1], function(x) 1:x)
    grid <- expand.grid(lind)
    # grid <- split(grid,1:dim(grid)[1])
    ##apply Last-Next procedure to each column
    imputed_a <- lapply(1:dim(grid)[1],function(i){
        ind <- grid[i,]
        LNvector( sliceArr(a=a,idx=c(TRUE,unclass(ind))) )
    })
    return(array(unlist(imputed_a),dim=dims))
}


