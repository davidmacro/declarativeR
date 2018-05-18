#' If
#'
#' @param x A statement or set of statements
#' @param y A condition
#' @return  
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
`%xor%` <- function(x,y){
    return(xor(x,y))
}

