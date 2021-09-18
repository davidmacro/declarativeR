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
    x %>% lapply(y) 
}
  
 
#' @rdname declarativeApply
#' @export
"%>sapply%" <- function(x,y){ 
    x %>% sapply(y)
}

#' @rdname declarativeApply
#' @export
"%>mapply%" <- function(x,y){ 
  stopifnot(is.list(x))
  stopifnot(!("FUN" %in% names(x)))
  
  x$FUN <- y
  
  do.call(mapply, args = x)
}
