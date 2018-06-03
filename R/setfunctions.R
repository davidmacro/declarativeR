#' Set difference 
#'
#' @param x A vector
#' @param y A vector
#' @return All elements in x that are not in y.
#' @examples
#'  
#' @export 
`%-%` <- function(x,y){
    return(setdiff(x,y))
}

#' Union
#'
#' @param x A vector
#' @param y A vector
#' @return All unique elements in the combined set (x,y).
#'  
#' @export
`%union%` <- function(x,y){
    return(union(x,y))
}

#' Intersect
#'
#' @param x A vector
#' @param y A vector
#' @return All unique elements that are in both x and y.
#'  
#' @export
`%intersect%` <- function(x,y){
    return(intersect(x,y))
}

#' Has
#'
#' @param x A vector
#' @param y A vector
#' @return All unique elements that are in both x and y.
#'  
#' @export
`%has%` <- function(x,y){ 
    y %in% names(x) %>% all %>% return
}





