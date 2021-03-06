#' If
#'
#' @param x A statement or set of statements
#' @param y A condition
#' @return  
#' @export
`%if%` <- function(x,y){

    if(isTRUE(eval(y))){
        eval(x)
    }

}

#' If.not
#'
#' @param x A statement or set of statements
#' @param y A condition
#' @return  
#' @export
`%if.not%` <- function(x,y){

    require(magrittr)

    if(isTRUE(eval(y)) %>% not){
        
        eval(x)
    }

}

#' XOR operator
#'
#' @param x A statement or set of statements
#' @param y A condition
#' @return  
#' @export
`%xor%` <- function(x,y){
    return(xor(x,y))
}

