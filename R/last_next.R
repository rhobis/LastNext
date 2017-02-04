#' Impute NA values through Last-Next procedure
#'
#'
#' @param x a vector, data.frame or array with NA values
#'
#'
#' @export

last_next <- function(x){
    ###Applies Last-Next NA imputation procedure to an object x
    if(is.vector(x)){
        return(LNvector(x))
    }else if(is.array(x)){
        return(LNarray(x))
    }else if(is.data.frame(x)){
        return(LNdataframe(x))
    }
}
