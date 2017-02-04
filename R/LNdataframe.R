#' Apply Last-Next NA imputation procedure to a data.frame
#'
#' @param x a vector with NA's
#'

LNdataframe <- function(x){
    Names <- names(x)
    imputed <- lapply(x,function(x){
        LNvector(x)
    })
    df <- data.frame(imputed)
    names(df) <- Names
    return(df)
}