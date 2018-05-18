`%+%` <- function(x,y){
    x <- ifelse(is.na(x) | is.null(x),"",x);
    y <- ifelse(is.na(y) | is.null(y),"",y);
    return(paste0(x,y, sep=''))
}

