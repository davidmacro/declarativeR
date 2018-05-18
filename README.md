# declarativeR
Auxilliary functions to make R code more declarative 

# Introduction
*R* code can quickly become complex. Unsurprisingly, some great packages have been developed that help to simplify R code. Examples are [magrittR](https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html) and  [wrapr](https://github.com/WinVector/wrapr). These packages add some custom operators to the R language that make complex code a lot more readable. Take *MagrittR* for example: their `%>%` operator allows multiple nested function calls to be expressed as nead pipelines: 

Example:
<table>
<tr>
    <td><b>Regular R</b></td>
    <td><b>MagrittR</b></td>
</tr>
<tr>
<td>
    <code>
        strrep( <br>
            &nbsp; casefold( <br>
            &nbsp; &nbsp;     c("a", "b", "c"), <br>
            &nbsp; &nbsp;&nbsp; &nbsp;    upper = "T" <br>
            &nbsp; ), 2 <br>
        )
    </code>
</td>      
<td><code>
   c("a", "b", "c") %>%  <br>
   &nbsp; &nbsp; casefold(upper = "T") %>% <br>
   &nbsp; &nbsp; strrep(2)
</code>
    </td>
    
</tr>



</table> 

 
# Examples


