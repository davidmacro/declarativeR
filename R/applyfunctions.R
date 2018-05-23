#' Apply functions over lists
#'
#' @param x input list
#' @param y function
#' @name declarativeApply   
#' @title Declarative Apply
#' @examples 
#' 
#' # Input:
#' input <- list(a = c(1,2,3),       
#'               b = c(4,4,5), 
#'               c = c(1,2,3,4,5))
#' 
#' 
#' # Chain lapply and sapply:
#' input %>lapply% sum %>sapply% sqrt
#' 
NULL
#> NULL
 
#' @rdname declarativeApply
#' @export
"%>lapply%" <- function(x,y){

    require(magrittr) 
    x %>% lapply(y)

}
  
 
#' @rdname declarativeApply
#' @export
"%>sapply%" <- function(x,y){

    require(magrittr)

    x %>% sapply(y)

}

