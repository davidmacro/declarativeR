#' Apply functions over lists
#'
#' @param x 
#' @param y function definition
#' @name declarativeR_Apply 
#' @aliases declapply 
#' @md
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

