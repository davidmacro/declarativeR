`%>lapply%` <- function(x,y){

    require(magrittr)

    x %>% lapply(y)

}
 
`%>sapply%` <- function(x,y){

    require(magrittr)

    x %>% sapply(y)

}

