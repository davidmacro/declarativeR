# declarativeR
Auxilliary functions to make R code more declarative 

# Background
*R* code can quickly become complex. Unsurprisingly, some great packages have been developed that help to simplify R code. Examples are [magrittR](https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html) and  [wrapr](https://github.com/WinVector/wrapr). These packages add some custom operators to the R language that make complex code a lot more readable. Take *MagrittR* for example: their `%>%` operator allows multiple nested function calls to be expressed as nead pipelines: 
 
__Example using traditional R functions:__  
```R
    strrep(                       
        casefold(                 
            c("a", "b", "c"),     
                upper = "T"       
        ), 2                      
    )                             
```

__Example using magrittR:__  
```Rscript 
   c("a", "b", "c") %>%
       casefold(upper = "T") %>%
       strrep(2)                             
```
  
# From functions to pipes to declarativeR
  
As the aforementioned examples show, pipes can make R code a lot better to read. The *declarativeR* package provides some additional functions and operators to furthermore simplify R code. 

These additions include a number of operators to facilitate short hand code for flow control (*e.g.*, ```%if%``` and ```%xor%```), pipe operators to apply functions over lists (*e.g.*, ```%>lapply%```), set operators to simplify common set operations  (*e.g.*, ```%union%```) and string operators (*e.g.*, ```%+%```). 

## 1. Flow control

### ```%if% and %if.not% ```
The *declarativeR* package provides shorthand operators for if and 'if not'. Standard syntax: 

```do x %if% (condition)```

```do x %if.not% (condition)```
   
So the left hand side is executed if the condition on the right hand side is met. Note that if the left hand side is an assign operation, a null value is assigned if no brackets are placed around the statement. 


TEST

__Example:__

```R
    # (1a) - conditional assignment; null assigned if false 
    x <- "value" %if% (condition)

    # (1b) - conditional assignment; not executed if false
    {x <- "value"} %if.not% (condition)
    
    # (2) - block of code conditional (requires magrittR)
    {
        x %>% 
           fun1 %>% 
           fun2 
          
    } %if% (condition)
 
```

### ```%xor% ```

The exclusive or operator is included in R as a function. delcarativeR adds a trivial operator version, namely ```%xor%```. 


## 2. Apply functions over lists

R's built in apply operators can be very handy to shorten existing code, but these functions typically introduce a lot of brackets in the code. Both *magrittR* and *declarativeR* can be used to get rid of these, and produce more readable code. 

### ```%>lapply% and %>sapply% ```

These operators simplify the common task of applying one or more functions on a list of items. The piping style is analoguous to the *magrittR* pipe operator.

See the following example, in which two functions are applied in succession on one list of vectors. 

__Example:__


```R
    # Define some input list
    input <- list(a = c(1,2,3),       
                  b = c(4,4,5), 
                  c = c(1,2,3,4,5))

    # ------------------------------------------------# 
    # Task:                                           #
    # ------------------------------------------------#
    #    - sum the vectors in input;                  #
    #    - take the square root of each sum;          #
    #    - return as a (named) vector.                #
    # ------------------------------------------------#
         
    # (a) Standard R:
    sapply(lapply(input, sum), sqrt)

    # (b) Using magrittR's pipe operator:
    input %>% lapply(sum) %>% sapply(sqrt)

    # (c) Using declarativeR's lapply operator:
    input %>lapply% sum %>sapply% sqrt
     
    # ------------------------------------------------# 
    # Output:                                         #
    # ------------------------------------------------#    
    # a        b        c                             #
    # 2.449490 3.605551 3.872983                      #
    # ------------------------------------------------#    
    
```

## 3. Working with sets


























 

