#' Apply Last-Next NA imputation procedure to a vector
#'
#' @param x a vector with NA's
#'

LNvector <- function(x){
    #Apply Last-next procedure to a vector x
    if(sum(!is.na(x)) == 0) return(x)
    nas <- is.na(x)
    steps <- length(nas)
    s <- 0
    last <- 0
    imputeNext <- FALSE
    while(s <= steps){
        s <- s+1
        if(!is.na(x[s]) & (s-last) == 1){
            #1st case: Not NA and previous element not NA --> update last
            last <- s
        }else if(!is.na(x[s]) & (s-last) > 1){
            #2nd case: Not NA and previous element NA --> impute mean to NAs    
            if(imputeNext){
                x[(last+1):(s-1)] <-x[s]
                imputeNext <- FALSE
                last <- s
            }else{
                x[(last+1):(s-1)] <- mean(x[c(last,s)])
                last <- s
            } 
        }else if(is.na(x[s]) & s != 0 & s != steps){
            #3rd case: NA --> pass
            next
        }else if(is.na(x[s]) & s == 0){
            #special case 1: first element in the vector is NA --> impute next   
            imputeNext <- TRUE
        }else if(is.na(x[s]) & s == steps){
            #special case 2: last element in the vector is NA  --> impute last  
            x[(last+1):s] <- x[last]
        }
    }
    return(x)
}
