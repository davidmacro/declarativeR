#' Apply functions over lists
#'
#' @param x input list
#' @param y function
#' @name declarativeApply   
#' @title test
#' @rdname declarativeApply
NULL
#> NULL

#' @name \%>lapply\%
#' @rdname declarativeApply
#' @export
"%>lapply%" <- function(x,y){

    require(magrittr) 
    x %>% lapply(y)

}
  

#' @name \%>sapply\%
#' @rdname declarativeApply
#' @export
"%>sapply%" <- function(x,y){

    require(magrittr)

    x %>% sapply(y)

}

