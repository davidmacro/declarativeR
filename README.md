# declarativeR
Auxilliary functions to make R code more declarative 

# Background
*R* code can quickly become complex. Unsurprisingly, some great packages have been developed that help to simplify R code. Examples are [magrittR](https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html) and  [wrapr](https://github.com/WinVector/wrapr). These packages add some custom operators to the R language that make complex code a lot more readable. Take *MagrittR* for example: their `%>%` operator allows multiple nested function calls to be expressed as nead pipelines: 
 
```Rscript
# Example using traditional R functions:  
  strrep(                       
      casefold(                 
          c("a", "b", "c"),     
              upper = "T"       
      ), 2                      
  )                             
```
                               
```Rscript 
# Example using magrittR*
   c("a", "b", "c") %>%
       casefold(upper = "T") %>%
       strrep( 2 )                             
```
  
# From functions to declarativeR
  
The *declarativeR* library provides some additional functions to furthermore simplify R code. The idea is to use pipes and declarative statements where possible. 

## Flow control operators: 
### ```%if% and %if.not% ```
Shorthand if and 'if not' operators. Left side is executed iff the condition of the rightside is met. If the left side is an assign operation, a null value is assigned if brackets are not placed around the left side. 


``` rscript
    
    # Example 1a - conditional assignment; null assigned if false 
    x <- "value" %if% (condition)

    # Example 1b - conditional assignment; not executed if false
    {x <- "value"} %if.not% (condition)
    
    # Example 2 - block of code conditional (requires magrittR)
    {
        x %>% 
           fun1 %>% 
           fun2 
          
    } %if% (condition)
 
```

## Apply operators: 

R's built in apply operators can be very handy to shorten existing code, but these functions typically introduce a lot of brackets in the code.

```
    # Input
    input <- list(a = c(1,2,3),b = c(4,4,5), c = c(1,2,3,4,5))

    # Standard R
    lapply(input, sum)

    # Using magrittR
    input %>% lapply(sum)

    # Using declarativeR
    input %>lapply% sum




### ```%>lapply%```
### ```%>sapply%```




## Examples
 
```Rscript
# Lapply:

list(a = 1, b = list(b1 = 2, b=3))


```
 

