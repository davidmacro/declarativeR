#' String concatenation operator
#'
#' @param x string or vector of strings 
#' @param y string or vector of strings 
#'
#' @return concatenation; elements are recycled.
#'
#' @examples
#' 
#' # Simple concatenation: 
#' "a" %+% "b"
#' 
#' # Pairwise concatenation: 
#' c("a","b") %+% c("a")
#' 
#' c("a","b") %+% c("a","b") 
#' 
#' # Null on one side:
#' "a" %+%
#' @export
`%+%` <- function(x,y){ 
    x <- ifelse(is.null(x)| is.na(x),"",x);
    y <- ifelse(is.null(y)| is.na(y),"",y);
    return(paste0(x,y, sep=''))
}


`%extract.like%` <- function(x,y){
    x %>% grep(y, ., value = T)
}
