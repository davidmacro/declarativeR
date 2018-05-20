#' Set difference 
#'
#' @param x A vector
#' @param y A vector
#' @return All elements in x that are not in y.
#' @examples
#'  
#'  
`%-%` <- function(x,y){
    return(setdiff(x,y))
}

#' Union
#'
#' @param x A vector
#' @param y A vector
#' @return All unique elements in the combined set (x,y).
#'  
#' 
`%union%` <- function(x,y){
    return(union(x,y))
}

#' Intersect
#'
#' @param x A vector
#' @param y A vector
#' @return All unique elements that are in both x and y.
#'  
#' 
`%intersect%` <- function(x,y){
    return(intersect(x,y))
}

#' Has
#'
#' @param x A vector
#' @param y A vector
#' @return All unique elements that are in both x and y.
#'  
#' 
`%has%` <- function(x,y){ y %in% names(x) %>% all %>% return}

`%extract.like%` <- function(x,y){
    x %>% grep(y, ., value = T)
}
