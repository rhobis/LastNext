#' Helper functions

##Slice an array dynamically
sliceArr <- function(a,idx,drop=TRUE){
    #a:     the array to be sliced
    #idx:   list containing the parameters for the slicing. Use TRUE to take all
    #       elements of a give dimension. 
    #[Code taken from: https://stackoverflow.com/questions/31925595/how-to-slice-a-n-dimensional-array-with-a-mn-i-dimensional-matrix]
    ######## 
    
    ##usage:
    # a      <- array(1:27, c(3,3,3))    
    # idx    <- list(1:2, TRUE, 1:2)
    # sliceArr(a,idx)
    do.call(`[`,c(list(a),idx,list(drop=drop)))
} 


