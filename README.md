# declarativeR
Auxilliary functions to make R code more declarative 

# Introduction
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
*Example using magrittR*
   c("a", "b", "c") %>%
       casefold(upper = "T") %>%
       strrep( 2 )                             
```
 
</td> 
</tr>
</table> 

 
# Examples


